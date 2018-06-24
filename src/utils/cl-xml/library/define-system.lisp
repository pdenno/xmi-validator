;;; -*- Mode: lisp; Syntax: ansi-common-lisp; Base: 10; Package: cl-user; -*-

#|
this defines a micro system definition function to support the
minimal system composition spec used for cl-http

(define-system ((<name symbol> &optional <documentation string>)
                <operations (list (member :probe :compile :compile-load :compile-load-always :load))>
                &rest <files (list string)>) )

|#

(in-package :cl-user)
(defpackage :jaa-defsystem
  (:use :cl :pod-utils)
  (:nicknames :jaa-def)
  (:export #:register-system-definition
	   #:execute-system-operations))
(in-package :jaa-defsystem)

(defParameter *logical-source-type* "lisp")
(defParameter *logical-binary-type* #+linux "ufasl" #+win32 "ofasl" #+sbcl "fasl")
(defParameter *physical-source-type* "lisp")
(defParameter *physical-binary-type*
     (pathname-type (compile-file-pathname (make-pathname :name "source" :type *physical-source-type*))))

;pod18#+sbcl
;pod18(setq sb-fasl:*fasl-file-type* "sbcfsl")

(defMacro define-system ((name &key description) (&rest operations) &body files)
  (if operations
    `(execute-system-operations (register-system ',name :description ,description :files ',files)
                                ',operations)
    `(register-system ',name :description ,description :files ',files)))

#-(or ALLEGRO LispWorks) ;; this is here for convenience, but allegro already has a definition in EXCL
(defMacro defsystem (name &key source-pathname components &aux module-names)
  `(progn
     ,@(mapcar #'(lambda (module-spec)
                   (destructuring-bind (op name &key components) module-spec
                     (push name module-names)
                     (ecase op
                       (:module `(define-system (,name) ()
                                   ,@(mapcar #'(lambda (file-spec)
                                                (destructuring-bind (&key file) file-spec
                                                  (merge-pathnames file source-pathname)))
                                            components))))))
               components)
     (define-system (,name) () ,@(reverse module-names))))

(defun call-with-src-and-bin (function filename)
  (let ((src-pathname (case (pathname-type filename)
                        ((nil :unspecific) (make-pathname :type *logical-source-type* :defaults filename))
                        (t filename)))
        (bin-pathname (make-pathname :type *logical-binary-type* :defaults filename)))
    (funcall function filename src-pathname bin-pathname
             (probe-file src-pathname) (probe-file bin-pathname))))

(defun defsys-message (stream format &rest args)
  (when *load-verbose*
    (apply #'format stream format args))
  #+(and MCL digitool)
  (apply #'ccl:set-mini-buffer (ccl::current-listener) format args)
  )

(defun conditional-compile-file (filename &key always)
  (call-with-src-and-bin
   #'(lambda (filename src bin probed-src probed-bin
                       &aux #+lispworks (system:*stack-overflow-behaviour* :warn))
       (cond (probed-src
              (cond ((or always (null probed-bin) (> (file-write-date probed-src) (file-write-date probed-bin)))
                     (unless probed-bin
                       (ensure-directories-exist (translate-logical-pathname bin)))
                     (defsys-message *trace-output* "~%;Compiling ~s -> ~s..." src bin)
                     (compile-file probed-src :output-file (or probed-bin bin)))
                    (t
                     (defsys-message *trace-output* "~%;Skipped Compiling ~s." src))))
             (t
              (warn "file missing: ~s." filename))))
   filename))

(defun conditional-load-file (filename)
  (call-with-src-and-bin
          #'(lambda (filename src bin probed-src probed-bin)
              (declare (ignore src bin))
              (cond ((and probed-bin (or (null probed-src) (>= (file-write-date probed-bin) (file-write-date probed-src))))
                     (defsys-message *trace-output* "~%;loading ~a, ~:[no source~;newer~]." probed-bin probed-src)
                     (load probed-bin))
                    (probed-src
                     (defsys-message *trace-output* "~%;loading ~a, ~:[no bin~;newer~]." probed-src probed-bin)
                     (load probed-src))
                    (t
                     (error "neither source nor binary file found: ~s." filename))))
          filename))

(defGeneric print-universal-time (stream time opt arg)
  (:method ((stream t) (time integer) (opt t) (arg t))
           (multiple-value-bind (second minute hour day month year) (decode-universal-time time)
             (format stream "~4,'0d.~2,'0d.~2,'0dT~2,'0d:~2,'0d:~2,'0d" year month day hour minute second)))
  (:method ((stream t) (time t) (opt t) (arg t))
           (write-string "****.**.**T**:**:**" stream)))

(defun probe-file-src-and-bin (filename)
  (call-with-src-and-bin
   #'(lambda (filename src bin probed-src probed-bin)
       (if probed-src
         (defsys-message *trace-output*
           "~%; ~s~@[ (@ ~/print-universal-time/)~] -> ~s (~:[missing~;~1:*@ ~/print-universal-time/~])..."
           probed-src (file-write-date probed-src) bin (when probed-bin (file-write-date probed-bin)))
         (warn "file missing: ~s (= ~s)." filename src)))
   filename))

(defun system-p (datum)
  (and (keywordp datum) (eq (get datum :system-keyword) datum)))

(deftype system () '(satisfies system-p))
    
(defun find-system-named (name &rest options)
  ;; coerce system identifiers to keywords. this precludes package-relative naming, but makes it easier to
  ;; build in common-lisp-user
  (etypecase name
    (null nil)
    (keyword
     (destructuring-bind (&key (if-does-not-exist nil) (if-exists name)) options
       (cond ((eq name (get name :system-keyword))
              (case if-exists
                (:error
                 (error "Existing system named ~s found." name))
                (t
                 if-exists)))
             (t
              (ecase if-does-not-exist
                (:error
                 (error "No system named ~s found." name))
                (:create
                 (setf (get name :system-keyword) name))
                ((nil)
                 nil))))))
    ((or string symbol)
     (apply #'find-system-named (intern (string-upcase name) "KEYWORD") options))))

(defun system-property (system property &rest options &key (if-does-not-exist nil))
  (when (setf system (apply #'find-system-named system :if-does-not-exist if-does-not-exist options))
    (get system property)))

(defun (setf system-property) (new-value system property &rest options
                                         &key (if-does-not-exist :error))
  (when (setf system (apply #'find-system-named system :if-does-not-exist if-does-not-exist options))
    (setf (get system property) new-value)))

(defun system-loaded-p (system)
  (system-property system :system-load-time))

(defun system-needs-loading-p (system)
  (or (not (system-loaded-p system))
      (let ((load-time (system-load-time system)))
        (dolist (component (system-files system))
          (when (or (stringp component) (pathnamep component))
            (call-with-src-and-bin #'(lambda (path src bin probed-src probed-bin)
                                       (declare (ignore path src bin probed-bin))
                                       (when (> (file-write-date probed-src) load-time)
                                         (return t)))
                                   component))))))
                          
(defun system-load-time (system)
  (system-property system :system-load-time))

(defun (setf system-load-time) (time system)
  (setf (system-property system :system-load-time) time))

(defun system-files (system &aux pathname)
  (or (system-property system :system-files :if-does-not-exist :error)
      (when (setf pathname (system-property system :system-pathname))
        (conditional-load-file pathname)
        (system-property system :system-files))))

  

(defun register-system-definition (system pathname)
  (setf (system-property system :system-pathname :if-does-not-exist :create) pathname))

(defun register-system (name &key description files)
  (let ((system-keyword (find-system-named name :if-does-not-exist :create))
        (components (mapcar #'(lambda (component)
                                (typecase component
                                  ((or string pathname) component)
                                  (keyword component)
                                  (symbol (intern (string component) "KEYWORD"))
                                  (cons (cons (first component)
                                              (mapcar #'(lambda (c) (intern (string c) "KEYWORD"))
                                                      (rest component))))))
                            files)))
    (unless (equal components (system-property system-keyword :system-files))
      (setf (system-load-time system-keyword) nil))
    (setf (system-property system-keyword :system-files) components)
    (setf (system-property system-keyword :system-description) description)
    (when (and (symbolp name) (not (keywordp name)))
      (setf (get name :system-keyword) system-keyword))
    system-keyword))

(defun collect-systems (systems &optional collected)
  (declare (special *systems*))
  (typecase systems
    (null collected)
    (system (if (find systems collected)
              collected
              (let ((predecessors (remove-if-not #'keywordp (system-files systems))))
                (pushnew systems collected)
                (dolist (dependancy predecessors)
                  (setf collected (collect-systems dependancy collected)))
                collected)))
    (cons 
     (ecase (first systems)
       (and (dolist (system (rest systems))
              (setf collected (collect-systems system collected)))
            collected)
       (or (collect-systems (or (find-if #'(lambda (system) (find system *systems*)) systems)
                                (error "system prerequisites not specified: ~s." systems))
                            collected))
       (some (setf systems (or (intersection (rest systems) *systems*)
                               (error "system prerequisites not specified: ~s." systems)))
             (dolist (system systems)
               (setf collected (collect-systems system collected)))
             collected)))
    (t
     (collect-systems (find-system-named systems) collected))))

(defun system-preceeds-p (basis dependant)
  (flet ((match-p (component)
           (or (eq basis component)
               (and (system-p component) (system-preceeds-p basis component)))))
    (dolist (component (system-files dependant))
      (typecase component
        (system (when (match-p component) (return t)))
        (cons (dolist (component (rest component))
                (when (match-p component) (return-from system-preceeds-p t))))))))

(fmakunbound 'execute-system-operations)

(defGeneric execute-system-operations (systems operations)
  (:method ((systems t) (operations null))
           systems)
  (:method ((systems t) (operation symbol))
           (execute-system-operations systems (list operation)))
  (:method ((systems t) (operation function))
           (execute-system-operations systems (list operation)))
  (:method ((system null) (operation t))
           nil)
  (:method ((system string) (operation t))
           (execute-system-operations (list system) operation))
  (:method ((system symbol) (operation t))
           (execute-system-operations (list system) operation))
  (:method ((*systems* cons) (*operations* cons)
            &aux effective-systems effective-components (results nil)
            (verbose-p (or (find :verbose *operations*) *load-verbose*))
            (force-p (find :force *operations*)))
    (declare (special *systems* *operations*))

    (when (eq (first *systems*) 'and) (pop *systems*))
    (setf *systems* (mapcar #'(lambda (system) (find-system-named system :if-does-not-exist :error)) *systems*))
    (map nil #'(lambda (system) (setf (system-load-time system) nil)) *systems*)
    (when verbose-p
      (format *trace-output* "~%;;~%;; systems: ~s" (mapcar #'(lambda (s &aux (lt (system-load-time s))) (if lt (cons s lt) s)) *systems*)))
    (setf *systems* (cons 'and *systems*))
    (setf effective-systems (collect-systems *systems*))
    (when verbose-p
      (format *trace-output* "~%;;~%;; collected systems: ~s" effective-systems))
    (setf effective-systems (sort effective-systems #'system-preceeds-p))
    (when verbose-p
      (format *trace-output* "~%;;~%;; sorted systems: ~s" effective-systems))
    (unless force-p
      (setf effective-systems (remove-if (complement #'system-needs-loading-p) effective-systems)))
    (when verbose-p
      (format *trace-output* "~%;;~%;; systems needing loading: ~s" effective-systems))
    (setf effective-components
          (remove-duplicates (apply #'append
                                    (mapcar #'(lambda (system)
                                                (append (remove-if (complement #'(lambda (component) (or (stringp component)
                                                                                                         (pathnamep component))))
                                                                   (system-files system))
                                                        (list system)))
                                            effective-systems))
                             :from-end t :test #'equalp))
    (when verbose-p
      (format *trace-output* "~%;;~%;; effective components: ~s" effective-components))
    (if effective-components
        (with-compilation-unit ()
          (dolist (component effective-components)
            (etypecase component
              ((or string pathname)
               (when verbose-p
                 (format *trace-output* "~%;; component: ~s" component))
               (dolist (op *operations*)
                 (when (functionp op)
                   (push (funcall op component) results))
                 (when (eq op :probe)
                   (push (probe-file-src-and-bin component) results))
                 (when (eq op :edit)
                   (push (ed component) results))
                 (when (member op '(:compile :compile-always :compile-load :compile-load-always))
                   (push (conditional-compile-file component :always (member op '(:compile-load-always :compile-always))) results))
                 (when (member op '(:load :compile-load :compile-load-always)) 
                   (push (conditional-load-file component) results))
                 (when (member op '(:pathname :files))
                   (push component results))))
              (system
               (when (intersection *operations* '(:load :compile-load :compile-load-always))
                 (when *load-verbose*
                   (format *trace-output* "~%;; system load time set: ~s" component))
                 (setf (system-property component :system-load-time) (get-universal-time))))
              (cons ; skip dependancies as they've already been expanded
               )))
          (setf results (reverse results))
          (values results effective-systems))
        (warn "no components effective: ~s." *systems*))))

(pushnew :define-system *features*)

;;(trace collect-systems)
;;(trace find-system-named)
; (trace system-depends-on-p)

:EOF


