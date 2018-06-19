;;;
;;; Author: Peter Denno, National Institute of Standards and Technology 
;;;         peter.denno@nist.gov
;;;
;;; Development of this software was funded by the United States Government,
;;; and is not subject to copyright.

;;;
;;; Peter Denno
;;;  Date: 2006-02-20
;;;
(in-package :cl-user)


(let ((path #P"R:/proj/meta/jburket/moss/"))
  (setf (logical-pathname-translations "moss")
	`(("root;*.*.*"
	   ,(make-pathname
	     :name :wild :type :wild :version :wild
	     :defaults path))
	  ("**;*.*.*"
	   ,(merge-pathnames
	     (make-pathname
	      :directory '(:relative :wild-inferiors)
	      :name :wild :type :wild :version :wild
	      :defaults path)
	     path)))))

(let ((path #P"R:/proj/meta/jburket/xpath/"))
  (setf (logical-pathname-translations "xpath")
	`(("root;*.*.*"
	   ,(make-pathname
	     :name :wild :type :wild :version :wild
	     :defaults path))
	  ("**;*.*.*"
	   ,(merge-pathnames
	     (make-pathname
	      :directory '(:relative :wild-inferiors)
	      :name :wild :type :wild :version :wild
	      :defaults path)
	     path)))))

(let ((path #P"R:/proj/meta/jburket/"))
  (setf (logical-pathname-translations "lisplib")
	`(("root;*.*.*"
	   ,(make-pathname
	     :name :wild :type :wild :version :wild
	     :defaults path))
	  ("**;*.*.*"
	   ,(merge-pathnames
	     (make-pathname
	      :directory '(:relative :wild-inferiors)
	      :name :wild :type :wild :version :wild
	      :defaults path)
	     path)))))

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

;#-SBCL
(progn
  (ensure-directories-exist "moss:binary;asdf;")
  (let ((apath (make-pathname :type (car *load-binary-pathname-types*)
                              :defaults (translate-logical-pathname
                                         "moss:binary;asdf;asdf"))))
    (unless (probe-file apath)
      (compile-file "moss:asdf;asdf" :output-file apath))
    (load apath)))

;;;======================================================
;;; Application-specific stuff
;;;======================================================
#+:sbcl(load "lisplib:closer;current;pcl;closer-mop-packages.lisp")
#+:lispworks(load "lisplib:closer;current;lispworks;closer-mop-packages.lisp")


;;; Load package files....
(load "lisplib:rfc2388;current;packages.lisp")
(load "lisplib:url-rewrite;current;packages.lisp")
(load "lisplib:cl-who;current;packages.lisp")
(load "lisplib:cl-ppcre;current;packages.lisp")
(load "lisplib:trivial-gray-streams;current;trivial-gray-streams.asd")  ;defines trivial-gray-streams-system package
(load "lisplib:trivial-gray-streams;current;package.lisp")
(load "lisplib:flexi-streams;current;packages.lisp")
(load "lisplib:cl-fad;current;packages.lisp")
(load "lisplib:chunga;current;packages.lisp")
(load "lisplib:pod-utils;packages.lisp")
(load "lisplib:pod-utils;utils.lisp")
(load "lisplib:pod-utils;debugging.lisp")
(load "lisplib:pod-utils;trie;package.lisp")
(load "lisplib:pod-utils;uml-utils;ocl;package.lisp")
(load "lisplib:pod-utils;uml-utils;mof;package.lisp")
(load "lisplib:pod-utils;uml-utils;models;packages.lisp")

(load "xpath:package.lisp")
(load "xpath:built-ins.lisp")
(load "xpath:token-stream.lisp")
(load "xpath:parser.lisp")
(load "xpath:reader.lisp")
(load "xpath:test-cases.lisp")
(load "xpath:extra-functions.lisp")

(defpackage :user-system
  (:use :cl :asdf :pod-utils :xpath))

(in-package :user-system)

(load "xpath:xpath.asd")


