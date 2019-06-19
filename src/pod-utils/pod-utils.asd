
(asdf:defsystem :pod-utils
  :name "pod-utils"
  :serial t
  :depends-on (:cl-ppcre #+sbcl :inferior-shell)
  :components
  ((:file "packages")
   (:file "utils")
   (:file "debugging")
   (:file "kt-trace")))
