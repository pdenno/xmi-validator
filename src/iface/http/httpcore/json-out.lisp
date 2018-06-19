

(in-package :mofi)

;;; Output JSON for classes and instances.
;;; Note: It uses cl-json in only a few places (like for encoding strings). 

;(tryme :model :ptypes :file (lpath :sei "data/reqs/ptypes.json")
;(tryme :model :uml241 :file (lpath :sei "data/reqs/uml241.json"))

(defun tryme (&key model file)
  (with-open-file (s file :direction :output :if-exists :supersede)
    (format s "~2%[~S," (format nil "File created by json-out.lisp, ~A" (now)))
    (json-encode (find-model model) :stream s)
    (format s "~%\"done\" ~%]"))) ; Need the 'done' because every object ends by writing #\,

(defmethod json-encode ((obj abstract-model) &key stream ref-only-p)
  "Encode select slots of a mofi:lexical-model (PTYPES, etc.)."
  (let ((model-type
	 (typecase obj
	   (lexical-model-mixin "lexical-model") ; ptypes etc. 
	   (compiled-model "compiled-model"))))  ; uml etc. 
    (if ref-only-p 
	(format nil "(~A)/~A" model-type (model-name obj))
	(with-slots (model-name ns-prefix ns-uri href-uri) obj
	  (format stream "~% {\"metaclass\" : \"~A\"," model-type)
	  (format stream "~%  \"id\" : \"*REF*(~A)/~A\"," model-type model-name)
	  (format stream "~%  \"name\" : ~S," (string model-name))
          (format stream "~%  \"ns_prefix\" : ~S," ns-prefix)
          (format stream "~%  \"ns_uri\" : ~S," ns-uri)
          (format stream "~%  \"href_uri\" : ~S}," href-uri)
	  ;; Now the types (classes, enums, ptypes etc.)
	  (loop for ty across (types obj) do (json-encode ty :stream stream))
	  ;; Don't do slots  in the classes
	  (loop for ty across (types obj) do 
	       (loop for slot in (append (class-direct-slots ty) (mapped-slots ty)) ; POD mapped not effective?
		  do (json-encode slot :stream stream)))))))

(defmethod json-encode ((obj mm-type-mo) &key stream ref-only-p)
  "Encode select slots of a MOF class type."
      (if ref-only-p
	  (format nil "(type)/~A/~A" (model-name (of-model obj)) (class-name obj))
	  (with-slots (abstract-p of-model metatype mapped-slots) obj
	    (format stream "~% {\"metaclass\" : \"mm-type-mo\",")
	    (format stream "~%  \"id\" : \"*REF*~A\"," (json-encode obj :ref-only-p t))
	    (format stream "~%  \"name\" : \"~S\"," (class-name obj))
	    (format stream "~%  \"metatype\" : \"~A\"," metatype)
	    (format stream "~%  \"abstract_p\" : ~A," (if abstract-p "true" "false"))
	    (format stream "~%  \"of_model\" : \"*REF*~A\"," (json-encode of-model :ref-only-p t))
	    (format stream "~%  \"direct_subclasses\" : [~{\"*REF*~A\"~^, ~}],"  
		    (mapcar #'(lambda (x) (json-encode x :ref-only-p t)) (class-direct-subclasses obj)))
	    (format stream "~%  \"direct_superclasses\" : [~{\"*REF*~A\"~^, ~}]," 
		    (mapcar #'(lambda (x) (json-encode x :ref-only-p t)) (class-direct-superclasses obj)))
	    (let ((cpl (class-precedence-list obj)))
	      (format stream "~%  \"precedence_list\" : [~{\"*REF*~A\"~^, ~}]," 
		      (mapcar #'(lambda (x) (json-encode x :ref-only-p t)) 
			      (subseq cpl 0 (position (find-class 'mm-root-supertype) cpl)))))
	    (format stream "~%  \"direct_slots\" : [~{\"*REF*~A\"~^, ~}]," 
		    (mapcar #'(lambda (x) (json-encode x :ref-only-p t)) (class-direct-slots obj)))
	    (format stream "~%  \"mapped_slots\" : [~{\"*REF*~A\"~^, ~}]," 
		    (mapcar #'(lambda (x) (json-encode x :ref-only-p t)) mapped-slots))
	    (if-bind (text (documentation obj t))
		     (format stream "~%  \"documentation\" : ~A}," 
			     (with-output-to-string (s) (json:encode-json text s) "\"\""))
		     (format stream "~%  \"documentation\" : \"\"},")))))

(defmethod json-encode ((obj |Ptype-type-proxy|) &key stream ref-only-p)
  "Encode select slots of a MOF class type."
      (if ref-only-p
	  (format nil "(ptype)/~A" (class-name obj))
	  (progn
	    (format stream "~% {\"metaclass\" : \"primitive-type\",")
	    (format stream "~%  \"id\" : \"*REF*~A\"," (json-encode obj :ref-only-p t))
	    (format stream "~%  \"name\" : \"~S\"," (class-name obj))
	    (format stream "~%  \"of_model\" : \"*REF*~A\"}," (json-encode (of-model obj) :ref-only-p t)))))

(defmethod json-encode ((obj mm-direct-slot-definition) &key stream ref-only-p)
      (if ref-only-p 
	  (format nil "(direct-slot)/~A/~A" 
		  (json-encode (slot-definition-source obj) :ref-only-p t)
		  (slot-definition-name obj))
	  (with-slots (range multiplicity source is-derived-union-p is-readonly-p is-composite-p is-derived-p
		       subsetted-properties redefined-property specializes default opposite xmi-hidden) obj
	      (format stream "~2% {\"metaclass\" : \"mm-direct-slot-definition\",")
	      (format stream "~%  \"name\" : \"~A\"," (slot-definition-name obj))
	      (format stream "~%  \"id\" : \"*REF*~A\"," (json-encode obj :ref-only-p t))
	      (format stream "~%  \"source\" : \"*REF*~A\"," (json-encode source :ref-only-p t)) 
	      (format stream "~%  \"range\" : \"*REF*~A\"," (json-encode range :ref-only-p t)) ; POD object?
	      (format stream "~%  \"multiplicity\" : [~{~A~^, ~}],"  multiplicity)
	      (format stream "~%  \"is_derived_union_p\" : ~A," (if is-derived-union-p "true" "false"))
	      (format stream "~%  \"is_readonly_p\" : ~A," (if is-readonly-p "true" "false"))
	      (format stream "~%  \"is_composite_p\" : ~A," (if is-composite-p "true" "false"))
	      (format stream "~%  \"is_derived_p\" : ~A," (if is-derived-p "true" "false"))
	      (format stream "~%  \"subsetted_properties\" : [~{[~{\"~A\"~^, ~}]~^, ~}],"  subsetted-properties)
	      (format stream "~%  \"redefined_property\" : [~{\"~A\"~^, ~}],"  redefined-property)
	      (format stream "~%  \"specializes\" : [~{~A~^, ~}],"  specializes)
	      (format stream "~%  \"default\" : ~A," (json-encode default))
	      (format stream "~%  \"opposite\" : [~{\"~A\"~^, ~}],"  opposite)
	      (format stream "~%  \"xmi_hidden\" : ~A," (if xmi-hidden "true" "false"))
	      (if-bind (text (documentation obj t))
		       (format stream "~%  \"documentation\" : ~A}," 
			       (with-output-to-string (s) (json:encode-json text s) "\"\""))
		       (format stream "~%  \"documentation\" : \"\"},"))))) 

(defmethod json-encode ((obj mm-effective-slot-definition) &key stream ref-only-p)
      (if ref-only-p 
	  (format nil "(effective-slot)/~A/~A" 
		  (json-encode (slot-definition-effective-source obj) :ref-only-p t)
		  (slot-definition-name obj))
	  (with-slots (range multiplicity source effective-source is-derived-union-p is-readonly-p is-composite-p is-derived-p
		       subsetted-properties redefined-property specializes default opposite xmi-hidden) obj
	      (format stream "~2% {\"metaclass\" : \"mm-effective-slot-definition\",")
	      (format stream "~%  \"name\" : \"~A\"," (slot-definition-name obj))
	      (format stream "~%  \"id\" : \"*REF*~A\"," (json-encode obj :ref-only-p t))
	      (format stream "~%  \"source\" : \"*REF*~A\"," (json-encode source :ref-only-p t)) 
	      (format stream "~%  \"effective_source\" : \"*REF*~A\"," (json-encode effective-source :ref-only-p t)) 
	      (format stream "~%  \"range\" : \"*REF*~A\"," (json-encode range :ref-only-p t)) ; POD object?
	      (format stream "~%  \"multiplicity\" : [~{~A~^, ~}],"  multiplicity)
	      (format stream "~%  \"is_derived_union_p\" : ~A," (if is-derived-union-p "true" "false"))
	      (format stream "~%  \"is_readonly_p\" : ~A," (if is-readonly-p "true" "false"))
	      (format stream "~%  \"is_composite_p\" : ~A," (if is-composite-p "true" "false"))
	      (format stream "~%  \"is_derived_p\" : ~A," (if is-derived-p "true" "false"))
	      (format stream "~%  \"subsetted_properties\" : [~{[~{\"~A\"~^, ~}]~^, ~}],"  subsetted-properties)
	      (format stream "~%  \"redefined_property\" : [~{\"~A\"~^, ~}],"  redefined-property)
	      (format stream "~%  \"specializes\" : [~{\"~A\"~^, ~}],"  specializes)
	      (format stream "~%  \"default\" : ~A," (json-encode default))
	      (format stream "~%  \"opposite\" : [~{\"~A\"~^, ~}],"  opposite)
	      (format stream "~%  \"xmi_hidden\" : ~A," (if xmi-hidden "true" "false"))
	      (if-bind (text (documentation obj t))
		       (format stream "~%  \"documentation\" : ~A}," 
			       (with-output-to-string (s) (json:encode-json text s) "\"\""))
		       (format stream "~%  \"documentation\" : \"\"},"))))) 

(defmethod json-encode ((obj ptypes:|Ptype-type-proxy|) &key stream ref-only-p)
  (declare (ignore stream ref-only-p))
  (format nil "(ptype)/~A" (class-name obj)))

(defmethod json-encode ((obj string) &key)
  (with-output-to-string (s)
    (json:encode-json obj s)))

(defmethod json-encode ((obj symbol) &key)
  (cond ((null obj) "null")
	((eql obj :false) "false")
	((eql obj :true) "true")
	(t (with-output-to-string (s)
	     (format s "\"~S\"" obj)))))

(defmethod json-encode ((obj number) &key)
  obj)

;;; POD bad idea???
(defmethod json-encode ((obj t) &key stream ref-only-p)
  "Default: have cl-json do it."
  (declare (ignore ref-only-p stream))
  (setf *zippy* obj)
  (error "POD: unanticipated type: ~A" obj))





	  
      
  
