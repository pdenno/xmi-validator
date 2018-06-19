;;; Automatically created by pop-gen at 2012-03-21 14:15:26.
;;; Source file is UPDM-Profile-seidewitz.xmi

(in-package :UPDM)


;;; =========================================================
;;; ====================== Measurement
;;; =========================================================
(def-meta-stereotype |Measurement| 
   (:model :UPDM :superclasses (|Property|) :extends (UML23:|Property|)
   :xmi-id "_15_1_f00036a_1212649835641_701421_49665")
 "MODAF: MeasurableProperty: A property of something in the physical world,
  expressed in amounts of a unit of measure. The property may have a required
  value - either specified by the [defaultValue] from UML::property attribute,
  or the [minValue] and [maxValue] to specify a required range. DoDAF: Measure:
  A Measurement (DoDAF::Measure) is the magnitude of some attribute of an
  individual."
  ())


;;; =========================================================
;;; ====================== MeasurementSet
;;; =========================================================
(def-meta-stereotype |MeasurementSet| 
   (:model :UPDM :superclasses (|PropertySet|) :extends (UML23:|DataType|)
   :xmi-id "_16_9_445005dc_1296655967116_195913_34919")
 "UPDM: A collection of Measurements. MODAF: N/A DoDAF: N/A"
  ())


;;; =========================================================
;;; ====================== Property
;;; =========================================================
(def-meta-stereotype |Property| 
   (:model :UPDM :superclasses (|UPDMElement|) :extends (UML23:|Property|)
   :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Measurements-Property")
 "UPDM: The defining feature of an actual property, used to capture measurements
  MODAF: NA DoDAF: NA"
  ((|defaultValue| :range UML23:|LiteralSpecification| :multiplicity (1 1))
   (|maxValue| :range UML23:|LiteralSpecification| :multiplicity (1 1))
   (|minValue| :range UML23:|LiteralSpecification| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== PropertySet
;;; =========================================================
(def-meta-stereotype |PropertySet| 
   (:model :UPDM :superclasses (|UPDMElement|) :extends NIL
   :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Measurements-PropertySet")
 "UPDM: A set or collection of Measurement(s). MODAF: NA DoDAF: NA"
  ((|appliesTo| :range |UPDMElement| :multiplicity (0 -1)
    :opposite (|UPDMElement| |propertySet|)
    :documentation
     "Measured element.")))


;;; =========================================================
;;; ====================== UPDMElement
;;; =========================================================
(def-meta-stereotype |UPDMElement| 
   (:model :UPDM :superclasses NIL :extends NIL
   :xmi-id "_15_1_f00036a_1212649822531_566882_6940")
 "UPDM Artifact: Super type for many of the UPDM elements. It provides a
  means of extending UPDM elements in a common way. With links to the measurement
  set, it also allows quantitative metrics to be associated with structural
  and behavioral elements."
  ((URL/URI\  :range PTYPES:|String| :multiplicity (1 1)
    :documentation
     "Unique identifier for the element.")
   (|actualPropertySet| :range |ActualPropertySet| :multiplicity (0 -1)
 ;   :opposite (|ActualPropertySet| |appliesTo|)
    :documentation
     "The actual measurements to which the element must conform.")
   (|conformsTo| :range |UPDMElement| :multiplicity (0 -1) 
    :documentation
     "Standard that this UPDM element is conforming to.")
   (|endBoundaryType| :range |UPDMElement| :multiplicity (0 1)
    :documentation
     "End time of boundary.")
   (|propertySet| :range |PropertySet| :multiplicity (0 -1)
    :opposite (|PropertySet| |appliesTo|)
    :documentation
     "Types of measurements corresponding to the actual measurements.")
   (|startBoundaryType| :range |UPDMElement| :multiplicity (0 1)
    :documentation
     "Start time of a boundary.")))

(mofi::def-meta-package |AllElements| nil :UPDM 
   (|UPDMElement|
    |Measurements|))

(mofi::def-meta-package |Measurements| |AllElements| :UPDM 
   (|PropertySet|
    |MeasurementSet|
    |Measurement|
    |Property|))

(in-package :mofi)


(with-slots (mofi::abstract-classes mofi:ns-uri mofi:ns-prefix) mofi:*model*
     (setf mofi::abstract-classes 
        '(UPDM::|PropertySet|
          UPDM::|UPDMElement|))
     (setf mofi:ns-uri "http://www.omg.org/spec/UPDM/20110601")
     (setf mofi:ns-prefix "updm"))