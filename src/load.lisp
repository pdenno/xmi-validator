;;; -*- Mode: Lisp; -*-
;;;
;;; Author: Peter Denno

(pushnew :iface-http *features*)  
(pushnew :miwg *features*)
(pushnew :sei *features*)
(pushnew :hunchentoot-no-ssl *features*)
;(push :home *features*)
;(pushnew :qvt *features*) 

(require :asdf)


(progn
  (load "./utils/cl-who/current/packages.lisp")
  (load "./utils/cl-ppcre/current/packages.lisp")
  (load "./pod-utils/packages.lisp")
  (load "./pod-utils/utils.lisp"))

;;; Bootstrap logical pathnames. 
(defvar pod:*lpath-ht* (make-hash-table))

(loop for (key . val) in '((:sei     . ,(truename ".")
			   (:expo    . ,(truename ".")
			   (:lisplib . ,(truename "./utils")
			   (:testlib . ,(truename "./pod-utils")
			   (:mylib   . ,(truename "./pod-utils")
			   ;18(:models  . "/home/pdenno/win-pdenno/rt/projects/mm/models/")
			   (:tmp     . "/local/tmp/")
			   ;18(:miwg    . "/home/pdenno/projects/miwg/Tests/")
			   )
     do (setf (gethash key pod:*lpath-ht*) val))

(defpackage :user-system
  (:use :cl :asdf :pod-utils))

(in-package :user-system)


#+SBCL
(progn
  (setf *compile-verbose* nil)
  (setf *compile-print* nil)
  #-asdf (require :asdf))

(defparameter *load-source-pathname-types* '("lisp" nil))
(defparameter *load-binary-pathname-types* 
  #+ANSI-CL `(,(pathname-type (compile-file-pathname "foo.lisp")))
  #-(or ANSI-CL)
  (error "Can't find binary file type for ~A" (lisp-implementation-type)))

;;;==================================================
;;; Load package files
;;;==================================================
#+:lispworks(load (lpath :lisplib "closer/current/closer-mop-packages.lisp"))

;;; Note some ediware .asd files define packages
;(load (lpath :lisplib "rfc2388/current/rfc2388.asd"))
;(load (lpath :lisplib "md5/current/md5.asd"))
;(load (lpath :lisplib "flexi-streams/current/flexi-streams.asd"))

(load (lpath :lisplib "rfc2388/current/packages.lisp"))
(load (lpath :lisplib "url-rewrite/current/packages.lisp"))
(load (lpath :lisplib "cl-who/current/packages.lisp"))
(load (lpath :lisplib "cl-fad/current/packages.lisp"))
(load (lpath :lisplib "trivial-gray-streams/current/trivial-gray-streams.asd"))
(load (lpath :lisplib "trivial-gray-streams/current/package.lisp"))
(load (lpath :lisplib "flexi-streams/current/packages.lisp"))
(load (lpath :lisplib "cl-fad/current/packages.lisp"))
(load (lpath :lisplib "chunga/current/packages.lisp"))
(load (lpath :lisplib "hunchentoot/current/hunchentoot.asd"))
(load (lpath :lisplib "hunchentoot/current/packages.lisp"))
(load (lpath :lisplib "trivial-backtrace/trivial-backtrace/trivial-backtrace.asd"))

(load (lpath :mylib "pod-utils/trie/package.lisp"))
(load (lpath :mylib "pod-utils/xpath/package.lisp"))
(load (lpath :mylib "pod-utils/uml-utils/ocl/package.lisp"))
(load (lpath :mylib "pod-utils/uml-utils/mof/package.lisp"))
;;; Don't load it if you don't need it; screws up ocl debugging.
(load (lpath :sei "iface/http/httpcore/package.lisp"))
;;; I think load the qvt package even if you don't use it. (Some stuff in OCL refers to it?)
(load (lpath :mylib "pod-utils/uml-utils/qvt/package.lisp"))
;(load (lpath :mylib "pod-utils/uml-utils/models/packages.lisp"))
(load (lpath :mylib "pod-utils/uml-utils/browser/packages.lisp"))

(handler-bind ((style-warning #'muffle-warning))
    (asdf:oos 'asdf:load-op :application-server))

;;; I gave up trying to understand how ASDF is organized. The documentation is not helpful.
(in-package :mofi)

(defvar *cmpkg* nil "Package for #. compiler directive -- determines whether processing
   UML or CMOF into lisp. Set to either :CMOF of a UML (e.g. :UML23).")

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

(unless (member :sei.exe *features*)
  (if (member :home *features*)
      (phttp:sei-start-home-version)
      (phttp:sei-start)))
(format t "~2%;;;============ Server Started ========================")


