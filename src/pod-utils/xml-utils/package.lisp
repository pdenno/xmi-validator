(in-package :cl-user)

;;; For closure-xml. 


#+nil(defpackage xmlp
  (:use cl :pod-utils)
  (:export
   #:*default-namespaces*
   #:*input-line*
   #:document-parser
   #:line-num
   #:vanilla-document-parser
   #:write-node))

(defpackage xqdm 
  (:use cl)
  (:export
   #:namespace-error
   #:node-graph-error
   #:production-error
   #:validity-cerror
   #:wellformedness-error))



