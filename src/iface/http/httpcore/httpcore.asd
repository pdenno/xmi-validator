;;; -*- Mode: Lisp; -*-

(in-package :user-system)

(defsystem :httpcore
    :serial t
    :depends-on (:md5 
		 :hunchentoot
		 :cl-who 
		 :html-template 
		 :pod-utils
		 :html-utils
		 :xml-utils
		 :trie
		 :mof-browser
		 :cl-json)
    :components
    ((:file "package")
     (:file "homepage")
     (:file "dispatch")
     (:file "json-out")
     ))






