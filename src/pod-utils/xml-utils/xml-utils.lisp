
;;;  Author: Peter Denno
;;;  Date: 2014-05-16
;;;  Purpose: Utilities for reading the various XML model files. Relies on cxml.

;;; Compatibility functions to replace Anderson's cl-xml with cxml (Closure XML)
;;; https://common-lisp.net/project/cxml

(in-package :xmlp)

(defclass line-cnt-dom-builder (rune-dom::dom-builder)
  ())

(defclass line-cnt-attribute-node-map (rune-dom::attribute-node-map)
  ((line-num :initform nil)))

(defun vanilla-document-parser (file)
  (cxml:parse-file file (cxml-dom:make-dom-builder)))

(defmethod document-parser ((file t))
  (xqdm:squeeze-xml 
   (cxml:parse-file
    file
     (make-instance 'line-cnt-dom-builder)
    :validate nil)))

;;; See cxml dom/dom-builder.lisp (Is this okay? Lots of unexported symbols!)
(defmethod sax:start-element :around ((handler line-cnt-dom-builder) namespace-uri local-name qname attributes)
  (let* ((stack (call-next-method))
	 (elem  (pop stack))
	 (amap  (change-class (slot-value elem 'rune-dom::attributes) 'line-cnt-attribute-node-map)))
    (setf (slot-value amap 'line-num) (sax:line-number handler))
    (setf (slot-value elem 'rune-dom::attributes) amap)
    (push elem stack)
    stack))

(defun line-num (elem)
  "Return the line number where the elem starts. This is possible if parsed with line-cnt-dom-builder."
  (when (xqdm:element-p elem)
    (when-bind (amap (dom:attributes elem))
	(when (and (slot-exists-p amap 'line-num)
		   (slot-boundp amap 'line-num))
	  (slot-value amap 'line-num)))))

;;; https://common-lisp.net/project/cxml/sax.html#serialization
(defmethod write-node ((node t) stream)
  (dom:map-document (cxml:make-character-stream-sink stream) node))

(defpackage |xmlns|)
(in-package :xqdm)

(defvar *xml-clone2old* nil)

(defun children (elem) (coerce (dom:child-nodes elem) 'list))

(defun (setf children) (val node)
  (setf (slot-value node 'rune-dom::children) val))

(defun clone-node (node) node) ; POD NYI


(defun (setf parent) (val node)
  (setf (slot-value node 'rune-dom::parent) val))

(defun name (elem-or-attr)
  (dom:node-name elem-or-attr))

(defun document (elem)
  (slot-value elem 'rune-dom::owner))

;;; POD Guessing 
(defun root (elem) 
  (dom:document-element elem))

(defun parent (elem) (dom:parent-node elem))

(defun element-p (x) 
  (dom:element-p x))

(defmethod value (ns) 
  (dom:value ns))

(defmethod value ((attr dom:attr)) (dom:value attr))

(defun attributes (elem)
  (let ((result (dom:attributes elem)))
    (if (listp result)
	result
	(dom:items result))))

(defun ordinality (elem) 
  (declare (ignore elem))
  (break "ordinality"))

(defun squeeze-xml (elem)
  "Recursively remove empty string content when element has both string and element content children."
  (let ((scanner (cl-ppcre:create-scanner "^\\s+$" :multi-line-mode t)))
    (pod-utils:depth-first-search 
     elem
     #'(lambda (x) (declare (ignore x)) nil) ; fail
     #'children 
     :do #'(lambda (x) ; This part is OK to use sequences
	     (let ((cs (dom:child-nodes x)))
	       (when (and (some #'dom:text-node-p cs)
			  (some #'dom:element-p cs))
		 (setf (xqdm:children x)
		       (delete-if #'(lambda (y) ; turns it into an svec? 
				      (and (dom:text-node-p y)
					   (cl-ppcre:scan scanner (dom:data y))))
				  cs)))))))
  elem)

;;; The next three were once in canon-xmi-gen.lisp
(defun xml-add-attr (owner prefix name value)
  "Add an attribute named PREFIX:NAME with value VALUE to OWNER, a rune-dom:element. Return the elem."
  (let* ((doc     (xqdm:document owner))
	 (ns      (dom:namespace-uri owner))
	 (text    (make-instance 'rune-dom::text :children #() :owner doc))
	 ;; I'm guessing that the nmap (which is in every attribute, yet lists all attributs) already exists. 
	 ;(nmap    (make-instance 'xmlp::line-cnt-attribute-node-map))
	 (attr    (make-instance 'rune-dom::attribute
				 :children (coerce (list text) 'vector)
				 :owner doc
				 :prefix prefix
				 :local-name name
				 :name (pod-utils:strcat prefix ":" name)
				 :owner-element owner)))
    ;; :ns ns  :element-type :attribute  :specified t
    (setf (slot-value attr 'rune-dom::namespace-uri) ns)
    (setf (slot-value attr 'rune-dom::specified-p) t)
    (setf (slot-value attr 'rune-dom::map) (dom:attributes owner))
    
    (setf (slot-value text 'rune-dom::parent) attr)
    (setf (slot-value text 'rune-dom::value) value)
    (pod-utils:push-last attr (slot-value (dom:attributes owner) 'rune-dom::items))
    owner))

(defun xml-add-elem (name parent doc)
  "Add an element named NAME to PARENT."
  (let (elem)
    (setf (xqdm:children parent) 
	  (append (xqdm:children parent) 
		  (list (setq elem (xml-make-node doc parent name nil :type 'xqdm:elem-node)))))
    elem))

(defun xml-set-content (elem value)
  "Set text/number content of PARENT to VALUE."
  (when value
    (unless (or (stringp value) (numberp value)) (error "set-content args"))
    (setf (xqdm:children elem) (list (if (stringp value) value (format nil "~A" value))))
    elem))

(in-package :pod-utils)

(declaim (inline xcar))
(defun xcar (elem)
  "CAR of xqdm:children of ELEM."
  (car (xqdm:children elem)))

(declaim (inline xnth))
(defun xnth (n elem)
  "NTHof xqdm:children of ELEM."
  (nth n (xqdm:children elem)))

(defmethod xml-find-child ((type symbol) (children list) &key (error-p nil))
  "Return first xqdm:element from list CHILDREN whose tag is TYPE, a symbol."
  (if-bind (child (find-if #'(lambda (x) (xml-typep-3 x type)) children)) ; 2013-03-06 I make thes typep-3 OK?
	   child
           (when error-p (error "No child element ~A" type))))

(defmethod xml-find-child ((type string) (children list) &key (error-p nil))
  "Return first xqdm:element from list CHILDREN whose tag dom:local-name is TYPE, a string."
  (if-bind (child (find type children :key #'(lambda (x) (dom:local-name x)) :test #'string-equal))
           child
           (when error-p (error "No child element ~A" type))))

(defmethod xml-find-child (type (elem dom:element) &key (error-p nil))
  "Return first child of element TYPE whose tag is TYPE."
  (xml-find-child type (xqdm:children elem) :error-p error-p))

(defmethod xml-find-child (type  (elem dom:document) &key (error-p nil))
  "Return first child of the document node's root whose tag is TYPE."
  (xml-find-child type (xqdm:root elem) :error-p error-p))

(defmethod xml-find-children ((type string) (elem dom:element))
  "Return a list of children of type TYPE. Second elem is a element."
  (xml-find-children type (xqdm:children elem)))

(defmethod xml-find-children ((type string) (children list))
  "Return a list of children of type TYPE a string matching the local-part of the tag. 
   Second elem is a list of elements."
  (loop for child in children
        when (string-equal (dom:local-name child) type)
        collect child))

(defmethod xml-find-children ((type symbol) (children list))
  "Return a list of children of type TYPE type. Second elem is a list of elements."
  (loop for child in children
        when (xml-typep child type) collect child))

(defmethod xml-find-children ((type symbol) (elem dom:element))
  "Return a list of children of type TYPE type. Second elem is a list of elements."
  (loop for child in (xqdm:children elem)
        when (xml-typep child type) collect child))

(defun xml-find-cdata-child (elem)
  (when elem
    (when-bind (str (loop for child in (xqdm:children elem)
                       when (stringp child) return child))
      (loop for pos from 0 to (1- (length str))
         when (alphanumericp (char str pos)) return str))))

;;; Deprecated!
(declaim (inline xml-find-string-child))
(defun xml-find-string-child (elem)
  (xml-find-cdata-child elem))

(defun xml-siblings (node)
  (xqdm:children (xqdm:parent node)))

(defun namespaces (elem &key result stop-at)
  "Return an alist of the namespace-URIs of the namespaces found in elem and its children.
   When all the prefixes in STOP-AT are found, stop searching. If stop-at is nil do a complete search."
  (let ((result-prefix '())
	(result-uri    '()))
    (breadth-first-search 
     elem
     #'(lambda (ignore)
	 (declare (ignore ignore)
		  (every #'(lambda (x) (member x stop-at :test #'equal)) result-prefix)))
     #'(lambda (x) (xqdm:children x))
     :on-fail nil
     :do #'(lambda (e) 
    

(defun xml-get-attr (elem attr-name-string &key prefix)
  "Get the attribute named ATTR-NAME, a string. If :prefix (a string) is supplied, test it
   against the attr's prefix. (Thus it doesn't get confused by versioned XMI packages.)"
  (flet ((easy-test (attr)      (equal attr-name-string (dom:local-name attr)))
	 (hard-test (attr) (and (equal attr-name-string (dom:local-name attr))
				(equal prefix           (dom:prefix attr)))))
    (let ((test (if prefix #'hard-test #'easy-test)))
       (find-if test (xqdm:attributes elem)))))

(declaim (inline xml-get-attr-value))
(defun xml-get-attr-value (elem attr-name-string &key prefix)
  "Return the value of the attribute of elem identified by ATTR-SYMBOL, a symbol
   interned in a package useds as the xml namespace of the attribute. Return nil
   if no attribute found."
  (when-bind (attr (xml-get-attr elem attr-name-string :prefix prefix))
      (xqdm:value attr)))

(defun xml-get-logical (name elem &key (error-p t))
  "Get the value of attribute or CHILD string content content named NAME from ELEM."
  (let ((result
	 (or (xml-get-attr elem name)
	     (when-bind (c (xml-find-child name elem))
	       (let ((val (car (xqdm:children c))))
		 (when (stringp val) val))))))
    (or result (when error-p (error "Elem does not contain child/attr '~A'." name)))))

(defmethod xml-typep (elem (type string))
  "Like typep, except TYPE is a string tested against ELEM.name.local-part."
  (and (xqdm:element-p elem)
       (string-equal type (dom:local-name elem))))

(defmethod xml-typep (elem (type symbol))
  "Like typep, except TYPE is a string tested against ELEM.name.local-part."
  (and (xqdm:element-p elem)
       (string-equal type (dom:local-name elem))))


(proclaim '(inline xml-typep-2))
(defun xml-typep-2 (elem ns type)
  (and (string-equal type (dom:local-name elem))
       (string-equal ns (dom:prefix elem))))

(defun xml-typep-3 (elem type)
  (and (xqdm:element-p elem)
       (eql (xqdm:name elem) type)))


(defun xml-make-node (document parent name children &key (type 'dom::attribute)) ; POD was xqdm:string-attr-node
  "Create a node of TYPE for DOCUMENT with ROOT (xqdm concept?) and NAME. 
   (NAME is either an attribute name, an element name, of if a xqdm:comment-node nil).
    NIL is often provided for CHILDREN, which can be set later."
  (if (eql type 'dom:comment)
      (make-instance type
		     :document document :parent parent 
		     :children (if (listp children) children (list children)))
      (make-instance type
		     :name name
		     :document document :parent parent 
		     :children (if (listp children) children (list children)))))

;;; Inspired by Vasilis M.'s cells-gtk/widgets.lisp (in the sense that it has 'subtypes').
(defmacro def-parse (method-name pass-downward (type &rest binds) &body body)
  (let* ((aux (cdr (member '&aux binds))) ; can't use dbind, not same idea.
         (keys (cdr (member '&key binds)))
         (keys (subseq keys 0 (position '&aux keys)))
         (attrs (subseq binds 0 (position '&key binds))) action)
    (with-gensyms (chilun c sint?)
      `(defmethod ,method-name ((elem-type (eql ,type)) dself &key ,pass-downward ,@keys)
         (declare (ignorable dself ,pass-downward))
         (let* ((,sint? nil)
		(,chilun (xqdm::children dself))
                ,@(loop #:for attr #:in attrs #:collect
			`(,(intern (string-upcase (c-name2lisp attr)))
			  (or (string-integer-p (setq ,sint? (xml-get-attr dself ,attr))) 
			      (and ,sint? (intern ,sint?)))))
                ,@aux)
           (declare (ignorable ,chilun ,sint?))
           ,@(loop for bod in body collect
                  (dbind (term &rest action/args) bod
                    (setf action '#:do)
                    (cond ((eql :self term)
                            `(progn ,@action/args))
                          (t
                            (unless (stringp term) ; then adjust the args...
                              (case term 
                                (:collect (setq action 'collect))
                                (:append  (setq action 'append))
                                (t (error "Unknown def-parse action: ~A" term)))
                              (setf term (first action/args) action/args (second action/args)))
                            `(loop #:for ,c #:in ,chilun 
				   #:when (xml-typep ,c ,term) ,action
                                  (,method-name ,(kintern (c-name2lisp term)) ,c 
                                                ,(kintern pass-downward) ,pass-downward ,@action/args)))))))))))

(defmacro with-xml-attrs (attrs elem &body body)
  (with-gensyms (e)
  `(let* ((,e ,elem)
	  ,@(mapcar #'(lambda (x) (list (intern (string-upcase (c-name2lisp x)))
					`(xml-get-attr ,e ,x))) 
		    attrs))
     ,@body)))

(defmemo spaces (n)
  (if (<= n 0) ""
    (format nil "~%~A" (loop for i from 1 to n with result = ""
			     do (setf result (strcat result "  "))
			     finally (return result)))))

(defun xml-follow-back (node path-back &optional accum)
  "Follow the xqdm:parent link from node back through the types (strings)
   of the list PATH-BACK. Return the object at the end of the list or nil
   if at some navigation the correct elem isn't found."
  (cond ((null path-back) (nreverse accum))
	(t (let ((parent (xqdm:parent node)))
	     (when (xml-typep parent (car path-back))
	       (xml-follow-back parent (cdr path-back) (push parent accum)))))))

;;; This doesn't balance the etag (they trail like in well-written lisp ;^)
;;; This is useless??? Use *print-pretty* with cl-xml or usr-bin-xmllint, below
(defun xml-indent (elem) 
  (depth-first-search 
   elem #'fail #'xqdm:children :tracking t
   :do 
   #'(lambda (node)
       (when (xqdm:element-p node)
	 (let* ((depth (length (tree-search-path)))
		(spaces (spaces depth)))
	   (setf (xqdm:children node)
		 (loop for c in (xqdm:children node)
		       when (xqdm:element-p c) collect spaces
		       collect c)))))))

(defun xml-collect-elem (predicate xml)
  "Navigate the XML structure, XML collecting elements that match 
   PREDICATE, a function of one argument."
  (let (accum)
    (labels ((collect-aux (x)
	       (when (xqdm:element-p x)
		 (when (funcall predicate x) (push x accum))
		 (loop for e in (xqdm:children x) do (collect-aux e)))))
      (collect-aux (if (typep xml 'dom:document) (xqdm:root xml) xml))
      accum)))

#+(and Linux (or Lispworks sbcl))
(defun usr-bin-xmllint(&key infile instring outfile)
  "Read INFILE a file of xml, and output OUTFILE, if specified, xml formatted by /usr/bin/xmllint.
   If INSTRING is specified, write output to a tmp file before running /usr/bin/xmllint (Useful for debugging).
   If OUTFILE is not specified, write to *standard-output*"
  (when instring 
    (with-open-file (s (lpath :tmp "xmllint-tmp.xml") :direction :output :if-exists :supersede)
      (write-string instring s))
    (setf infile (lpath :tmp "xmllint-tmp.xml")))
  (let* ((cmd (format nil "/usr/bin/xmllint --format ~A" (namestring (truename infile))))
	 (lint-stream  #+Lispworks(sys:open-pipe cmd :direction :input)
		       #+sbcl (make-string-input-stream (inferior-shell:run/s cmd)))
	 (outstream (if outfile (open outfile :direction :output :if-exists :supersede) *standard-output*)))
    (loop for line = (read-line lint-stream nil nil)
       while line do (write-line line outstream))
    (when outfile (close outstream))))

#+(and Linux (or Lispworks sbcl))
(defun usr-bin-diff (&key file1 file2 outfile (args " "))
  "Create a diff file with html escaping."
  (let* ((cmd (format nil "/usr/bin/diff ~A ~A ~A" 
		      args
		      (namestring (truename file1))
		      (namestring (truename file2))))
	 (diff-stream  #+Lispworks(sys:open-pipe cmd :direction :input)
		       #+sbcl(make-string-input-stream (inferior-shell:run/s cmd))))
    (with-open-file (outstream outfile :direction :output :if-exists :supersede)
      (loop for line = (read-line diff-stream nil nil)
	 while line do (write-line line outstream)))))



(defun xml-set-parents (elem)
  "The xqdm:parent is not always set!"
  (cond ((null elem) nil)
	((stringp elem) nil)
	((typep elem 'dom:node)
	 (loop for c in (xqdm:children elem) do 
	    (when (xqdm:element-p c) 
	      (when (null (xqdm:parent c)) (setf (xqdm:parent c) elem))
	      (xml-set-parents c)))))
  elem)

#+nil(defun xml-squeeze (elem) ; see also squeeze-xml ... 2014-07-22 This looks like the old one (deprecated)
  "Recursively remove empty string content when element has both string and element content children."
  (depth-first-search
   elem
   #'fail
   #'xqdm:children
   :do
   #'(lambda (x) 
       (when (and (some #'stringp (xqdm:children x))
		  (some #'xqdm:element-p (xqdm:children x)))
	 (setf (xqdm:children x)
	       (remove-if #'(lambda (y)
			      (and (stringp y)
				   (cl-ppcre:scan "^\\s*$" y)))
			  (xqdm:children x))))))
   elem)

(defun xml-remove-xmi-extensions (doc)
  "Return the document with xmi:extension elements removed."
  (let ((esym (intern "Extension" (find-package :xmi))))
    (depth-first-search (xqdm:root doc)
			#'fail
			#'xqdm:children
			:do #'(lambda (n)
				(when (xqdm:element-p n)
				  (setf (xqdm:children n)
					(remove-if #'(lambda (x) (xml-typep x esym))
						   (xqdm:children n))))))))



(defun base-namespace (doc)
  "Return the base namespace (string) of a xqdm:document DOC."
  (declare (ignore doc))
  (error "NYI"))
#|  (let (base-ns)
    (breadth-first-search
     (xqdm:root doc)
     #'(lambda (x) 
	 (and (xqdm:element-p x)
	      (setf base-ns (find '|xmlns|:|| (xqdm:namespaces x) :key #'xqdm:name))))
     #'xqdm:children)
    (when base-ns (xqdm:value base-ns))))
|#
