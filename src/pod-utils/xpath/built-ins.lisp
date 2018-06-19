;;; -*- mode: lisp; syntax: common-lisp; -*-

(in-package "XPATH")

;;; TODO:
;;;     - DONE: Start looking for a way to track reverse axis, especially with attributes. -- IT'S JUST (xqdm:parent attr)!
;;;     - DONE, YES. Should name-test (or anything) be called on document nodes? Currently have methods returning nil.
;;;                -Partially fixed, name-test is applied to doc nodes in 'child-axis' tests -JB

;;;NOTE: Lots of functions in this file use 'vect' which is now actually a list and not a vector

;;;============= XPATH 'implementation' =====================================
#| (more notes in parser.lisp) 

   Document Order - Constraints:
       1) The root node is first
       2) Every node occurs before its children and descendants.
       3) Namespace nodes immediately follow the Element node for which they are associated.
       4) Attribute nodes immediately follow the Namespace nodes.
       5) The relative order of siblings is the order in which they appear in the XML serialization
       6) Children and descendants occur before following siblings. (depth first). 

   Principal Node Kind:
       1) For the attribute axis, the principal node kind is attribute
       2) For the namespace axis, the principal node kind is namespace
       3) For all other axes, the principal node kind is element
|#

;;;================= Utility Functions =================
(defun split-qname (str)
  (dbind (prefix &optional name) (split str #\:)
    (unless name (shiftf name prefix ""))
    (values prefix name)))

;;; POD move to utils.lisp
(defun intersect-predicates (fn &rest fns)
  "Paul Graham's. Return a predicate which is the AND of the arguments."
  (if (null fns)
      fn
    (let ((chain (apply #'intersect-predicates fns)))
      #'(lambda (x)
          (and (funcall fn x) (funcall chain x))))))

;;; POD Should be a defconstant.
(defun default-predicate-fn ()
  (list
   #'(lambda (x vec throw-tag)
       (declare (ignore throw-tag))
       (unless (find x vec)
         (dbg-message :xpath 1 "~% Collecting node ~A" x)
         (setf vec (append vec (list x)))
	 (dbg-message :xpath 5 "~% List now at ~A" vec)) vec)))

;;;================= Compatibility/Convenience Functions =================
;(declaim (inline xqdm-children xqdm-document xqdm-document-p xqdm-element-p xqdm-attribute-p
;                 xqdm-attributes xqdm-parent))
(defun xqdm-children (n) (when n (xqdm:children n)))
(defun xqdm-document (n) (xqdm:document n))
(defun xqdm-document-p (n) (typep n 'xqdm:document))
(defun xqdm-element-p (n) (xqdm:element-p n))
(defun xqdm-attribute-p (n) (typep n 'xqdm::attribute-node))
(defun xqdm-attributes (n) (xqdm:attributes n))
(defun xqdm-parent (n) (if (typep n 'doc-node) n (xqdm:parent n)))

;(declaim (inline xqdm-prefix&name))
(defun xqdm-prefix&name (n)
  "Return (values prefix local-name)."
  (let ((name (xqdm:name n)))
    (values (xqdm:prefix name)
            (xqdm:local-part name))))

#| (defun node-vector (&optional elems)
  (let ((vec (make-array 10 :adjustable t :fill-pointer 0)))
    (cond ((null elems) vec)
          ((atom elems) (vector-push elems vec) vec)
          (t (loop for e in elems do (vector-push-extend e vec)) vec)))) |#

(defun node-vector (&optional elems) ;;Not actually a vector
  (let (vec)
    (cond ((null elems) vec)
          ((atom elems) (setf vec (list elems)))
          (t (loop for e in elems do (setf vec (append vec (list e)))) vec))))

(defun mapappend-vector (fn seq)
  (loop for n across seq with vec = (node-vector) do
        (loop for c in (funcall fn n) do
              (vector-push-extend c vec)
              finally (return vec))
        finally (return vec)))

(defun mapappend-list (fn seq)
  (loop for n in seq with vec = (node-vector) do
        (loop for c in (funcall fn n) do
              (setf vec (append vec (list c)))
              finally (return vec))
        finally (return vec)))

;;; The // notation: This is an abstraction for such a sequence of nodes.
(defclass descendants-or-self ()
  ((node-sequence :initarg :node-sequence :reader node-sequence :initform nil)))

(defun descendant-or-self (arg)
  (if (listp arg)
      (make-instance 'descendants-or-self :node-sequence arg)
      (make-instance 'descendants-or-self :node-sequence (list arg))))

;;; ==== Axis Step Implementations ====

(defmethod forward-step ((seq list) axis-step test test-args predicates)
  (dbg-message :xpath 2 "~%~% I am testing sequence: ~%~A ~% to see if its: ~%~A~% pass test: ~%does ~A match ~A?~%" seq axis-step test test-args) ;JB
  (dbind (preds &optional match-count) predicates
      (loop for node in seq with vec = (node-vector) do
            (when match-count (funcall match-count 0))
            (catch 'skip-siblings
	      (let ((*context-size* (length (funcall axis-step node))))
		(loop for c in (funcall axis-step node) do
		     (setf *context-item* c)
		     (dbg-message :xpath 2 "~%Testing Forward Step Elements by Predicate - ~A" c)
		     (when (apply test c test-args)		    
		       (setf vec (funcall preds c vec 'skip-siblings))))))
            finally (return (print-t (false-nil-replace (setf *context-item* vec)) "forward-step")))))

(defun print-t (val tag)
  (dbg-message :xpath 5 "~% **** Exiting ~a with value ~a" tag val)
  val)

(defun false-nil-replace (val)
  (if (/= (length val) 0)
      val
      nil))

;;; //para[1] - select ALL descendant para elements that are the first para children of their parent.
;;; (child-axis (descendant-or-self (|fn:root| *context-item*)) :test #'name-test :arg "element" :predicates '(2)))
(defmethod forward-step ((seq descendants-or-self) axis-step test test-args predicates)
  "The sequence elements being tested are (abtractly) every descendant node from the argument. 
   For each of these, if the node along its axis passes the test, it (that node) is collected."
  (dbind (preds &optional match-count) predicates
    (let ((vec (node-vector)))
      (dbg-message :xpath 2 "~% test = ~A---------------------------------------------------" test)
      (dbg-message :xpath 2 "~% axis-step = ~A" axis-step)
      (dbg-message :xpath 2 "~% items = ~A~%" (node-sequence seq))
      (flet ((the-search (n)
               (depth-first-search n
                                   #'(lambda (x) ; test -- return nil, even when found
                                       (when (or (typep x 'named-node)(typep x 'doc-node))
                                         (catch 'skip-siblings
					   (let ((*context-size* (length (funcall axis-step x))))
                                           (loop for c in (funcall axis-step x) do
                                                 (dbg-message :xpath 5 "~% attempt match: ~A" c)
                                                 (setf *context-item* c)
                                                 (when (apply test c test-args)
                                                   (dbg-message :xpath 2 "~% passed match: ~A" c)						   
                                                   (setf vec (funcall preds c vec 'skip-siblings)))))))
                                       nil)
                                   #'xqdm-children))) ; this isn't the axis step.
        (loop for n in (node-sequence seq) do
              (when match-count (funcall match-count 0))
              (the-search n)))
      (setf *context-item* vec))))

(defmethod reverse-step ((seq list) axis-step test test-args predicates)
  (dbind (preds &optional match-count) predicates
      (declare (ignore match-count))
      (loop for n in seq with vec = (node-vector)
            for nn = (funcall axis-step (setf *context-item* n))
            when (or (null test) (apply test nn test-args))
            do (setf vec (funcall preds nn vec 'no-catch))
            finally (return (setf *context-item* vec)))))

;;; ================ FORWARD AXES ======================

(defun child-axis (seq &key test test-args (predicates (default-predicate-fn)))
  (forward-step (if (typep seq 'named-node) (node-vector seq) seq)  #'xqdm-children test test-args predicates))

(defun attribute-axis (seq &key test test-args (predicates (default-predicate-fn)))
  (print-t (forward-step (if (typep seq 'named-node) (node-vector seq) seq) #'xqdm-attributes test test-args predicates) "attributes"))

(defmethod descendant-or-self-axis ((seq list) &key test test-args (predicates (default-predicate-fn)))
  "The descendants of the argument, and argument are tested."
  (dbind (preds &optional match-count) predicates
      (loop for n in seq with vec = (node-vector) do	 
            (when match-count (funcall match-count 0))
            (catch 'stop-search
              (depth-first-search n
                                  #'(lambda (x) ; test -- return nil, even when found
                                      (when (apply test (setf *context-item* x) test-args)
                                        (dbg-message :xpath 2 "~% passed match: ~A" x)
                                        (setf vec (funcall preds x vec 'stop-search)))
                                      nil)
                                  #'xqdm-children))
            finally (return (setf *context-item* vec)))))

(defmethod descendant-or-self-axis ((seq named-node) &key test test-args predicates)
  (descendant-or-self-axis (node-vector seq) :test test :test-args test-args :predicates predicates))

;;; /descendant::para[1] - select the first descendant para node.
;;; (descendant-axis (|fn:root| *context-item*) :test #'name-test :test-args '("para") :predicates '(1))
(defmethod descendant-axis ((seq list) &key test test-args (predicates (default-predicate-fn)))
  "The descendants of the agrument are tested."
  (descendant-or-self-axis (mapappend-list #'xqdm-children seq)
                           :test test :test-args test-args :predicates predicates))

(defmethod descendant-axis ((seq named-node) &key test test-args (predicates (default-predicate-fn)))
  (descendant-axis (node-vector seq) :test test :test-args test-args :predicates predicates))

(defmethod descendant-axis ((seq descendants-or-self) &key test test-args (predicates (default-predicate-fn)))
  (declare (ignore seq test test-args predicates))
  (break "//descendant:: NYI")) ; POD sounds redundant.

(defmethod self-axis ((seq vector) &key test test-args (predicates (default-predicate-fn)))
  (forward-step seq #'identity test test-args predicates))

(defmethod self-axis ((seq named-node) &key test test-args (predicates (default-predicate-fn)))
  (self-axis (node-vector seq) :test test :test-args test-args :predicates predicates))

(defmethod self-axis ((seq descendants-or-self) &key test test-args (predicates (default-predicate-fn)))
  (declare (ignore seq test test-args predicates))
  (break "//self:: NYI"))

;;; ================ REVERSE AXES ======================

(defun parent-axis (seq &key test test-args (predicates (default-predicate-fn)))
  (dbg-message :xpath 1 "~% before parent, seq = ~A" seq)
  (reverse-step (if (typep seq 'named-node) (node-vector seq) seq) #'xqdm-parent test test-args predicates))

(defun ancestor-or-self-axis (seq &key test test-args (predicates (default-predicate-fn)))
  "The descendants of the argument, and argument are tested."  
  (when (typep seq 'named-node) (setf seq (node-vector seq)))
  (dbind (preds &optional match-count) predicates
    (loop for n in seq with vec = (node-vector) do
          (when match-count (funcall match-count 0))
          (catch 'stop-search
            (depth-first-search n
                                #'(lambda (x) ; test -- return nil, even when found
                                    (when (typep x 'named-node)
                                      (when (apply test (setf *context-item* x) test-args)
                                        (dbg-message :xpath 2 "~% passed match: ~A" x)
                                        (setf vec (funcall preds x vec 'stop-search)))
                                      nil))
                                #'(lambda (x) (when x (list (xqdm-parent x))))))
          finally (return (setf *context-item* vec)))))

(defun ancestor-axis (seq &key test test-args predicates)
  (let* ((seq (if (typep seq 'named-node) (setf seq (node-vector seq)) seq))
	 (new-seq (loop for n in seq collect (xqdm:parent n))))
    (ancestor-or-self-axis new-seq :test test :test-args test-args)))
;;; ============  NodeTest ::= KindTest | NameTest ============
(defmethod |name-test| ((node named-node) qname)
  (dbg-message :xpath 5 "~%~%Primary Name Testing: ~A vs. ~A" node qname) 
  (cond ((string= qname "wildcard") t)
	(t
	 (mvb (prefix name) (split-qname (if (symbolp qname) (string qname) qname))
	   (mvb (n-prefix n-name) (xqdm-prefix&name node)
	     (and (string-equal n-prefix prefix)
		  (string-equal n-name name)))))))

(defmethod |name-test| ((node doc-node) qname) nil)

(defmethod |name-test| ((node string) (qname string)) 
  (dbg-message :xpath 5 "~%~%String Name Testing: ~A vs. ~A" node qname)
  (string= node qname))

(defmethod |name-test| ((node t) qname) (break "???"))

(defmethod |element| ((n named-node) x) (xqdm-element-p n)) ;unused

(defmethod |element| ((node named-node) (qname string))
  (dbg-message :xpath 5 "~%~%Primary Name Testing: ~A vs. ~A" node qname) 
  (cond ((string= qname "wildcard") t)
	(t
	 (mvb (prefix name) (split-qname (if (symbolp qname) (string qname) qname))
	   (mvb (n-prefix n-name) (xqdm-prefix&name node)
	     (and (string-equal n-prefix prefix)
		  (string-equal n-name name)))))))

(defmethod |element| (a b) nil)

(defmethod |document-node| ((n named-node)) (xqdm-document-p n))
(defmethod |document-node| ((n doc-node)) nil)
(defmethod |document-node| ((n string)) nil)
(defmethod |document-node| ((n t)) (break "???"))

(defmethod |attribute| ((n named-node) x) (xqdm-element-p n)) ;unused

(defmethod |attribute| ((node named-node) (qname string))
  (dbg-message :xpath 5 "~%~%Primary Name Testing: ~A vs. ~A" node qname) 
  (cond ((string= qname "wildcard") t)
	(t
	 (mvb (prefix name) (split-qname (if (symbolp qname) (string qname) qname))
	   (mvb (n-prefix n-name) (xqdm-prefix&name node)
	     (and (string-equal n-prefix prefix)
		  (string-equal n-name name)))))))

(defmethod |attribute| (a b) nil)

(defun |text| (n) (stringp n))

;;; NYI
(defmethod |schema-element| (n))
(defmethod |schema-attribute| (n))
(defmethod |processing-instruction| (n))
(defmethod |comment| (n))
(defmethod |node| ((n named-node)) t)
(defmethod |node| (n) nil)


;;;-------------- Actual XPath Operators! ----------------------

(defun |fn:count| (seq)
   (length seq))
        
(defun |fn:root| (node) 
  (node-vector (xqdm-document node)))
(defun |fn:true| () t)
(defun |fn:false| () nil)

(defun xpath-evaluate (xpath-expression context-item)
  (funcall (xpath2lisp xpath-expression) context-item))

#|
(defun xp-funcall (fn doc)
  (let ((*package* (find-package :xpath)))
    (funcall fn doc)))
|#

(defun dataval (v)
  (if (lispp v)
    (if (stringp v)
      v
      (let ((aval (aref v 0)))
        (if (typep aval 'abstract-node)
          (car (children aval))
          aval)))
    v))

(defmacro funcalldatavals (vals &body body)
  `(let* ((bckup-context *context-item*)
	  ,@(loop for v in vals
		collect `(,v (funcall ,v bckup-context))))
     (datavals ,vals ,@body)))
                			   
(defmacro datavals (vals &body body)
  (with-gensyms (aval)
    `(let ,(loop for v in vals
              collect `(,v (if (listp ,v)
                               (if (stringp ,v)
                                 ,v
				 (let ((new-set (loop for n in ,v
						   collect (if (typep n 'abstract-node) (car (children n)) n))))
				   (if (> (length new-set) 1)
				       new-set
				       (first new-set))))
                             ,v)))
       ,@body)))

(defmacro read-nums (vals &body body)
  (with-gensyms (no-perform)
    `(let ((,no-perform nil))
       ,@(loop for v in vals
	  collect `(when (or (not ,v) (if (not (numberp ,v)) (not (numberp (read-from-string ,v))))) (setf ,no-perform t)))
       (let ,(loop for v in vals
		collect `(,v (if (stringp ,v) (read-from-string ,v) ,v)))
	 (unless ,no-perform   
	   ,@body)))))

(defun xpath-eq (val1 val2 &optional (functional t))  ;;;NOTE: Nil currently does not equal NIL
  (let* ((bckup-context *context-item*)
	 (val1 (if functional (funcall val1 bckup-context) val1))
	 (val2 (if functional (funcall val2 bckup-context) val2)))
    (datavals (val1 val2)
    (dbg-message :xpath 5 "~%XPATH-EQ test ~A vs. ~A" val1 val2)
    (cond ((or (if val1 (if (listp val1) (> (length val1) 1))) (if val2 (if (listp val2) (> (length val2) 1))))
	   (print-t (xpath-list-eq val1 val2) "xpath-list-eq"))
	  ((and (if (stringp val1) (numberp (read-from-string val1 nil)) (numberp val1))  (if (stringp val2) (numberp (read-from-string val2 nil)) (numberp val2)))
	   (print-t (= (if (stringp val1)(read-from-string val1) val1)  (if (stringp val2)(read-from-string val2) val2)) "xpath-eq"))
	  (t 
	   (print-t (and (or val1 val2) (equal val1 val2)) "xpath-eq"))))))

(defun xpath-eql (val1 val2)
  (xpath-eq val1 val2 nil))

(defun xpath-list-eq (val1 val2)
  (dbg-message :xpath 5 "~%List test")
  (when (and val1 val2)
    (cond ((and (listp val1) (listp val2))
	   (dolist (n val1)
	     (when (member n val2)
	       (return t))))
	  ((listp val1) 
	   (if (member val2 val1 :test #'xpath-eql) t nil))
	  ((listp val2)
	   (if (member val1 val2 :test #'xpath-eql) t nil)))))
	 
(defun xpath-/= (val1 val2) (funcalldatavals (val1 val2) (not (equal val1 val2))))
(defun xpath-< (val1 val2) (funcalldatavals (val1 val2) (read-nums (val1 val2) (< val1 val2))))
(defun xpath-<= (val1 val2) (funcalldatavals (val1 val2)(read-nums (val1 val2) (<= val1 val2))))
(defun xpath-> (val1 val2) (funcalldatavals (val1 val2) (read-nums (val1 val2) (> val1 val2))))
(defun xpath->= (val1 val2) (funcalldatavals (val1 val2) (read-nums (val1 val2) (>= val1 val2))))

(defmacro |if| (test then else)
  (with-gensyms (cntx-item)
    `(let ((,cntx-item *context-item*))
       (if ,test
         (progn
           (setf *context-item* ,cntx-item)
           ,then)
         (progn
           (setf *context-item* ,cntx-item)
           ,else)))))

(defun sequence-validate (terms list)
  "Performs the given test on each item in the given sequence.  If 'terms' evaluates to a number, then the test is deemed true if the context 
position is equal to that number."
  (dbg-message :xpath 5 "~%Sequence Validation on ~A" list)
  (let ((*context-size* (length list)))
    (setf *context-position* 1)
    (let ((vect)
	  (select-index nil)
	  e-val)
      (loop for n from 0 to (- (length list) 1) do
	   (setf e-val (funcall terms (elt list n)))
	   (dbg-message :xpath 5 "~%Checking ~A, yielded ~A" (elt list n) e-val)
	   (cond ((if (and e-val (listp e-val)) (numberp (elt e-val 0))) ;Count a list with a number as the first value as an index 
		  (when (member (+ n 1) e-val) (setf vect (append vect (list (elt list n))))))
		 ((numberp e-val) (when (= e-val (+ n 1)) (setf vect (append vect (list (elt list n)))))) ;Count a number as an index
		 (e-val
		    (setf vect (append vect (list (elt list n))))))
	   (incf *context-position*))     
	   vect)))

(defun xpath-every (lists satisfy)
  "Function to handle 'every' statements.  Evaluates the 'satisfy' function for all list possibilites, 
then verifies that every test evaulated to true."
  (let* ((safe-context *context-item*)
	 (eval-set (recurse-for lists 0 nil satisfy safe-context))
	 (switcher t))
    (dolist (n eval-set)
      (unless n
	(setf switcher nil)))
    switcher))

(defun xpath-some (lists satisfy)
  "Function to handle 'some' statements.  Evaluates the 'satisfy' function for all list possibilites, 
then verifies that at least one test evaulated to true."
  (let* ((safe-context *context-item*)
	 (eval-set (recurse-for lists 0 nil satisfy safe-context))
	 (switcher nil))
    (dolist (n eval-set)
      (when n
	(setf switcher t)))
    switcher))
  
(defun simple-for-clause (lists &key return)
  "Function to handle 'for' statements.  Forms a new seqeunce by evaluating the 'return' function for all
list possibilities."
  (let ((elists (make-array 1 :adjustable t :fill-pointer 0))
	(safe-context *context-item*))
    (dolist (n lists)
      (vector-push-extend (funcall n) elists))
    (clean-node-list (recurse-for elists 0 nil return safe-context))))
    
(defun recurse-for (lists index-cur val-list function safe-context)
  "Recursive function that loops through every combination of list elements, 
returning a list with the results of the evaluation of 'function' for each combination."
  (cond ((= (+ index-cur 1) (length lists))
	 (append (loop for n from 0 to (- (length (elt lists index-cur)) 1)
		    collect (eval `(funcall ,function ,@(append val-list (list (elt (elt lists index-cur) n))) ,safe-context)))))
	(t (eval `(append ,@(loop for n from 0 to (- (length (elt lists index-cur)) 1)
	      collect `(list ,@(recurse-for lists (+ index-cur 1) (append val-list (list (elt (elt lists index-cur) n))) function safe-context))))))))

(defun clean-node-list (alist)
  "Replaces any lists in a given list with their elements.  ((1 2)(3 4)) becomes (1 2 3 4). 
Needed for 'recurse-for' which generates lists inside of lists."
;;May only work for 1 layer of lists.  Test for lists like (((1 2))(1 (((3))) 4))
  (let ((clean-array (make-array 1 :adjustable t :fill-pointer 0))
	clean-list
	switcher)
    (dolist (n alist)
      (cond ((if (and n (listp n)) (eql (class-of (elt n 0)) (class-of (make-instance 'elem-node))))
	     (dolist (m n)
	       (vector-push-extend m clean-array)))
	    (t (vector-push-extend n clean-array))))
    (dotimes (n (length clean-array))
      (setf switcher t)
      (dotimes (m (length clean-list))
	(when (eql (aref clean-array n) (elt clean-list m))
	  (setf switcher nil)))
      (when switcher
	(setf clean-list (append clean-list (list (aref clean-array n))))))
    clean-list))

(defun xpath-union (pre-load &rest items)
  "Returns the union of 2 or more sequences or items.  'Pre-load' is evaluated before any of the sequences 
so that the sequences can share the context item if necessary, as in the case //a/(b union c)/*"
  (let ((*context-backup* *context-item*)
	(new-seq))
    (when pre-load
      (setf *context-backup* pre-load))
    (dolist (n items)
      (let ((set (funcall n *context-backup*)))
	(if (listp set)
	    (setf new-seq 
		  (union new-seq set))			 
	    (setf new-seq 
		  (union new-seq (list set))))))
    (reverse new-seq)))

(defun |intersect| (item1 item2)
  "Returns the intersection of 2 sequences.  Will not work in path expressions, but //a/(b intersection c) 
probably cannot evaluate to anything anyway"
  (reverse (intersection item1 item2)))

(defun |except| (item1 item2)
  "Function to handle 'except' in x-path.  Identical to lisp's set-difference"
  (set-difference item1 item2))

(defun xpath-or (&rest items)
  "Function to handle 'or'.  Items must be expressed as functions so that the context-item can be the same
for all 'or' items."
  (let ((bkup-context *context-item*)
	or-bool)    
    (dolist (n items)
      (setf or-bool (or or-bool (funcall n bkup-context)))
      (when or-bool
	(return)))
    or-bool))

(defun xpath-and (&rest items)
  "Function to handle 'and'.  Items must be expressed as functions so that the context-item can be the same
for all 'and' items."
  (let ((bkup-context *context-item*)
	(and-bool t))    
    (dolist (n items)
      (setf and-bool (and and-bool (funcall n bkup-context)))
      (unless and-bool
	(return)))
    and-bool))

(defun xpath-node-order-comparison (comparison nodes)
  "Compares the ordinality of a list of nodes using the given comparison test"
  (let ((compare-nodes (make-array 1 :adjustable t :fill-pointer 0))
	(bkup-context *context-item*)
	the-node)        
    (dolist (n nodes)
      (setf the-node (funcall n bkup-context))
      (setf the-node (if (listp the-node)
			 (if (> (length the-node) 1)
			     (error "err:XPTY000 - Sequence of nodes given for node order comparison where only one node was expected")
			     (first the-node))
			 the-node))
      (vector-push-extend the-node compare-nodes))
    (eval `(funcall ,comparison ,@(loop for n across compare-nodes 
		    collect (ordinality n))))))

(defun xpath-<< (&rest nodes)
  "Compares the ordinality of nodes using <"
  (xpath-node-order-comparison #'< nodes))

(defun xpath->> (&rest nodes)
  "Compares the ordinality of nodes using >"
  (xpath-node-order-comparison #'> nodes))    
           
(defun |range| (val1 val2)  
  (loop for n from val1 to val2
       collect n))


(defun xpath-additive-operator (operator)
  (ecase operator
    (#\+ 'xpath-+)
    (#\- 'xpath--)))

(defun xpath-multiplicative-operator (operator)
  (ecase operator
    (#\* 'xpath-*)
    (|div| 'xpath-/)
    (|mod| 'xpath-mod)
    (|idiv| 'xpath-idiv)))
	 
(defun xpath-+ (term &rest terms)
  (let ((sum term))
    (loop for n in terms do
	 (incf sum n))
    sum))

(defun xpath-- (term &rest terms)
  (let ((sum term))
    (loop for n in terms do
	 (decf sum n))
    sum))

(defun xpath-* (term &rest terms)
  (let ((product term))
    (loop for n in terms do
	 (setf product (* product n)))
    product))

(defun xpath-/ (term &rest terms)
  (let ((product term))
    (loop for n in terms do
	 (setf product (/ product n)))
    product))

(defun xpath-idiv (term &rest terms)
  (let ((product term))
    (loop for n in terms do
	 (setf product (truncate (/ product n))))
    product))

(defun xpath-mod (term1 term2)
  (rem term1 term2))