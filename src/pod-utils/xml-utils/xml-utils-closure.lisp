
;;;  Author: Peter Denno
;;;  Date: 2014-05-16
;;;  Purpose: Utilities for reading the various XML model files. Relies on cxml.

;;; Compatibility functions to replace cl-xml with cxml (clozure XML)

(defpackage xqdm 
  (:use cl)
  (:export
   #:children
   #:clone-node
   #:local-part 
   #:prefix 
   #:name 
   #:document 
   #:root 
   #:parent
   #:element-p 
   #:namespace
   #:namespaces 
   #:value 
   #:attributes 
   #:ordinality
   #:*xml-clone2old*))

(defpackage xmlp
  (:use cl)
  (:export
   #:document-parser
   #:write-node))

(in-package :xmlp)

(defmethod document-parser ((file t))
  (cxml:parse-file file (cxml-dom:make-dom-builder)))

(defmethod write-node ((node t) stream)
  (dom:map-document (cxml:make-octet-stream-sink stream) node))

(defpackage |xmlns|)

(in-package :xqdm)

;(declaim (inline children local-part prefix name document root parent 
;                 element-p namespaces attributes ordinality))

(defvar *xml-clone2old* nil)

(defun children (elem) (dom:child-nodes elem))

(defun clone-node (node) node) ; POD NYI

(defun (setf children) (val node)
  (setf (slot-value node 'rune-dom::children) val))

(defun (setf parent) (val node)
  (setf (slot-value node 'rune-dom::parent) val))

(defun local-part (name) (dom:local-name name))

(defun prefix (name) (dom:prefix name))

(defun name (elem) (dom:node-name elem))

(defun document (elem) (dom:document-element elem))

;;; POD Guessing 
(defun root (elem) 
  (dom:document-element elem))

(defun parent (elem) (dom:parent-node elem))

(defun element-p (x) 
  (dom:element-p x))

(defun namespaces (elem) 
  (declare (ignore elem))
  (break "namespaces"))

(defun namespace (elem) 
  (declare (ignore elem))
  (break "namespace"))

(defmethod value (ns) 
  (dom:value ns))

(defmethod value ((attr dom:attr)) (dom:value attr))

(defun attributes (elem) (dom:attributes elem))

(defun ordinality (elem) 
  (declare (ignore elem))
  (break "ordinality"))

(defun chilun (elem)
  (coerce (dom:child-nodes elem) 'list))

(defun (setf chilun) (val node)
  (setf (slot-value node 'rune-dom::children) val))

(defun squeeze-xml (elem) ; see also xml-squeeze
  "Recursively remove empty string content when element has both string and element content children."
  (let ((scanner (cl-ppcre:create-scanner "^\\s+$" :multi-line-mode t)))
    (depth-first-search 
     elem
     #'fail
     #'chilun ; POD Fix this? Write a new depth-first???
     :do #'(lambda (x) ; This part is OK to use sequences
	     (let ((cs (dom:child-nodes x)))
	       (when (and (some #'dom:text-node-p cs)
			  (some #'dom:element-p cs))
		 (setf (chilun x)
		       (delete-if #'(lambda (y) ; turns it into an svec? 
				      (and (dom:text-node-p y)
					   (cl-ppcre:scan scanner (dom:data y))))
				  cs)))))))
  elem)


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
  "Return first xqdm:element from list CHILDREN whose tag xqdm:local-part is TYPE, a string."
  (if-bind (child (find type children :key #'(lambda (x) (xqdm:local-part (xqdm:name x))) :test #'string-equal))
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
        when (string-equal (xqdm:local-part (xqdm:name child)) type)
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

(proclaim '(inline xml-elem-name))
(defun xml-elem-name (elem)
  (xqdm:local-part (xqdm:name elem)))

(proclaim '(inline xml-elem-namespace))
(defun xml-elem-namespace (elem)
  (slot-value (xqdm:name elem) 'xqdm:prefix))

#|
(defun xml-find-namespace (namespace doc)
  "Return the xml namespace value (a string) 
    with attribute name NAMESPACE (a symbol, for example |xmlns|::|uml|)
    in DOC (and xqdm:doc-node or descendent thereof."    
  (when-bind (elem-with-ns
	      (breadth-first-search 
	       doc 
	       #'(lambda (x) 
		   (when (xqdm:element-p x)
		     (find namespace (xqdm:namespaces x) :key #'xqdm:name)))
	       #'xqdm:children 
	       :on-fail nil))
    (xqdm:value (find namespace (xqdm:namespaces elem-with-ns) :key #'xqdm:name))))
|#

(defun xml-find-namespace (namespace doc)
   "Return the xml namespace value (a string) 
    with attribute name NAMESPACE (a symbol, for example |xmlns|::|uml|)
    in DOC (and xqdm:doc-node or descendent thereof."    
  (when-bind (elem-with-ns
	      (breadth-first-search 
	       doc 
	       #'(lambda (x) (find namespace (xqdm:namespaces x) :key #'xqdm:name))
	       #'(lambda (x) (remove-if-not #'xqdm:element-p (xqdm:children x)))
	       :on-fail nil))
    (xqdm:value (find namespace (xqdm:namespaces elem-with-ns) :key #'xqdm:name))))

;;; Should have been called xml-get-attr-value
(defun xml-get-attr (elem attr-name &key ns)
  "Get the value of the attribute ATTR-NAME, a string."
  (flet ((ns-test (attr)
           (let ((name (xqdm:name attr)))
             (and (string-equal attr-name (xqdm:local-part name)) 
                  (when-bind (prefix (xqdm:prefix name)) ; pod no other choice.
                    (string-equal ns prefix)))))
         (simple-test (attr) (string-equal attr-name (xqdm:local-part (xqdm:name attr)))))
    (let ((test (if ns #'ns-test #'simple-test)))
      (when-bind (attr (find-if test (xqdm:attributes elem)))
	(values (first (xqdm:children attr)) attr)))))

(declaim (inline xml-get-attr-value))
(defun xml-get-attr-value (elem attr-symbol)
  "Return the value of the attribute of elem identified by ATTR-SYMBOL, a symbol
   interned in a package useds as the xml namespace of the attribute. Return nil
   if no attribute found."
  (when-bind (attr (find attr-symbol (xqdm:attributes elem) :key #'xqdm:name))
    (values (xqdm:value attr) attr)))

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
       (string-equal type (xqdm:local-part (xqdm:name elem)))))

(defmethod xml-typep (elem (type symbol))
  "Like typep, except TYPE is a string tested against ELEM.name.local-part."
  (and (xqdm:element-p elem)
       (string-equal type (xqdm:local-part (xqdm:name elem)))))


(proclaim '(inline xml-typep-2))
(defun xml-typep-2 (elem ns type)
  (and (xqdm:element-p elem)
       (let ((name (xqdm:name elem)))
	 (and (string-equal type (xqdm:local-part name))
	      (string-equal ns (xqdm:prefix name))))))

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

#+(and Linux Lispworks)
(defun usr-bin-xmllint(&key infile instring outfile)
  "Read INFILE a file of xml, and output OUTFILE, if specified, xml formatted by /usr/bin/xmllint.
   If INSTRING is specified, write output to a tmp file before running /usr/bin/xmllint (Useful for debugging).
   If OUTFILE is not specified, write to *standard-output*"
  (when instring 
    (with-open-file (s (lpath :tmp "xmllint-tmp.xml") :direction :output :if-exists :supersede)
      (write-string instring s))
    (setf infile (lpath :tmp "xmllint-tmp.xml")))
  (let ((lint-stream  (sys:open-pipe (format nil "/usr/bin/xmllint --format ~A" (namestring (truename infile)))
				     :direction :input))
	(outstream (if outfile (open outfile :direction :output :if-exists :supersede) *standard-output*)))
    (loop for line = (read-line lint-stream nil nil)
       while line do (write-line line outstream))
    (when outfile (close outstream))))

#+(and Linux Lispworks)
(defun usr-bin-diff (&key file1 file2 outfile (args " "))
  "Create a diff file with html escaping."
  (let ((diff-stream  (sys:open-pipe (format nil "/usr/bin/diff ~A ~A ~A" 
					     args
					     (namestring (truename file1))
					     (namestring (truename file2)))
				     :direction :input)))
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

(defun xml-squeeze (elem) ; see also squeeze-xml ... 2014-07-22 This looks like the old one (deprecated)
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



	    
  




