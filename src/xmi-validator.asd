;;; -*- Mode: Lisp; -*-

(in-package :user-system)

(asdf:defsystem :xmi-validator
  :depends-on (:cxml
	       :closer-mop
	       :cl-who
	       :cl-ppcre
	       :closer-mop
	       :hunchentoot
	       :miwg
	       #+qvt :qvt)
  :components ())













