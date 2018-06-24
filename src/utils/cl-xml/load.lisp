;;; -*- Mode: lisp; Syntax: ansi-common-lisp; Base: 10; Package: cl-user; -*-

(in-package :CL-USER)

;;; load configuration without CL-HTTP and with name symbols:

#+win32(load "z:/bigfuzzlocal/lisp/cl-who/current/packages.lisp") 
#-win32(load (compile-file "/local/lisp/cl-who/current/packages.lisp")) 
#-win32(load (compile-file "/local/lisp/cl-ppcre/current/packages.lisp"))
(load #+linux (compile-file "/home/pdenno/rt/projects/lisp/pod-utils/packages.lisp")
      #+win32 (compile-file "z:/bigfuzzlocal/lisp/pod-utils/packages.lisp"))
(load #+linux (compile-file "/home/pdenno/rt/projects/lisp/pod-utils/utils.lisp")    
      #+win32 (compile-file "z:/bigfuzzlocal/lisp/cl-ppcre/current/packages.lisp"))
;(load #+linux (compile-file "/local/lisp/pod-utils/utils.lisp")    
;      #+win32 (compile-file "z:/bigfuzzlocal/lisp/pod-utils/utils.lisp"))

#+(AND LispWorks Linux)(setf *load-binary-pathname-types* '(ufasl)) ;<--------- 5.0
#+(AND LispWorks win32)(setf *load-binary-pathname-types* '(ofasl)) ;<--------- 2011-05-29

#+CL-HTTP
(cerror "continue load."
        "this is intended to load a configuration without CL-HTTP, yet CL-HTTP is present.")

#+win32 (setf *load-path* "z:/bigfuzzlocal/lisp/cl-xml/cl-xml")

(load (merge-pathnames (make-pathname :name "define-system" :directory '(:relative "library"))
                       *load-pathname*))

(register-system-definition :xparser (merge-pathnames (make-pathname :name "sysdcl") *load-pathname*))


(pushnew :xml-symbols *features*)
(setf *features* (remove :nameset-tokenizer *features*))

;;;=================================
;;; POD Use this for compile (and comment it out for build):
;;;=================================
(execute-system-operations :xparser '(:compile :load))

;;;=========================================================================
;;; POD Use this for building a lisp image (and comment it out for compile):
;;;=========================================================================
;(execute-system-operations :xparser '(:load))

(format *trace-output* "~%cl xml loaded:~%~s" *features*)

;(execute-system-operations :xtests '( :load))

:EOF
