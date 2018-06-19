
(in-package :odm)


(defmethod print-object ((obj |IRI|) stream)
  (with-slots (|iriString|) obj
    (format stream "#<IRI ~S, id=~A>"  
	    |iriString|
	    (mofi:%debug-id obj))))

#|
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

|#
