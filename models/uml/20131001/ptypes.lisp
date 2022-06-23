;;; Automatically created by pop-gen at 2022-06-22 16:07:49.
;;; Source file is NIL

(in-package :UML-20131001-PTYPES)


;;; The following is what I get from pop-gen. But that's got a bug and anyway I think is's pointless
;;;
;;;(def-meta-primitive |Boolean| (:model :UML-20131001-PTYPES :superclasses NIL :xmi-id "Boolean"))
;;;(def-meta-primitive |Integer| (:model :UML-20131001-PTYPES :superclasses NIL :xmi-id "Integer"))
;;;(def-meta-primitive |Real| (:model :UML-20131001-PTYPES :superclasses NIL :xmi-id "Real"))
;;;(def-meta-primitive |String| (:model :UML-20131001-PTYPES :superclasses NIL :xmi-id "String"))
;;;(def-meta-primitive |UnlimitedNatural| (:model :UML-20131001-PTYPES :superclasses NIL :xmi-id "UnlimitedNatural"))

(def-meta-package |PrimitiveTypes| NIL :UML-20131001-PTYPES 
   (|Boolean|
    |Integer|
    |Real|
    |String|
    |UnlimitedNatural|) :xmi-id "_0")

(in-package :mofi)


(with-slots (abstract-classes ns-uri ns-prefix) *model*
     (setf abstract-classes 
        '())
     (setf ns-uri "http://modelegator.nist.gov/UML-20131001-PTYPES")
     (setf ns-prefix "primitives"))
