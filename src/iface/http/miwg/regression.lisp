;;; Purpose run regression tests.

(in-package :mofi)

;;; 2016-09-22: I only have canonical for miwg23. 

(defparameter *regression-tests* nil "A list of test objects.")


#| This stuff isn't necessary. There is a slot called 'suite'. 
(defparameter *uml22-tests* 
  '(:aasysml-22 :dishwasher-22 :handset-22 :mickael-22 :rif-22
			:rhapsody-exercise-1and2-22 :magicdraw-exercise-1-22
			:brookshire-22)
  "UML 2.2 tests -- these could additionally use profiles.")

(defparameter *uml21-tests* 
  '(:aasysml :dishwasher :handset :mickael :rif 
    :rhapsody-exercise-1and2 :magicdraw-exercise-1 :brookshire #|:fuml|#)
  "UML 2.1 tests -- these could additionally use profiles.")
|#
(defun run-regression-tests (&key (suite :miwg23) (run-vendor-p nil) (run-canonical-p t) (save-canonical-p nil))
  "Run the valid.xmi, checking for reporting consistent with historical results.
   run-canonical-p tests that the generation of the canonical has the same error profile as the original file.
   It is not concerned with whether or not there are model-diff errors particularly (which should happen
   whenever there is a canonical registered.
   Run vendor xmi. It should not throw errors."
  (run-other-tests)
  (check-untested-error-category)
  (loop for test in (sort (remove-if-not #'(lambda (x) (eql (suite x) suite)) *regression-tests*)
			  #'< :key #'run-sequence)
     do (run-recorded-test (name test) 
			   :run-canonical-p (or run-canonical-p save-canonical-p)
			   :save-canonical-p save-canonical-p
			   :suite suite))
  (when run-vendor-p (run-vendor-xmi)))

(defun suite-canonical-path (suite)
  "Return the path where SUITE writes files."
  (ecase suite
    (:miwg   (pod:lpath :lisplib "pod-utils/uml-utils/models/miwg/canonical/"))
    (:miwg23 (pod:lpath :lisplib "pod-utils/uml-utils/models/miwg/canonical/"))))

(defun name2tc (name suite)
  "Return the testcase name keyword given a suite and name"
  (mvb (success vec)
      (cl-ppcre:scan-to-strings (suite-regex suite) (string name))
    (when success (kintern (format nil "TC~A" (aref vec 0))))))

(defun suite-regex (suite)
  "Return the regex used to decode testcase names."
  (ecase suite
    (:miwg   "MIWG-TC([0-9,a-z,A-Z,\\-]+)")
    (:miwg23 "MIWG-23-TC([0-9,a-z,A-Z,\\-]+)")
    (:miwg241 "MIWG-241-TC([0-9,a-z,A-Z,\\-]+)")
    (:miwg25 "MIWG-25-TC([0-9,a-z,A-Z,\\-]+)")))

(defun run-recorded-test (name &key run-canonical-p save-canonical-p suite)
  "Run the test named NAME, which has results recorded by a defTest."
  (when-bind (test (find name *regression-tests* :key #'name))
    (with-slots (name path comment expected) test
      (format *debug-io* "~%=========== Running test ~a =============" name)
      (format *debug-io* "~% Comment: ~A" comment)
      (let* ((mut (reg-run-validator path :test-case (name2tc name suite)))
	     (m-n+1 (car (nicknames (model-n+1 mut))))
	     (m-xmi (car (nicknames (model-xmi mut)))))
	(unless (and m-n+1 m-xmi) (error "Unknown metamodel/XMI: ~A/~A" m-n+1 m-xmi))
	(format *debug-io* "~% Model is ~A" m-n+1)
	(when-bind (profs (profiles-used mut))
	  (format *debug-io* " with profiles ~{~A~^, ~}" profs))
	(format *debug-io* "~% XMI is ~A" m-xmi)
	(let ((count-errors (count-conditions (processing-results mut))))
	  (loop for (title cnt) in expected do
	       (cond ((string= title "OCL errors due to missing derived attribute specifications")
		      (when-bind (found (gethash 'ocl-attempts-executing-absent-derived count-errors))
			(unless (= cnt found)
			  (format *debug-io* "~% '~A' (expected ~A, got ~A)" title cnt found))))
		     ((string= title "OCL execution errors")
		      (when-bind (found (gethash 'ocl-execution-error count-errors))
			(unless (= cnt found)
			  (format *debug-io* "~% '~A' (expected ~A, got ~A)" title cnt found))))
		     (t
		      (let ((found 0))
			(loop for c across (conditions (processing-results mut))
			   when (string= title (get :title (class-name (class-of c))))
			   do (incf found)
			   finally 
			     (unless (= cnt found)
			       (format *debug-io* "~% '~A' (expected ~A, got ~A)" title cnt found))))))))
	(when run-canonical-p (test-canonical mut))
	(when save-canonical-p ; This is only performed on things named :MIWG-TCx
	  (mvb (success vec)
	      (cl-ppcre:scan-to-strings (suite-regex suite)
					(string name))
	    (if success
		(pod-utils::copy-file (phttp::user-pathname (pod:lpath :tmp "diff/user-canonical.xml"))
			   (merge-pathnames 
			    (make-pathname :name (format nil "tc~A" (aref vec 0)) :type "xml")
			    (suite-canonical-path suite)))
		(warn "Not copying canonical to respository.")))))))
  (format *debug-io* "~%"))

(defun reg-run-validator (fname &key (validate-p t) (new-user t) test-case)
  "Run xmi2model-instance, validate, return MUT."
  (setf *spare-session-vo* ; Trying to clean up stuff from prior runs.
	(if new-user
	    (make-instance 'phttp:sei-session-vo :models *essential-models*)
	    *spare-session-vo*))
    (handler-bind
	((simple-warning #'(lambda (c) 
			     (with-slots (mofi::conditions) mofi:*results*
			       (vector-push-extend c mofi::conditions))
			     (muffle-warning))))
      (with-debugging (:readers 0) ;(:readers 5)
	(let ((mutt (xmi2model-instance :file fname))) 
	  (with-vo (mut) (setf mut mutt)) ; 2012-10-03
	  (dbg-message :readers 5 "~%Passed xmi2model-instance")
	  (when validate-p (validate mutt))
	  (dbg-message :readers 5 "~%Passed validate")
	  (when test-case
	    (when-bind (tc-canon (mofi:find-tc-canonical test-case))
	      (mofi:with-results (mofi:valid-doc)
		(setf mofi:valid-doc (xmlp:document-parser tc-canon)))
	      (with-vo (phttp:diffing-possible)
		(when phttp:diffing-possible
		  (with-debugging (:match 0)
		    (mofi:model-diff (kintern test-case)))))))
	  (dbg-message :readers 5 "~%Passed model-diff")
	  mutt))))

(defun test-canonical (mut)
  "Generate a canonical, run it, and compare results with those of the argument population."
  (format *debug-io* "~% Generating canonical. Comparing its validation with that of original.")
  (let ((orig-cond (equiv-classes (coerce (conditions (processing-results mut)) 'list)
			     :key #'(lambda (x) (get :title (class-name (class-of x)))))))
    (mofi:xmi-direct-transform mut) 
    (let ((fname (phttp::user-pathname (pod:lpath :tmp "diff/user-canonical.xml"))))
      (format t "~% Canonical is ~A" (truename fname))
      (if (eql :xml (usr-bin-file fname))
	  (let* ((cmut (reg-run-validator fname :new-user nil))
		 (cmut-cond (equiv-classes (coerce (conditions (processing-results cmut)) 'list)
					   :key #'(lambda (x) (get :title (class-name (class-of x)))))))
	    (loop for cmut-class in cmut-cond
	          for orig-class = (find (class-of (car cmut-class)) orig-cond 
					 :key #'(lambda (x) (class-of (car x))))
	          unless (= (length orig-class) (length cmut-class))
	          do (format *debug-io* "~% ~30A : Original ~A, Canonical ~A"
			     (get :title (class-name (class-of (car cmut-class))))
			     (length orig-class)
			     (length cmut-class))))
	  (warn "Did not create a canonical for ~A!" (model-name mut)))))
  (format *debug-io* "~%"))


(defparameter *run-sequence* 0 "Ordering that tests should run is order they appear in this file.")
(defclass regression-test ()
  ((name :initarg :name :reader name) 
   (comment :initarg :comment :initform "")
   (path :initarg :path)
   (suite :initarg :suite :reader suite )
   (expected :initarg :expected)
   (run-sequence :reader run-sequence :initform (incf *run-sequence*))))

(defmethod print-object ((obj regression-test) stream)
  (with-slots (name) obj
      (format stream "#<regression-test ~A>" name)))


(defmacro defTest (&key name path suite comment expected)
  `(progn 
    (setf *regression-tests*
	  (remove ,name *regression-tests* :key #'name))
    (push
     (make-instance 'regression-test
      :name ,name
      :path ,path
      :suite ,suite
      :comment ,comment
      :expected ',expected)
     *regression-tests*)))


;;;======================================================================
;;; Vendor XMI Testing
;;;======================================================================


(defparameter *error-categories*
  '((:metamodel
     uml-ownership-cycle
     mof-expected-primitive
     ocl-attempts-executing-absent-derived
     ocl-error-calculating-derived
     ocl-execution-error
     ocl-violation
     mof-creates-abstract-class
     mof-stereotype-application-in-model
     mof-duplicate-sterotype-application 
     mof-invalid-sterotype-application
     mof-no-object-for-stereotyping
     mof-violates-type
     mof-violates-multiplicity
     mof-cannot-infer-type
     mof-no-such-attr
     mof-class-not-found
     mof-missing-mandatory
     mof-set-values-not-unique
     mof-unresolvable-uri
     mof-object-ref-not-found)
    (:xmi
     xmi-serializes-opposite
     xmi-serializes-derived
     xmi-serializes-default
     xmi-excess-space
     mof-duplicate-xmi-id)
    (:diff 
     xmi-diff-property-not-specified
     xmi-diff-property-values-differ
     xmi-diff-valid-missing
     xmi-diff-user-missing
     xmi-odd-match)))

#+nil
(defun error-on-non-existant-error-category ()
  "Produce an error when you can't find an error category in *error-categories*."
  (loop for cat in (mapappend #'cdr *error-categories*)
        unless (find-class cat nil)
        do (error "I don't know about error category ~A" cat)))

(defun check-untested-error-category ()
  (flet ((subs-of (class-name)
	   (mapcar #'class-name (class-direct-subclasses (find-class class-name nil)))))
    (let* ((ignore '(ocl-type-error-report mof-diff-warning))
	   (all-cats (append (mapappend #'cdr *error-categories*) ignore))
	   (all-subs (append 
		      (subs-of 'mof-diff-warning)
		      (subs-of 'mof-warning))))
      (loop for test in all-subs
	   unless (member test all-cats)
	   do (warn "This category of error is not being tested: ~A." test)))))

;;; No Model
;;; Bad XML
(defparameter *vendor-files-to-ignore*
  '("/home/pdenno/projects/miwg/Tests/OMG-Model-Interchange/trunk/UML2.1.1-XMI2.1/Test-Case-6/Submissions/RSx-7.5.x/our-export.xmi;"
    "/home/pdenno/projects/miwg/Tests/OMG-Model-Interchange/trunk/Tests/SysML1.2-XMI2.1/Test-Case-11/Submissions/Modelio-1.2/our-export.xmi"))

(defparameter *vendor-files-to-ignore* 
  '("/local/lisp/pod-utils/uml-utils/data/maged/latest/Test-Case-15/Submissions/Modelio-2.4.19/our-export.xmi"))
#|
  '("/local/lisp/pod-utils/uml-utils/data/maged/base/Test-Case-9/Submissions/MagicDraw-17.0/our-export.xmi"
    "/local/lisp/pod-utils/uml-utils/data/maged/base/Test-Case-9/Submissions/Rhapsody-7.6.x/our-export.xmi"
    "/local/lisp/pod-utils/uml-utils/data/maged/latest/Test-Case-10/Submissions/MagicDraw-17.0/our-export.xml"
    "/local/lisp/pod-utils/uml-utils/data/maged/base/Test-Case-10/Submissions/Artisan-Studio-7.2m/our-export.xmi"
    "/local/lisp/pod-utils/uml-utils/data/maged/base/Test-Case-10/Submissions/EnterpriseArchitect-9/our-export.xmi"
    "/local/lisp/pod-utils/uml-utils/data/maged/latest/Test-Case-10/Submissions/Modelio-2.4.19/our-export.xmi"
    "/local/lisp/pod-utils/uml-utils/data/maged/base/Test-Case-11/Submissions/MagicDraw-17.0/our-export.xml"
    "/local/lisp/pod-utils/uml-utils/data/maged/base/Test-Case-11/Submissions/Artisan-Studio-7.2m/our-export.xmi"
    "/local/lisp/pod-utils/uml-utils/data/maged/base/Test-Case-11/Submissions/EnterpriseArchitect-9/our-export.xmi"
    "/local/lisp/pod-utils/uml-utils/data/maged/base/Test-Case-11/Submissions/Modelio-2.4.19/our-export.xmi"
    "/local/lisp/pod-utils/uml-utils/data/maged/base/Test-Case-12a/Submissions/MagicDraw-17.0/our-export.xml"
    "/local/lisp/pod-utils/uml-utils/data/maged/base/Test-Case-12a/Submissions/Artisan-Studio-7.2m/our-export.xmi"
    "/local/lisp/pod-utils/uml-utils/data/maged/base/Test-Case-12a/Submissions/EnterpriseArchitect-9/our-export.xmi"
    "/local/lisp/pod-utils/uml-utils/data/maged/base/Test-Case-12a/Submissions/Modelio-2.4.19/our-export.xmi"
    "/local/lisp/pod-utils/uml-utils/data/maged/base/Test-Case-12b/Submissions/Artisan-Studio-7.2m/our-export.xmi"
    "/local/lisp/pod-utils/uml-utils/data/maged/base/Test-Case-12b/Submissions/EnterpriseArchitect-9/our-export.xmi"))
|#

(defun run-single ()
  (reg-run-validator (nth 0 *vendor-files-to-ignore*) :test-case :tc9))


;;;   /local/lisp/pod-utils/uml-utils/data/maged/base/Test-Case-1/Submissions/Artisan-Studio-7.3m
;;;   /local/lisp/pod-utils/uml-utils/data/maged/latest/Test-Case-1/Submissions/Artisan-Studio-7.3m
(defun maged-run ()
  "Run the baseline and current files for each vendor / each TC and identify the
   number and kinds of errors in each. Kinds are xmi conformance, metamodel conformance
   and differences to valid."
  (ensure-trie-db :miwg-testing)
  (loop for tc in '("1" "2" "3" "4" "5" "6" "7" "8" "9" "10" "11" "12a" "12b" "13" "14" "15" "16")
        for tc-name = (kintern (format nil "TC~A" tc))
        for base = (merge-pathnames 
		    (make-pathname 
		     :directory (list :relative (format nil "Test-Case-~A" tc) "Submissions")) 
		    #P"/local/lisp/pod-utils/uml-utils/data/maged/base/") do
       (format t "~3% ========== Test Case ~A ===========" tc)
       (cl-fad:walk-directory 
	base
	#'(lambda (b-pname) 
	    (when (and (string= "our-export" (pathname-name b-pname))
		       (or (string= "xml" (pathname-type b-pname))
			   (string= "xmi" (pathname-type b-pname))))
	      (if-bind (c-pname (corresponding-current b-pname))
		       (unless (or (member (namestring b-pname) *vendor-files-to-ignore* :test #'string=)
				   (member (namestring c-pname) *vendor-files-to-ignore* :test #'string=))
			 (let ((mut-b (reg-run-validator b-pname :test-case tc-name))
			       (mut-c (reg-run-validator c-pname :test-case tc-name)))
			   (maged-compare-runs mut-b mut-c tc-name)))
			 (warn "No file matching ~A" b-pname)))))))


(defun maged-compare-runs (mut-b mut-c tc)
  "Compare results from baseline and current our-export.xmi"
  (let ((tool (nth 10 (pathname-directory (slot-value mut-b 'source-file))))
	(cb (coerce (conditions (processing-results mut-b)) 'list))
	(cc (coerce (conditions (processing-results mut-c)) 'list))
	(e-type-cnt-b 0)
	(e-type-cnt-c 0))
    (format t "~2% TOOL ~A" tool)
    (with-trie-db (:miwg-testing)
      (loop for ecat in '(:metamodel :xmi :diff) 
	    for ecat-cnt-b = 0
	    for ecat-cnt-c = 0 do
	   (format t "~%  ~A errors" ecat)
	   (loop for etype in (cdr (assoc ecat *error-categories*))
	      for cnt-b = (count etype cb :test #'(lambda (x o) (typep o x)))
	      for cnt-c = (count etype cc :test #'(lambda (x o) (typep o x))) 
	      when (not (zerop cnt-b)) do  (incf e-type-cnt-b) (incf ecat-cnt-b)
	      when (not (zerop cnt-c)) do  (incf e-type-cnt-c) (incf ecat-cnt-c)
	      when (or (not (zerop cnt-b)) (not (zerop cnt-c))) do
		(format t "~%   Base   ~A:  ~A" etype cnt-b)
		(format t "~%   Latest ~A:  ~A  (reduction: ~A)" etype cnt-c (- cnt-b cnt-c))
		(trie-add `(etype ,tool ,tc ,ecat :base ,etype ,cnt-b))
		(trie-add `(etype ,tool ,tc ,ecat :last ,etype ,cnt-c)))
	   (trie-add `(issue-cat ,tool ,tc ,ecat :base ,ecat-cnt-b))
	   (trie-add `(issue-cat ,tool ,tc ,ecat :last ,ecat-cnt-c)))
      (trie-add `(issue-sum ,tool ,tc :base ,e-type-cnt-b))
      (trie-add `(issue-sum ,tool ,tc :last ,e-type-cnt-c))
      (format t "~%    Base issues: ~A" e-type-cnt-b)
      (format t "~% Current issues: ~A" e-type-cnt-c)
      (format t "~% Issue reduction: ~A" (- e-type-cnt-b e-type-cnt-c))
      (format t "~% Total error reduction: ~A" (- (length cb) (length cc))))))

(defun all-tools ()
  "Return a list of strings naming all tools."
  (with-trie-db (:miwg-testing)
    (remove-duplicates (flatten (lt-query (?tool) '(etype ?tool ?tc ?x ?cat ?etype ?cnt)))
		       :test #'string=)))

(defun issue-reduction-by-tool ()
  "Report on issue reduction in 3 categories by tool."
  (with-trie-db (:miwg-testing)
    (loop for tool in (all-tools) do
	 (format t "~%")
	 (loop for cat in '(:metamodel :xmi :diff) do
	      (format t "~%~A issue reduction for ~A: ~A" 
		      cat tool
		      (- (reduce #'+ (flatten (lt-query (?cnt) `(issue-cat ,tool ?tc ,cat :base ?cnt))))
			 (reduce #'+ (flatten (lt-query (?cnt) `(issue-cat ,tool ?tc ,cat :last ?cnt))))))))))


(defun corresponding-current (b-pname)
  "Return the matching 'current' file in the maged directories."
  (let ((maybe 
	 (merge-pathnames
	  (make-pathname :directory (list :relative "latest" 
					  (nth 8 (pathname-directory b-pname))
					  "Submissions"
					  (nth 10 (pathname-directory b-pname)))
			 :name "our-export")
	  #P"/local/lisp/pod-utils/uml-utils/data/maged/")))
    (or (probe-file (merge-pathnames (make-pathname :type "xmi") maybe))
	(probe-file (merge-pathnames (make-pathname :type "xml") maybe)))))

;;; POD Currently, I only check whether or not there is an exception.
(defun run-vendor-xmi (&key (start-at 1) (end-after 100))
  "Toplevel function to run vendor's XMI."
  (cl-fad:walk-directory 
   (pod:lpath :miwg ".")
   #'(lambda (pname) 
       (when (and (string= "our-export" (pathname-name pname))
		  (or (string= "xml" (pathname-type pname))
		      (string= "xmi" (pathname-type pname))))
	 (let ((tcn (testcase-number pname)))
	   (when (and (>= tcn start-at)
		      (<= tcn end-after))
	     (if (member (namestring pname) *vendor-files-to-ignore* :test #'string=)
		 (format t "~%IGNORING ~A" pname)
		 (progn
		   (format t "~%Running ~A" pname)
		   (let ((mut (reg-run-validator pname :run-canonical-p t)))
		     (test-canonical mut))))))))))

(defun testcase-number (fname)
  "Return the testcase of the file named by FNAME."
  (mvb (success vec)
      (cl-ppcre:scan-to-strings "Test-Case-(\\d+[a-z]?)" (namestring fname))
    (when success (read-from-string (aref vec 0)))))

(defun vendor-file-testcase (fname)
  "Determine the test case (:tc1, :tc2...) corresponding to FNAME, a filename."
    (when-bind (test-num (testcase-number fname))
      (kintern (format nil "TC~A" test-num))))

(defun run-other-tests ()
  (lookup-href-tests))

;;; In UML 2.3 primitive types were in UML.xmi. After that, in PrimitiveTypes.xmi. 
(defun lookup-href-tests ()
  (if (and
       (typep (lookup-href "http://www.omg.org/spec/UML/20090901/UML.xmi") 'uml23:|Model|)
       (typep (lookup-href "http://www.omg.org/spec/UML/20110701/UML.xmi") 'uml241:|Model|)
       (typep (lookup-href "http://www.omg.org/spec/UML/2.5/UML.xmi") 'uml25:|Model|)
       (null (lookup-href "http://www.omg.org/spec/UML/2.5/UML.xmi#String"))
       (eql (find-class 'ptypes:|String|) (lookup-href "http://www.omg.org/spec/UML/20090901/UML.xmi#String"))
       (eql (find-class 'ptypes:|String|) (lookup-href "http://www.omg.org/spec/UML/20110701/PrimitiveTypes.xmi#String"))
       (null                              (lookup-href "http://www.omg.org/spec/UML/20110701/UML.xmi#String"))
       (eql (find-class 'ptypes:|String|) (lookup-href "http://www.omg.org/spec/UML/2.5/PrimitiveTypes.xmi#String"))
       (null                              (lookup-href "http://www.omg.org/spec/UML/2.5/UML.xmi#String")))
      (format t "~2% *** lookup-href tests ok. ***")
      (format t "~2% *** LOOKUP-HREF TESTS FAILED! ***")))
       

#+nil
(defun copy-vendor-exports ()
  (break "Do I really want to do this? I update these files a bit...")
  (cl-fad:walk-directory 
   "~/projects/miwg/Tests/" 
   #'(lambda (file)
       (let ((fname (pathname-name file))
	     (ftype (pathname-type file)))
	 (when (and (string-equal fname "our-export")
		    (or (string-equal ftype "xmi")					  
			(string-equal ftype "xml")))
	   (mvb (success vec)
	       (cl-ppcre:scan-to-strings ".*/Test-Case-([0-9]+)/Submissions/(.+)/our-export.xm[i,l]" (namestring file))
	     (when success
	       (let* ((tc-num (aref vec 0))
		      (vendor (aref vec 1))
		      (dir (format nil "/home/pdenno/projects/miwg/vendor-exports/tc~A/" tc-num)))
		 (ensure-directories-exist dir)
		 (pod-utils::copy-file file 
			    (format nil "~A~A.xml" 
				    dir 
				    (string-downcase
				     (cl-ppcre:regex-replace-all 
				      "\\ "
				      (cl-ppcre:regex-replace-all "\\." vendor "-")
				      ""))))))))))))
