;;; This was based on the cl-xml/load.lisp file I (POD) wrote.
;;; It appears that I should load this after quickload cl-who and cl-ppcre,
;;; but before quickload cl-http ???

(in-package :user-system)

;;; load configuration without CL-HTTP and with name symbols:

#+CL-HTTP
(cerror "continue load."
        "this is intended to load a configuration without CL-HTTP, yet CL-HTTP is present.")

(load (merge-pathnames (make-pathname :name "define-system" :directory '(:relative "library"))
		       (lpath :lisplib "cl-xml/")))


(register-system-definition :xparser (merge-pathnames (make-pathname :name "sysdcl")
						      (lpath :lisplib "cl-xml/")))


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
