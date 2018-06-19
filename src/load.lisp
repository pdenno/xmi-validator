;;; -*- Mode: Lisp; -*-
;;;
;;; Author: Peter Denno, National Institute of Standards and Technology 
;;;         peter.denno@nist.gov
;;;
;;; Peter Denno
;;;  Date: 2004-06-12

;;; THIS IS A REALLY OLD COMMENT WHICH IS MOSTLY NOT TRUE:
;;; There are currently two application that can be loaded from this file:
;;;   (1) A hunchentoot-based server for the SysML MIWG and MEXICO;
;;;       This uses application-server.asd.
;;;   (2) A cells-gtk-based application called 'Expresso'
;;;       This uses application-expresso.asd.
;;; The ASDF build files are classified along two dimensions:
;;;   (a) UML/EXPRESS - application-server uses parts of both (but no Part 14 stuff).
;;;       The difference is that either one loads (from 

(pushnew :iface-http *features*)  
(pushnew :miwg *features*)
;(pushnew :mod *features*) ; 2016 .. and this means??? (A modelica thing???) grep only show #+modelica
;(push :home *features*)
;(push :modelica *features*)
;(push :closure-xml *features*)
;(pushnew :qvt *features*) 
;(pushnew :alf *features*)

(pushnew :sei *features*)    ;; for Price, this is AP233 in UML. 
;(pushnew :ap233-validator *features*)    ;; for Sampson (and Price?)
;(pushnew :mexico    *features*)  ;; for Price and Sampson (for generating an AP233 schema).
;(pushnew :express   *features*)  ;; For Price and Sampson

(push :hunchentoot-no-ssl *features*)

(require :asdf)

#+mswindows
(progn
  (load "c:/local/lisp/cl-who/current/packages.lisp")
  (load "c:/local/lisp/cl-ppcre/current/packages.lisp")
  (load "c:/local/lisp/pod-utils/packages.lisp")
  (asdf:initialize-source-registry #P"c:/Users/Peter Denno/.config/common-lisp/source-registry.conf")
  (load "c:/local/lisp/pod-utils/utils.lisp"))

#+linux
(progn
  (load "/local/lisp/cl-who/current/packages.lisp")
  (load "/local/lisp/cl-ppcre/current/packages.lisp")
  (load "/home/pdenno/rt/projects/lisp/pod-utils/packages.lisp")
  (load "/home/pdenno/rt/projects/lisp/pod-utils/utils.lisp"))

;;; Bootstrap logical pathnames. 
(defvar pod:*lpath-ht* (make-hash-table))

#+linux
(loop for (key . val) in '((:sei     . "/home/pdenno/projects/sei/source/") ; ,(truename ".")  has problems
			   (:expo    . "/home/pdenno/projects/sei/source/")
			   (:lisplib . "/local/lisp/")
			   (:testlib . "/home/pdenno/projects/lisp/")
			   (:mylib   . "/home/pdenno/projects/lisp/")
			   (:models  . "/home/pdenno/win-pdenno/rt/projects/mm/models/") ; I updated it from a local copy on Windows.
			   (:tmp     . "/local/tmp/")
			   (:miwg    . "/home/pdenno/projects/miwg/Tests/"))
     do (setf (gethash key pod:*lpath-ht*) val))

#+mswindows
(loop for (key . val) in '((:sei     . "c:/users/pdenno/projects/sei/source/") ; ,(truename ".")  has problems
			   (:expo    . "c:/users/pdenno/projects/sei/source/")
			   (:lisplib . "c:/local/lisp/")
			   (:tmp     . "c:/local/tmp/")
			   (:miwg    . "c:/users/pdenno/projects/miwg/Tests/"))
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
;;;ff #-:lispworks(lpath :lisplib "lw-compat/current/lw-compat-package.lisp")
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
#+home (load (lpath :sei "iface/capi/packages.lisp"))
;;; I think load the qvt package even if you don't use it. (Some stuff in OCL refers to it?)
(load (lpath :mylib "pod-utils/uml-utils/qvt/package.lisp"))
;15(load (lpath :mylib "pod-utils/uml-utils/models/packages.lisp"))
(load (lpath :mylib "pod-utils/uml-utils/browser/packages.lisp"))
#+alf(load (lpath :mylib "pod-utils/uml-utils/alf/packages.lisp"))

(handler-bind ((style-warning #'muffle-warning))
    #+lispworks(asdf:oos 'asdf:load-op :hunchentoot)
    (asdf:oos 'asdf:load-op :application-server)
    #+home(asdf:oos 'asdf:load-op :capi-gui))

;;; I gave up trying to understand how ASDF is organized. The documentation is not helpful.
(in-package :mofi)

(defvar *cmpkg* nil "Package for #. compiler directive -- determines whether processing
   UML or CMOF into lisp. Set to either :CMOF of a UML (e.g. :UML23).")

(load (compile-file (pod:lpath :sei "xqdm-fix.lisp")))

(defun comp-it ()
  (let ((po.lisp (pod:lpath :mylib "pod-utils/uml-utils/mof/pop-generate.lisp")))
;    (setf *cmpkg* :cmof)
;    (load (compile-file po.lisp))
;    (setf *cmpkg* :uml4sysml12)
;    (load (compile-file po.lisp))
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


