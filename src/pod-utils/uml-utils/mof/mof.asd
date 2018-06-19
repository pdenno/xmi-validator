;;; -*- Mode: Lisp; -*-

(in-package :user-system)

(defsystem :mof
  :depends-on (:pod-utils
	       :parsing-utils
	       :xml-utils
	       :html-utils
	       :trie
	       :closer-mop
	       #+clozure-xml :cxml)
  :serial t
  :components
  ((:file "package")
   (:file "model")
   #+cre(:file "cre-model")
   (:file "mof")
   (:file "mof-types")))














