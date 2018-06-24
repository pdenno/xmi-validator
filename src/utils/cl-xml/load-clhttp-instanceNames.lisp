;;; -*- Mode: lisp; Syntax: ansi-common-lisp; Base: 10; Package: cl-user; -*-

(in-package :CL-USER)

;;; load configuration without CL-HTTP and with name symbols:

#+CL-HTTP
(cerror "continue load."
        "this is intended to load a configuration without CL-HTTP, yet CL-HTTP is present.")

(load (merge-pathnames (make-pathname :name "define-system" :directory '(:relative "library"))
                       *load-pathname*))

(register-system-definition :xparser (merge-pathnames (make-pathname :name "sysdcl") *load-pathname*))

(pushnew :xml-symbols *features*)
(setf *features* (remove :nameset-tokenizer *features*))
(execute-system-operations :xparser '(:compile :load))

(format *trace-output* "~%cl xml loaded:~%~s" *features*)

;(execute-system-operations :xtests '( :load))

:EOF
