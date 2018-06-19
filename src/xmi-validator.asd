;;; -*- Mode: Lisp; -*-

(in-package :user-system)

(asdf:defsystem :xmi-validator
  :depends-on (:hunchentoot ;18
	       :closer-mop  ;18
	       :clxml-adds
	       :miwg
	       #+qvt :qvt)
  :components ())













