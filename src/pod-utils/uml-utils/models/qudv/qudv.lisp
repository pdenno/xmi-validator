;;; Automatically created by pop-gen at 2011-04-26 11:14:58.

(in-package :QUDV)



;;; =========================================================
;;; ====================== AffineConversionUnit
;;; =========================================================
(def-mm-class |AffineConversionUnit| (:QUDV) (|ConversionBasedUnit|)
 ""
  ((|factor| :range UML23:|Element| :multiplicity (1 1) :is-composite-p T)
   (|offset| :range UML23:|Element| :multiplicity (1 1) :is-composite-p T)))


;;; =========================================================
;;; ====================== ConversionBasedUnit
;;; =========================================================
(def-mm-class |ConversionBasedUnit| (:QUDV) (|Unit|)
 ""
  ((|isInvertible| :range UML23:|Element| :multiplicity (1 1) :is-composite-p T)
   (|referenceUnit| :range |Unit| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== DerivedQuantityKind
;;; =========================================================
(def-mm-class |DerivedQuantityKind| (:QUDV) (|QuantityKind|)
 ""
  ((|factor| :range |QuantityKindFactor| :multiplicity (1 -1))))


;;; =========================================================
;;; ====================== DerivedUnit
;;; =========================================================
(def-mm-class |DerivedUnit| (:QUDV) (|Unit|)
 ""
  ((|factor| :range |UnitFactor| :multiplicity (1 -1))))


;;; =========================================================
;;; ====================== Dimension
;;; =========================================================
(def-mm-class |Dimension| (:QUDV) NIL
 ""
  ((|factor| :range |DimensionFactor| :multiplicity (0 -1) :is-ordered-p T)
   (|symbolicExpression| :range UML23:|Element| :multiplicity (1 1) :is-composite-p T)))


;;; =========================================================
;;; ====================== DimensionFactor
;;; =========================================================
(def-mm-class |DimensionFactor| (:QUDV) NIL
 ""
  ((|baseDimension| :range |QuantityKind| :multiplicity (1 1))
   (|exponent| :range UML23:|Element| :multiplicity (1 1) :is-composite-p T)))


;;; =========================================================
;;; ====================== GeneralConversionUnit
;;; =========================================================
(def-mm-class |GeneralConversionUnit| (:QUDV) (|ConversionBasedUnit|)
 ""
  ((|expression| :range UML23:|Element| :multiplicity (1 1) :is-composite-p T)))


;;; =========================================================
;;; ====================== LinearConversionUnit
;;; =========================================================
(def-mm-class |LinearConversionUnit| (:QUDV) (|ConversionBasedUnit|)
 ""
  ((|factor| :range UML23:|Element| :multiplicity (1 1) :is-composite-p T)))


;;; =========================================================
;;; ====================== Prefix
;;; =========================================================
(def-mm-class |Prefix| (:QUDV) NIL
 ""
  ((|factor| :range UML23:|Element| :multiplicity (1 1) :is-composite-p T)
   (|name| :range UML23:|Element| :multiplicity (1 1) :is-composite-p T)
   (|symbol| :range UML23:|Element| :multiplicity (1 1) :is-composite-p T)))


;;; =========================================================
;;; ====================== PrefixedUnit
;;; =========================================================
(def-mm-class |PrefixedUnit| (:QUDV) (|ConversionBasedUnit|)
 ""
  ((|prefix| :range |Prefix| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== QuantityKind
;;; =========================================================
(def-mm-class |QuantityKind| (:QUDV) NIL
 "<p> This diagram shows all of the different ways a particular unit
  can be defined as one of the concrete specializations of Unit. </p>"
  ((|definitionUri| :range UML23:|Element| :multiplicity (0 1) :is-composite-p T)
   (|description| :range UML23:|Element| :multiplicity (0 1) :is-composite-p T)
   (|name| :range UML23:|Element| :multiplicity (1 1) :is-composite-p T)
   (|scale| :range |Scale| :multiplicity (0 1))
   (|symbol| :range UML23:|Element| :multiplicity (0 1) :is-composite-p T)))


;;; =========================================================
;;; ====================== QuantityKindFactor
;;; =========================================================
(def-mm-class |QuantityKindFactor| (:QUDV) NIL
 ""
  ((|exponent| :range UML23:|Element| :multiplicity (1 1) :is-composite-p T)
   (|quantityKind| :range |QuantityKind| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== Scale
;;; =========================================================
(def-mm-class |Scale| (:QUDV) NIL
 ""
  ((|unit| :range |Unit| :multiplicity (0 1))
   (|valueDefinition| :range |ScaleValueDefinition| :multiplicity (0 -1) :is-ordered-p T)))


(def-mm-constraint "mustHaveQuantityKind" |Scale| 
   ""
   :operation-body
   "unit->isEmpty() or unit.quantityKind=self.quantityKind")

;;; =========================================================
;;; ====================== ScaleValueDefinition
;;; =========================================================
(def-mm-class |ScaleValueDefinition| (:QUDV) NIL
 ""
  ((|description| :range UML23:|Element| :multiplicity (1 1) :is-composite-p T)
   (|value| :range UML23:|Element| :multiplicity (1 1) :is-composite-p T)))


;;; =========================================================
;;; ====================== SimpleQuantityKind
;;; =========================================================
(def-mm-class |SimpleQuantityKind| (:QUDV) (|QuantityKind|)
 ""
  ())


;;; =========================================================
;;; ====================== SimpleUnit
;;; =========================================================
(def-mm-class |SimpleUnit| (:QUDV) (|Unit|)
 ""
  ())


;;; =========================================================
;;; ====================== SpecializedQuantityKind
;;; =========================================================
(def-mm-class |SpecializedQuantityKind| (:QUDV) (|QuantityKind|)
 ""
  ((|general| :range |QuantityKind| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== SystemOfQuantities
;;; =========================================================
(def-mm-class |SystemOfQuantities| (:QUDV) NIL
 ""
  ((|baseQuantityKind| :range |QuantityKind| :multiplicity (0 -1) :is-ordered-p T
    :subsetted-properties ((|SystemOfQuantities| MOFI::|quantityKind|)))
   (|definitionUri| :range UML23:|Element| :multiplicity (0 1) :is-composite-p T)
   (|description| :range UML23:|Element| :multiplicity (0 1) :is-composite-p T)
   (|dimension| :range |Dimension| :multiplicity (0 -1) :is-readonly-p T :is-ordered-p T)
   (|name| :range UML23:|Element| :multiplicity (1 1) :is-composite-p T)
   (|quantityKind| :range |QuantityKind| :multiplicity (0 -1) :is-ordered-p T)
   (|symbol| :range UML23:|Element| :multiplicity (0 1) :is-composite-p T)))


(def-mm-operation "deriveQuantityKindDimensions" |SystemOfQuantities| 
   ""
   :operation-body
   ""
   :parameters
   (list))

(def-mm-operation "getDimension" |SystemOfQuantities| 
   ""
   :operation-body
   ""
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name 'NIL :parameter-type '|Dimension|
                        :parameter-return-p 'T)))

;;; =========================================================
;;; ====================== SystemOfUnits
;;; =========================================================
(def-mm-class |SystemOfUnits| (:QUDV) NIL
 ""
  ((|baseUnit| :range |Unit| :multiplicity (0 -1) :is-ordered-p T
    :subsetted-properties ((|SystemOfUnits| MOFI::|unit|)))
   (|definitionUri| :range UML23:|Element| :multiplicity (0 1) :is-composite-p T)
   (|description| :range UML23:|Element| :multiplicity (0 1) :is-composite-p T)
   (|name| :range UML23:|Element| :multiplicity (1 1) :is-composite-p T)
   (|prefix| :range |Prefix| :multiplicity (0 -1) :is-ordered-p T)
   (|symbol| :range UML23:|Element| :multiplicity (0 1) :is-composite-p T)
   (|systemOfQuantities| :range |SystemOfQuantities| :multiplicity (0 -1))
   (|unit| :range |Unit| :multiplicity (0 -1) :is-ordered-p T)))


(def-mm-operation "isCoherent" |SystemOfUnits| 
   ""
   :operation-body
   ""
   :parameters
   (list))

(def-mm-operation "isCoherent" |SystemOfUnits| 
   ""
   :operation-body
   ""
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name 'NIL :parameter-type 'NIL
                        :parameter-return-p 'T)))

;;; =========================================================
;;; ====================== Unit
;;; =========================================================
(def-mm-class |Unit| (:QUDV) NIL
 ""
  ((|definitionUri| :range UML23:|Element| :multiplicity (0 1) :is-composite-p T)
   (|description| :range UML23:|Element| :multiplicity (0 1) :is-composite-p T)
   (|name| :range UML23:|Element| :multiplicity (1 1) :is-composite-p T)
   (|quantityKind| :range |QuantityKind| :multiplicity (0 1))
   (|symbol| :range UML23:|Element| :multiplicity (0 1) :is-composite-p T)))


;;; =========================================================
;;; ====================== UnitFactor
;;; =========================================================
(def-mm-class |UnitFactor| (:QUDV) NIL
 ""
  ((|exponent| :range UML23:|Element| :multiplicity (1 1) :is-composite-p T)
   (|unit| :range |Unit| :multiplicity (1 1))))


(in-package :mofi)


(with-slots (mofi::abstract-classes) mofi:*model*
     (setf mofi::abstract-classes 
        `(QUDV::|ConversionBasedUnit|
          QUDV::|QuantityKind|
          QUDV::|Unit|)))