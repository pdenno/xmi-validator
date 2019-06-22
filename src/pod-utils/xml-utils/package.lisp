(in-package :cl-user)

;;; For closure-xml. 

(defpackage xqdm 
  (:use cl)
  (:export
   #:attributes 
   #:children
   #:clone-node
   #:comment-node
   #:document 
   #:elem-node
   #:element-p 
   #:local-part
   #:name 
   #:namespace
   #:namespace-error
   #:namespaces
   #:node-graph-error
   #:ordinal-node
   #:ordinality
   #:parent
   #:prefix
   #:production-error
   #:root
   #:squeeze-xml
   #:string-attr-node
   #:validity-cerror
   #:value
   #:wellformedness-error 
   #:*xml-clone2old*))

(defpackage xmlp
  (:use cl :pod-utils)
  (:export
   #:*default-namespaces*
   #:*input-line*
   #:document-parser
   #:line-num
   #:vanilla-document-parser
   #:write-node))
