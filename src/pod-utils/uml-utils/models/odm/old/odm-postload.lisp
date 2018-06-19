
(in-package :odm-cl) 


(defmethod print-object ((obj odm-cl::|Phrase|) stream)
  (format stream "<~S, id=~A>" (class-name (class-of obj)) (mofi:%debug-id obj)))


;;; POD For modelegator these are in :ODM 
(in-package "ODM-RDFBase")
(defmethod print-object ((obj |Triple|) stream)
  (with-slots (|RDFsubject| |RDFpredicate| |RDFobject|) obj
      (format stream "<Triple, (s:~A p:~A o:~S) id=~A>"  
	      |RDFsubject| |RDFpredicate| |RDFobject|
	      (mofi:%debug-id obj))))

(defmethod print-object ((obj |BlankNode|) stream)
  (format stream "<BNode id=~A>" (mofi:%debug-id obj)))

(defmethod print-object ((obj |RDFProperty|) stream)
  (format stream "<RDFProp ~A>" (odm:%uri-ref obj)))


(defmethod print-object ((obj |Node|) stream)
  (format stream "<Node ~A id=~A>" (odm:%uri-ref obj) (mofi:%debug-id obj)))

(defmethod print-object ((obj |URIReference|) stream)
  (if-bind (ns (mofi:%sort-name obj))
      (format stream "<URIref ~A:~A>" 
	      (car ns) 
	      (subseq (odm:%name (odm:%uri obj)) (length (cdr ns))))
      (format stream "<URIref ~A>" (odm:%uri obj))))

(defmethod print-object ((obj |UniformResourceIdentifier|) stream)
  (format stream "~A" (odm:%name obj)))




