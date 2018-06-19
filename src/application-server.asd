;;; -*- Mode: Lisp; -*-

(in-package :user-system)

(defsystem :application-server
  :depends-on (:clxml-adds
	       :miwg
	       #+home            :capi-gui
	       #+alf             :alf
	       #+qvt             :qvt
	       #+modelica        :modelica
	       #+express         :injector  ; PODTT will collide with find-scope
	       #+ap233-validator :ap233
	       #+ap233-validator :p11
	       #+(and ap233-validator (not sei.exe)) :p21 ; for debugging output
	       #+ap233-validator :p28)
  :components ())













