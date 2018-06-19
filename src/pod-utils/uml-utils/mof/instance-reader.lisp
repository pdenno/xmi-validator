
;;; Purpose:  - Read MOF XMI 2.1, producing instances of MOF/MOP classes (an M2 model such as UML MM). 
;;;             Thus this could read XMI files produces by UML modeling tools INTO INSTANCES.
;;;             It is used by the MIWG Validator, for example. 
;;; (xmi2model-instance :file "/local/lisp/pod-utils/uml-utils/models/miwg/tc3.xmi")
;;; (xmi2model-instance :file "/home/pdenno/projects/miwg/vendor-exports/release-9/tc3/canonical/valid-canonical.xml")
;;; (xmi2model-instance :file "/home/pdenno/projects/miwg/vendor-exports/release-9/tc3/md165-export.xml")
;;; (xmi2model-instance :file "/local/lisp/pod-utils/uml-utils/data/infralib/10-08-07-cleanup.cmof")

(in-package :mofi)

(defstruct xmi-idref (-name nil :type string))
(defstruct xmi-href  (-name nil :type string))

(defvar *mmm* nil "for debugging")

(defvar *results* nil "Dynamically bound to the processing-results obj.")

;;; This is similar to the project-validation-vo of MIWG, but this package does
;;; not depend on that one. It collects information from the validation.
(defclass processing-results ()
  ;; conditions are collected by validation.
  ((conditions :reader conditions :initform (make-array '(100) :adjustable t :fill-pointer 0))
   ;; 'conditions' for which we only keep count of the number of occurrences; no details. 
   (count-conditions :reader count-conditions :initform (make-hash-table))
   ;; keyed by xmi:id, value is uml object. But 'first time through' just T
   (xmiid2obj-ht :initform (make-hash-table :test #'equal) :reader xmiid2obj-ht)
   ;; keyed by xqdm object (xqdm:elem-node or xqdm:attr-node), it is the instance (of mm-root-supertype) created 
   ;; or an effective slot definition, where a whole object isn't created by the XML object.
   (xqdm2model-ht :initform (make-hash-table) :reader xqdm2model-ht)
   ;; A list of xqdm:namespaces used in the document.
   (namespaces :initform nil)
   ;; A list of stereo xml elements, found outside the Model element
   (stereo-elems :reader stereo-elems :initform nil)
   ;; The base objects from which a stereotype object was created. 
   (stereo2base-ht :initform (make-hash-table) :reader stereo2base-ht)
   ;; This one is a clone of user-doc before it is canonicalized.
   (pristine-doc :reader pristine-doc :initform nil)
   ;; The xqdm:doc-elem. This one gets transformed to Canonical XMI.
   (user-doc :reader user-doc :initform nil)
   ;; The xqdm:doc-elem of corresponding valid.xmi (if any). 
   (valid-doc :reader valid-doc :initform nil)
   ;; "Cleared by user, keyed by 'to' abstract-node, value is 'from' abstract node"
   (xqdm-pristine2user-ht :initform (make-hash-table))
   ;; Maps from elems to line numbers
   (xqdm-elem2line-ht :initform (make-hash-table))
   ;; Counts profiles. Only used to give a name POD investigate.
   (user-profile-count :initform 0)
   ;; Store various objects (possibly stubs) typically in response to href lookup
   (temp-made-memo :initform (make-hash-table :test #'equal)) 
   ;; An object tracking valid/user matches for test cases
   (tc-matches :reader tc-matches :initform nil)
   ;; The XMI being used (xmi2.1, xmi2.1.1, xmi2.4, xmi2.4.1...)
   (xmi-namespace :reader xmi-namespace :initform nil)
   ;; look up the interned symbol in the documents xmi namespace
   (xmi-sym-ht :initform (make-hash-table :test 'equal))))

;;; This is of limited use because the MUT doesn't set it until some work already done.
(defmacro with-results ((&rest slots) &body body)
  "I don't know why I can't use &key..."
  (with-gensyms (mutt)
    (let ((mut (or (second (member :mut slots)) '(with-vo (mut) mut)))
	  (slots (subseq slots 0 (position :mut slots))))
      `(let ((,mutt ,mut))
	 (with-slots ,slots (processing-results ,mutt)
	   ,@body)))))

(declaim (inline xmi-sym))
(defun xmi-sym (str)
  "Memoized symbol intern for xmi STRING (e.g. 'id' --> xmi:id, 'uuid' --> xmi:uuid, etc.)"
  (with-slots (xmi-sym-ht) *results*
    (or
     (gethash str xmi-sym-ht)
     (with-slots (xmi-namespace) *results*
       (setf (gethash str xmi-sym-ht) (intern str xmi-namespace))))))
	 

(defmethod print-object ((obj processing-results) stream)
  (with-slots (conditions) obj
    (print-unreadable-object (obj stream)
      (format stream "Processing-results conditions:~A" 
	      (fill-pointer conditions)))))

(defvar *suppress-install* nil "Dynamically bound to T while reading stereotyped elements
         (they are outside the Model element) so that they don't get installed.")

(defun sysml-population-install-fn (obj)
  "A function called by initialize-instance :after -- this one installs OBJ
   in Population.members slot."
  (unless *suppress-install*
    (vector-push-extend obj (members *population*))))

;;; Might also try :external-format '(:utf-8 :eol-style :crlf) http://weitz.de/flexi-streams/#example
;;; POD this requires (require "twoway-stream") in delivery!


;;; THIS is how conditions are collected for reporting!
(defmacro results-handler-bind ((return-tag &key no-overflow-p no-simple-p) &body body)
  "Used in a few places to collect errors."
  `(let ((*error-output* *null-stream*))
     (handler-bind
	 (,@(unless no-simple-p
		    `((error #'(lambda (c)
				 (with-slots (mofi::conditions) mofi:*results*
				   (vector-push-extend c mofi::conditions))
				 (return-from ,return-tag mofi:*results*)))))
	  #-sbcl(conditions::simple-style-warning #'(lambda (c) (declare (ignore c)) (muffle-warning)))
	  (simple-warning #'(lambda (c) 
			      (with-slots (mofi::conditions) mofi:*results*
				(vector-push-extend c mofi::conditions))
			      (muffle-warning)))
	    #+lispworks
	    ,@(unless no-overflow-p
		      `((conditions:stack-overflow 
			 #'(lambda (c)
			     (with-slots (mofi::conditions) mofi:*results*
			       (vector-push-extend c mofi::conditions))
			     (return-from ,return-tag mofi:*results*))))))
       ,@body)))

(defun discover-model-n+1 (xqdm-doc)
  "Study namespaces prefixes looking for a familar one. Using the value (not the prefix)
   return the corresponding model."
  (let ((umlns (or (xml-find-namespace '|xmlns|::|uml| xqdm-doc)
		   (xml-find-namespace '|xmlns|::|cmof| xqdm-doc)
		   #+cre(xml-find-namespace '|xmlns|::|exp| xqdm-doc))))
    (or (find-model umlns :error-p nil)
	(error "Could not find a referenced metamodel among the XML namespaced defined in the file.<br/> 
                Provide the standard URI for xmlns:uml (or xmlns:cmof if it is appropriate).<br/>
                A list of these is provided <a href='se-interop/tools-overview#preloads'>here</a>."))))

(defun discover-model-xmi-model (xqdm-doc)
   "Returns the lisp package of DOC an xqdm:document."
   (when-bind (xmi-elem (depth-first-search 
			 (xqdm:root xqdm-doc)
			 #'(lambda (x) 
			     (or (xml-typep x "XMI") 
				 (xml-typep x "Model")
				 (xml-typep x "Profile")))
			 #'xqdm:children
			 :on-fail nil))
     (let* ((xmi-ns (find '|xmlns|::|xmi| (xqdm:namespaces xmi-elem) :key #'xqdm:name))
	    (pkg (xqdm:namespace xmi-ns)))
       (or (mofi:find-model (package-name pkg) :error-p nil)
	   (error 'mofi:xmi-namespace-unknown :provided (package-name pkg))))))

(defun discover-ns-prefix/uri (doc)
  "Looking not too deep into DOC, return values ns-prefix ns-uri."
  (let* ((lev1 (loop for c in (xqdm:children (xqdm:root doc)) when (xml-typep c 'cmof::|Tag|) collect c))
	 (lev2 (mapappend 
		#'(lambda (x) (loop for c in (xqdm:children x) when (xml-typep c 'cmof::|Tag|) collect c)) lev1))
	 (lev1+2 (append lev1 lev2))
	 (n-sym (intern "name" ""))
	 (v-sym (intern "value" "")))
    (values
     (when-bind (pre (find-if #'(lambda (x) (string= (xml-get-attr-value x n-sym) "org.omg.xmi.nsPrefix")) lev1+2))
       (xml-get-attr-value pre v-sym))
     (when-bind (uri (find-if #'(lambda (x) (string= (xml-get-attr-value x n-sym) "org.omg.xmi.nsURI")) lev1+2))
       (xml-get-attr-value uri v-sym)))))

(defun discover-profiles-used (xqdm-doc)
  "Return hrefs for all profiles used."
  (let ((applied-profs (xml-collect-elem #'(lambda (x) (xml-typep x "appliedProfile")) xqdm-doc)))
    (remove-duplicates 
     (mapcar #'(lambda (x) (car (split x #\#)))
	     (mapcar #'(lambda (x) (xml-get-attr x "href")) applied-profs))
     :test #'string=)))

(defmemo-equal profile-namespace (href)
  "Return the 'short name' (car of nicknames) of the model corresponding to HREF, 
   if any, or a made-up shortname otherwise."
  (let ((href (first (split href #\#))))
    (if-bind (model (find href *essential-models* 
			  :key #'lisp-package 
			  :test #'(lambda (h p) 
				    (member h (package-nicknames p) :test #'string-equal))))
	     (car (package-nicknames (lisp-package model)))
	     (with-results (user-profile-count)
	       (format nil "user_profile_~A" (incf user-profile-count))))))

(defmethod xmi-namespace ((doc #-sbcl xqdm:doc-node #+sbcl t))
  "Return the XMI namespace of the document, or nil if you can't find it."
  (let (ns)
    (depth-first-search 
     (xqdm:root doc)
     #'(lambda (x) 
	 (and (xqdm:element-p x)
	      (setf ns (find '|xmlns|::|xmi| (xqdm:namespaces x) :key #'xqdm:name))))
     #'xqdm:children
     :on-fail nil)
    (when ns (find-package (car (xqdm:children ns))))))

(defun xmi2model-instance (&key  instance-xqdm file (force nil) pop-obj (clone-p t) (linenums-p t))
  "Toplevel function to parse XMI 2.1 and instantiate a Mn+1 Model (MODEL-N+1) with the population 
  defined in FILE, returning the Mn Model object. The function expects a uml:Model instance in the XMI, 
  which is what is processed. If pop-obj is specified, it came through essential-load.lisp."
  (dbg-message :time 1 "~%Start process: ~A" (now))
  (setf *results* (make-instance 'processing-results))
  (with-slots (conditions user-doc pristine-doc stereo-elems namespaces 
	       xqdm-pristine2user-ht xqdm-elem2line-ht xmi-namespace) *results*
    (setf *mmm* (setf user-doc (or instance-xqdm (xmlp:document-parser file)))) ; *mmm* for debugging.
    (xml-set-parents user-doc) ; 2011-03-18, below too.
    (setf xmi-namespace (xmi-namespace user-doc))
    (cond (clone-p  
	   (setf xqdm:*xml-clone2old* xqdm-pristine2user-ht) ; used in xqdm:clone-node
	   (setf pristine-doc (xml-set-parents (xqdm:clone-node user-doc)))
	   (when linenums-p (xml-record-positions pristine-doc xqdm-elem2line-ht)))
	  (linenums-p (xml-record-positions user-doc xqdm-elem2line-ht)))
    (clear-memoize 'profile-namespace)
    (dbg-message :time 1 "~%XML Read complete: ~A" (now))
    (setf namespaces (mapappend #'xqdm:namespaces (xml-collect-elem #'(lambda (x) (xqdm:namespaces x)) user-doc)))
    ;; Get the Model element, and every profile by searching entire file.
    (mvb (model-elem profiles) (search-doc-for-model-and-profiles user-doc)
      (unless model-elem (error 'mof-no-model))
      (setf (fill-pointer conditions) 0)
      (unless pop-obj (setf pop-obj (reader-ensure-population-model user-doc file force))) ; may be thru e-load.lisp
      (setf (processing-results pop-obj) *results*)
      (setf *mm-debug-id* 0)
      (let ((*model* (model-n+1 pop-obj))
	    (*population* pop-obj))
	(declare (special *model* *population*))
	(with-vo (mut) (setf mut *population*))  ;allow ocl:allInstances to work... IFFY! ; 2011-11-16 was *s-s-vo*
	(collect-xmiid user-doc) 
	(with-slots (members ns-prefix ns-uri) *population*
	  (mvb (prefix uri) (discover-ns-prefix/uri user-doc)
	    (setf ns-prefix prefix)
	    (setf ns-uri uri))
	  (setf (fill-pointer members) 0)
	  (setf stereo-elems (pp-find-stereo-objs user-doc))
	  (parse-model-and-profiles model-elem profiles)
	  (dbg-message :time 1 "~%Created ~A Elements: ~A" (fill-pointer members) (now))
	  (post-process-model *population*)
	  pop-obj)))))

(defun xml-record-positions (doc ht)
  "Record the line-numbers of every elem that has an xmi:id. Uses tracking code
   that I added to cl-xml/code/xparser/xml-printer.lisp."
    (with-output-to-string (s) 
      (mvb (ignore e2l-ht) (xmlp:write-node doc s)
	(declare (ignore ignore))
	(loop for k being the hash-key of e2l-ht using (hash-value v)
	   do (setf (gethash k ht) v))))
  (values))

(defun collect-xmiid (doc)
  "Collect (temporarily, into xmiid2obj-ht as T) xmiids from the document.
   The value in the HT is set to T. If it remains T after post-processing,
   then the reference is not know. There are places where checking for T
   has to be performed."
  (with-slots (xmiid2obj-ht) *results*
    (let ((xmi-id (xmi-sym "id")))
      (depth-first-search 
       doc 
       #'fail 
       #'xqdm:children
       :do #'(lambda (node) 
	       (when (xqdm:element-p node)
		 (when-bind (id (xml-get-attr-value node xmi-id))
		   (setf (gethash id xmiid2obj-ht) t))))))))

;;; Note that this parses PROFILES, not stereotype applications (done in post-process-model).
(defun parse-model-and-profiles (model-elem profiles)
  "Call parse-elem on the top-level XMI objects (uml:model and concatended profiles)."
  (with-slots (xmiid2obj-ht) *results*
    (setf (gethash "+The-Model+" xmiid2obj-ht) (parse-elem model-elem nil))
      (loop for profile in profiles do 
	    (setf (gethash (xml-get-attr profile "id") xmiid2obj-ht) (parse-elem profile nil)))))

(defun reader-ensure-population-model (doc file force)
  "Create the population object for DOC."
  (let* ((model-n+1 (discover-model-n+1 doc))
	 (models-governing (cons model-n+1 (depends-on-models model-n+1))))
    (ensure-model (pathname-name file) :force force
		  :model-class 'population
		  :source-file file
		  :instance-install-fn #'sysml-population-install-fn
		  :documentation (format nil "Read from ~A on ~A" file (now))
		  :model-n+1 model-n+1
		  :model-xmi (discover-model-xmi-model doc)
		  ;; 2010-05-29 this used to force (list (find-model "SysML"))
		  :profiles-used (discover-profiles-used doc) 
		  :depends-on-models models-governing)))

;;; POD Designed to allow the XMI to contain both the Model and Profiles. 
;;; This isn't something we do in MIWG anymore. 
(defun search-doc-for-model-and-profiles (doc)
  "Search the xml doc for the Model element and Profile elements. 
   Returns values model-elem and list of all the profile objects found."
  (let (;(is-cmof-p (eql (discover-model-n+1 doc) (find-model :cmof)))
	model-elem profiles)
      (breadth-first-search 
       doc 
       #'fail
       #'(lambda (p) ; was #'xqdm:children -- very wasteful!
	   (when (or
		  (and (xqdm:element-p p)
		       (member (xml-elem-name p) '("XMI" "Model" "Package" "Profile") :test #'string=))
		  #-sbcl(typep p 'xqdm:doc-node))
	     (xqdm:children p)))
       :do  #'(lambda (n)
		(when (xqdm:element-p n)
		  (let ((name (xml-elem-name n))) ; RepositorySet for edbark MMM (2012 "Schema"
		    (cond ((or (string= name "Model") (string= name "Schema")) (setf model-elem n))
			  ((string= name "Profile")   (push n profiles))
			  ((string= name "Package")
			   (let ((parent (xqdm:parent n)))
			     (when (or 
				    (string= "_0" (xml-get-attr n "id"))
				    (not parent)
				    (and
				     parent
				     (or #-sbcl(typep parent 'xqdm:doc-node)
					 (string= (xml-elem-name parent) "XMI"))))
			       (setf model-elem n))))
			  #|((and (string= name "packagedElement") ; 2016-01-06 for ODM (possibly the new 2.5 way for MOF models)
				(string= "XMI" (xml-elem-name (xqdm:parent n))))
			   (format t "~% further..."))|#)))))
      (unless model-elem ; model is a profile. Better only be one!
	(setf model-elem (car profiles))
	(setf profiles nil))
      (values model-elem profiles)))
	    
(defun mm-find-instance (&key predicate type type-name id (error-p nil) 
			 (model (with-vo (mut) mut)) population)
  "Search through the model looking for an instance satisfying PREDICATE, or of type TYPE, 
   TYPE-NAME (a string) or having id ID (depending on which one of these was provided.)"
  (with-slots (members) model
    (when population (setf members (coerce population 'simple-vector)))
    (cond (predicate
	   (or 
	    (loop for obj across members
	       when (funcall predicate obj) return obj)
	    (when error-p (error "No instance found satisfying predicate."))))
	  (type 
	   (or 
	    (loop for obj across members
	       when (typep obj type) return obj)
	    (when error-p (error "No instance of ~A found." type))))
	  (id 
	   (or 
	    (loop for obj across members
	       when (= (%debug-id obj) id) return obj)
	    (when error-p (error "No instance found with id ~A." id))))
	  (type-name ; useful because e.g. many UML versions loaded
	   (or 
	    (loop for obj across members
	       when (find type-name
			  (closer-mop:class-precedence-list (class-of obj))
			  :key #'(lambda (k) (string (class-name k)))
			  :test #'string=) return obj)
	    (when error-p (error "No instance found with id ~A." id)))))))
		  
(declaim (inline namespace-names-model-p))
(defun namespace-names-model-p (str)
  (with-slots (namespaces) *results*
    (when-bind (ns-node (find str namespaces :key #'xqdm:name :test #'string=))
      (eql (lisp-package *model*) (xqdm:namespace ns-node)))))

;;; 2010-10-12 POD Was def-memo-equal (was class/attr, a list) I don't see why, attr is unique!
(defun attr-is-slot-p (class attr)
  "Returns slot if ATTR (an xqdm:string-attr-node) refers to a slot in CLASS.
   Uses m1-find-slot-named, above."
  (let* ((name (xqdm:name attr))
	 (prefix (xqdm:prefix name)))
    (and (or (string= "" prefix) 
	     (namespace-names-model-p prefix))
	 (m1-find-slot-named class (xqdm:local-part name)))))

#|
(defun attr-is-tag-p (class attr)
  "Returns slot if ATTR (an xqdm:string-attr-node) refers to a slot in CLASS.
   Uses m1-find-slot-named, above."
  (let* ((name (xqdm:name attr))
	 (prefix (xqdm:prefix name)))
    (and 
     (stereotype-p class)
     (or (string= "" prefix) (namespace-names-model-p prefix))
     (m1-find-slot-named class (xqdm:local-part name)))))
|#


(defun class-of-elem (elem parent-class &key warn-p profile)
  "If the xml element ELEM defines a class, return the class object.
   Tries 3 approaches to identify class. Returns the class object."
  (let (type slot)
    (with-slots (lisp-package) (or profile *model*)
    (cond ((setf type (xml-get-attr elem "type" :ns "xmi")) ;(1) Type is specified by xmi:type=
	   (let ((class-name (intern
			      (if-bind (pos (position #\: type)) (subseq type (1+ pos)) type)
			      lisp-package)))
	     (dbg-message :readers 5 "~%Class-of-elem: class = ~A" class-name)
	     (or (find-class class-name nil)
		 (if warn-p
		     (warn 'mof-class-not-found :class-name class-name :elem elem)
		     (return-from class-of-elem nil)))))
	  ((setf slot (m1-find-slot-named parent-class (xqdm:name elem))) ;(2) Use XMI rule 2g to infer type
;;; 2010-09-29: POD Commenting out. Stereotyping makes this not quite valid. Needs thought.
	   (when-bind (range (slot-definition-range slot))
;	     (unless (null (closer-mop:class-direct-subclasses range))
;	       (warn 'mof-cannot-infer-type :elem elem :class parent-class :slot (slot-direct-slot slot)))
	     range))
	  (t ;;(3) Element name defines type. Perhaps this is only used with uml:Model and Stereotyped objs.
	     ;; where the element name is the stereotype name. 
	     ;; 2008-03-10 In this case, we need to find the base_<type> and programmatically 
	     ;; create the instance. Otherwise while parsing we may encounter slots (from the base type)
	     ;; that we can't handle. 
	   (let* ((name (xqdm:name elem))
		  (local-name (xqdm:local-part name))
		  (class (find-class (intern local-name lisp-package) nil)))
	     (or class 
		 (if warn-p
		     (warn 'mof-class-not-found :class-name name :elem elem)
		     (return-from class-of-elem nil)))))))))

;;; mofi:substitute-ocl-range in ALL UMLs now. 
(defun parse-primitive-value (value class)
  "Return a string, number etc, or warn if the xml element doesn't have 
   such as it one child (and return nil)."
  (let ((class-name (class-name class))
	(v nil))
    (cond ((eql class-name 'ptypes::|String|)
	   (cond ((stringp value) (basic-ascii-string value #\Space))
		 ((null value) "")))
	  ((eql class-name 'ptypes::|Integer|) ; POD not sure about this.
	   (setf v (read-from-string value)) 
	   (when (numberp v) v))
	  ((eql class-name 'ptypes::|Boolean|) 
	   (setf v (string-trim '(#\Space) value))
	   (cond ((string-equal v "TRUE") :true)
		 ((string-equal v "FALSE") :false)))
	  ((eql class-name 'ptypes::|UnlimitedNatural|)
	   (cond ((string= (string-trim '(#\Space) value) "*") '*)
		 ((and (cl-ppcre:scan "\s*[0-9.]+\s*" value) ; permissive
		       (numberp (setf v (read-from-string value))) v))
		 (t (warn 'mof-expected-primitive :elem value 
			  :expected (class-name class) :got value))))
	  ((stringp value) (read-from-string value)) ; POD not sure about this.
	  (t (warn 'mof-expected-primitive :elem value 
			  :expected (class-name class) :got value)))))

(defun parse-enum-elem (elem class)
  "Return a keyword. Usually only called on canonical XMI."
  (declare (ignore class)) ; POD type checking NYI????
  (kintern (car (xqdm:children elem))))

(declaim (inline xmi-stereotype-p))
(defun xmi-stereotype-p (name class)
  "Return T if the element looks like a stereotype."
  (or 
   (stereotype-p (find-class name nil))
   (stereotype-p class)
   (member name (stereotype-base-names class) :test #'string=))) ; original method...

(declaim (notinline parse-elem-child-loop))
(defun parse-elem-child-loop (elem obj class profile)
  "Parse the children of the argument ELEM into properties of OBJ.
   CLASS is the class of OBJ (defined in the parent to ELEM)."
  (let ((xmi-eextension (xmi-sym "Extension"))
	(xmi-extension (xmi-sym "extension")))
    (loop for child in (xqdm:children elem)
       when (xqdm:element-p child) do
	 (let ((property-name (xml-elem-name child)))
	   (if-bind (slot (m1-find-slot-named class property-name))
		    (when-bind (val (parse-elem child class))
		      (when (slot-definition-is-derived-p slot)
			(warn 'xmi-serializes-derived :class class :slot slot :elem elem :object obj))
		      (let ((slot-name (closer-mop:slot-definition-name slot)))
			(when (eql val (slot-definition-default slot))
			  (warn 'xmi-serializes-default :class class :slot slot :elem elem :object obj))
			(if (listp (slot-value obj slot-name)) ; "raw" collection
			    (push-last val (slot-value obj slot-name))
			    (setf (slot-value obj slot-name) (list val))))) ; 2011-08-02 (list val)
		    ;; No slot
		    (cond ((xmi-stereotype-p (xqdm:name child) class)
			   (unless profile (warn 'mof-stereotype-application-in-model :elem child)))
			  ((string= property-name "href") 
			   (setf (%source-elem obj) (car (xqdm:children child))))
			  ((not (or (xml-typep child xmi-eextension) ; MD 16.5
				    (xml-typep child xmi-extension)))
			   (warn 'mof-no-such-attr :class class :slot-name property-name :elem elem))))))))

(declaim (notinline parse-elem-attr-loop))
(defun parse-elem-attr-loop (elem obj class)
  "Parse the attributes of the argument ELEM into properties of OBJ.
   CLASS is the class of OBJ (defined in the parent to ELEM)."
  (with-slots (xqdm2model-ht xmi-namespace) *results* ; track relationship between xml and model.
    (let ((xmi-type (xmi-sym "type"))
	  (xmi-id (xmi-sym "id"))
	  (xmi-uuid (xmi-sym "uuid"))
	  (attrs (xqdm:attributes elem)))
      (loop for attr in attrs do
	   (let ((name (xqdm:name attr))
		 slot)
	     (cond ((or (eq name xmi-type) (eq name xmi-id) (eq name xmi-uuid)) t) ; ignore
		   ((setf slot (attr-is-slot-p class attr))
		    (let ((val (parse-attr (xqdm:value attr) class (xqdm:local-part name))))
		      (when (slot-definition-is-derived-p slot)
			(warn 'xmi-serializes-derived :class class :slot slot :elem elem :object obj))
		      (when (eql val (slot-definition-default slot))
			(warn 'xmi-serializes-default :class class :slot slot :elem elem :object obj))
		      (setf (gethash attr xqdm2model-ht) slot)
		      (setf (slot-value obj (closer-mop:slot-definition-name slot)) val)))
		   ((cl-ppcre:scan "^base_" (string name)) 
		    (setf (gethash attr xqdm2model-ht) class)) ; not used?
		   ((and ; In this case it is xmi:version etc push in by cl-xml.
		     (let ((sp (symbol-package name)))
		       (or (eql sp xmi-namespace)
			   (eql sp (find-package '|http://www.w3.org/2001/XMLSchema-instance|))))
		     (or (eql class (find-class (intern "Model" (symbol-package (class-name class)))))
			 (eql class (find-class (intern "Profile" (symbol-package (class-name class)))))))
		    t)
		   (t (warn 'mof-no-such-attr :class class :slot-name name :elem elem))))))))

;(declaim (inline ireader-make-obj))
(defun ireader-make-obj (class elem)
  "Create and return an object of class CLASS, storing ELEM as record of from what it is created.
   If *population* is bound, the object created will get pushed onto Population.members
   (unless *suppress-install* is true)."
  (with-slots (xmiid2obj-ht) *results* 
    (let ((obj (make-instance (class-name class) :source-elem elem)))
      (when-bind (id (xml-get-attr elem "id" :ns "xmi"))
	;; 2014-04-26 added next, then commented it out same day. (It is better design than xmiid2obj, but...
	;(setf (%token-position obj) id) 
	(when-bind (orig (gethash id xmiid2obj-ht))
	  (unless (eql orig T) ; Preliminary scan for xmiids did this
	    (warn 'mof-duplicate-xmi-id :object obj :original orig 
		  :xmi-id (intern id (lisp-package *model*)))))
	;; Do this even with store-p = nil, so that the object can be 
	;; used to resolve stereotype stuff.
	(setf (gethash id xmiid2obj-ht) obj))
      obj)))

(defun check-xmi-type-in-href (elem)
  "Check whether xmi:type is used in an element using href; it should not be post xmi 2.4."
  (let ((attrs (xqdm:attributes elem)))
    (when (and (member (xmi-sym "type") attrs :key 'xqdm:name)
	       (member "href" attrs :key #'(lambda (x) (symbol-name (xqdm:name x))) :test #'string=)
	       (with-vo (mut) (member (model-name (model-n+1 mut))
				      (member :uml241 (reverse (all-umls))))))
      (warn 'xmi-type-in-href :elem elem))))


;;; The main routine, into which much of the above stuff is inlined. 
;;; Post-processing is done elsewehre to set scalar slots to scalar values,
;;; because otherwise a mistake such a setting a value twice could be missed. 
(defun parse-elem (elem parent-class &key (store-p t) (warn-p t) profile)
  "Process ELEM, returning an xmi-idref or xmi-href, or an object with its attributes set.
   Returns nil when nothing can be created (error)."
  (let ((*suppress-install* (not store-p)) name class)
    (declare (special *suppress-install*))
    (check-xmi-type-in-href elem)
    (with-slots (xqdm2model-ht) *results*
      (cond ((setq name (xml-get-attr elem "idref" :ns "xmi"))
	     (setf (gethash elem xqdm2model-ht) (make-xmi-idref :-name name))) ;track relationship
	    ((setq name (xml-get-attr elem "href"))
	     (setf (gethash elem xqdm2model-ht) (make-xmi-href :-name name)))  ;track relationship
	    (t
	     (setq class (class-of-elem elem parent-class :warn-p warn-p :profile profile))
	     (cond ((primitive-type-p class)
		    (setf (gethash elem xqdm2model-ht) class)
		    (parse-primitive-value (car (xqdm:children elem)) class))
		   ((enum-p class) 
		    (setf (gethash elem xqdm2model-ht) class)
		    (parse-enum-elem elem class))
		   (class ; It is a new object. Make it, call recursively to fill it.
		    (let ((obj (ireader-make-obj class elem)))
		      (setf (gethash elem xqdm2model-ht) obj) ; added 2011-03-21
		      (dbg-message :readers 5 "~%Parse-elem: class = ~A" class)
		      (parse-elem-child-loop elem obj class profile)
		      (parse-elem-attr-loop elem obj class)
		      obj))
		   (t (error 'xmi-general-error :str (format nil "~%Could not find class of elem: ~S" (xqdm:name elem))))))))))

#| Note: Full XMI allows strings to be interpreted as references whereas Canonical XMI 
   would require an xmi:idref."

Full XMI:
  XMIAttributes <-- ... (FeatureAttrib)*
  FeatureAttrib <-- ... | XMIReferenceAttribute
  XMIReferenceAttribute <--- xmiName=refID+ (where refID is separated by one space). 

|#
(defun parse-attr (string class attr-name)
  "Return a value (atom or list of xmi-idref) from the parse of STRING,
   checking CLASS.ATTR-NAME for info of type to return. Only report 'reading errors'."
  (let* ((slot (m1-find-slot-named class attr-name))
	 (range-class (slot-definition-range slot)))
    (cond ((primitive-type-p range-class) 
	   (parse-primitive-value string range-class))
	  ((enum-p range-class) (kintern string))
	  ;; POD Rule 2j: "Use this production to serialize references whose values are objects 
	  ;; that are serialized in the document. The value...separated by a space." -- I'm 
	  ;; assuming that |Element| is what is meant by "object" here. 
	  (t
	   (let ((refs (split string #\Space)))
	     (loop for r in refs 
		   if (string= r "")
		   do (warn 'xmi-excess-space :string string) ; pod bug! relevant-xmi needs :elem or :object.
		   else collect (make-xmi-idref :-name r)))))))


;;;=========================================
;;; Stereotyped object processing
;;;=========================================
(defun pp-find-stereo-objs (doc)
  "Search for xqdm:elems defined by stereotypes. They are outside of the uml:Model"
  (flet ((interesting-children (node)
	  "Return children of the XML elem NODE, except when NODE is uml:Model or xmi:Extension."
	  (unless (or (xml-typep-2 node "uml" "Model")
		      (xml-typep-2 node "xmi" "Extension"))
	    (xqdm:children node))))
    (let ((stereo-elems (make-array 100 :adjustable t :fill-pointer 0)))
      (depth-first-search 
       doc 
       #'fail 
       #'interesting-children 
       :do #'(lambda (node) 
	       (when (and (xqdm:element-p node) (elem2stereo-class node))
		 (vector-push-extend node stereo-elems))))
      stereo-elems)))

;;; POD This should be able to look through populations too! NYI
(defun elem2stereo-class (elem)
  "Return the mofi stereotype object (an mm-type-obj that is stereotype-p) for 
   the XML ELEM, if any. If non-nil returned, ELEM is a stereotype application."
  (with-vo (session-models)
    (with-slots (namespaces) *results*
      (when-bind (name (xqdm:name elem))
	(when-bind (ns (find (get name :prefix) namespaces :key #'xqdm:name :test #'string=))
	  (when-bind (model (or (find-model (string (package-name (xqdm:namespace ns))) :error-p nil)
				(find (string (package-name (xqdm:namespace ns)))
				      session-models
				      :test #'string= 
				      :key #'(lambda (x) (and (typep x 'user-profile)
							      (ns-uri x)))))) ; 2012-09-05 was href-uri
	    (when (typep model 'abstract-profile) 
	       (find (xqdm:local-part name) (coerce (types model) 'list)
		     :test #'(lambda (x y) (string-equal x (string (class-name y))))))))))))

(defun pp-mixin-stereo-objs ()
  "Specialize (by change-class, etc.) stereo-elems found earlier.
   Set the xmiid2obj-ht value to the new 'mixin instance' too."
    (with-slots (xmiid2obj-ht stereo-elems xqdm2model-ht) *results*
      (loop for elem across stereo-elems 
	 for stereo-class = (elem2stereo-class elem) do ; 2012-09-07 store-p was nil
	   (when-bind (stereo-obj (parse-elem elem nil :store-p t :warn-p nil :profile (of-model stereo-class)))
	     (when-bind (xmi-id (xml-get-attr elem "id"))
	       (setf (gethash xmi-id xmiid2obj-ht) stereo-obj))
	     (if-bind (xmiid/attr-name (stereo-obj-base-xmiid/attr-name elem (class-of stereo-obj)))
		      (if-bind (base-obj (gethash (car xmiid/attr-name) xmiid2obj-ht))
			       (progn
				;(setf (gethash base-obj-xqdm-obj xqdm2model-ht) base-obj)
				 (setf (gethash elem              xqdm2model-ht) stereo-class)
				 (update-object-for-stereotype base-obj stereo-obj))
			       (warn 'mof-no-object-for-stereotyping 
				     :elem elem :object stereo-obj 
				     :id (car xmiid/attr-name) :attr-name (cdr xmiid/attr-name)))
		      (warn 'mof-no-object-for-stereotyping 
			    :elem elem :object stereo-obj :id nil :attr-name nil))))))

;;; 2012-12-08 This can be fairly easily tested by grabbing the elem out of the doc and finding the stereo-class.
(defun stereo-obj-base-xmiid/attr-name (elem stereo-class)
  "Return a cons (xmi:id . attr-name) found in ELEM a stereotype application of 
   type STEREO-OBJ or NIL if failure."
  (let ((xmi-idref (xmi-sym "idref")))
    (loop for base-name in (stereotype-base-names stereo-class) ; base-name e.g. base_Class
       for xmi-id = (or (xml-get-logical base-name elem :error-p nil) 
			(when-bind (c (xml-find-child base-name elem :error-p nil)) ; POD 2012-12-08 (never used?)
			  (xml-get-attr-value c xmi-idref)))
       when xmi-id return (cons xmi-id base-name))))

(defun update-object-for-stereotype (base-obj stereo-obj)
  "Change-class of BASE-OBJ to add the STEREO-OBJ mixin. 
   Add values from STEREO-OBJ into BASE-OBJ."
  (cond ((member (class-of stereo-obj) (closer-mop:class-precedence-list (class-of base-obj)))
	 (let ((stereo-class (class-of stereo-obj)))
	   (with-results (stereo2base-ht)
	     (warn 'mof-duplicate-sterotype-application 
		   :object base-obj 
		   :duplicates (loop for val being the hash-value of stereo2base-ht
				  using (hash-key key)
				  when (and (eq val base-obj) (eql (class-of key) stereo-class)) 
				  collect val)))))
	((valid-base-class-p (class-of base-obj) (class-of stereo-obj))
	 (with-results (stereo2base-ht)
	   (setf (gethash stereo-obj stereo2base-ht) base-obj)
	   (let* ((*suppress-install* t)
		  (new-class (find-programmatic-class (class-of base-obj) (class-of stereo-obj)
						      :metatype :stereotyped-class)))
	     (declare (special *suppress-install*))
	     (change-class base-obj new-class)
	     ;; Copy slot values to new object, values can come from either object.
	     (loop for slot in (mapped-slots (class-of stereo-obj)) ; 2012-09-07 only copy mapped-slots
		for slot-name = (closer-mop:slot-definition-name slot) 
		for val = (and (slot-boundp stereo-obj slot-name)
			       (slot-value stereo-obj slot-name))
		do (setf (slot-value base-obj slot-name) val))
	     (values))))
	(t (warn 'mof-invalid-sterotype-application :object base-obj :stereo-object stereo-obj))))

(defun valid-base-class-p (base-class stereo-class)
  "Returns T if STEREO-CLASS can stereotype BASE-CLASS."
  (loop for mc in (mapcar #'(lambda (x) (string (class-name x)))
			  (extended-metaclasses stereo-class))
        when (member mc (mapcar #'(lambda (x) (string (class-name x)))
				(closer-mop:class-precedence-list base-class))
		     :test #'string=)
	return t))

;;;=========================================
;;; Post-processing of read models
;;;=========================================
(defun post-process-model (mut)
  "Change-class for stereotype objects, resolve hrefs, make ocl:Collections, 
   propagate opposites and derived unions."
  (pp-mixin-stereo-objs)
  (with-slots (members) *population*
    (loop for obj across members do 
	 (pp-resolve-xmi-idref-href obj)
	 (pp-raw2collection/scalar obj)))
  (pp-resolve-xmi-idref-href-in-xqdm-ht mut)
  (with-results (stereo2base-ht :mut *population*)
    (loop for obj being the hash-key of stereo2base-ht do 
	 (pp-resolve-xmi-idref-href obj)
	 (pp-raw2collection/scalar obj)))
  (pp-resolve-xmi-idref-href-in-xqdm-ht mut)
  (pp-check-no-mapped-opposites)
  ;; Odd looking, but don't use OR or won't get the second one
  (let ((progress t)) 
    (dbg-message :time 1 "~%Start Propagate: ~A" (now))
    ;; 2012-11-09 This seems to run all 7 iterations. Is there a problem.
    (loop for i from 1 to 7 while progress do
	 (dbg-message :time 1 "~3%Propagate: ~A" (now))
	 (setf progress nil)
	 (when (pp-propagate-opposites) (setf progress t))
	 (when (pp-propagate-derived-unions) (setf progress t))))
  (with-slots (members soft-opposites) *population*
    (setf members (pp-remove-unowned-ls members))
    (pp-populate-soft-opposites soft-opposites))
  (dbg-message :time 1 "~%Post-processing completed: ~A" (now)))


;;; For example, assume Class=x, and x.nestedClassifier=y, where Classifier.nestingClass is a soft-opposite
;;; of Class.nestedClassifier, have y.nestingClass return x. NOTE: Classifier.nestingClass is not mapped;
;;; it does not appear as a mapped-slot in Classifier, (and in fact, I record its existance in Class, 
;;; not Classifier). 
;;;
;;; Uses an equal hash table with key (%nesting-class . y) and value x. Every method does a lookup, 
;;; using the name of the method and argument to it. This builds the table.

;;; POD (%GENERALIZATION . <UML 2.5:Class Class2, id=8>)        <UML 2.5:Generalization, id=14>
;;; 
(defun pp-populate-soft-opposites (ht)
  "Populate the equal hash table, HT, with the opposite values of each s-opposite 
  slot of each member of *population*."
  (loop for obj across (members *population*) do 
     (loop for (slot . accessor) in (soft-opposite-slots (class-of obj)) 
	   for val = (funcall (mm-accessor-fn-name slot) obj) do
	  (if (typep val 'ocl:|Collection|) 
	      (loop for v in (ocl:value val) do
		   (setf (gethash (cons accessor v) ht) obj))
	      (when val
		   (setf (gethash (cons accessor val) ht) obj))))))

(defun pp-remove-unowned-ls (members)
  "Return an adjustable array with all MEMBERS (an array) except those that
   were created by mofi-make-instance and don't have an owner. LS = 'LiteralSpecification'"
  (let* ((pkg (lisp-package (%of-model (aref members 0))))
	 (owner-sym (intern "owner" pkg))
	 (owner-reader (intern "%OWNER" pkg))
	 (no-unowned-ls
	 (loop for o across members 
	    unless (and (eql :mofi-make-instance (%source-elem o))
			(slot-exists-p o owner-sym)
			(null (funcall owner-reader o)))
	    collect o)))
    (let ((len (length no-unowned-ls)))
      (make-array len :adjustable t :initial-contents no-unowned-ls :fill-pointer len))))

(defun uml-by-version-spec (spec)
  "A 'Version spec' is a version or date specifier used in the URI normatively identifying the UML. 
   This returns (find-uml :uml23) for SPEC='20090901' and (find-uml :uml25) for SPEC='2.5'."
  (find-if #'(lambda (x)
	       (member (format nil "http://www.omg.org/spec/UML/~A/UML.xmi" spec)
		       (nicknames x) :test #'string=))
	   *essential-models*))

;;; New for 2016-09-23
(defun check-href-version-match (href obj)
  "Check that HREF (URI string) uses the same version of UML as the model, where applicable."
  (mvb (success vec)
      (cl-ppcre:scan-to-strings "^http://www.omg.org/spec/UML/([a-zA-Z0-9\\.]+)/(UML|PrimitiveTypes)\\.xmi.*" href)
    (when success
      (when-bind (version-spec (aref vec 0))
	(when-bind (href-model (uml-by-version-spec version-spec))
	  (with-vo (mut) 
	    (unless (eql (model-n+1 mut) href-model)
	      (warn 'mof-href/mut-version-mismatch :object obj :xmi-href href))))))))

(defun pp-resolve-xmi-idref-href (obj)
  "Resolve the xmi:idrefs and hrefs of one object. OBJ is a UML:|Element|."
  (with-slots (xmiid2obj-ht) *results*
    (flet ((resolve-one (v o s)
	     (typecase v
	       (xmi-idref
		(or (let ((obj (gethash (xmi-idref--name v) xmiid2obj-ht)))
		      (if (eql T obj) 
			  (progn #|(format *error-output* "~%Unresolved xmi:idref: ~S" (xmi-idref--name v))|# nil) 
			  obj))
		    (warn 'mof-object-ref-not-found :object o 
			  :slot (slot-direct-slot s) :xmi-idref (xmi-idref--name v))))
	       (xmi-href
		(check-href-version-match (xmi-href--name v) o)
		(or (lookup-href (xmi-href--name v) 
				 :source-elem (%source-elem obj))
;				 :force-profile-p 
;				 (and (not (model-n+1 (%of-model obj)))
;				      (typep o (intern "ProfileApplication" (lisp-package *model*)))))
		    (warn 'mof-unresolvable-uri :object o :xmi-href (xmi-href--name v))))
	       (otherwise v))))
      (loop for slot in (mapped-slots (class-of obj))
	 for slot-name = (closer-mop:slot-definition-name slot) do
	 ;;unless (slot-definition-xmi-hidden slot) do ; 2010 POD isn't this just mapped slots?
	   (setf (slot-value obj slot-name)
		 (let ((val (slot-value obj slot-name))
		       result)
		   (if (consp val)
		       (loop for v in val 
			  for sub-obj = (resolve-one v obj slot) 
			  when sub-obj do (push sub-obj result)
			  finally (return (nreverse result)))
		       (resolve-one val obj slot))))))))


(defun pp-resolve-xmi-idref-href-in-xqdm-ht (mut)
  "Loop through the xqdm2model-ht and resolve references in the xqdm2model-ht."
  (with-results (xqdm2model-ht xmiid2obj-ht :mut mut)
    (flet ((resolve-one (v)
	     (typecase v
	       (xmi-idref (gethash (xmi-idref--name v) xmiid2obj-ht))
	       (xmi-href (lookup-href (xmi-href--name v))))))
      (loop for val being the hash-value of xqdm2model-ht using (hash-key key)
	    for resolved = (resolve-one val)
	    when resolved do (setf (gethash key xqdm2model-ht) resolved)))))
 
(defun pp-raw2collection/scalar (obj)
  "Given 'raw' slot either create a collection, or a scaler."
  (let* ((class (class-of obj))
	 (class-name (class-name class)))
    (loop for slot in (mapped-slots class) do
	 (let* ((slot-name (closer-mop:slot-definition-name slot))
		(val (slot-value obj slot-name))
		(-typ (slot-typ (list class-name slot-name)))
		(appropriate (ocl:appropriate-collection-type -typ)))
	   (cond ((typep val 'ocl:|Collection|) nil) ; they still get through this way ???
		 ((not -typ) ; declared scalar slot
		  (when (single-p val) ; when read, everything was a list.
		    (setf (slot-value obj slot-name) (car val)))) ;unnest
		 ((eql appropriate 'ocl:|Set|)
		  (if (gather-duplicates val)
		      (progn (setf (slot-value obj slot-name) ; -typ bound to a collection -typ object
				   (make-instance 'ocl:|Bag| :typ-d -typ :value val))
			     (warn 'mof-set-values-not-unique :object obj :class class 
				   :slot (slot-direct-slot slot) :set val))
		      (setf (slot-value obj slot-name) ; -typ bound to a collection -typ object
			    (make-instance 'ocl:|Set| :typ-d -typ :value val))))
		 (t 
		  (setf (slot-value obj slot-name) ; -typ bound to a collection -typ object
			(make-instance appropriate :typ-d -typ :value (mklist val)))))))))

;;; Added 2012-10-10 See notes. 
(defmemo! check-for-renamed-redef (:key #'unique :test #'eq) (class c/s)
  "Return C/S, a list (<class-name> <slot-name>) except in cases where the slot 
   has been renamed in redefinition;  In that case, return (<class-name> <new-name>)."
  ;; Note that CLASS may be more specific than the the class on c/s. Important.
  (loop for s in (mapped-slots class)
     when (equal c/s (slot-definition-redefined-property s))
     return (list (class-name (slot-definition-source s)) (slot-definition-name s))
     finally (return c/s)))

(defun pp-insert-value (class/slot object val)
  "Like (pushnew object (slot-value val slot-name)) except for ocl:Collection slots too.
   OBJECT is an instance. CLASS/SLOT is a list of form (class-name slot-name). 
   If the class/slot is declared an ocl:Collection, then VAL is appended, otherwise 
   the slot is set to VAL. Returns T unless VAL is already in OBJECT.SLOT."
  (when (typep object 'mm-root-supertype) ; Don't try this on e.g. uml:Extension.metaclass...
    (setf class/slot (check-for-renamed-redef (class-of object) class/slot)) ;...also, very screwed up files might...
    (dbind (class-name slot-name) class/slot                                 ; ... have a list for object!
      (when (member class-name (closer-mop:class-precedence-list (find-class class-name))
		    :key #'class-name) ; in this case the object is in the wrong slot (reported elsewhere)
	(let ((slot (find slot-name (mapped-slots (find-class class-name))
			  :key #'closer-mop:slot-definition-name))
	      (changed nil))
	  (unless (and (slot-definition-is-derived-p slot)
		       (not (slot-definition-is-derived-union-p slot)))
	    (if-bind (typ (slot-typ class/slot)) ; declared a Collection...
		     (let* ((slot-val (slot-value object slot-name))
			    (slot-set (if (typep slot-val 'ocl:|Collection|) 
					  slot-val
					  (setf (slot-value object slot-name) 
						(make-instance 'ocl:|Set| 
							       :typ-d typ 
							       :value (mklist slot-val)))))
			    (slot-set-val (ocl:value slot-set))
			    (val-collect-p (typep val 'ocl:|Collection|)))
		       (unless (or (and val-collect-p ; since this might imply duplicates...
					(every #'(lambda (v) (member v slot-set-val :test #'equal)) (ocl:value val)))
				   (and (not val-collect-p)
					(member val slot-set-val :test #'equal)))
			 (setf (ocl:value slot-set)
			       (remove-duplicates ; ... need to do this
				(append slot-set-val
					(if val-collect-p (ocl:value val) (list val)))))
			 (dbg-message :propagate 1 "~%1 adding ~A to ~A.~A" val object class/slot)
			 (setf changed t)))
		     ;; Here VAL ought NOT to be a Collection, but this will be caught later...
		     ;; 2012-11-09 If the val IS a Collection, it could be because the slot was
		     ;; redefined as (1,1). Extension.ownedEnd redefines Association.ownedEnd this way,
		     ;; and Association.ownedEnd is subsetted by navigableOwnedEnd.
		     (let ((current (slot-value object slot-name)))
		       (unless (or (equal current val)
				   (typep current 'ocl:|Collection|)
				   (typep val     'ocl:|Collection|))
			 (setf (slot-value object slot-name) val)
			 (dbg-message :propagate 1 "~%2 adding ~A to ~A.~A" val object class/slot)
			 (setf changed t)))))
	  changed)))))

#| WIP

		     (let ((current (slot-value object slot-name)))
		       (cond ((typep val 'ocl:|Collection|) ; 2012-11-09 redefinition described above
			      (unless current ; POD I'm fluffing over some possible bugs by setting...
				(dbg-message :propagate 1 "~%3 adding ~A to ~A.~A" val object class/slot)
				(setf (slot-value object slot-name) (car (ocl:value val))) ;... to car!!!
				(setf changed t)))
			     ((listp current) ; was already wrong, add it.
			      (unless (member val current)
				(dbg-message :propagate 1 "~%2 adding ~A to ~A.~A" val object class/slot)
				(setf (slot-value object slot-name) (cons val current))
				(setf changed t)))
			     ((and current (not (eql val current))) ; is now going to be wrong.
			      (dbg-message :propagate 1 "~%4 adding ~A to ~A.~A" val object class/slot)
			      (setf (slot-value object slot-name) (list val current))
			      (setf changed t))
			     ((not current) ; normal update
			      (dbg-message :propagate 1 "~%5 adding ~A to ~A.~A" val object class/slot)
			      (setf (slot-value object slot-name) current)
			      (setf changed t))
			     ((eql current val)))))) ; normal seen it
	  changed)))))
|#

  
;;; POD look all around here to eliminate recreating (class-name slot-name) lists.
;;; 2008-04-05 this is taking 5% of compute time!!!
(defun pp-propagate-derived-unions (&optional debug-vector)
  "Propagate attribute values to derived unions.
   2007-03-25: this is done on 'non-raw' slots, so that it can use derived properies.
   Returns T if this call did anything."
  (let (changed)
    (with-slots (members) *population*
      (loop for object across (or debug-vector members)
	    for class = (class-of object) 
	    for mapped-slots = (mapped-slots class) do
	   (loop for slot in mapped-slots do
		(when-bind (val (funcall (mm-accessor-fn-name slot) object))
		  (unless (and (typep val 'ocl:|Collection|) (null (ocl:value val)))
		    (when-bind (subsetted (slot-definition-subsetted-properties slot))
		      (loop for s in subsetted do 
;;; 2007-05-13: See changelog. It looks like this modification was erroneous. There are instances
;;; where the subsetted property isn't a derived union (Class.ownedAttribute is one) and the 
;;; UML Infrastructure spec doesn't say that the subsetting only acts on derived unions. 
;;; BTW the spec doesn't define 'derived union'.
;;;			    (when (slot-definition-is-derived-union-p 
;;;				   (find (second s) mapped-slots :key #'closer-mop:slot-definition-name))
			      (when (copy-downward object val s nil) 
				(dbg-message :propagate 1 "~%downward ~A ~A ~A" object val s)
				(setf changed t)))))))))
    changed))

;COPY-DOWNWARD (<uml:Model EA_Model, id=1> (<uml:Package HSUVStructure, id=2>) (|Namespace| |ownedMember|))
;;; pod :test #'equal in insert here should be 'ocl-equal' ??? Nested Collections???
(defun copy-downward (object val class/slot some-change)
  "Push the value VAL into OBJECT's slot. Call recursively if that slot 
   is subsetting something else and that something else is a derived union.
   2007-03-25: This now occurs on 'non-raw' slots. Returns T unless val already in Object.slot."
  (dbind (class-name slot-name) class/slot
    (let ((changed some-change))
      (when (pp-insert-value class/slot object val) (setf changed t))
      (let* ((class (find-class class-name)) ; pod7 was mm-find-class
	     (mapped-slots (mapped-slots class))
	     (slot (find slot-name mapped-slots :key #'closer-mop:slot-definition-name)))
	(when-bind (subsetted (slot-definition-subsetted-properties slot))
	  (loop for s in subsetted do 
		(when (slot-definition-is-derived-union-p 
		       (find (second s) mapped-slots :key #'closer-mop:slot-definition-name))
		  (when (copy-downward object val s changed) (setf changed t))))))
      changed)))

;;; Try on Element.owner Element.ownedElement
(defun pp-check-no-mapped-opposites ()
  "Issue warnings when a property is composite and its opposite is mapped."
  (with-vo (mut)
    (with-slots (members) mut
      (loop for object across members
	 for class = (class-of object) 
	 for mapped-slots = (mapped-slots class) do
	   (loop for slot in mapped-slots do
		(when (slot-definition-is-composite-p slot)
		  (when-bind (opp-slot (slot-definition-opposite slot))
		    (when-bind (val (funcall (mm-accessor-fn-name slot) object))
		      (when (typep val 'ocl:|Collection|)
			(loop for v in (ocl:value val) 
			   when (slot-value v (second opp-slot)) do
			     (warn 'xmi-serializes-opposite :object v :comp-slot slot
				   :other-slot (find (second opp-slot)
						     (mapped-slots (find-class (first opp-slot)))
						     :key #'slot-definition-name))))))))))))

(defun pp-propagate-opposites (&optional debug-vector)
  "Propagate attribute values to inverse properties (called 'opposites').
   2007-03-25: this is done on 'non-raw' slots, so that it can use derived properies.
   Returns T if this call did anything."
  (let (changed)
    (with-slots (members) *population*
      (loop for object across (or debug-vector members)
	    for class = (class-of object) 
	    for mapped-slots = (mapped-slots class) do
	    (loop for slot in mapped-slots do
		  (when-bind (opp (slot-definition-opposite slot))
		    (when-bind (val (funcall (mm-accessor-fn-name slot) object))
		      (if (typep val 'ocl:|Collection|)
			  (loop for v in (ocl:value val) do 
			       ;; These calls look like they've got the arguments val/obj backward,
			       ;; but that's because they are updating the opposite.
				(when (pp-insert-value opp v object) (setf changed t)))
			  (when (pp-insert-value opp val object) (setf changed t))))))))
    changed))

;;;=========================================
;;; Resource model management
;;;=========================================
;;; Purpose: AFAIK, the practice in referencing external elements is restricted to 
;;;          referencing only uml:Class and uml:PrimitiveType objects. So here I read 
;;;          with the process-m1-xmi reader, any reference model (generally from Eclipse) 
;;;          they wish to use, and throw out everything but the xmiid of uml:Class and
;;;          uml:Primitive objects, which I associate to the corresponding objects of 
;;;          uml.lisp (my implementation of the UML metamodel). 
;;;
;;;          A usage might look like this: href='Infrastructure.uml#_3ADC7B74022D3CA010AC0090' or
;;;          href="platform:/resource/org.eclipse.uml2.uml/model/Superstructure.uml#_3ADC7B74022D327D9E410186"
;;;          To lookup the corresponding lisp MM object, we split off the part before the '#'
;;;          to find the model it is referring to and index into its table with the part after the '#'.

;;; Note: There are multiple elements of the Class having the same name. I don't know what that's about. 
;;; Same element used in different packages ???

(defvar *resource-models* nil "A list of resource-model objects.")

(defclass resource-model (profile) ; pod7 now it is a MOF:model
  ((uri-list :initarg :uri-list :initform nil :reader uri-list) ; referencing code might use any of these.
   (short-name :initarg :short-name :initform nil :reader short-name)
   (xmiid2mmobj-ht :initform (make-hash-table :test #'equal) :reader xmiid2mmobj-ht)))  ; the whole point, this xref.

(defmethod print-object ((obj resource-model) stream)
  (format stream "#<resource-model ~A>" (short-name obj)))

(defun lookup-href (href-string &key source-elem)
  "Return the object referenced by HREF-STRING, which could be an instance (e.g UML25:|Class|),
   other sorts of metaobjects, (e.g. {Assoc-end A_when_timeEvent-timeEvent}) or an object from a
   user-loaded population (e.g. <uml25:Profile valid-profile>)."
  (with-vo (session-models)
    (dbind (model-ref &optional index) (split href-string #\#)
      (let ((model      (find-if #'(lambda (x) (member model-ref (nicknames x) :test #'string=)) *essential-models*))
	    (user-model (find-if #'(lambda (x) (string= model-ref (href-uri x))) ; 2014-04-26 added
				 (remove-if-not #'(lambda (x) (or (typep x 'user-profile) 
								  (typep x 'population)))
						session-models))))
	(flet ((stest (x y) (and (stringp x) (stringp y) (string= x y))))
	  ;; Test for specific first, ptypes. 2016-09-23 Note that what I return isn't UML type-specific.
	  ;; Prior to uml2.4.1 primitive types where in UML.xmi; from 2.4.1 onward they are in PrimitiveTypes.xmi
	  (cond ((and (member index '("Boolean" "String" "Integer" "UnlimitedNatural" "Real") :test #'string=)
		      (or (eql model (find-model :ptypes))
			  (eql model (find-model :uml23 :error-p nil)))) ; 2013-12-18: maybe that's how it was done back then. 
		 (find-class (intern index :ptypes) nil)) ; Even (find-class 'uml23::|Boolean|) returns ptypes:Boolean
		;; user model: look it up. Use the original population if user-model is a user-profile
		(user-model 
		 (typecase user-model ; was I just copying what is in the model, because the populations don't have xmi-id
		   (population   (find index (members user-model) :key #'xmi-id :test #'stest))
		   (user-profile (find index (members (from-population user-model)) :key #'xmi-id :test #'stest))))
		;; A whole Essential Model, or Profile, make a dummy.
		((and model (or (null index) (string= index "_0") (find-model (kintern index) :error-p nil))) ; last only for UPDM!
		 (href-made-memo model href-string :source-elem source-elem))
		;; 2014-02-21 workaround for UML 2.4.1. Problem reported by Pete Rivett.
		;; 2016-09-23 Extend for any UML 2.4.1 or later. Problem reported by Pete Rivett.
		((and model index
		      (find model (mapcar #'(lambda (x) (find-model x :error-p nil)) (member :uml241 (reverse (all-umls))))))
		 (find index (types model) :key #'class-name :test #'string=))
		;; Model and index, return the mo. 
		((and model index)
		 (or (find index (types model) :key #'xmi-id :test #'stest)
		     (when-bind (a (find index (assocs model) :key #'xmi-id :test #'stest))
		       (href-made-memo a href-string))
		     (when-bind (ae (find index (assoc-ends model) :key #'xmi-id :test #'stest))
		       (href-made-memo ae href-string))
		     (when-bind (eff-slot
				 (loop for ty across (types model)
				    for found = (find index (mapped-slots ty) 
						      :key #'(lambda (x) (slot-definition-xmi-id (slot-direct-slot x)))
						      :test #'stest)
				    when found return found))
		       (href-made-memo eff-slot href-string))))
		;; Temporary (?) fix for SysML1.2, ControlValue was in a separate file. 
		((and (string= href-string "http://www.omg.org/spec/SysML/20100301/Activities-model.xmi#ControlValue")
		      (find-package :sysml12))
		 (find-class (intern "ControlValue" :sysml12) nil))))))))

(defun find-model-pkg-from-xqdm (xqdm-elem)
  "Return the model 'lisp-package' using the xml elements, starting with the argument XQDM-ELEM."
  (with-results (xqdm2model-ht)
    (when-bind (obj (depth-first-search 
		     xqdm-elem
		     #'(lambda (x) (gethash x xqdm2model-ht))
		     #'(lambda (x) (list (xqdm:parent x)))))
      (lisp-package (of-model (class-of (gethash obj xqdm2model-ht)))))))

(defgeneric href-made-memo (obj href &key &allow-other-keys))

(defmethod href-made-memo :around (obj href &key)
  "Set the debug-id to a negative number so it won't be checked as part of the population.
   (It is not in pop.members, but that doesn't stop it.)"
  (declare (ignore obj href))
  (let ((obj (call-next-method)))
    (when (typep obj 'mm-root-supertype)
      (with-slots (|debug-id|) obj	
	(unless (minusp |debug-id|)
	  (setf |debug-id| (- |debug-id|)))))
    obj))

;;; Just a thought: Another way to make this happen is to actually save the population with the compiled model.
(defmethod href-made-memo ((prop mm-effective-slot-definition) href &key)
  "Create a umlxx:|Property| for the eff-slot-def."
  (with-results (temp-made-memo)
    (or (gethash href temp-made-memo)
	(setf (gethash href temp-made-memo) ; POD guessing were to intern...
	      (make-instance (intern "Property" (lisp-package (of-model (slot-definition-range prop))))
			     :name (string (slot-definition-name prop))
			     :of-model (of-model (slot-definition-range prop))
			     :class (slot-definition-source prop))))))

(defmethod href-made-memo ((prop mm-assoc-mo) href &key)
  (with-results (temp-made-memo)
    (or (gethash href temp-made-memo)
	(with-slots (name of-model metatype) prop
	  (let ((model (if (typep of-model 'profile) (find-model (model-n+1 of-model)) of-model)))
	    (setf (gethash href temp-made-memo) ; POD guessing were to intern...
		  (make-instance (if (eql :extension metatype)
				     (intern "Extension" (lisp-package model))
				     (intern "Association" (lisp-package model)))
				 :of-model of-model
				 :name (string name))))))))

(defmethod href-made-memo ((prop mm-assoc-end-mo) href &key)
  (with-results (temp-made-memo)
    (or (gethash href temp-made-memo)
	(with-slots (name type) prop
	  (when-bind (c (find-class type))
	    (let* ((model (of-model c))
		   (pkg-model (if (typep model 'abstract-profile)
				  (find-model (model-n+1 model))
				  model)))
	      (setf (gethash href temp-made-memo) ; POD guessing were to intern...
		    (make-instance (intern "Property" (lisp-package pkg-model))
				   :name name
				   :of-model model
				   :class (find-class type nil)))))))))

(defmethod href-made-memo ((model abstract-model) href &key source-elem)
  "Memoizing on name, create a Model/Profile object with NamedElement.name. 
   ELEMENTS is the model.types vector."
  (with-results (temp-made-memo)
    (let ((name (car (nicknames model))))
      (or (gethash name temp-made-memo)
	  (setf (gethash name temp-made-memo)
		(make-instance (if (typep model 'profile)
				   (intern "Profile" (lisp-package (find-model (model-n+1 model))))
				   (if (eql model (find-model :ptypes))
				       (if-bind (pkg (find-model-pkg-from-xqdm source-elem))
						(intern "Package" pkg) ; 2014-02-21 Workaround for ptypes, error from edbark.
						(intern "Package" :uml241)) ; 2014-02-21 Workaround for ptypes, guessing!
				       (intern "Model" (lisp-package model))))
			       :name name
			       :packaged-element 
			       (make-instance 'ocl:|Set|
					      :typ-d (make-instance 'ocl:collection-typ
								    :l-bound 0 :unique-p t)
					      :value (coerce (types model) 'list))
			       :token-position href ; 2012 was using source-elem
			       :source-elem source-elem))))))

     
(defmethod href-made-memo (obj href &key)
  (declare (ignore href))
  obj)

;;;=======================
;;; Stuff for reporting
;;;=======================
#+debug
(defun whats-not-an-element? ()
  (loop for c across (types :uml)  with elem = (find-class 'uml22:|Element|)
	unless (member elem (closer-mop:class-precedence-list c))
	collect c))
  

;;;===================================================
;;; Stuff to process Steve Cook's UML 2.5 fragments
;;;===================================================
#+nil
(defparameter *filenames* 
  '("Actions.fragment"
    "Activities.fragment"
    "Classification.fragment"
    "CommonBehavior.fragment"
    "CommonStructure.fragment"
    "Deployments.fragment"
    "InformationFlows.fragment"
    "Interactions.fragment"
    "Packages.fragment"
    "PrimitiveTypes"
    "SimpleClassifiers.fragment"
    "StateMachines.fragment"
    "StructuredClassifiers.fragment"
    "UseCases.fragment"
    "Values.fragment"))
#+nil
(defparameter *cook-xmiid-ht* (make-hash-table :test 'equal))
#+nil
(defun combine-cook-files ()
  "Change hrefs to xmi:id, removing the prefix 'whatever.fragment.' Write a one big freaking file."
  (with-open-file (out (lpath :lisplib "pod-utils/uml-utils/data/uml25/uml25-2012-06-01.xmi") :direction :output
		       :if-exists :supersede :external-format :utf-8)
    (loop for f in *filenames*
       for filename = (merge-pathnames (make-pathname :name f :type "xmi")
				       #|(lpath :lisplib "pod-utils/uml-utils/data/uml25/XMI/")|#
				       "/home/pdenno/projects/miwg/uml25-svn/Specification/XMI/") do
	 (VARS filename)
	 (let ((doc (xmlp:document-parser filename))
	       (href-sym (intern "href" "")))
	   (depth-first-search (xqdm:root doc) #'fail #'xqdm:children
			       :do #'(lambda (x)
				       (when (xqdm:element-p x)
					 (when-bind (href (find href-sym (xqdm:attributes x) :key #'xqdm:name))
					   (setf (xqdm:name href) 'xmi::|idref|)
					   (setf (xqdm:children href)
						 (list (second (split (car (xqdm:children href)) #\#))))))))
	   (format t "~3%=======FILE ~A" filename)
	   (xqdm:write-node doc out :element-type 'simple-char))))) ;<==================
