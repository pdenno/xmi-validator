;;; Automatically created by pop-gen at 2011-08-10 15:24:41.

(in-package :NIEM)



(def-mm-enum |NIEMPropertyValueCodeType| :NIEM NIL 
   (|content| |contentMayBeReference| |reference| |referenceMayBeContent|)
   "")



;;; =========================================================
;;; ====================== NIEMAdapterType
;;; =========================================================
(def-mm-stereotype |NIEMAdapterType| (:NIEM) (|NIEMCCCType|) (UML23:|Class|) 
 ""
  ())


;;; =========================================================
;;; ====================== NIEMAssociationType
;;; =========================================================
(def-mm-stereotype |NIEMAssociationType| (:NIEM) (|NIEMCCCType|) (UML23:|Class|) 
 ""
  ())


;;; =========================================================
;;; ====================== NIEMAugmentationType
;;; =========================================================
(def-mm-stereotype |NIEMAugmentationType| (:NIEM) (|NIEMCCCType|) (UML23:|Class|) 
 ""
  ())


;;; =========================================================
;;; ====================== NIEMCCCType
;;; =========================================================
(def-mm-stereotype |NIEMCCCType| (:NIEM) NIL (UML23:|Class|) 
 ""
  ((|definition| :range |String| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== NIEMCSCType
;;; =========================================================
(def-mm-stereotype |NIEMCSCType| (:NIEM) NIL (UML23:|DataType|) 
 ""
  ((|base| :range |String| :multiplicity (0 1))
   (|definition| :range |String| :multiplicity (0 1))
   (|fractionDigits| :range |Integer| :multiplicity (0 1))
   (|length| :range |Integer| :multiplicity (0 1))
   (|maxExclusive| :range |String| :multiplicity (0 1))
   (|maxInclusive| :range |String| :multiplicity (0 1))
   (|maxLength| :range |Integer| :multiplicity (0 1))
   (|minExclusive| :range |String| :multiplicity (0 1))
   (|minInclusive| :range |String| :multiplicity (0 1))
   (|minLength| :range |Integer| :multiplicity (0 1))
   (|pattern| :range |String| :multiplicity (0 1))
   (|simple| :range |String| :multiplicity (0 1))
   (|totalDigits| :range |Integer| :multiplicity (0 1))
   (|whiteSpace| :range |String| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== NIEMCodeSimpleType
;;; =========================================================
(def-mm-stereotype |NIEMCodeSimpleType| (:NIEM) NIL (UML23:|Enumeration|) 
 ""
  ((|base| :range |String| :multiplicity (0 1))
   (|definition| :range |String| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== NIEMCodeType
;;; =========================================================
(def-mm-stereotype |NIEMCodeType| (:NIEM) NIL (UML23:|Enumeration|) 
 ""
  ((|base| :range |String| :multiplicity (0 1))
   (|definition| :range |String| :multiplicity (0 1))
   (|simple| :range |String| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== NIEMCodeValue
;;; =========================================================
(def-mm-stereotype |NIEMCodeValue| (:NIEM) NIL (UML23:|EnumerationLiteral|) 
 ""
  ((|definition| :range |String| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== NIEMExternalProperty
;;; =========================================================
(def-mm-stereotype |NIEMExternalProperty| (:NIEM) NIL (UML23:|Property|) 
 ""
  ((|isElement| :range |Boolean| :multiplicity (0 1) :default :true)
   (|namespace| :range |String| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== NIEMMetadataApplication
;;; =========================================================
(def-mm-stereotype |NIEMMetadataApplication| (:NIEM) NIL (UML23:|Dependency|) 
 ""
  ())


;;; =========================================================
;;; ====================== NIEMMetadataType
;;; =========================================================
(def-mm-stereotype |NIEMMetadataType| (:NIEM) (|NIEMCCCType|) (UML23:|Class|) 
 ""
  ())


;;; =========================================================
;;; ====================== NIEMNamespace
;;; =========================================================
(def-mm-stereotype |NIEMNamespace| (:NIEM) NIL (UML23:|Package|) 
 ""
  ((|definition| :range |String| :multiplicity (0 1))
   (|isConformant| :range |Boolean| :multiplicity (0 1) :default :true)
   (|namespace| :range |String| :multiplicity (0 1))
   (|version| :range |String| :multiplicity (0 1) :default 1)))


;;; =========================================================
;;; ====================== NIEMObjectType
;;; =========================================================
(def-mm-stereotype |NIEMObjectType| (:NIEM) (|NIEMCCCType|) (UML23:|Class|) 
 ""
  ())


;;; =========================================================
;;; ====================== NIEMProperty
;;; =========================================================
(def-mm-stereotype |NIEMProperty| (:NIEM) NIL (UML23:|Property|) 
 ""
  ((|augmentedTypeName| :range |String| :multiplicity (1 1))
   (|augmentedTypeNamespace| :range |String| :multiplicity (1 1))
   (|definition| :range |String| :multiplicity (0 1))
   (|isElement| :range |Boolean| :multiplicity (0 1) :default :true)
   (|namespace| :range |String| :multiplicity (0 1))
   (|nillable| :range |Boolean| :multiplicity (1 1) :default :false)
   (|substitutionGroupName| :range |String| :multiplicity (0 1))
   (|substitutionGroupNamespace| :range |String| :multiplicity (0 1))
   (|value| :range |NIEMPropertyValueCodeType| :multiplicity (0 1) :default :contentmaybereference)))


;;; =========================================================
;;; ====================== NIEMSimpleType
;;; =========================================================
(def-mm-stereotype |NIEMSimpleType| (:NIEM) NIL (UML23:|DataType|) 
 ""
  ((|base| :range |String| :multiplicity (0 1))
   (|definition| :range |String| :multiplicity (0 1))
   (|fractionDigits| :range |Integer| :multiplicity (0 1))
   (|length| :range |Integer| :multiplicity (0 1))
   (|maxExclusive| :range |String| :multiplicity (0 1))
   (|maxInclusive| :range |String| :multiplicity (0 1))
   (|maxLength| :range |Integer| :multiplicity (0 1))
   (|minExclusive| :range |String| :multiplicity (0 1))
   (|minInclusive| :range |String| :multiplicity (0 1))
   (|minLength| :range |Integer| :multiplicity (0 1))
   (|pattern| :range |String| :multiplicity (0 1))
   (|totalDigits| :range |Integer| :multiplicity (0 1))
   (|whiteSpace| :range |String| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== NIEMTopLevel
;;; =========================================================
(def-mm-stereotype |NIEMTopLevel| (:NIEM) NIL (UML23:|Class|) 
 ""
  ())


(in-package :mofi)


(with-slots (mofi::abstract-classes) mofi:*model*
     (setf mofi::abstract-classes 
        `()))