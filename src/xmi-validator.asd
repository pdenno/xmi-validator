;;; -*- Mode: Lisp; -*-

(in-package :user-system)

(defsystem :xmi-validator
  :depends-on (:clxml-adds
	       :miwg
	       #+home            :capi-gui
	       #+qvt             :qvt)
  :components ())













