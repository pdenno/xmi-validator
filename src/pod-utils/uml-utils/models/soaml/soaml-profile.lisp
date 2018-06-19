;;; Automatically created by pop-gen at 2012-10-22 12:02:21.
;;; Source file is SoaMLProfile.xmi

(in-package :SOAML)



;;; =========================================================
;;; ====================== Agent
;;; =========================================================
(def-meta-stereotype |Agent| 
   (:model :SOAML :superclasses (|Participant|) :extends NIL
 :packages (|SoaML|) 
 :xmi-id "SoaML-Agent")
 ""
  ())


;;; =========================================================
;;; ====================== Attachment
;;; =========================================================
(def-meta-stereotype |Attachment| 
   (:model :SOAML :superclasses NIL :extends (UML23:|Property|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-Attachment")
 ""
  ((|encoding| :range |String| :multiplicity (1 1))
   (|mimetype| :range |String| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== Capability
;;; =========================================================
(def-meta-stereotype |Capability| 
   (:model :SOAML :superclasses NIL :extends (UML23:|Class|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-Capability")
 ""
  ())


;;; =========================================================
;;; ====================== Catalog
;;; =========================================================
(def-meta-stereotype |Catalog| 
   (:model :SOAML :superclasses (|NodeDescriptor|) :extends (UML23:|Package|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-Catalog")
 ""
  ())


;;; =========================================================
;;; ====================== Categorization
;;; =========================================================
(def-meta-stereotype |Categorization| 
   (:model :SOAML :superclasses NIL :extends (UML23:|Dependency|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-Categorization")
 ""
  ())


;;; =========================================================
;;; ====================== Category
;;; =========================================================
(def-meta-stereotype |Category| 
   (:model :SOAML :superclasses (|NodeDescriptor|) :extends NIL
 :packages (|SoaML|) 
 :xmi-id "SoaML-Category")
 ""
  ())


;;; =========================================================
;;; ====================== CategoryValue
;;; =========================================================
(def-meta-stereotype |CategoryValue| 
   (:model :SOAML :superclasses (|FreeFormValue|) :extends NIL
 :packages (|SoaML|) 
 :xmi-id "SoaML-CategoryValue")
 ""
  ())


;;; =========================================================
;;; ====================== Collaboration
;;; =========================================================
(def-meta-stereotype |Collaboration| 
   (:model :SOAML :superclasses NIL :extends (UML23:|Collaboration|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-Collaboration")
 ""
  ((|isStrict| :range |Boolean| :multiplicity (1 1) :default :true)))


;;; =========================================================
;;; ====================== CollaborationUse
;;; =========================================================
(def-meta-stereotype |CollaborationUse| 
   (:model :SOAML :superclasses NIL :extends (UML23:|CollaborationUse|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-CollaborationUse")
 ""
  ((|isStrict| :range |Boolean| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== Consumer
;;; =========================================================
(def-meta-stereotype |Consumer| 
   (:model :SOAML :superclasses NIL :extends (UML23:|Interface| UML23:|Class|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-Consumer")
 ""
  ())


;;; =========================================================
;;; ====================== Expose
;;; =========================================================
(def-meta-stereotype |Expose| 
   (:model :SOAML :superclasses NIL :extends (UML23:|Dependency|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-Expose")
 ""
  ())


;;; =========================================================
;;; ====================== FreeFormDescriptor
;;; =========================================================
(def-meta-stereotype |FreeFormDescriptor| 
   (:model :SOAML :superclasses NIL :extends (UML23:|Property|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-FreeFormDescriptor")
 ""
  ())


;;; =========================================================
;;; ====================== FreeFormValue
;;; =========================================================
(def-meta-stereotype |FreeFormValue| 
   (:model :SOAML :superclasses NIL :extends (UML23:|ValueSpecification|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-FreeFormValue")
 ""
  ())


;;; =========================================================
;;; ====================== MessageType
;;; =========================================================
(def-meta-stereotype |MessageType| 
   (:model :SOAML :superclasses NIL :extends (UML23:|Signal| UML23:|DataType| UML23:|Class|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-MessageType")
 ""
  ((|encoding| :range |String| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== Milestone
;;; =========================================================
(def-meta-stereotype |Milestone| 
   (:model :SOAML :superclasses NIL :extends (UML23:|Comment|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-Milestone")
 ""
  ((|progress| :range |Integer| :multiplicity (1 1))
   (|signal| :range UML23:|Signal| :multiplicity (0 1) :soft-opposite (UML23:|Signal| |milestone|))
   (|value| :range UML23:|ValueSpecification| :multiplicity (0 -1) :soft-opposite (UML23:|ValueSpecification| |milestone|))))


;;; =========================================================
;;; ====================== MotivationElement
;;; =========================================================
(def-meta-class |MotivationElement| 
   (:model :SOAML :superclasses NIL 
    :packages (|SoaML|) 
    :xmi-id "SoaML-MotivationElement")
 ""
  ())


;;; =========================================================
;;; ====================== MotivationRealization
;;; =========================================================
(def-meta-stereotype |MotivationRealization| 
   (:model :SOAML :superclasses NIL :extends (UML23:|Realization|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-MotivationRealization")
 ""
  ())


;;; =========================================================
;;; ====================== NodeDescriptor
;;; =========================================================
(def-meta-stereotype |NodeDescriptor| 
   (:model :SOAML :superclasses NIL :extends (UML23:|Artifact|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-NodeDescriptor")
 ""
  ())


;;; =========================================================
;;; ====================== Participant
;;; =========================================================
(def-meta-stereotype |Participant| 
   (:model :SOAML :superclasses NIL :extends (UML23:|Class|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-Participant")
 ""
  ())


;;; =========================================================
;;; ====================== Port
;;; =========================================================
(def-meta-stereotype |Port| 
   (:model :SOAML :superclasses NIL :extends (UML23:|Port|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-Port")
 ""
  ((|connectorRequired| :range |Boolean| :multiplicity (1 1) :default :true)))


;;; =========================================================
;;; ====================== Property
;;; =========================================================
(def-meta-stereotype |Property| 
   (:model :SOAML :superclasses NIL :extends (UML23:|Property|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-Property")
 ""
  ((|isID| :range |Boolean| :multiplicity (1 1) :default :false)))


;;; =========================================================
;;; ====================== Provider
;;; =========================================================
(def-meta-stereotype |Provider| 
   (:model :SOAML :superclasses NIL :extends (UML23:|Interface| UML23:|Class|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-Provider")
 ""
  ())


;;; =========================================================
;;; ====================== Request
;;; =========================================================
(def-meta-stereotype |Request| 
   (:model :SOAML :superclasses NIL :extends (UML23:|Port|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-Request")
 ""
  ())


;;; =========================================================
;;; ====================== Service
;;; =========================================================
(def-meta-stereotype |Service| 
   (:model :SOAML :superclasses NIL :extends (UML23:|Port|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-Service")
 ""
  ())


;;; =========================================================
;;; ====================== ServiceChannel
;;; =========================================================
(def-meta-stereotype |ServiceChannel| 
   (:model :SOAML :superclasses NIL :extends (UML23:|Connector|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-ServiceChannel")
 ""
  ())


;;; =========================================================
;;; ====================== ServiceContract
;;; =========================================================
(def-meta-stereotype |ServiceContract| 
   (:model :SOAML :superclasses (|Collaboration|) :extends NIL
 :packages (|SoaML|) 
 :xmi-id "SoaML-ServiceContract")
 ""
  ())


;;; =========================================================
;;; ====================== ServiceInterface
;;; =========================================================
(def-meta-stereotype |ServiceInterface| 
   (:model :SOAML :superclasses NIL :extends (UML23:|Interface| UML23:|Class|)
 :packages (|SoaML|) 
 :xmi-id "SoaML-ServiceInterface")
 ""
  ())


;;; =========================================================
;;; ====================== ServicesArchitecture
;;; =========================================================
(def-meta-stereotype |ServicesArchitecture| 
   (:model :SOAML :superclasses (|Collaboration|) :extends NIL
 :packages (|SoaML|) 
 :xmi-id "SoaML-ServicesArchitecture")
 ""
  ())


(def-meta-package |SoaML| NIL :SOAML 
   (|Agent|
    |Collaboration|
    |MotivationElement|
    |Provider|
    |FreeFormValue|
    |MessageType|
    |Category|
    |Milestone|
    |FreeFormDescriptor|
    |CategoryValue|
    |ServiceContract|
    |Request|
    |Participant|
    |NodeDescriptor|
    |Consumer|
    |Catalog|
    |Capability|
    |Categorization|
    |MotivationRealization|
    |ServiceInterface|
    |ServicesArchitecture|
    |Attachment|
    |CollaborationUse|
    |ServiceChannel|
    |Service|
    |Port|
    |Property|
    |Expose|) :xmi-id "+The-Model+")

(def-meta-package UML\ 2.3 NIL :SOAML 
   () :xmi-id NIL)

(in-package :mofi)


(with-slots (mofi::abstract-classes mofi:ns-uri mofi:ns-prefix) mofi:*model*
     (setf mofi::abstract-classes 
        '(SOAML::|MotivationElement|))
     (setf mofi:ns-uri "http://www.omg.org/spec/SoaML/20120501")
     (setf mofi:ns-prefix "SoaMLProfile"))