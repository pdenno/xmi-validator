;;; -*- Mode: lisp; Syntax: ansi-common-lisp; Base: 10; Package: cl-user; -*-

(in-package :CL-USER)

;;; load configuration with CL-HTTP and with name instances:

#-CL-HTTP
(cerror "continue load."
        "this is intended to test a configuration with CL-HTTP, yet CL-HTTP is not present.")

(load (merge-pathnames (make-pathname :name "define-system" :directory '(:relative "library"))
                       *load-pathname*))

(register-system-definition :xparser (merge-pathnames (make-pathname :name "sysdcl") *load-pathname*))

(setf *festures* (remove :xml-symbols *features*))
(pushnew :nameset-tokenizer *features*)
(execute-system-operations :xparser '(:compile :load))

(format *trace-output* "~%cl xml loaded:~%~s" *features*)

;(execute-system-operations :xtests '( :load))

:EOF
