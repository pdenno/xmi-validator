;;; -*- Mode: Lisp;  -*-

(in-package :user-system)

(defsystem :xpath
  :serial t
  :depends-on (:pod-utils)
  :components
  ((:file "token-stream")
   (:file "built-ins")
   (:file "reader")
   (:file "parser")
   ;(:file "test-cases")
   ))





