;;; Author: Peter Denno
;;; Load and start the xmi-validator. This has been designed for SBCL.
;;; I think .sbclrc should contain (load "~/quicklisp/setup.lisp")

(pushnew :iface-http *features*)
(pushnew :miwg *features*)
(pushnew :sei *features*)
(pushnew :hunchentoot-no-ssl *features*)
;(pushnew :qvt *features*)
(pushnew :closure-xml *features*)

(load "~/quicklisp/setup.lisp")
(asdf:clear-configuration)
(asdf:initialize-source-registry)

(ql:quickload "cl-who")
(ql:quickload "cl-ppcre")
(ql:quickload "closer-mop")
(ql:quickload "hunchentoot")
(ql:quickload "cxml")
(ql:quickload "cxml-stp")
(ql:quickload "inferior-shell")

(handler-bind ((style-warning #'muffle-warning))
  (load "./pod-utils/packages.lisp")
  (load "./pod-utils/utils.lisp"))

(sb-unix:unix-mkdir "/tmp/xmi-validator" #o777)
(sb-unix:unix-mkdir "/tmp/xmi-validator/diff" #o777)
(sb-unix:unix-mkdir "/tmp/xmi-validator/hunchentoot" #o777)
(sb-unix:unix-mkdir "/tmp/xmi-validator/upload" #o777)

;;; Bootstrap logical pathnames.
(defvar pod:*lpath-ht* (make-hash-table))

(loop for (key . val) in `((:sei     . ,(truename "."))
			   (:expo    . ,(truename "."))
			   (:lisplib . ,(truename "./pod-utils"))
			   (:testlib . ,(truename "./pod-utils"))
			   (:mylib   . ,(truename "./pod-utils"))
			   (:tmp     . ,(truename "/tmp/xmi-validator"))
			   (:data    . ,(truename "../data/"))
			   (:models  . ,(truename "../models/")))
      do (setf (gethash key pod:*lpath-ht*) val))

(defpackage :user-system
  (:use :cl :asdf :pod-utils))
(in-package :user-system)

(defparameter *load-source-pathname-types* '("lisp" nil))
(defparameter *load-binary-pathname-types*  "fasl")

;;;==================================================
;;; Load package files
;;;==================================================
(load (lpath :mylib "trie/package.lisp"))
(load (lpath :mylib "uml-utils/ocl/package.lisp"))
(load (lpath :mylib "uml-utils/mof/package.lisp"))
;;; Don't load it if you don't need it; screws up ocl debugging.
(load (lpath :sei "iface/http/httpcore/package.lisp"))
;;; I think load the qvt package even if you don't use it. (Some stuff in OCL refers to it?)
(load (lpath :mylib "uml-utils/qvt/package.lisp"))
(load (lpath :mylib "uml-utils/browser/packages.lisp"))
(load (lpath :models "sei/essential-models.asd"))
(load (lpath :models "sei/sei-essential-models.asd"))

;(handler-bind ((style-warning #'muffle-warning))
;    (asdf:load-system :xmi-validator))
(ql:quickload :xmi-validator)

(in-package :mofi)

(defvar *cmpkg* nil "Package for #. compiler directive (see pop-generate.lisp) -- determines 
   whether processing UML or CMOF into lisp. Set to any of the :CMOFs of a UML (e.g. :UML23).")

(defun comp-it ()
  (let ((po.lisp (pod:lpath :mylib "uml-utils/mof/pop-generate.lisp")))
    (setf *cmpkg* :uml23)
    (load (compile-file po.lisp))
    (setf *cmpkg* :uml241)
    (load (compile-file po.lisp))
    (setf *cmpkg* :uml25)
    (load (compile-file po.lisp))
    (setf *cmpkg* :uml251)
    (load (compile-file po.lisp))))

(comp-it)

;;; Add CMOF constraints and operations (there is just one) to every UML.
(loop for model in (loop for m in *models* when (string= "uml" (ns-prefix m)) collect m)
      do (let ((*package* (lisp-package model))
	       (*model* model))
	   (format t "~2%;;;======== Adding CMOF constraints to ~A ===========" model)
	   (load (pod:lpath :models "cmof-constraints/cmof-constraints.lisp"))
	   (loop for class across (types model)
	      do (ocl:compile-operations class  :gf-name 'ocl:ocl-constraints-cmof)
	      do (ocl:compile-constraints class :gf-name 'ocl:ocl-constraints-cmof))))

(phttp:sei-start)
(format t "~2%;;;============ Server Started ========================")
