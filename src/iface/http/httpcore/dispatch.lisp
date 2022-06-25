;;; Copyright (c) 2005, Peter Denno.  All rights reserved.

;;; Redistribution and use in source and binary forms, with or without
;;; modification, are permitted provided that the following conditions
;;; are met:

;;;   * Redistributions of source code must retain the above copyright
;;;     notice, this list of conditions and the following disclaimer.

;;;   * Redistributions in binary form must reproduce the above
;;;     copyright notice, this list of conditions and the following
;;;     disclaimer in the documentation and/or other materials
;;;     provided with the distribution.

;;; THIS SOFTWARE IS PROVIDED BY THE AUTHOR 'AS IS' AND ANY EXPRESSED
;;; OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
;;; WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;;; ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
;;; DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
;;; DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
;;; GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;;; INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
;;; WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
;;; NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
;;; SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

(in-package :project-http)

(defparameter *uploaded-files-dir* (lpath :tmp "upload/"))

(defun make-sei-menu ()
  (mk-mnode
   :root
   "<not used>"
   "<not used>"
   (mk-mnode
    :tools
    "Validation Tools"
    "/se-interop"
    (mk-mnode :profile-loader "Load Profiles"      "/se-interop/tools/load-profiles")
    (mk-mnode :mm-loader      "Load Metamodels"    "/se-interop/tools/load-metamodels")
    (mk-mnode :frag-loader    "Load Fragments"     "/se-interop/tools/load-fragments")
    (mk-mnode :validator      "Validate Models"    "/se-interop/tools/validator"))
#+qvt
    (mk-mnode :qvt
	      "QVT-r"
	      "/se-interop/qvt"
	      (mk-mnode :load-metamodels "Load Metamodels" "/se-interop/qvt/load-metamodels")
	      (mk-mnode :load-maps       "Load QVT-r Maps" "/se-interop/qvt/load-maps")
	      (mk-mnode :load-models     "Load Models"     "/se-interop/qvt/load-models")
	      (mk-mnode :map             "Execute Mapping" "/se-interop/qvt/map"))
    (mk-mnode :mof-browser    "Browse Models"      "/se-interop/tools/browse-models")
    (mk-mnode :tools-overview
	     "Notes on Tools"
	     "/se-interop/tools-overview"
	     (mk-mnode :notes-criteria   "Validation Criteria"   "/se-interop/tools-overview#criteria")
	     (mk-mnode :notes-model-diff "Model Diff Capability" "/se-interop/tools-overview#diff")
	     (mk-mnode :notes-preloads   "Pre-loaded Models"     "/se-interop/tools-overview#preloads"))
    (mk-mnode :changelog "Change Log" "/se-interop/changelog")
    #-sei.exe(mk-mnode :clear "Clear Session" "/se-interop/clear-session")))

;;; *dispatch-table* : A list of functions of one argument (request) that look at the uri,
;;; and if matches, returns a handler, otherwise, next one in table is tried.
;;; Example: create-static-file-dispatcher create a function that, when (eql (script-name *request*) uri),
;;; returns a function that handles the request. (Otherwise it declines by returning nil).

(defun set-tbnl-dispatch-table ()
  (setf *dispatch-table*
	(list
	 (create-folder-dispatcher-and-handler
	  "/se-interop/static/" (namestring (pod:lpath :sei "iface/http/static/")))
	 (create-folder-dispatcher-and-handler
	  "/se-interop/image/" (namestring (pod:lpath :sei "iface/http/image/")))
	 (create-folder-dispatcher-and-handler
	  "/SEI/image/" (namestring (pod:lpath :sei "iface/http/image/")))

	 ;; MIWG
	 (create-prefix-dispatcher "/se-interop/tools/models-loaded" 'miwg-tools-models-loaded-dsp)
	 (create-prefix-dispatcher "/se-interop/tools/load-profiles"   'load-profiles-dsp)
	 (create-prefix-dispatcher "/se-interop/tools/load-metamodels" 'load-metamodels-dsp)
	 (create-prefix-dispatcher "/se-interop/tools/load-fragments"  'load-fragments-dsp)

	 ;; Implementor Tools
	 (create-prefix-dispatcher "/se-interop/validator/xmi-example" 'sysml-xmi-example-dsp)
	 (create-prefix-dispatcher "/se-interop/validator/single-condition" 'validator-report-single-condition-dsp)
	 (create-prefix-dispatcher "/se-interop/tools/validator" 'sysml-validator-dsp)
	 (create-prefix-dispatcher "/se-interop/sysml/validator/results" 'sysml-validator-report-results-dsp)
	 (create-prefix-dispatcher "/se-interop/sysml/validator/xml-error" 'validator-report-xml-error-dsp)
	 (create-prefix-dispatcher "/se-interop/sysml/validator/match-table" 'validator-match-table-dsp)
	 (create-prefix-dispatcher "/se-interop/sysml/object-inventory" 'object-inventory-page)
	 (create-static-file-dispatcher-and-handler "/se-interop/sysml/user-canonical-xmi"
						    (pod:lpath :tmp  "user-canonical.xml") "text")
	 (create-static-file-dispatcher-and-handler "/se-interop/sysml/tc-canonical-xmi"
						    (pod:lpath :tmp "tc-canonical.xml") "text")
	 (create-folder-dispatcher-and-handler  "/se-interop/diff/" (pod:lpath :tmp "diff/"))

	 (create-prefix-dispatcher "/se-interop/tools/browse-models" 'class-list-dsp)
	 (create-prefix-dispatcher "/se-interop/tools/browse-upr"    'upr-class-list-dsp)
	 (create-prefix-dispatcher "/se-interop/sysml/explanation" 'mof-explain-dsp)
	 (create-prefix-dispatcher "/se-interop/object-view" #'(lambda () (mofb:mof-obj-view-dsp :app :sei)))
	 (create-prefix-dispatcher "/se-interop/class-view" #'(lambda () (mofb:mof-class-view-dsp :app :sei)))
	 (create-prefix-dispatcher "/se-interop/browse-model" #'(lambda () (mofb:mof-model-list-dsp :app :sei)))
	 (create-prefix-dispatcher "/se-interop/remove-model" 'mofb:remove-model-dsp)
	 (create-prefix-dispatcher "/se-interop/pod-load-lisp" 'pod-load-lisp)

	 ;; QVT
	 #+qvt(create-prefix-dispatcher "/se-interop/qvt/load-metamodels"
				   #'(lambda () (qvth:qvt-load-metamodels-dsp :app :sei)))
	 #+qvt(create-prefix-dispatcher "/se-interop/qvt/load-maps" #'(lambda () (qvth:qvt-compile-maps-dsp :app :sei)))
	 #+qvt(create-prefix-dispatcher "/se-interop/qvt/load-models" #'(lambda () (qvth:qvt-load-models-dsp :app :sei)))
	 #+qvt(create-prefix-dispatcher "/se-interop/qvt/map" #'(lambda () (qvth:qvt-execute-map-dsp :app :sei)))
	 #+qvt(create-prefix-dispatcher "/se-interop/qvt/parse-errors" #'(lambda () (qvth:qvt-parse-errors-dsp :app :sei)))
	 #+qvt(create-prefix-dispatcher "/se-interop/qvt/restore-defaults" 'qvth:qvt-restore-defaults-dsp)
	 #+nil(create-prefix-dispatcher "/se-interop/qvt/js" 'devl-js-post-dsp)
	 #+qvt(create-prefix-dispatcher "/se-interop/qvt" #'(lambda () (qvth:qvt-dsp :app :sei)))

	 ;; Modelica
	 #+modelica(create-prefix-dispatcher "/se-interop/modelica/register-eqn" 'modelica:|RegisterEqn|)
	 #+modelica(create-prefix-dispatcher "/se-interop/modelica/register-var" 'modelica:|RegisterVar|)

	 ;; Defaults

	 (create-prefix-dispatcher "/se-interop/changelog" 'miwg-tools-changelog-dsp)
	 (create-prefix-dispatcher "/se-interop/get-validator" 'get-validator-dsp)
	 (create-prefix-dispatcher "/se-interop/tools-overview" 'tools-overview-dsp)
	 (create-prefix-dispatcher "/se-interop/software-disclaimer" 'sei-software-disclaimer)
	 (create-prefix-dispatcher "/se-interop/clear-session" 'sei-clear-session)
	 (create-prefix-dispatcher "/se-interop/index.html" 'sei-homepage)
	 (create-prefix-dispatcher "/se-interop"            'sei-homepage)
	 (create-regex-dispatcher "/se-interop/$"           'sei-homepage)
	 (create-regex-dispatcher "/se-interop$"            'sei-homepage)))
  (values))


(defun sei-clear-session ()
  "Clear up stuff so that it looks like a new user."
  (when (and (boundp 'tbnl:*session*) tbnl:*session*)
    (tbnl:remove-session tbnl:*session*))
  (tbnl:start-session)
  (setf (tbnl:session-value 'session-vo) ; 2011-07-27 setting 'session-vo is new!!!
	(setf *spare-session-vo*
	      (make-instance 'sei-session-vo
			     :app-name :sei
			     :tbnl-session tbnl:*session*)))
  (with-html-output-to-string (*standard-output*)
    (:html "Your session with SEI tools has been cleared.")))

(defun tool-under-construction ()
  (app-page-wrapper :sei (:menu-pos (if (search "ap233" (script-name tbnl:*request*))
					'(:root :tools :tools :ap233)))
    (:h1 "Tool under construction")
    "This tool is not yet completely implemented. Check back soon."))

(defun make-apps ()
  "Create the apps from scratch."
  (set-tbnl-dispatch-table)
  (make-instance 'http-app
		 :app-name :sei
		 :app-url-prefix "/se-interop"
		 :app-title "NIST Validator"
		 :app-menu (make-sei-menu)
		 :session-vo-class 'sei-session-vo ; was a function in pod-utils
		 ;; app-url-key-fn is used by url-object-browser to track the instance in a URL parameter.
		 ;; It creates entries in the view-object hash-table of the session-vo."
		 :app-url-key-fn
		 #'(lambda (object)
		     (let ((obj-key (string (gensym "VOBJ"))))
		       (with-vo (view-objects)
			 (setf (gethash obj-key view-objects) object)
			 obj-key)))
		 ;; Probably obsolete
		 :app-authorization-fn
		 #'(lambda (user password)
		     (with-trie-db (:member-db)
		       (string-equal password
				     (third
				      (trie-query
				       `(mo-user.pw ,(intern user :project-http) ?p))))))))
