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

(defvar *zippy* nil)

#+old
(defvar *hunchentoot-server* nil "Bound to the server object, when it it's running.")
(defvar *hunchentoot-server* nil "Bound to the acceptor object.")

;;; This session-specific object contains information generated as part of a validation. 
(defclass sei-session-vo (session-vo)
  ((app-name :initform :sei) ; already defined in session-vo, add value
   ;; A unique user id
   (user-id :reader user-id :initform (gensym "user-"))
;   ;; Profile populations loaded by the user
;   (user-profiles :initform nil)
   ;; Keyword naming the TC diffing against
   (show-diff-p :initform nil)
   ;; nil if, for example, cycles are found
   (diffing-possible :initform t)
   ;; Name of file user uploaded. 
   (filename :initform nil)
   ;; A hash-table indexed by the names of conditions, containing 
   ;; the unique-ht (see mof/conditions.lisp)
   (error-reports :initform (make-hash-table))
   ;; Object used to describe qvt map
   (qvt-map-info :initform nil)))

(defvar +patch-level+ (now :form :yyyymmddhhmmss-colon))

;;; Object used to describe qvt map
(defclass qvt-map-info ()
  ;; A list of compiled metamodels "model types" called out in the transformation language element.
  (;(model-types :initform nil :initarg :model-type)
   ;; The compiled model generated from parsing the QVT-r file.
   (qvt-map-model :initform nil)
   ;; A population corresponding to the "source model type" (currently exactly one of these).
   (source-pop :initform nil)
   ;; An alist of (nickname. model)
   (nicknames :initform nil :accessor nicknames)))

(defun tbnl::address-string () "Contact: xmi-interop@omg.org")

(defun set-tbnl-vars ()
  "Set hunchentoot configuration, depending on whether running production or development."
  (let ((debug-p nil)) ;18 (member "--debug" sys:*line-arguments-list* :test 'string=)))
    (when debug-p
      (format t "~% Debugging: tbln:*slow-lisp-errors-p* and *catch-errors-p* are T."))
    (tbnl::def-http-return-code tbnl:+http-internal-server-error+ 
	500 
      "An error occurred in the NIST Validator.<br/> You may email xmi-interop@omg.org to report the error.") 
    (setf tbnl:*tmp-directory* (namestring (pod:lpath :tmp "hunchentoot/")))
    ;(setf tbnl:*message-log-pathname* (pod:lpath :tmp "hunchentoot/log.txt")) ;18 gone in qlisp version.
    ;; Print the error in html. See hunchentoot/request.lisp
    (setf tbnl:*show-lisp-errors-p* (if (and (member :sei.exe *features*) (not debug-p)) t nil))
    ;; *catch-errors-p = nil --> invoke debugger
    (setf tbnl:*catch-errors-p* (if (and (member :sei.exe *features*) (not debug-p)) t nil))
    (setf tbnl:*log-lisp-warnings-p* t)
    (setf tbnl:*log-lisp-errors-p* t)
    (setf tbnl:*log-lisp-backtraces-p* t)))

(defun act-like-exe ()
  "Allow error reporting like sei.exe (production compilation)."
  (setf tbnl:*catch-errors-p* t)
  (setf tbnl:*show-lisp-errors-p* t))

(defun act-like-devel ()
  "Allow error reporting like sei.exe (production compilation)."
  (setf tbnl:*catch-errors-p* nil)
  (setf tbnl:*show-lisp-errors-p* nil))

(defun sei-start (&key (port 3330) (stream *standard-output*))
  "Called once, when the .exe starts. This is THE entry point (excluding possible GUI stuff)."
  (system-clear-memoized-fns)
  (set-tbnl-vars)
  (make-apps)
 #+lispworks(lw:set-default-character-element-type 'lw:simple-char)
  ;; Consider also doing this:
;;;  (setf (hunchentoot:reply-external-format*)
;;;	(flexi-streams:make-external-format :utf-8))
  (format stream "~%lpath     (sei): ~A" (pod:lpath :sei "iface/http/static/miwg-intro.html"))
  (format stream "~%lpath     (tmp): ~A" (pod:lpath :tmp "hello"))
  (format stream "~%lpath     (lib): ~A" (pod:lpath :lisplib "pod-utils"))
  (format stream "~%lpath    (miwg): ~A" (pod:lpath :models "miwg/tc1.xmi"))
  (when *hunchentoot-server* (sei-stop))
  (setf *spare-session-vo* (make-instance 'sei-session-vo))
  (format stream "~%Loading testcases...")
  #-modelica(mofi:reload-valid-testcases)
  (format stream "~% Execution mode is ~A." (if (member :sei.exe *features*) "production" "development"))
  (format stream "~% Application is ~A." (find-http-app :sei))
  (format stream "~%Done. (Now starting server on port ~A)~%" port)
  ;;(tbnl:start (setf *hunchentoot-server* (make-instance 'tbnl:acceptor :port port)))
  ;;18(tbnl:start (setf *hunchentoot-server* (make-instance 'my-acceptor :port port)))
  (tbnl:start (make-instance 'tbnl:easy-acceptor :port port))
  (format stream "~%Validator available at http://localhost:~A/se-interop/" port)
  (values))

(hunchentoot:define-easy-handler (say-yo :uri "/yo") (name)
  (setf (hunchentoot:content-type*) "text/plain")
  (format nil "Hey~@[ ~A~]!" name))

(defun sei-stop ()
  (when *hunchentoot-server*
    (tbnl:stop *hunchentoot-server*)
    (setf *hunchentoot-server* nil)))

(defun sei-default-handler ()
  "The handler that serves the request if no other handler is called."
  (tbnl:log-message* :info "Default handler called for script ~A" (script-name tbnl:*request*))
  "<html><head><title>SEI</title></head><body><h2>SEI Default Page</h2>
          <p>The resource you sought was not found on this server.</p>
          <hr>
          <address><a href='mailto:xmi-interop@omg.org'>xmi-interop@omg.org</a></address>
  </body></html>")


;;; Doing this will crash slime: 
;;; (setf lw:*default-character-element-type* 'lw:simple-char)
;;; Should  use lw:set-default-character-element-type .
#|
(defun utf-8-file-encoding (pathname ef-spec buffer length)
  "See http://www.lispworks.com/documentation/lw60/LW/html/lw-470.htm"
  (declare (ignore pathname buffer length))
  (system:merge-ef-specs ef-spec :utf-8))

(defun fallback-utf-8 ()
  "See http://www.lispworks.com/documentation/lw60/LW/html/lw-470.htm"
  (setq system:*file-encoding-detection-algorithm*
	(substitute 'utf-8-file-encoding
		    'system:locale-file-encoding
		    system:*file-encoding-detection-algorithm*)))

(defun return-from-utf-8 ()
  "See http://www.lispworks.com/documentation/lw60/LW/html/lw-470.htm"
  (setq system:*file-encoding-detection-algorithm*
	(substitute 'system:locale-file-encoding
		    'utf-8-file-encoding
		    system:*file-encoding-detection-algorithm*)))

(defun force-utf-8 ()
 "See http://www.lispworks.com/documentation/lw60/LW/html/lw-470.htm"
  (setq system:*file-encoding-detection-algorithm*
      '(utf-8-file-encoding)))
|#

(defmacro show-it (&body body) 
  `(show-html-expansion (*standard-output* nil :indent t)
			,@body))

(defun pod-load-lisp ()
  "Handler to load a fasl file. I hope I'm not going to regret this!"
  (app-page-wrapper :sei (:view "XMI Validator" 
				:menu-pos '(:root :tools :validator))
    (:h1 "Diagnostic")
    (:form :method :post :enctype "multipart/form-data"
	   (:table :border 0 :cellpadding 10 :cellspacing 0
		   :bgcolor "#FDFDD8"
		   (:tr (:td "File: ") (:td (:input :type :file :name "file")))
		   (:tr (:td :colspan 2 :align "center" 
			     (:input :type :submit :value "Upload and Process")))))
    (when-bind (lisp-file (car (safe-post-parameter "file")))
      (load lisp-file :verbose nil)
      (str (format nil "Loaded at ~A" (now))))))


;;;==================================================================
;;; Override TBNL process-run-function so that may timeout when hung.
;;; This is only used in debugging. 
;;;==================================================================
(defparameter *pod-worker-process-timeout* 0 "Number of seconds to wait before killing the request.")

#| POD 18
(defun tbnl::process-run-function (name function &rest args)
  (let ((p (apply #'mp:process-run-function name nil function args)))
    (start-reaper-process p)
    p))

(defun start-reaper-process (p &key (timeout *pod-worker-process-timeout*))
  "Start a process that waits for TIMEOUT seconds, then kills a process P, 
   if P still exists."
  (unless (zerop *pod-worker-process-timeout*)
    (mp:process-run-function 
     (format nil "Reaper Process for ~A" (mp:process-name p)) nil
     #'(lambda ()
	 (mp:process-wait-with-timeout (format nil "Waiting to kill ~A" (mp:process-name p)) timeout)
	 (when (member p (mp:list-all-processes))
	   (when (mp:process-alive-p p)
	     (mp:process-kill p)))))))
|#

;;;==================================================
;;; Homepages
;;;==================================================
(defun sei-homepage ()
  (app-page-wrapper :sei (:menu-pos '(:root :tools))
    (with-open-file (s (lpath :sei "iface/http/static/homepage.html"))
      (loop for line = (read-line s nil nil)
	    while line do (princ line) (terpri)))))

(defun sei-software-disclaimer ()
  (app-page-wrapper :sei ()
   (:h2 "Disclaimer")
   "This software was developed at the National Institute of Standards and Technology by 
    employees of the Federal Government in the course of their official duties. Pursuant 
    to title 17 Section 105 of the United States Code this software is not subject to copyright 
    protection and is in the public domain. It is an experimental system. NIST assumes no 
    responsibility whatsoever for its use by other parties, and makes no guarantees, expressed 
    or implied, about its quality, reliability, or any other characteristic. We would appreciate 
    acknowledgement if the software is used. This software can be redistributed and/or modified 
    freely provided that any derivative works bear some notice that they are derived from it, 
    and any modified versions bear some notice that they have been modified."))

; 2013-11-22 I'm not using mouse sensitive area over "NIST"
;(defmethod pod:div-header ((app (eql :sei)))
;  "Emit html for the banner. "
;  (with-html-output (*standard-output*)
;    (:img :src "/se-interop/image/heading.gif"
;	  :width 903 :height 108 :border 0
;	  :usemap "#index_02_Map")
;    (:map :name "#index_02_Map"
;	  (:area :shape "rect" :coords "709,4,862,63"))))


(defmethod pod:div-header ((app (eql :sei)))
  "Emit html for the banner. "
  (with-html-output (*standard-output*)
    (:img :src "/se-interop/image/heading.gif"
	  :width 1000 :height 120 :border 0)))
