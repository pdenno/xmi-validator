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
;		 :xpath     removed 2012-01-16	(might be used in CRE???) xpath-stream collision needs to be fixed.
		 :trie
		 :mof-browser
		 :cl-json)
    :components
    ((:file "package")
     (:file "homepage")
     (:file "dispatch")
     (:file "json-out")
     ))






