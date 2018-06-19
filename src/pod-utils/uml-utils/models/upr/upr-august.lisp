;;; Automatically created by pop-gen at 2017-12-21 17:24:28.
;;; Source file is NIL

(in-package :UPRA)



(def-meta-enum |DSType| (:model :UPRA :superclasses NIL 
   :xmi-id "ROSETTA_dataType.DSType")
   (|Estimated| |Derived| |Implied|)
   "")



(def-meta-enum |OperatorType| (:model :UPRA :superclasses NIL 
   :xmi-id "ROSETTA_dataType.OperatorType")
   (|&gt;| |&gt;=| |&lt;| |&lt;=| =)
   "OperatorType is an enumeration type that defines literals used to specify
    the mathematical symbols used to represent mathematical inequalities and
    equalities.")



;;; =========================================================
;;; ====================== COtoCOSensitivity
;;; =========================================================
(def-meta-stereotype |COtoCOSensitivity| 
   (:model :UPRA :superclasses (|Sensitivity|) :extends NIL
 :packages (ROSETTA |Constrained Objectives|) 
 :xmi-id "ROSETTA.COtoCOSensitivity")
 "The COtoCOSensitivity stereotype extends the UML Dependency to model a
  sensitivity-based relation between two ConstrainedObjectives."
  ())

(def-meta-constraint |client_and_supplier_constrainedobjectives| |COtoCOSensitivity| 
   "Both the client and the supplier shall have the ConstrainedObjective stereotype
    applied"
   :operation-body
   "ConstrainedObjective.allInstances().base_NamedElement-&gt;includesAll(self.base_Dependency.client-&gt;union(self.base_Dependency.supplier)) ")

;;; =========================================================
;;; ====================== COtoDPSensitivity
;;; =========================================================
(def-meta-stereotype |COtoDPSensitivity| 
   (:model :UPRA :superclasses (|Sensitivity|) :extends NIL
 :packages (ROSETTA |Relational Structure and Design|) 
 :xmi-id "ROSETTA.COtoDPSensitivity")
 ""
  ((|DataSourceType| :xmi-id "ROSETTA.COtoDPSensitivity.DataSourceType"
    :range |DSType| :multiplicity (1 1) :is-derived-p T :redefined-property (|Sensitivity| |DataSourceType|))))

(def-meta-constraint |client_constrainedobjective| |COtoDPSensitivity| 
   "The client shall have the ConstrainedObjective stereotype applied"
   :operation-body
   "ConstrainedObjective.allInstances().base_NamedElement-&gt;includesAll(self.base_Dependency.client) ")

(def-meta-constraint |rse_only| |COtoDPSensitivity| 
   "The client shall have the ConstrainedObjective stereotype applied"
   :operation-body
   "self.RSE-&gt;notEmpty()")

(def-meta-constraint |supplier_designparameter| |COtoDPSensitivity| 
   "The client shall have the ConstrainedObjective stereotype applied"
   :operation-body
   "DesignParameter.allInstances().base_NamedElement-&gt;includesAll(self.base_Dependency.client)")

;;; =========================================================
;;; ====================== COtoELMSensitivity
;;; =========================================================
(def-meta-stereotype |COtoELMSensitivity| 
   (:model :UPRA :superclasses (|Sensitivity|) :extends NIL
 :packages (ROSETTA |Constrained Objectives|) 
 :xmi-id "ROSETTA.COtoELMSensitivity")
 "The COtoELMSensitivity stereotype extends the UML Dependency to model a
  sensitivity-based relation between a ConstrainedObjective and a NamedElement."
  ())

(def-meta-constraint |client_constrainedobjective| |COtoELMSensitivity| 
   "The client shall have the ConstrainedObjective stereotype applied"
   :operation-body
   "ConstrainedObjective.allInstances().base_NamedElement-&gt;includesAll(self.base_Dependency.client) ")

;;; =========================================================
;;; ====================== ConstrainedObjective
;;; =========================================================
(def-meta-stereotype |ConstrainedObjective| 
   (:model :UPRA :superclasses NIL :extends (UML25:|NamedElement|)
 :packages (ROSETTA |Constrained Objectives|) 
 :xmi-id "ROSETTA.ConstrainedObjective")
 "The ConstrainedObjective stereotype extends the UML Class and UseCase metaclass
  to include five attributes that parameterizes a text-based model element
  into a Constrained Objective."
  ((COVID :xmi-id "ROSETTA.ConstrainedObjective.COVID"
    :range |String| :multiplicity (1 1)
    :documentation
     "This attribute represents the unique Identification Number of a Constrained
      Objective.")
   (|ConstrainedObjectiveName| :xmi-id "ROSETTA.ConstrainedObjective.ConstrainedObjectiveName"
    :range |String| :multiplicity (1 1)
    :documentation
     "This attribute represents the name of the Constrained Objective.")
   (|ConstrainedObjectiveType| :xmi-id "ROSETTA.ConstrainedObjective.ConstrainedObjectiveType"
    :range |String| :multiplicity (1 1)
    :documentation
     "This attribute represents the base dimension or type by which the quantity
      dimension or type of the Constrained Objective is created.")
   (|ConstrainedObjectiveValue| :xmi-id "ROSETTA.ConstrainedObjective.ConstrainedObjectiveValue"
    :range |Real| :multiplicity (1 1)
    :documentation
     "This attribute represents the constrained value of the Constrained Objective.")
   (|OperatorKind| :xmi-id "ROSETTA.ConstrainedObjective.OperatorKind"
    :range |OperatorType| :multiplicity (1 1)
    :documentation
     "This attribute represents the exact mathematical relation between the ConstrainedObjective
      and the constrained value by using symbols included in the OperatorType
      enumeration.")
   (|base_NamedElement| :xmi-id "ROSETTA.ConstrainedObjective.base_NamedElement"
    :range UML25:|NamedElement| :multiplicity (1 1))
   (|operatortype| :xmi-id "ROSETTA.ConstrainedObjective.operatortype"
    :range |OperatorType| :multiplicity (1 1))))

(def-meta-assoc "ROSETTA.E_ConstrainedObjective_NamedElement1"      
  :name |E_ConstrainedObjective_NamedElement1|      
  :metatype :extension      
  :member-ends (("ROSETTA.E_ConstrainedObjective_NamedElement1.extension_ConstrainedObjective" "extension_ConstrainedObjective")
                (|ConstrainedObjective| "base_NamedElement"))      
  :owned-ends  (("ROSETTA.E_ConstrainedObjective_NamedElement1.extension_ConstrainedObjective" "extension_ConstrainedObjective")))

(def-meta-assoc-end "ROSETTA.E_ConstrainedObjective_NamedElement1.extension_ConstrainedObjective" 
    :type |ConstrainedObjective| 
    :multiplicity (1 1) 
    :association "ROSETTA.E_ConstrainedObjective_NamedElement1" 
    :name "extension_ConstrainedObjective" 
    :aggregation :COMPOSITE)

;;; =========================================================
;;; ====================== ConstrainedObjectiveForClass
;;; =========================================================
(def-meta-stereotype |ConstrainedObjectiveForClass| 
   (:model :UPRA :superclasses (|ConstrainedObjective|) :extends (UML25:|Class|)
 :packages (ROSETTA |Constrained Objectives|) 
 :xmi-id "ROSETTA.ConstrainedObjectiveForClass")
 "The ConstrainedObjectiveforUseCase stereotype extends the UML Class to
  parameterizes a text-based Class into a Constrained Objective."
  ((|base_Class| :xmi-id "ROSETTA.ConstrainedObjectiveForClass.base_Class"
    :range UML25:|Class| :multiplicity (1 1) :redefined-property (|ConstrainedObjective| |base_NamedElement|))))

(def-meta-assoc "ROSETTA.E_ConstrainedObjectiveForClass_Class1"      
  :name |E_ConstrainedObjectiveForClass_Class1|      
  :metatype :extension      
  :member-ends (("ROSETTA.E_ConstrainedObjectiveForClass_Class1.extension_ConstrainedObjectiveForClass" "extension_ConstrainedObjectiveForClass")
                (|ConstrainedObjectiveForClass| "base_Class"))      
  :owned-ends  (("ROSETTA.E_ConstrainedObjectiveForClass_Class1.extension_ConstrainedObjectiveForClass" "extension_ConstrainedObjectiveForClass")))

(def-meta-assoc-end "ROSETTA.E_ConstrainedObjectiveForClass_Class1.extension_ConstrainedObjectiveForClass" 
    :type |ConstrainedObjectiveForClass| 
    :multiplicity (1 1) 
    :association "ROSETTA.E_ConstrainedObjectiveForClass_Class1" 
    :name "extension_ConstrainedObjectiveForClass" 
    :aggregation :COMPOSITE)

;;; =========================================================
;;; ====================== ConstrainedObjectiveForRequirement
;;; =========================================================
(def-meta-stereotype |ConstrainedObjectiveForRequirement| 
   (:model :UPRA :superclasses (|ConstrainedObjective|) :extends NIL
 :packages (ROSETTA |Constrained Objectives|) 
 :xmi-id "ROSETTA.ConstrainedObjectiveForRequirement")
 "The ConstrainedObjectiveforRequirement stereotype extends elements with
  any subtype of the abstract SysML::AbstractRequirement applied to parameterizes
  a text-based Requirement into a Constrained Objective"
  ((|constrained_requirement| :xmi-id "ROSETTA.ConstrainedObjectiveForRequirement.constrained_requirement"
    :range UML25:|Element| :multiplicity (1 1) :is-derived-p T
    :documentation
     "The ConstrainedObjective parameterizes Requirement to specify mathematical
      meaning of a text-based requirement model.")))

(def-meta-constraint |extends_requirement| |ConstrainedObjectiveForRequirement| 
   "ConstrainedObjectiveForRequirement can only extend named elements with
    the SysML::AbstractRequirement applied"
   :operation-body
   "SysML::AbstractRequirement.allInstances().base_NamedElement-&gt;includes(self.base_NamedElement) ")

(def-meta-operation |constrained_requirement.1| |ConstrainedObjectiveForRequirement| 
   "constrained_requirement derived value"
   :operation-body
   "self.base_NamedElement.oclAsType(SysML::AbstractRequirement)"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name '|return| :parameter-type 'NIL
                        :parameter-return-p NIL))
)

;;; =========================================================
;;; ====================== ConstrainedObjectiveForUseCase
;;; =========================================================
(def-meta-stereotype |ConstrainedObjectiveForUseCase| 
   (:model :UPRA :superclasses (|ConstrainedObjective|) :extends (UML25:|UseCase|)
 :packages (ROSETTA |Constrained Objectives|) 
 :xmi-id "ROSETTA.ConstrainedObjectiveForUseCase")
 "The ConstrainedObjectiveforUseCase stereotype extends the UML UseCase to
  parameterizes a text-based UseCase into a Constrained Objective."
  ((|base_UseCase| :xmi-id "ROSETTA.ConstrainedObjectiveForUseCase.base_UseCase"
    :range UML25:|UseCase| :multiplicity (1 1) :redefined-property (|ConstrainedObjective| |base_NamedElement|))))

(def-meta-assoc "ROSETTA.E_ConstrainedObjectiveForUseCase_UseCase1"      
  :name |E_ConstrainedObjectiveForUseCase_UseCase1|      
  :metatype :extension      
  :member-ends (("ROSETTA.E_ConstrainedObjectiveForUseCase_UseCase1.extension_ConstrainedObjectiveForUseCase" "extension_ConstrainedObjectiveForUseCase")
                (|ConstrainedObjectiveForUseCase| "base_UseCase"))      
  :owned-ends  (("ROSETTA.E_ConstrainedObjectiveForUseCase_UseCase1.extension_ConstrainedObjectiveForUseCase" "extension_ConstrainedObjectiveForUseCase")))

(def-meta-assoc-end "ROSETTA.E_ConstrainedObjectiveForUseCase_UseCase1.extension_ConstrainedObjectiveForUseCase" 
    :type |ConstrainedObjectiveForUseCase| 
    :multiplicity (1 1) 
    :association "ROSETTA.E_ConstrainedObjectiveForUseCase_UseCase1" 
    :name "extension_ConstrainedObjectiveForUseCase" 
    :aggregation :COMPOSITE)

;;; =========================================================
;;; ====================== DesignParameter
;;; =========================================================
(def-meta-stereotype |DesignParameter| 
   (:model :UPRA :superclasses NIL :extends (UML25:|NamedElement|)
 :packages (ROSETTA |Design Parameters|) 
 :xmi-id "ROSETTA.DesignParameter")
 "The DesignParameter stereotype extends the UML Property, CallBehaviorAction,
  and State metaclass to include seven attributes that parameterizes a text-based
  model element into a Design Parameter."
  ((DPID :xmi-id "ROSETTA.DesignParameter.DPID"
    :range |String| :multiplicity (1 1)
    :documentation
     "This attribute represents the unique Identification Number of a Design
      Parameter.")
   (|DesignParameterLowerValue| :xmi-id "ROSETTA.DesignParameter.DesignParameterLowerValue"
    :range |Real| :multiplicity (1 1)
    :documentation
     "This attribute represents the lower bound of the robust design range of
      the Design Parameter.")
   (|DesignParameterName| :xmi-id "ROSETTA.DesignParameter.DesignParameterName"
    :range |String| :multiplicity (1 1)
    :documentation
     "This attribute represents the name of the Design Parameter.")
   (|DesignParameterType| :xmi-id "ROSETTA.DesignParameter.DesignParameterType"
    :range |String| :multiplicity (1 1)
    :documentation
     "This attribute represents the base dimension or type by which the quantity
      dimension or type of the Design Parameter is created.")
   (|DesignParameterUpperValue| :xmi-id "ROSETTA.DesignParameter.DesignParameterUpperValue"
    :range |Real| :multiplicity (1 1)
    :documentation
     "This attribute represents the upper bound of the robust design range of
      the Design Parameter.")
   (|InitialDesign| :xmi-id "ROSETTA.DesignParameter.InitialDesign"
    :range |Real| :multiplicity (1 1)
    :documentation
     "This attribute represents the initial design choice for the Design Parameter.")
   (|Operator| :xmi-id "ROSETTA.DesignParameter.Operator"
    :range |String| :multiplicity (1 1) :default :&lt;=
    :documentation
     "This attribute represents the mathematical symbol needed to specify the
      boundary of the robust design range for the Design Parameter. The default
      string for Operator is &lt;=.")
   (|base_NamedElement| :xmi-id "ROSETTA.DesignParameter.base_NamedElement"
    :range UML25:|NamedElement| :multiplicity (1 1))))

(def-meta-assoc "ROSETTA.E_DesignParameter_NamedElement1"      
  :name |E_DesignParameter_NamedElement1|      
  :metatype :extension      
  :member-ends (("ROSETTA.E_DesignParameter_NamedElement1.extension_DesignParameter" "extension_DesignParameter")
                (|DesignParameter| "base_NamedElement"))      
  :owned-ends  (("ROSETTA.E_DesignParameter_NamedElement1.extension_DesignParameter" "extension_DesignParameter")))

(def-meta-assoc-end "ROSETTA.E_DesignParameter_NamedElement1.extension_DesignParameter" 
    :type |DesignParameter| 
    :multiplicity (1 1) 
    :association "ROSETTA.E_DesignParameter_NamedElement1" 
    :name "extension_DesignParameter" 
    :aggregation :COMPOSITE)

;;; =========================================================
;;; ====================== DesignParameterForAction
;;; =========================================================
(def-meta-stereotype |DesignParameterForAction| 
   (:model :UPRA :superclasses (|DesignParameter|) :extends (UML25:|Action|)
 :packages (ROSETTA |Design Parameters|) 
 :xmi-id "ROSETTA.DesignParameterForAction")
 ""
  ((|base_Action| :xmi-id "ROSETTA.DesignParameterForAction.base_Action"
    :range UML25:|Action| :multiplicity (1 1) :redefined-property (|DesignParameter| |base_NamedElement|))))

(def-meta-assoc "ROSETTA.E_DesignParameterForAction_Action1"      
  :name |E_DesignParameterForAction_Action1|      
  :metatype :extension      
  :member-ends (("ROSETTA.E_DesignParameterForAction_Action1.extension_DesignParameterForAction" "extension_DesignParameterForAction")
                (|DesignParameterForAction| "base_Action"))      
  :owned-ends  (("ROSETTA.E_DesignParameterForAction_Action1.extension_DesignParameterForAction" "extension_DesignParameterForAction")))

(def-meta-assoc-end "ROSETTA.E_DesignParameterForAction_Action1.extension_DesignParameterForAction" 
    :type |DesignParameterForAction| 
    :multiplicity (1 1) 
    :association "ROSETTA.E_DesignParameterForAction_Action1" 
    :name "extension_DesignParameterForAction" 
    :aggregation :COMPOSITE)

;;; =========================================================
;;; ====================== DesignParameterForProperty
;;; =========================================================
(def-meta-stereotype |DesignParameterForProperty| 
   (:model :UPRA :superclasses (|DesignParameter|) :extends (UML25:|Property|)
 :packages (ROSETTA |Design Parameters|) 
 :xmi-id "ROSETTA.DesignParameterForProperty")
 ""
  ((|base_Property| :xmi-id "ROSETTA.DesignParameterForProperty.base_Property"
    :range UML25:|Property| :multiplicity (1 1) :redefined-property (|DesignParameter| |base_NamedElement|))))

(def-meta-assoc "ROSETTA.E_DesignParameterForProperty_Property1"      
  :name |E_DesignParameterForProperty_Property1|      
  :metatype :extension      
  :member-ends (("ROSETTA.E_DesignParameterForProperty_Property1.extension_DesignParameterForProperty" "extension_DesignParameterForProperty")
                (|DesignParameterForProperty| "base_Property"))      
  :owned-ends  (("ROSETTA.E_DesignParameterForProperty_Property1.extension_DesignParameterForProperty" "extension_DesignParameterForProperty")))

(def-meta-assoc-end "ROSETTA.E_DesignParameterForProperty_Property1.extension_DesignParameterForProperty" 
    :type |DesignParameterForProperty| 
    :multiplicity (1 1) 
    :association "ROSETTA.E_DesignParameterForProperty_Property1" 
    :name "extension_DesignParameterForProperty" 
    :aggregation :COMPOSITE)

;;; =========================================================
;;; ====================== DesignParameterForState
;;; =========================================================
(def-meta-stereotype |DesignParameterForState| 
   (:model :UPRA :superclasses (|DesignParameter|) :extends (UML25:|State|)
 :packages (ROSETTA |Design Parameters|) 
 :xmi-id "ROSETTA.DesignParameterForState")
 ""
  ((|base_State| :xmi-id "ROSETTA.DesignParameterForState.base_State"
    :range UML25:|State| :multiplicity (1 1) :redefined-property (|DesignParameter| |base_NamedElement|))))

(def-meta-assoc "ROSETTA.E_DesignParameterForState_State1"      
  :name |E_DesignParameterForState_State1|      
  :metatype :extension      
  :member-ends (("ROSETTA.E_DesignParameterForState_State1.extension_DesignParameterForState" "extension_DesignParameterForState")
                (|DesignParameterForState| "base_State"))      
  :owned-ends  (("ROSETTA.E_DesignParameterForState_State1.extension_DesignParameterForState" "extension_DesignParameterForState")))

(def-meta-assoc-end "ROSETTA.E_DesignParameterForState_State1.extension_DesignParameterForState" 
    :type |DesignParameterForState| 
    :multiplicity (1 1) 
    :association "ROSETTA.E_DesignParameterForState_State1" 
    :name "extension_DesignParameterForState" 
    :aggregation :COMPOSITE)

;;; =========================================================
;;; ====================== ELMtoELMSensitivity
;;; =========================================================
(def-meta-stereotype |ELMtoELMSensitivity| 
   (:model :UPRA :superclasses (|Sensitivity|) :extends NIL
 :packages (ROSETTA |Constrained Objectives|) 
 :xmi-id "ROSETTA.ELMtoELMSensitivity")
 "The ELMtoELMSensitivity stereotype extends the UML Dependency to model
  a sensitivity-based relation between two NamedElements."
  ())

;;; =========================================================
;;; ====================== Sensitivity
;;; =========================================================
(def-meta-stereotype |Sensitivity| 
   (:model :UPRA :superclasses NIL :extends (UML25:|Dependency|)
 :packages (ROSETTA |Constrained Objectives|) 
 :xmi-id "ROSETTA.Sensitivity")
 "The Sensitivity abstract stereotype extends the UML Dependency to model
  a sensitivity- between two NamedElement"
  ((|CorrelationStrength| :xmi-id "ROSETTA.Sensitivity.CorrelationStrength"
    :range |Real| :multiplicity (0 1)
    :documentation
     "Represent dependency through a subjective weight that measures the correlation
      strength")
   (|DataSourceType| :xmi-id "ROSETTA.Sensitivity.DataSourceType"
    :range |DSType| :multiplicity (1 1))
   (RSE :xmi-id "ROSETTA.Sensitivity.RSE"
    :range |String| :multiplicity (0 1)
    :documentation
     "Represent dependency through a normalized sensitivity calculation.")
   (|base_Dependency| :xmi-id "ROSETTA.Sensitivity.base_Dependency"
    :range UML25:|Dependency| :multiplicity (1 1))))

(def-meta-constraint |either_correlation_or_rse| |Sensitivity| 
   "The stereotype cannot have CorrelationStrength attribute and RSE attribute
    simultaneously"
   :operation-body
   "not (self.CorrelationStrength-&gt;isEmpty() and self.RSE -&gt;isEmpty())")

(def-meta-constraint |is_binary| |Sensitivity| 
   "A Sentitivity is a binary relationship"
   :operation-body
   "self.base_Dependency.supplier-&gt;size() = 1 and self.base_Dependency.client-&gt;size() = 1")

(def-meta-assoc "ROSETTA.E_Sensitivity_Dependency1"      
  :name |E_Sensitivity_Dependency1|      
  :metatype :extension      
  :member-ends (("ROSETTA.E_Sensitivity_Dependency1.extension_Sensitivity" "extension_Sensitivity")
                (|Sensitivity| "base_Dependency"))      
  :owned-ends  (("ROSETTA.E_Sensitivity_Dependency1.extension_Sensitivity" "extension_Sensitivity")))

(def-meta-assoc-end "ROSETTA.E_Sensitivity_Dependency1.extension_Sensitivity" 
    :type |Sensitivity| 
    :multiplicity (1 1) 
    :association "ROSETTA.E_Sensitivity_Dependency1" 
    :name "extension_Sensitivity" 
    :aggregation :COMPOSITE)

(def-meta-package |Constrained Objectives| ROSETTA :UPRA 
   (|ELMtoELMSensitivity|
    |Sensitivity|
    |COtoCOSensitivity|
    |ConstrainedObjectiveForUseCase|
    |ConstrainedObjective|
    |COtoELMSensitivity|
    |DSType|
    |OperatorType|
    |ConstrainedObjectiveForClass|
    |ConstrainedObjectiveForRequirement|) :xmi-id "ROSETTA.ConstrainedObjectives")

(def-meta-package |Design Parameters| ROSETTA :UPRA 
   (|DesignParameter|
    |DesignParameterForState|
    |DesignParameterForAction|
    |DesignParameterForProperty|) :xmi-id "ROSETTA.DesignParameters")

(def-meta-package ROSETTA NIL :UPRA 
   (|Constrained Objectives|
    |Design Parameters|
    |Relational Structure and Design|) :xmi-id "+The-Model+")

(def-meta-package |Relational Structure and Design| ROSETTA :UPRA 
   (|COtoDPSensitivity|) :xmi-id "ROSETTA.RelationalStructureandDesign")

(def-meta-package UML\ 2.5 NIL :UPRA 
   () :xmi-id NIL)

(in-package :mofi)


(with-slots (abstract-classes ns-uri ns-prefix) *model*
     (setf abstract-classes 
        '(UPRA::|ConstrainedObjective|
          UPRA::|DesignParameter|
          UPRA::|Sensitivity|))
     (setf ns-uri "http://modelegator.nist.gov/UPRA")
     (setf ns-prefix "UPRA"))
