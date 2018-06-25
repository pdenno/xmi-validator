(in-package :cl-user)

;;; For closure-xml. 

(defpackage xqdm 
  (:use cl)
  (:export
   #:children
   #:clone-node
   #:local-part 
   #:prefix 
   #:name 
   #:document 
   #:root 
   #:parent
   #:element-p 
   #:namespace
   #:namespaces 
   #:value 
   #:attributes 
   #:ordinality
   #:*xml-clone2old*))

(defpackage xmlp
  (:use cl)
  (:export
   #:document-parser
   #:write-node))
