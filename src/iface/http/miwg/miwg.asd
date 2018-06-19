;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; -*-

(in-package :user-system)

(defsystem :miwg
    :serial t
    :depends-on (:hunchentoot
		 :cl-who 
		 :html-template 
		 :httpcore
		 :ocl
		 :essential-models
		 :mof-browser
		 :validate)
    :components
    ((:file "homepage")
     (:file "browser-adds")
     (:file "validator")
     #-:sei.exe(:file "regression")
     (:file "object-inventory")))
     







