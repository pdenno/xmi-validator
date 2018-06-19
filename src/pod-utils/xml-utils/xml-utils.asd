
(asdf:defsystem :xml-utils
  :name "xml-utils"
  :depends-on ("pod-utils" #+closure-xml :cxml)
  :components
  ((:file "xml-utils")))
