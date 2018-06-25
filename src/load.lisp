;;; Author: Peter Denno
;;; Load and start the xmi-validator. This has been designed for SBCL. 

(pushnew :iface-http *features*)  
(pushnew :miwg *features*)
(pushnew :sei *features*)
(pushnew :hunchentoot-no-ssl *features*)
(pushnew :qvt *features*)
(pushnew :closure-xml *features*)

(require :asdf)
(require :quicklisp)
(asdf:initialize-source-registry)
(ql:quickload "cl-who")
(ql:quickload "cl-ppcre")
(ql:quickload "closer-mop")
(ql:quickload "hunchentoot")
(ql:quickload "cxml")

(handler-bind ((style-warning #'muffle-warning))
  (load "./pod-utils/packages.lisp")
  (load "./pod-utils/utils.lisp"))

;;; Bootstrap logical pathnames. 
(defvar pod:*lpath-ht* (make-hash-table))

(loop for (key . val) in `((:sei     . ,(truename "."))
			   (:expo    . ,(truename "."))
	    	           (:lisplib . ,(truename "./utils"))
			   (:testlib . ,(truename "./pod-utils"))
			   (:mylib   . ,(truename "./pod-utils"))
			   ;18(:models  . "/home/pdenno/win-pdenno/rt/projects/mm/models/")
			   (:tmp     . "/local/tmp/")
			   ;18(:miwg    . "/home/pdenno/projects/miwg/Tests/")
			   )
   do (setf (gethash key pod:*lpath-ht*) val))

(defpackage :user-system
  (:use :cl :asdf :pod-utils))

(in-package :user-system)

#|
;;; cl-xml has its own system definition system. It was defined in cl-user.
;;; Without modification it defines 'system' which hoses ASDF. I changed its
;;; package to jaa-defsystem. This is an attempt to isolate it.
;;; More screwing around was needed.
(require :sb-introspect)
(require :sb-bsd-sockets)
(require :sb-grovel)
(require :sb-executable)
(require :sb-posix)
(load (compile-file (lpath :lisplib "cl-xml/library/define-system.lisp")))
(load (compile-file (lpath :lisplib "cl-xml/sysdcl.lisp")))
(let ((*package* (find-package :jaa-defsystem))
      (*load-verbose* t)
      (*load-truename* (lpath :lisplib "cl-xml/")))
  (jaa-def:register-system-definition :xparser (lpath :lisplib "cl-xml/sysdcl.lisp"))
  (pushnew :xml-symbols *features*)
  (setf *features* (remove :nameset-tokenizer *features*))
  (load (compile-file (lpath :lisplib "cl-xml/library/de/setf/utility/package.lisp")))
  (load (compile-file (lpath :lisplib "cl-xml/code/base/package.lisp")))
  (sb-ext:without-package-locks
    (jaa-def:execute-system-operations :xparser '(:compile :load :verbose))))
|#


;(setf *compile-verbose* nil)
;(setf *compile-print* nil)

(defparameter *load-source-pathname-types* '("lisp" nil))
(defparameter *load-binary-pathname-types*  "fasl")

;;;==================================================
;;; Load package files
;;;==================================================
(load (lpath :mylib "trie/package.lisp"))
(load (lpath :mylib "xml-utils/package.lisp"))
(load (lpath :mylib "xpath/package.lisp"))
(load (lpath :mylib "uml-utils/ocl/package.lisp"))
(load (lpath :mylib "uml-utils/mof/package.lisp"))
;;; Don't load it if you don't need it; screws up ocl debugging.
(load (lpath :sei "iface/http/httpcore/package.lisp"))
;;; I think load the qvt package even if you don't use it. (Some stuff in OCL refers to it?)
(load (lpath :mylib "uml-utils/qvt/package.lisp"))
;(load (lpath :mylib "pod-utils/uml-utils/models/packages.lisp"))
(load (lpath :mylib "uml-utils/browser/packages.lisp"))

(handler-bind ((style-warning #'muffle-warning))
    (asdf:load-system :xmi-validator))

;;; I gave up trying to understand how ASDF is organized. The documentation is not helpful.
(in-package :mofi)

(defvar *cmpkg* nil "Package for #. compiler directive -- determines whether processing
   UML or CMOF into lisp. Set to any of the :CMOFs of a UML (e.g. :UML23).")

(load (compile-file (pod:lpath :sei "xqdm-fix.lisp")))

(defun comp-it ()
  (let ((po.lisp (pod:lpath :mylib "pod-utils/uml-utils/mof/pop-generate.lisp")))
    (setf *cmpkg* :uml23)
    (load (compile-file po.lisp))
    (setf *cmpkg* :uml241)
    (load (compile-file po.lisp))
    (setf *cmpkg* :uml25)
    (load (compile-file po.lisp))))

(comp-it)

;;; Add CMOF constraints and operations (there is just one) to every UML. 
(loop for model in (loop for m in *models* when (string= "uml" (ns-prefix m)) collect m)
      do (let ((*package* (lisp-package model))
	       (*model* model))
	   (format t "~2%;;;======== Adding CMOF constraints to ~A ===========" model)
	   (load (pod:lpath :mylib "pod-utils/uml-utils/data/cmof-constraints/cmof-constraints.lisp"))
	   (loop for class across (types model) 
	      do (ocl:compile-operations class  :gf-name 'ocl:ocl-constraints-cmof)
	      do (ocl:compile-constraints class :gf-name 'ocl:ocl-constraints-cmof))))

(phttp:sei-start)
(format t "~2%;;;============ Server Started ========================")


