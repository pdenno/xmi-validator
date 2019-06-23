;;; -*- Mode: Lisp; -*-
;;;
;;; Author: Peter Denno, National Institute of Standards and Technology 
;;;         peter.denno@nist.gov
;;;
;;; Development of this software was funded by the United States Government,
;;; and is not subject to copyright.

;;; Purpose: Implement the UML Validator

(in-package :project-http)

;;;============================================
;;; Model upload, analysis
;;;============================================
(defun sysml-validator-dsp ()
  "Upload an XMI 2.1 file (uncompressed) of UML or SysML. Perform validation. Report results."
  (app-page-wrapper :sei (:view "NIST Validator" 
			  :menu-pos '(:root :tools :validator)
			  :force-new-session nil) ; POD turned off for profile use
   (:h1 "Validate Models (XMI Validator)")
   "Use this tool directly to validate XMI against pre-loaded metamodels. (A list of pre-loaded metamodels
    may be found " (:a :href "/se-interop/tools-overview#preloads" "here") ".) "
    "<strong>Or</strong>, if none of the pre-loaded metamodels fit your need, first load the metamodels and profiles you 
     need (see the menu on the left) and then come back here and load the file to be validated."
    "The file must contain a uml::Model element or single toplevel uml::Package 
     -- its content is what is validated."
    (:p) "Processing speed is currently about 600 uml:Elements / minute. If your file is large (more than about 2000
    elements), it is possible that validation will 'timeout' before completion. For large files, you might consider
    trying the downloadable NIST Validator found " (:a :href "/se-interop/get-validator" "here.")
    (:h3 "Uploaded models and profiles: ")
    (with-vo (session-models)
      (if session-models
	  (htm (:ul (str 
		     (apply #'concatenate
			    'string
			    (mapcar 
			     #'(lambda (m) (format nil "<li>~A - ~A</li>" 
						   (mofb:url-mof-model m)
						   (mofb:url-remove-model m)))
			     session-models)))))
	  (str "<strong>None.</strong><br/>")))
    "Enter below a file to upload and process."
    "<br/>If the file is a MIWG Test Case, you can specify which one,"
    "so that the Validator can compare it to the reference file."
    "Otherwise, ignore the 'Test Case' field below."
    (:form :method :post :enctype "multipart/form-data"
	   (:table :border 0 :cellpadding 10 :cellspacing 0 :bgcolor "#FDFDD8"
	     (:tr (:td "XMI file: ") 
                  (:td (:input :type :file :name "uml-file")))
	     (:tr (:td "Test Case: ")    
		  (:td (:select :name "exercise"
				(:option :value "ignore" "ignore")
				(str
				 (with-output-to-string (s)
				   (loop for name in (mofi:canonical-files)
				      do (format s "<option value='~A'>Test Case ~A</option>"
						 name (subseq name 2))))))))
	     (:tr (:td "<input type='radio' name='cmof-y/n' value='no-cmof' CHECKED> Typical usage")
		  (:td "<input type='radio' name='cmof-y/n' value='cmof'> Apply CMOF constraints"))
	     (:tr (:td :colspan 3 :align "center" 
		       (:input :type :submit :value "Upload and Process")))))
    (when-bind (post-map-data (safe-post-parameter "uml-file"))
      (dbind (in-path in-file &rest ignore) post-map-data 
	(declare (ignore ignore))
	(let (run-cmof)
	  (when (string= (safe-post-parameter "cmof-y/n") "cmof") (setf run-cmof t))
;	  ;; strip <URI scheme>:// sent by Windows browsers
	  (when (search "Windows" (user-agent) :test #'char-equal)
	    (setq in-file (cl-ppcre:regex-replace ".*\\\\" in-file "")))
	  (catch 'xml-parse-error
	    (sysml-validator-handle-file in-path in-file (safe-post-parameter "exercise") run-cmof)
	    (redirect "/se-interop/sysml/validator/results")))))))

(declaim (inline uml-intern))

;;; There are various UML models, each in its own package. Sometimes the program
;;; needs to reference symbols in these packages from a UML version-neutral context."
(defun uml-intern (string model-n+1)
  "Return a symbol for STRING interned in the lisp package of model MODEL-N+1"
  (intern string (mofi:lisp-package model-n+1)))

(declaim (notinline user-pathname))
(defun user-pathname (pname)
    "Append the user-id onto PATHNAME."
    (with-vo (user-id)
      (merge-pathnames 
       (make-pathname :name (format nil "~A-~A" (pathname-name pname) (string user-id)))
       pname)))

(defmacro handle-xml-parse-errors (&body body)
  "Arrange to report information available about XML parse errors."
  `(handler-bind 
       (((or xqdm::wellformedness-error xqdm::validity-cerror
	     xqdm::validity-cerror xqdm::production-error 
	     xqdm::node-graph-error xqdm::namespace-error)
	 ;; The above are all subclasses of xml-utils:xml-condition. But I don't think I want to generalize.
	 #'(lambda (e)
	     (with-vo (mut) 
	       (let ((err-str 
		      (substitute #\Space #\Newline
				  (with-output-to-string (s)
				    (format s "~A" e) ; 2012-09-10 calling report-condition has become a problem.
				    ;(setf.conditions:report-condition e s)
				    ))))
		 (setf mut 
		       (strcat
			(if (or (typep e 'xqdm::node-graph-error) (typep e 'xqdm::namespace-error))
			    (format nil "<strong> ~A.</strong>" (string (class-name (class-of e))))
			    (format nil "<strong> ~A, at line ~A.</strong>" 
				    (string (class-name (class-of e)))
				    "POD 2019: Fix this"))
			"<br/><br/>"
			(mvb (success vec)
			    (cl-ppcre:scan-to-strings "(.+)parser error with-state" err-str)
			  (if success (aref vec 0) ""))))))
	     (redirect "/se-interop/sysml/validator/xml-error")
	     (throw 'phttp::xml-parse-error nil))))
     ,@body))

(defun validator-report-xml-error-dsp ()
  "Report the string in MUT (there was no MUT). "
  (app-page-wrapper :sei (:view "NIST Validator" 
				:menu-pos '(:root :tools :validator))
    (htm (:h1 "XML error while parsing input")
	 "Validation ended prematurely due to an XML error in your file.<br/><br/>"
	 (with-vo (mut) (format t "~A" mut)))))

(defun validator-clear-for-new-run ()
  "Clear view objects and other memory related to past work."
  (with-vo (pod-utils::view-objects error-reports phttp:show-diff-p mut) 
    (setf phttp:show-diff-p nil)
    (setf mut nil)
    (clrhash pod-utils::view-objects)
    (loop for val being the hash-value of error-reports 
       when (typep val 'hash-table) do (clrhash val))))
  
(defun sysml-validator-handle-file (in-path in-file diff-model-name run-cmof-p)
  "Move the file from IN-PATH, (where the server placed it) to a place managed by us.
   Pass the file to the validator."
  ;(log-message :info "NIST Validator called from remote IP address ~A" (header-in "remote-ip-addr"))
  (validator-clear-for-new-run)
  (let ((new-path (make-pathname :name (pathname-name in-file) 
				 :type (pathname-type in-file)
				 :defaults *uploaded-files-dir*)))
    (rename-file in-path (ensure-directories-exist new-path))
    (with-vo (filename show-diff-p diffing-possible)
      (setf filename (format nil "~A.~A" (pathname-name in-file) (pathname-type in-file)))
      (setf show-diff-p nil) 
      ;; POD You can comment out results-handler-bind if (tbnl settings notwithstanding) 
      ;; you are not getting error at listener.
      (mofi:results-handler-bind (sysml-validator-handle-file 
				  :no-simple-p (not (member :sei.exe *features*)))
	(setf *results* (make-instance 'processing-results)) ; Do it here, because the next line can emit an error!
	#+linux
	(unless (eql :xml (usr-bin-file new-path))
	  (error "The file supplied appears not to be XML format."))
	(let ((mut (handle-xml-parse-errors (mofi:xmi2model-instance :file new-path))))
	  (when (typep mut 'mofi:population)
	      (mofi:validate mut :run-cmof-p run-cmof-p)
	      (mofi:xmi-direct-transform mut)) 
	    (when #+linux (eql :xml (usr-bin-file (user-pathname (pod:lpath :tmp "diff/user-canonical.xml"))))
		  #+mswindows t
	      (when diffing-possible
		(when (and diff-model-name (not (string-equal diff-model-name "ignore")))
		  (when-bind (tc-canon (mofi:find-tc-canonical diff-model-name))
		    (setf show-diff-p (kintern diff-model-name))
		    (mofi:model-diff show-diff-p)
		    ;; We copy the file only because it is easier than adding URLs.
		    (pod-utils::copy-file tc-canon  (user-pathname (pod:lpath :tmp "diff/tc-canonical.xml"))))))))))))

;;;============================================================
;;; Validator reporting
;;;============================================================
;;; /se-interop/sysml/validator/results
(defun sysml-validator-report-results-dsp ()
  "Generate html reporting the results of validation."
  (app-page-wrapper :sei (:view "NIST Validator" 
			  :menu-pos '(:root :tools :validator))
    (with-vo (filename mut show-diff-p)
      (let (presults)
	(if (and (typep mut 'mofi:population)
		 (setf presults (mofi:processing-results mut)))
	    (let ((uml-model (gethash "+The-Model+" (mofi:xmiid2obj-ht presults)))
		  (conds (mofi:conditions presults)))
	      (htm
	       (:h1  (format t "Results for ~A <br/>(~A '~A')" 
			     filename 
			     (class-name (class-of uml-model)) ; Model or Profile
			     (or (and uml-model (funcall (uml-intern "%NAME" (model-n+1 mut)) 
							 uml-model)) "Unnamed")))
	       (loop for c across conds
		  when (or (typep c 'error) (typep c 'mofi:mof-error)) do
		    (format t "~%<strong>Error:</strong> ~A<br/>" 
			    (cl-who:escape-string (format nil "~A" c))))
	       (unless (find-if #'(lambda (x) (typep x 'error)) conds)
		 (str (coverage-statistics uml-model))
		 (str (validation-details-report 
		       conds
		       (mofi::count-conditions presults)
		       :diff-p show-diff-p)))))
	    (htm (:strong "Unrecoverable error while processing the XMI:<br/>")
		 (str "XML is not well-formed.")))))))

(defun coverage-statistics (uml-model)
  "Generate a hunk of html that looks at what was instantiated.
   UML-MODEL, the uml:Model object found in the file."
  (with-html-output-to-string (stream)
    (with-vo (mut show-diff-p user-id)
      (when mut
	(let ((object-vector (mofi:members mut))
	      (model-n+1 (mofi:model-n+1 mut)))
	  (htm
	   (:h2 "Summary of Model Content:")
	   (let ((extended-count
		  (loop for obj across object-vector 
		     for class = (class-of obj) 
		     when (member-if #'stereotype-p (closer-mop:class-precedence-list class))
		     count obj into ecount finally (return ecount))))
	     (htm
	      (str (format nil "Metamodel used: ~A" (string (or (car (mofi:nicknames model-n+1))
								(mofi:model-name model-n+1)))))
	      (:br) (str (format nil "XMI version used: ~A" (with-slots (mofi:model-xmi) mut 
						      (car (mofi:nicknames mofi:model-xmi)))))
	      (:br) (str (format nil "Total objects: ~A." (fill-pointer object-vector))) 
	      (:br) (str (format nil "Unextended objects: ~A" (- (fill-pointer object-vector) extended-count))) 
	      ;; POD Separate the following two:
	      (:br) (str (format nil "Stereotypes and stereotype-extended objects: ~A" extended-count))
	      (:br) (str (format nil "Your model: ~A"  (mofb:url-object-browser uml-model)))
	      (when show-diff-p 
		(htm (:br) (str (format nil "Valid model: ~A"  
					(mofb:url-object-browser 
					 (loop for o across (mofi:members (mofi:key2mut show-diff-p))
					       when (typep o 'uml23:|Model|) return o))))))
	      (:br) (:a :href "../object-inventory" "Object Inventory")
	      (:h2 "Canonical XMI:")
	      (:a :href (format nil "../../diff/user-canonical-~A.xml" user-id)
		  "Canonical XMI for the uploaded file (user.xmi)")
	      (when show-diff-p 
		(htm
		 (:br) (:a :href (format nil "../../diff/tc-canonical-~A.xml" user-id)
			   "Canonical XMI for the test case (valid.xmi)")
		 (:br) (:a :href "match-table" "Table of corresponding objects")
;;;		 (:br) (:a :href (format nil "../../diff/sdiff-~A.txt" user-id)
;;;			   "diff -w -y valid.xmi user.xmi (side-by-side)")
		 ))))))))))
  
(defun validation-details-report (conditions count-conditions &key diff-p)
  "Generate a hunk of html for each type of warning.
   CONDITIONS - the conditions vector from the mut of the vo-object.
   COUNT-CONDITIONS - a small hash table for those conditions that are only counted.
   Calls mofi:validation-details to do most of the work."
  (flet ((subs (name) 
	   (sort 
	    (remove-if-not #'(lambda (x) (get :id-num (class-name x)))
			  (closer-mop:class-direct-subclasses (find-class name)))
	    #'(lambda (x y) 
		(when-bind (x-num (get :id-num x))
		  (when-bind (y-num (get :id-num y))
		    (< x-num y-num))))
	    :key #'class-name)))
    (let* ((normal-classes
	   (remove-if #'(lambda (x) ; 2013-11-15 remove these two nobody ever liked. 
			  (let ((cn (class-name x)))
			    #+sei.exe(or (eql cn 'mofi::ocl-error-calculating-derived)
					 (eql cn 'mofi::ocl-attempts-executing-absent-derived))
			    #-sei.exe (progn cn  nil)))
		      (subs 'mofi:mof-warning)))
	  (diff-classes  (and diff-p (subs 'mofi:mof-diff-warning))))
      (with-html-output-to-string (stream)
	(htm 
	 (str
	  (with-output-to-string (out)
	    (format out "<h2>Summary of Warnings</h2>")
	    (format out "<ul>")
	    (loop for class in (append normal-classes diff-classes)
	       for class-name = (class-name class)
	       for count = (or (gethash class-name count-conditions)
			       (count-if #'(lambda (c) (typep c class-name)) conditions))
	       do (format out "~%<li><a href='~A'>~A</a>: ~A</li>" 
			  (url-explanation class-name) 
			  (get :title class-name)
			  count))
	    (format out "</ul>")))
	 (str (mofi:validation-details 'mofi:mof-warning normal-classes conditions))
	 (when diff-p (str (mofi:validation-details 'mofi:mof-diff-warning diff-classes conditions))))))))


;;;================ XMI 'Example' generation ===========================
;"/se-interop/sysml/validator/xmi-example" 
(defun sysml-xmi-example-dsp ()
  (when-bind (type (safe-get-parameter "type"))
     (when-bind (unique-ht (with-vo (error-reports) (gethash (intern type :mofi) error-reports)))
       (let ((count (if-bind (cnt (safe-get-parameter "count")) (parse-integer cnt) 0)))
       (app-page-wrapper :sei (:view "NIST Validator" 
				     :menu-pos '(:root :tools :validator))
	 (let (real-key)
	   (if-bind (key (safe-get-parameter "key"))
		    (setf real-key (mapcar #'mofi::decode-for-url (split key #\|)))
		    (setf real-key :one-key))
	   ;; pod7 real-key isn't real. The actual key may have classes where the parameter has symbols
	   (when-bind (errs (gethash real-key unique-ht))
	     (when-bind (c (nth count errs))
	       (htm (:h1 (str (format nil "~A: <em>~A</em>, instance ~A of ~A" 
				      (if (typep c 'mofi:mof-diff-warning) "Difference" "Error")
				      (get :title (type-of c))
				      (1+ count)
				      (length errs))))
		    (:strong (str (funcall (slot-value c 
						       #+LispWorks 'conditions::reporter-function
						       #+sbcl 'reporter-function ; pod7 guessing
						       ) 
					   c nil)))
		    (str (mofi:relevant-xmi c))
		    (htm 
		     (when (< count (1- (length errs)))
		      (htm
		       (:p)
		       (htm
			(if-bind (key (safe-get-parameter "key"))
			  (htm (:a :href 
				   (format nil "/se-interop/validator/xmi-example?key=~A&type=~A&count=~A"
					   key type (1+ count))
				   "Next instance"))
			  (htm (:a :href 
				   (format nil "/se-interop/validator/xmi-example?one-key=true&type=~A&count=~A"
						 type (1+ count))
				   "Next instance"))))))
		     (:br)
		     (:br)
		     (:a :href "/se-interop/sysml/validator/results" "Back to report page")))))))))))


(defun validation-criteria-html ()
  "Write a hunk of html listing what the tool checks."
  (flet ((show-me (class stream) ; POD Portability! Some lisps don't use classes for conditions.
           (loop for c in (sort (closer-mop:class-direct-subclasses (find-class class))
				#'< :key #'(lambda (x) (or (get :id-num (class-name x)) 0)))
		 for doc = (documentation c 'type)
		 for explain = (get :explanation (class-name c))
		 if (and doc explain) do 
		 (format stream "<li>~A<a href='/se-interop/sysml/explanation?concept=~A'> Details</a></li>" 
				     doc (class-name c))
		 else if doc do (format stream "<li>~A</li>" doc))))
    (with-html-output-to-string (stream)
      (:ul 
       (:li (:strong "UML/XMI anomalies: ") "Many processors may function OK despite these 
                      (including the Validator) but interoperability may be impaired:"
	    (:ul (htm (show-me 'mofi:mof-warning stream))))
       (:li (:strong "Major errors: ") "It is unlikely that a processor will function when faced with these.
                  (The valiadator will report the error and stop.): "
	    (:ul (htm (show-me 'mofi:mof-error stream))
                (:li "XML errors.")))
       (:li (:strong "Validator Limitations: ") "These are things that are not problems with the 
             exchange file, but rather current limitations of the validation tool. The 
             Validator sometimes sets properties in the model to an enumeration value 
             'TOOL-LIMITATION' to express the occurrence of the limitation. Instances of these
              are reported too."
	    ;(:ul (htm (show-me 'mofi:tool-limitation stream))) ; pod7
	    (:ul (:li "None noted at this time.")))))))

;;; /se-interop/sysml/explanation
(defun mof-explain-dsp ()
  (app-page-wrapper :sei (:view "Error Explanation" 
				:menu-pos '(:root :tools))
    (if-bind (concept (intern (safe-get-parameter "concept") :mofi))
     (if-bind (text (get :explanation concept))
      (htm
       (:h1 (str (format nil "Explanation of error <em>~A</em>" (get :title concept))))
       (str text))
	"")
      "")))

(defun validator-match-table-dsp ()
  (app-page-wrapper :sei (:view "Match Table"
				:menu-pos '(:root :tools :validator))
    (:h1 "Object Matches")
    (with-vo (mut)
      (if (eql (model-n+1 mut) (find-model :uml23))
	  (htm
	   (:table :border 1 :cellpadding 2 :cellspacing 0
		   (htm
		    (:tr 
		     (:td :align "center" :bgcolor "#FFF159" "Object from submitted file")
		     (:td :align "center" :bgcolor "lightgreen" "Object from reference file")
		     (:td :align "center" :bgcolor "lightblue" "Discrepancies")
		     (str (match-table-aux))))))
	  (htm "This capability is only available for UML2.3 files")))))

(defun print-mtable-line (uobj vobj stream)
  "Print one line of the match table to STREAM -- unless both are literal specifications."
  (unless (and (typep uobj 'uml23:|LiteralSpecification|)
	       (typep vobj 'uml23:|LiteralSpecification|))
    (let ((space  (loop for o = (or uobj vobj) then (uml23:%owner o) while o
		     for str = "" then (strcat str "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
		     finally (return str))))
      (format stream "<tr><td>~A~A</td><td>~A~A</td><td>~{~A~^,~}</td></tr>" 
	      space (if uobj (mofb:url-object-browser uobj) "")
	      space (if vobj (mofb:url-object-browser vobj) "")
	      (implicated-urls 
	       (remove-duplicates
		(append (implicated-in uobj) 
			(implicated-in vobj))))))))

(defun match-table-aux ()
  "Write the table matches.perfect-ht and related information as html."
  (with-vo (mut)
    (when-bind (model (find-if #'(lambda (x) (or (string= x "Model") (string= x "Profile")))
			       (members mut)
			       :key #'(lambda (x) (string (class-name (class-of x))))))
	(mofi:with-matches (perfect-ht mofi::u-no-v-list mofi::v-no-u-list)
	  (with-output-to-string (out)
	    (depth-first-search 
	     model
	     #'fail
	     #'(lambda (x) 
		 (loop for c in (ocl:value (uml23:%owned-element x))
		    when (gethash c perfect-ht) collect c))
	     :do #'(lambda (uobj)
		     (let ((vobj (gethash uobj perfect-ht)))
		       (when (and (eql (uml23:%owner uobj) ; everything that doesn't pass this test ...
				       (gethash-inv (uml23:%owner vobj) perfect-ht))
				  (eql (uml23:%owner vobj)
				       (gethash (uml23:%owner uobj) perfect-ht)))
			      (print-mtable-line uobj vobj out))
		       (loop for u-no-v in (remove-if-not  ; ... should be here, or...
					    #'(lambda (x) (eql uobj (uml23:%owner x)))
					    mofi::u-no-v-list) do
			    (print-mtable-line u-no-v nil out))
		       (loop for v-no-u in (remove-if-not  ; ... or here. 
					    #'(lambda (x) (eql vobj (uml23:%owner x)))
					    mofi::v-no-u-list) do
			    (print-mtable-line nil v-no-u out))))))))))

(defun implicated-in (x)
  "Return a list of URLs to conditions in which u or v (mm-root-supertype objects) are referenced."
  (with-results (conditions)
    (loop for c across conditions 
	  when (and (typep c 'mofi:mof-diff-warning)
		    (or (eql x (slot-value c 'mofi::uobj))
			(eql x (slot-value c 'mofi::vobj))))
	 collect c)))

(defun implicated-urls (conds)
  "Return a list of of URLs to conditions, with text 1 2 3...."
  (with-vo (view-objects)
    (loop 
       for c in conds
       for i from 1 
       for vobj = (string (gensym "VOBJ")) 
	 do (setf (gethash vobj view-objects) c)
	 collect (format nil "<a href='/se-interop/validator/single-condition?ckey=~A'>~A</a>" 
			 vobj i))))

(defun validator-report-single-condition-dsp ()
  "Emit HTML for a condition. Called from the diff table, typically."
  (with-vo (view-objects)
    (when-bind (c-key (safe-get-parameter "ckey"))
      (when-bind (c (gethash c-key view-objects))
	(app-page-wrapper :sei (:view "NIST Validator"
				      :menu-pos '(:root :tools :validator))
	  (:h1 (str (format nil "Difference: ~A" (get :title (class-name (class-of c))))))
	  (str (format nil "~A" c))
	  (str (mofi:relevant-xmi c)))))))

(defun list-profiles-metamodels-frags ()
  "List (in html) the profiles, metamodels and frags this user has loaded."
  (with-html-output-to-string (stream)
    (htm
     (:h3 "Uploaded profiles, metamodels and model fragments: ")
     (with-vo (session-models)
       (if session-models
	   (htm (:ul (str 
		      (apply #'concatenate
			     'string
			     (mapcar
			      #'(lambda (m) (format nil "<li>~A - ~A</li>" 
						    (mofb:url-mof-model m)
						    (mofb:url-remove-model m)))
			      session-models)))))
	   (str "<strong>None.</strong><br/><br/>"))))))

(defun file-and-uri-dialog ()
  (with-html-output-to-string (stream)
    (htm
     (:form :method :post :enctype "multipart/form-data"
	    (:table :border 0 :cellpadding 10 :cellspacing 0 :bgcolor "#FDFDD8"
		    (:tr (:td "XMI file: ") 
			 (:td (:input :type :file :name "filename")))
		    (:tr (:td "Reference using this URI:")
			 (:td (:input :type "text" :name "uri")))
		    (:tr (:td :colspan 2 :align "center" 
			      (:input :type :submit :value "Upload and Process"))))))))

(defmacro with-file-stuff-catching-errors ((pop mname outfile infile uri) &body body)
  `(let (,pop ,mname ,outfile ,infile ,uri)
     (when-bind (post-data (safe-post-parameter "filename"))
       (when (setf ,uri (safe-post-parameter "uri"))
	 (dbind (in-path ifile &rest ignore) post-data 
	   (declare (ignore ignore))
	   (setf ,infile ifile)
	   (when (search "Windows" (user-agent) :test #'char-equal)
	     (setf ,infile (cl-ppcre:regex-replace ".*\\\\" ,infile "")))
	   (catch 'xml-parse-error
	     (with-vo (session-models user-id)
	       (when (setf ,pop (handle-xml-parse-errors (read-ref-models-and-profiles in-path ,infile)))
		 (let ((unique (string (gensym "-"))))
		   (setf ,mname (intern (format nil "~A-~A" (pathname-name ,infile) unique) :keyword))
		   (when-bind (already (find-model ,mname :error-p nil))
		     (mofi::clear-model already)
		     (setf session-models (remove already session-models)))
		   (setf ,outfile (merge-pathnames 
				   (make-pathname 
				    :name (format nil "~A-~A" user-id (substitute #\- #\: (substitute #\- #\Space (now))))
				    :type "lisp")
				   (pod:lpath :tmp "diff/"))))
		 ,@body))))))))

(defmacro with-simple-file-stuff-catching-errors ((pop uri) &body body)
  `(let (,pop ,uri)
     (when-bind (post-data (safe-post-parameter "filename"))
       (when-bind (u (safe-post-parameter "uri"))
	 (setf ,uri u)
	 (dbind (in-path in-file &rest ignore) post-data 
	   (declare (ignore ignore))
	   (when (search "Windows" (user-agent) :test #'char-equal)
	     (setf in-file (cl-ppcre:regex-replace ".*\\\\" in-file "")))
	   (catch 'xml-parse-error
	     (with-vo (session-models)
	       (when (setf ,pop (handle-xml-parse-errors (read-ref-models-and-profiles in-path in-file)))
		 ,@body))))))))

;;; 2014-04-24 For diagnostics
(defun simple-run-val (fname)
  "Run xmi2model-instance."
  (setf *spare-session-vo* (make-instance 'phttp:sei-session-vo :models *essential-models*))
  ;(handler-bind ((simple-warning #'(lambda (c) (declare (ignore c)) (muffle-warning))))
    (with-debugging (:readers 0) 
      (xmi2model-instance :file fname :clone-p nil)))


;;;==================================================
;;; Load profiles
;;;==================================================
;;; "/se-interop/tools/load-profiles"
(defun load-profiles-dsp ()
  "Compile an XMI file containing a UML Profile."
  (app-page-wrapper :sei (:view "NIST Validator" :menu-pos '(:root :tools :profile-loader))
    (:h1 "Load Profiles")
    "Upload a file containing a uml::Profile. It can then be referenced in files uploaded to the Validator. 
     If you are unsure whether the file is conforming, you might consider testing it with the validator 
     (see 'Validate Models' on the left) before loading it here. Some non-conformance
     issues (though not many) may hinder resolution of references to the uploaded object. <p/> 
     The string used for \"Reference using this URI\" should be the URI 
     used in XML hrefs referencing to the contents of this file."
    (str (list-profiles-metamodels-frags))
    (str (file-and-uri-dialog))
    (with-file-stuff-catching-errors (population model-name outfile in-file user-supplied-uri)
      (if (find-if #'(lambda (x) (string= "Profile" (string (class-name (class-of x)))))
		   (mofi:members population))
	  ;; Process as a profile
	  (when-bind (file (mofi:pop-gen (model-name (model-n+1 population)) model-name :model population :outfile outfile))
	    (when-bind (profile 
			(mofi:ensure-model model-name
					   :model-class 'mofi::user-profile 
					   :from-population population
					   :pretty-name (pathname-name in-file)
					   :force t :href-uri user-supplied-uri
					   :depends-on-models (cons :ocl (list (model-name (model-n+1 population))))
					   :classes-path file))
	      (push profile session-models)
	      (redirect "/se-interop/tools/load-profiles")))))))

;;;==================================================
;;; Load metamodels 
;;;==================================================
;;; "/se-interop/tools/load-metamodels"
(defun load-metamodels-dsp ()
  "Upload an uncompressed XMI file containing a UML Profile."
  (app-page-wrapper :sei (:view "NIST Validator" :menu-pos '(:root :tools :mm-loader))
    (:h1 "Load Metamodels")
    "Upload an XMI file containing a metamodel (in UML 2.5, or CMOF).
     If you are unsure whether the file is conforming, you might consider testing it with the validator 
     (see 'Validate Models' on the left) before loading it here. Some non-conformance
     issues (though not many) may hinder resolution of references to the uploaded object. <p/> 
     The string used for \"Reference using this URI\" should be the URI 
     used in XML hrefs referencing to the contents of this file."
    (str (list-profiles-metamodels-frags))
    (str (file-and-uri-dialog))
    (with-file-stuff-catching-errors (population model-name outfile in-file user-supplied-uri)
      (when-bind (file (mofi:pop-gen 
			(model-name (model-n+1 population)) ; :uml23 :uml241 :cmof
			 model-name ; This will be the lisp package
			:model population
			:outfile outfile))
	(when-bind (metamodel (mofi:ensure-model model-name
						 :model-class 'mofi::compiled-model
						 :pretty-name (pathname-name in-file)
						 :force t
						 :href-uri user-supplied-uri
						 :depends-on-models '(:ocl :uml23)
						 :classes-path file))
		      (push metamodel session-models)
		      (redirect "/se-interop/tools/load-metamodels"))))))
      

;;;==================================================
;;; Load fragments 
;;;==================================================
;;; "/se-interop/tools/load-fragments"
(defun load-fragments-dsp ()
  "Upload an uncompressed XMI file containing a UML Profile."
  (app-page-wrapper :sei (:view "NIST Validator" 
			  :menu-pos '(:root :tools :frag-loader))
    (:h1 "Load Model Fragments")
    "Upload a file containing a model fragment (enclosed in a  uml:Package); it can then be referenced in 
     files uploaded to the Validator. If you are unsure whether the file is conforming, you might consider 
     testing it with the validator before loading it here. Some non-conformance
     issues (though not many) may hinder resolution of references to the uploaded object. <p/> 
     The string used for \"Reference using this URI\" should be the URI 
     used in XML hrefs referencing to the contents of this file."
    (str (list-profiles-metamodels-frags))
    (str (file-and-uri-dialog))
    (with-simple-file-stuff-catching-errors (population user-supplied-uri)
      (with-slots (mofi:href-uri) population
	(setf mofi:href-uri user-supplied-uri)
	(push population session-models))
      (redirect "/se-interop/tools/load-fragments"))))

(defun read-ref-models-and-profiles (in-path in-file)
  "Run xmi2model-instance, return a population."
  (let ((new-path (make-pathname :name (pathname-name in-file) 
				 :type (pathname-type in-file)
				 :defaults *uploaded-files-dir*)))
    (rename-file in-path (ensure-directories-exist new-path))
    (handler-bind ((simple-warning #'(lambda (c) (declare (ignore c)) (muffle-warning))))
      (with-debugging (:readers 0) ; (:readers 5)
	(xmi2model-instance :file new-path :clone-p nil :linenums-p nil)))))

#+nil
(defun canonical-xmi-dsp ()
  "Show the XMI corresponding to the model under test."
  (app-page-wrapper :sei (:view "NIST Validator" 
				:menu-pos '(:root :tools :validator))
    (with-vo (filename mut)
      (let ((s (make-string-output-stream)))
	(mofi:xmi-write-model-canonical mut :stream s)
	(htm
	 (:h1 (str (format nil "Canonical XMI for model ~A (experimental)" filename)))
	 (:verbatim (str (escape-for-html (get-output-stream-string s)))))))))

