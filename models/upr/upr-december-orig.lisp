;;; Automatically created by pop-gen at 2017-12-21 17:20:07.
;;; Source file is NIL

(in-package :UPR)



(def-meta-enum |DSTypeKind| (:model :UPR :superclasses NIL 
   :xmi-id "UPR_dataType.DSTypeKind")
   (|estimated| |derived| |implied|)
   "")



(def-meta-enum |RangeKind| (:model :UPR :superclasses NIL 
   :xmi-id "UPR_dataType.RangeKind")
   (|designRange| |feasibleRange|)
   "")

;;; =========================================================
;;; ====================== ComparisonOperator
;;; =========================================================
(def-meta-stereotype |ComparisonOperator| 
   (:model :UPR :superclasses NIL :extends (UML25:|LiteralString|)
 :packages (UPR |Operators|) 
 :xmi-id "UPR.ComparisonOperator")
 "A ComparisonOperator stereotype allows defining a logical operator that
  can be used with UPRConstraints in order to quantify a relationship between
  a variable and a specific value. The Literal String that this stereotype
  extends defines the symbol to use in order to refer to that operator. The
  semantics defined it is specified through the semantics attributes of the
  stereotype"
  ((|base_LiteralString| :xmi-id "UPR.ComparisonOperator.base_LiteralString"
    :range UML25:|LiteralString| :multiplicity (1 1))
   (|semantics| :xmi-id "UPR.ComparisonOperator.semantics"
    :range |OperatorSemantics| :multiplicity (1 1)
    :opposite (|OperatorSemantics| |notation|))))

;;; POD: was |applyTo|
(def-meta-operation "applyTo" |ComparisonOperator| 
   "This operation evaluates an UPRConstraint base on the semantics specified
    for that operator"
   :operation-body
   "self.applyTo(c.base_Constraint.constrainedElement-&gt;at(1), c.base_Constraint.constrainedElement-&gt;at(2))"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|Boolean|
                        :parameter-return-p T)
          (make-instance 'ocl-parameter :parameter-name '\c :parameter-type '|UPRConstraint|
                        :parameter-return-p NIL))
)

;;; POD: was |symbol|
(def-meta-operation "symbol" |ComparisonOperator| 
   ""
   :operation-body
   "self.base_LiteralString.value"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|String|
                        :parameter-return-p T))
)

;;; POD!!!
(def-meta-assoc "UPR."      
  :name ||      
  :metatype :association      
  :member-ends ((|ComparisonOperator| "semantics")
                (|OperatorSemantics| "notation"))      
  :owned-ends  ())

(def-meta-assoc "UPR.E_ComparisonOperator_LiteralString"      
  :name |E_ComparisonOperator_LiteralString|      
  :metatype :extension      
  :member-ends ((|ComparisonOperator| "base_LiteralString")
                ("UPR.E_ComparisonOperator_LiteralString.extension_ComparisonOperator" "extension_ComparisonOperator"))      
  :owned-ends  (("UPR.E_ComparisonOperator_LiteralString.extension_ComparisonOperator" "extension_ComparisonOperator")))

(def-meta-assoc-end "UPR.E_ComparisonOperator_LiteralString.extension_ComparisonOperator" 
    :type |ComparisonOperator| 
    :multiplicity (1 1) 
    :association "UPR.E_ComparisonOperator_LiteralString" 
    :name "extension_ComparisonOperator" 
    :aggregation :COMPOSITE)

;;; =========================================================
;;; ====================== DCtoDCSensitivity
;;; =========================================================
(def-meta-stereotype |DCtoDCSensitivity| 
   (:model :UPR :superclasses (|Sensitivity|) :extends NIL
 :packages (UPR |Design Constraints|) 
 :xmi-id "UPR.DCtoDCSensitivity")
 "The DCtoDCSensitivity stereotype extends the UML Dependency to model a
  sensitivity-based relation between two DesignConstraints."
  ())

(def-meta-constraint |client_and_supplier_designconstraints| |DCtoDCSensitivity| 
   "Both the client and the supplier shall have the DesignConstraint stereotype
    applied"
   :operation-body
   "DesignConstraint.allInstances().base_Constraint-&gt;includesAll(self.base_Dependency.client-&gt;union(self.base_Dependency.supplier)) ")

;;; =========================================================
;;; ====================== DCtoDVSensitivity
;;; =========================================================
(def-meta-stereotype |DCtoDVSensitivity| 
   (:model :UPR :superclasses (|Sensitivity|) :extends NIL
 :packages (UPR |Relational Structure and Design|) 
 :xmi-id "UPR.DCtoDVSensitivity")
 "The DCtoDVSensitivity stereotype extends the UML Dependency to model a
  sensitivity-based relation between a DesignConstraint and a DesignVariable."
  ((|dataSourceType| :xmi-id "UPR.DCtoDVSensitivity.dataSourceType"
    :range |DSTypeKind| :multiplicity (1 1) :is-derived-p T
    :documentation
     "Represent the data source (DSTypeKind enumeration) used to specify Sensitivity" :redefined-property (|Sensitivity| |dataSourceType|))))

(def-meta-constraint |analyticequation_only| |DCtoDVSensitivity| 
   "Only analyticEquation attribute is allowed for DCtoDVSensitivity specification."
   :operation-body
   "self.analyticEquation-&gt;notEmpty()")

(def-meta-constraint |client_designconstraint| |DCtoDVSensitivity| 
   "The client shall have the DesignConstraint stereotype applied"
   :operation-body
   "DesignConstraint.allInstances().base_Constraint-&gt;includesAll(self.base_Dependency.client) ")

(def-meta-constraint |supplier_designvariable| |DCtoDVSensitivity| 
   "The supplier shall have the DesignVariable stereotype applied"
   :operation-body
   "DesignVariable.allInstances().base_IntervalConstraint-&gt;includesAll(self.base_Dependency.supplier)")

;;; =========================================================
;;; ====================== DCtoELMSensitivity
;;; =========================================================
(def-meta-stereotype |DCtoELMSensitivity| 
   (:model :UPR :superclasses (|Sensitivity|) :extends NIL
 :packages (UPR |Design Constraints|) 
 :xmi-id "UPR.DCtoELMSensitivity")
 "The DCtoELMSensitivity stereotype extends the UML Dependency to model a
  sensitivity-based relation between a DesignConstraint and a NamedElement."
  ())

(def-meta-constraint |client_designconstraint| |DCtoELMSensitivity| 
   "The client shall have the ConstrainedObjective stereotype applied"
   :operation-body
   "DesignConstraint.allInstances().base_Constraint-&gt;includesAll(self.base_Dependency.client) ")

;;; =========================================================
;;; ====================== DesignConstraint
;;; =========================================================
(def-meta-stereotype |DesignConstraint| 
   (:model :UPR :superclasses (|UPRConstraint|) :extends NIL
 :packages (UPR |Design Constraints|) 
 :xmi-id "UPR.DesignConstraint")
 "The DesignConstraint stereotype specializes the UPRConstraint stereotype
  for specifying a Design Constraint."
  ((|dcID| :xmi-id "UPR.DesignConstraint.dcID"
    :range |String| :multiplicity (1 1)
    :documentation
     "This attribute represents the unique Identification Number of a Design
      Constraint.")))

(def-meta-operation |constrainedClass| |DesignConstraint| 
   ""
   :operation-body
   "self.base_Constraint.constrainedElement-&gt;at(1).oclAsType(UML::Class)"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type 'UML25:|Class|
                        :parameter-return-p T))
)

(def-meta-operation |constrainedUseCase| |DesignConstraint| 
   ""
   :operation-body
   "self.base_Constraint.constrainedElement-&gt;at(1).oclAsType(UML::UseCase)"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type 'UML25:|UseCase|
                        :parameter-return-p T))
)

;;; =========================================================
;;; ====================== DesignVariable
;;; =========================================================
(def-meta-stereotype |DesignVariable| 
   (:model :UPR :superclasses (|UPRConstraint|) :extends NIL
 :packages (UPR |Design Variables|) 
 :xmi-id "UPR.DesignVariable")
 "The DesignVariable stereotype specializes the UPRConstraint stereotype
  for specifying the initial design, Design Range and Feasible Range for
  a Design Variable."
  ((|dvID| :xmi-id "UPR.DesignVariable.dvID"
    :range |String| :multiplicity (1 1)
    :documentation
     "This attribute represents the unique Identification Number of a Design
      Variable.")
   (|initialDesign| :xmi-id "UPR.DesignVariable.initialDesign"
    :range UML25:|ValueSpecification| :multiplicity (1 1)
    :documentation
     "This attribute represents the initial design choice for the Design Variable.")
   (|kind| :xmi-id "UPR.DesignVariable.kind"
    :range |RangeKind| :multiplicity (1 1)
    :documentation
     "This attribute represents the kind of range, i.e. designRange or feasibleRange,
      being specified for the Design Variable")))

(def-meta-operation |constrainedAction| |DesignVariable| 
   ""
   :operation-body
   "self.base_Constraint.constrainedElement-&gt;at(1).oclAsType(UML::Action)"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type 'UML25:|Action|
                        :parameter-return-p T))
)

(def-meta-operation |constrainedState| |DesignVariable| 
   ""
   :operation-body
   "self.base_Constraint.constrainedElement-&gt;at(1).oclAsType(UML::State)"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type 'UML25:|State|
                        :parameter-return-p T))
)

;;; =========================================================
;;; ====================== ELMtoELMSensitivity
;;; =========================================================
(def-meta-stereotype |ELMtoELMSensitivity| 
   (:model :UPR :superclasses (|Sensitivity|) :extends NIL
 :packages (UPR |Design Constraints|) 
 :xmi-id "UPR.ELMtoELMSensitivity")
 "The ELMtoELMSensitivity stereotype extends the UML Dependency to model
  a sensitivity-based relation between two NamedElements."
  ())

;;; =========================================================
;;; ====================== EQ_Operator
;;; =========================================================
(def-meta-class |EQ_Operator| 
   (:model :UPR :superclasses (|OperatorSemanticsClass|) 
    :packages (UPR |Operators| |Library|) 
    :xmi-id "UPR.EQ_Operator")
 "This class defines the semantics for an &quot;equal to&quot; relationship"
  ())

(def-meta-operation |applyTo| |EQ_Operator| 
   ""
   :operation-body
   "if (x.oclIsKindOf(Real) and y.oclIsKindOf(Real)) then x.oclAsType(Real) = y.oclAsType(Real) else OclInvalid endif"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|Boolean|
                        :parameter-return-p T)
          (make-instance 'ocl-parameter :parameter-name '\x :parameter-type 'UML25:|Element|
                        :parameter-return-p NIL)
          (make-instance 'ocl-parameter :parameter-name '\y :parameter-type 'UML25:|Element|
                        :parameter-return-p NIL))
)

;;; =========================================================
;;; ====================== GTE_Operator
;;; =========================================================
(def-meta-class |GTE_Operator| 
   (:model :UPR :superclasses (|OperatorSemanticsClass|) 
    :packages (UPR |Operators| |Library|) 
    :xmi-id "UPR.GTE_Operator")
 "This class defines the semantics for a &quot;greater than or equal to&quot;
  relationship"
  ())

(def-meta-operation |applyTo| |GTE_Operator| 
   ""
   :operation-body
   "if (x.oclIsKindOf(Real) and y.oclIsKindOf(Real)) then x.oclAsType(Real) &gt;= y.oclAsType(Real) else OclInvalid endif"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|Boolean|
                        :parameter-return-p T)
          (make-instance 'ocl-parameter :parameter-name '\x :parameter-type 'UML25:|Element|
                        :parameter-return-p NIL)
          (make-instance 'ocl-parameter :parameter-name '\y :parameter-type 'UML25:|Element|
                        :parameter-return-p NIL))
)

;;; =========================================================
;;; ====================== GT_Operator
;;; =========================================================
(def-meta-class |GT_Operator| 
   (:model :UPR :superclasses (|OperatorSemanticsClass|) 
    :packages (UPR |Operators| |Library|) 
    :xmi-id "UPR.GT_Operator")
 "This class defines the semantics for a &quot;greater than&quot; relationship"
  ())

(def-meta-operation |applyTo| |GT_Operator| 
   ""
   :operation-body
   "if (x.oclIsKindOf(Real) and y.oclIsKindOf(Real)) then x.oclAsType(Real) &gt; y.oclAsType(Real) else OclInvalid endif"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|Boolean|
                        :parameter-return-p T)
          (make-instance 'ocl-parameter :parameter-name '\x :parameter-type 'UML25:|Element|
                        :parameter-return-p NIL)
          (make-instance 'ocl-parameter :parameter-name '\y :parameter-type 'UML25:|Element|
                        :parameter-return-p NIL))
)

;;; =========================================================
;;; ====================== LTE_Operator
;;; =========================================================
(def-meta-class |LTE_Operator| 
   (:model :UPR :superclasses (|OperatorSemanticsClass|) 
    :packages (UPR |Operators| |Library|) 
    :xmi-id "UPR.LTE_Operator")
 "This class defines the semantics for a &quot;lower than or equal to&quot;
  relationship"
  ())

(def-meta-operation |applyTo| |LTE_Operator| 
   ""
   :operation-body
   "if (x.oclIsKindOf(Real) and y.oclIsKindOf(Real)) then x.oclAsType(Real) &lt;= y.oclAsType(Real) else OclInvalid endif"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|Boolean|
                        :parameter-return-p T)
          (make-instance 'ocl-parameter :parameter-name '\x :parameter-type 'UML25:|Element|
                        :parameter-return-p NIL)
          (make-instance 'ocl-parameter :parameter-name '\y :parameter-type 'UML25:|Element|
                        :parameter-return-p NIL))
)

;;; =========================================================
;;; ====================== LT_Operator
;;; =========================================================
(def-meta-class |LT_Operator| 
   (:model :UPR :superclasses (|OperatorSemanticsClass|) 
    :packages (UPR |Operators| |Library|) 
    :xmi-id "UPR.LT_Operator")
 "This class defines the semantics for a &quot;lower than&quot; relationship"
  ())

(def-meta-operation |applyTo| |LT_Operator| 
   ""
   :operation-body
   "if (x.oclIsKindOf(Real) and y.oclIsKindOf(Real)) then x.oclAsType(Real) &lt; y.oclAsType(Real) else OclInvalid endif"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|Boolean|
                        :parameter-return-p T)
          (make-instance 'ocl-parameter :parameter-name '\x :parameter-type 'UML25:|Element|
                        :parameter-return-p NIL)
          (make-instance 'ocl-parameter :parameter-name '\y :parameter-type 'UML25:|Element|
                        :parameter-return-p NIL))
)

;;; =========================================================
;;; ====================== NEQ_Operator
;;; =========================================================
(def-meta-class |NEQ_Operator| 
   (:model :UPR :superclasses (|OperatorSemanticsClass|) 
    :packages (UPR |Operators| |Library|) 
    :xmi-id "UPR.NEQ_Operator")
 "This class defines the semantics for a &quot;not equal to&quot; relationship"
  ())

(def-meta-operation |applyTo| |NEQ_Operator| 
   ""
   :operation-body
   "if (x.oclIsKindOf(Real) and y.oclIsKindOf(Real)) then x.oclAsType(Real) &lt;&gt; y.oclAsType(Real) else OclInvalid endif"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|Boolean|
                        :parameter-return-p T)
          (make-instance 'ocl-parameter :parameter-name '\x :parameter-type 'UML25:|Element|
                        :parameter-return-p NIL)
          (make-instance 'ocl-parameter :parameter-name '\y :parameter-type 'UML25:|Element|
                        :parameter-return-p NIL))
)

;;; =========================================================
;;; ====================== OperatorSemantics
;;; =========================================================
(def-meta-stereotype |OperatorSemantics| 
   (:model :UPR :superclasses NIL :extends (UML25:|Class|)
 :packages (UPR |Operators|) 
 :xmi-id "UPR.OperatorSemantics")
 "An OperatorSemantics stereotype is applied on a Class that can be used
  for specifying the semantics of a ComparisonOperator a UPRConstraints can
  refer to. Typically the Base Class is a specialization of the OperatorSemanticsClass"
  ((|base_Class| :xmi-id "UPR.OperatorSemantics.base_Class"
    :range UML25:|Class| :multiplicity (1 1))
   (|notation| :xmi-id "UPR.OperatorSemantics.notation"
    :range |ComparisonOperator| :multiplicity (0 -1)
    :opposite (|ComparisonOperator| |semantics|))))

(def-meta-constraint |has_applyto_operation| |OperatorSemantics| 
   ""
   :operation-body
   "self.base_Class.oclIsKindOf(OperatorSemanticsClass)")

(def-meta-operation |applyTo| |OperatorSemantics| 
   ""
   :operation-body
   "self.base_Class.oclAsType(OperatorSemanticsClass).applyTo(x, y)"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|Boolean|
                        :parameter-return-p T)
          (make-instance 'ocl-parameter :parameter-name '\x :parameter-type 'UML25:|Element|
                        :parameter-return-p NIL)
          (make-instance 'ocl-parameter :parameter-name '\y :parameter-type 'UML25:|Element|
                        :parameter-return-p NIL))
)

(def-meta-assoc "UPR.E_OperatorSemantics_Class"      
  :name |E_OperatorSemantics_Class|      
  :metatype :extension      
  :member-ends ((|OperatorSemantics| "base_Class")
                ("UPR.E_OperatorSemantics_Class.extension_OperatorSemantics" "extension_OperatorSemantics"))      
  :owned-ends  (("UPR.E_OperatorSemantics_Class.extension_OperatorSemantics" "extension_OperatorSemantics")))

(def-meta-assoc-end "UPR.E_OperatorSemantics_Class.extension_OperatorSemantics" 
    :type |OperatorSemantics| 
    :multiplicity (1 1) 
    :association "UPR.E_OperatorSemantics_Class" 
    :name "extension_OperatorSemantics" 
    :aggregation :COMPOSITE)

;;; =========================================================
;;; ====================== OperatorSemanticsClass
;;; =========================================================
(def-meta-class |OperatorSemanticsClass| 
   (:model :UPR :superclasses NIL 
    :packages (UPR |Operators|) 
    :xmi-id "UPR.OperatorSemanticsClass")
 "Provide a abstract base class for defining teh semantics of a ComparisonOperator"
  ())

(def-meta-operation |applyTo| |OperatorSemanticsClass| 
   "This operation is used for specifying how the result of the comparison
    shall be computed"
   :operation-body
   ""
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|Boolean|
                        :parameter-return-p T)
          (make-instance 'ocl-parameter :parameter-name '\x :parameter-type 'UML25:|Element|
                        :parameter-return-p NIL)
          (make-instance 'ocl-parameter :parameter-name '\y :parameter-type 'UML25:|Element|
                        :parameter-return-p NIL))
)

;;; =========================================================
;;; ====================== Sensitivity
;;; =========================================================
(def-meta-stereotype |Sensitivity| 
   (:model :UPR :superclasses NIL :extends (UML25:|Dependency|)
 :packages (UPR |Foundations|) 
 :xmi-id "UPR.Sensitivity")
 "The Sensitivity abstract stereotype extends the UML Dependency to model
  a sensitivity- between two NamedElement"
  ((|analyticEquation| :xmi-id "UPR.Sensitivity.analyticEquation"
    :range |String| :multiplicity (0 1)
    :documentation
     "Represent dependency through an Analytic Equation")
   (|base_Dependency| :xmi-id "UPR.Sensitivity.base_Dependency"
    :range UML25:|Dependency| :multiplicity (1 1))
   (|correlationStrength| :xmi-id "UPR.Sensitivity.correlationStrength"
    :range |Real| :multiplicity (0 1)
    :documentation
     "Represent dependency through a subjective weight that measures the correlation
      strength")
   (|dataSourceType| :xmi-id "UPR.Sensitivity.dataSourceType"
    :range |DSTypeKind| :multiplicity (1 1)
    :documentation
     "Represent the data source (DSTypeKind enumeration) used to specify Sensitivity")))

(def-meta-constraint |either_correlation_or_analyticequation| |Sensitivity| 
   "The stereotype cannot have CorrelationStrength attribute and analyticEquation
    attribute simultaneously"
   :operation-body
   "not (self.correlationStrength-&gt;notEmpty() and self.analyticEquation -&gt;notEmpty())")

(def-meta-constraint |is_binary| |Sensitivity| 
   "A Sensitivity is a binary relationship"
   :operation-body
   "self.base_Dependency.supplier-&gt;size() = 1 and self.base_Dependency.client-&gt;size() = 1")

(def-meta-assoc "UPR.E_Sensitivity_Dependency"      
  :name |E_Sensitivity_Dependency|      
  :metatype :extension      
  :member-ends ((|Sensitivity| "base_Dependency")
                ("UPR.E_Sensitivity_Dependency.extension_Sensitivity" "extension_Sensitivity"))      
  :owned-ends  (("UPR.E_Sensitivity_Dependency.extension_Sensitivity" "extension_Sensitivity")))

(def-meta-assoc-end "UPR.E_Sensitivity_Dependency.extension_Sensitivity" 
    :type |Sensitivity| 
    :multiplicity (1 1) 
    :association "UPR.E_Sensitivity_Dependency" 
    :name "extension_Sensitivity" 
    :aggregation :COMPOSITE)

;;; =========================================================
;;; ====================== UPRConstraint
;;; =========================================================
(def-meta-stereotype |UPRConstraint| 
   (:model :UPR :superclasses NIL :extends (UML25:|Constraint|)
 :packages (UPR |Foundations|) 
 :xmi-id "UPR.UPRConstraint")
 "An UPR constraint stereotype extends the UML Constraint metaclass which
  is used for specifying either Design Constraint or range for Design Variables.
  The specification of this constraint shall be the symbol defining the operator.
  Note that the ROSETTA library provides a set of predefined operators."
  ((|base_Constraint| :xmi-id "UPR.UPRConstraint.base_Constraint"
    :range UML25:|Constraint| :multiplicity (1 1))))

(def-meta-constraint |two_constrained_elements| |UPRConstraint| 
   "A DesignConstraint constraint shall have 2 constrained elements"
   :operation-body
   "self.base_Constraint.constrainedElement-&gt;size()=2")

(def-meta-operation |comparisonOperator| |UPRConstraint| 
   ""
   :operation-body
   "ROSETTA::Operators::OperatorSemantics.allInstances()-&gt;any(o | o.notation.symbol()-&gt;includes(self.base_Constraint.specification.stringValue()))"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type 'NIL
                        :parameter-return-p T))
)

(def-meta-operation |constrainedProperty| |UPRConstraint| 
   ""
   :operation-body
   ""
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type 'UML25:|Property|
                        :parameter-return-p T))
)

(def-meta-operation |evaluate| |UPRConstraint| 
   ""
   :operation-body
   "self.comparisonOperator.applyTo(self.base_Constraint)"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|Boolean|
                        :parameter-return-p T))
)

(def-meta-operation |name| |UPRConstraint| 
   ""
   :operation-body
   "self.base_Constraint.name"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|String|
                        :parameter-return-p T))
)

(def-meta-operation |value| |UPRConstraint| 
   ""
   :operation-body
   "self.base_Constraint.constrainedElement-&gt;at(2).oclAsType(UML::ValueSpecification)"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type 'UML25:|ValueSpecification|
                        :parameter-return-p T))
)

(def-meta-assoc "UPR.E_UPRConstraint_Constraint"      
  :name |E_UPRConstraint_Constraint|      
  :metatype :extension      
  :member-ends ((|UPRConstraint| "base_Constraint")
                ("UPR.E_UPRConstraint_Constraint.extension_UPRConstraint" "extension_UPRConstraint"))      
  :owned-ends  (("UPR.E_UPRConstraint_Constraint.extension_UPRConstraint" "extension_UPRConstraint")))

(def-meta-assoc-end "UPR.E_UPRConstraint_Constraint.extension_UPRConstraint" 
    :type |UPRConstraint| 
    :multiplicity (1 1) 
    :association "UPR.E_UPRConstraint_Constraint" 
    :name "extension_UPRConstraint" 
    :aggregation :COMPOSITE)

(def-meta-package |Design Constraints| UPR :UPR 
   (|DesignConstraint|
    |ELMtoELMSensitivity|
    |DCtoELMSensitivity|
    |DCtoDCSensitivity|) :xmi-id "UPR.DesignConstraints")

(def-meta-package |Design Variables| UPR :UPR 
   (|DesignVariable|
    |RangeKind|) :xmi-id "UPR.DesignVariables")

(def-meta-package |Foundations| UPR :UPR 
   (|UPRConstraint|
    |Sensitivity|
    |DSTypeKind|) :xmi-id "UPR.Foundations")

(def-meta-package |Library| |Operators| :UPR 
   (|NEQ_Operator|
    |GTE_Operator|
    |LTE_Operator|
    |EQ_Operator|
    |GT_Operator|
    |LT_Operator|) :xmi-id "UPR.Operators.Library")

(def-meta-package |Operators| UPR :UPR 
   (|Library|
    |OperatorSemanticsClass|
    |OperatorSemantics|
    |ComparisonOperator|) :xmi-id "UPR.Operators")

(def-meta-package |PrimitiveTypes.xmi| NIL :UPR 
   () :xmi-id NIL)

(def-meta-package |Relational Structure and Design| UPR :UPR 
   (|DCtoDVSensitivity|) :xmi-id "UPR.RelationalStructureandDesign")

(def-meta-package UML\ 2.5 NIL :UPR 
   () :xmi-id NIL)

(def-meta-package UPR NIL :UPR 
   (|Design Constraints|
    |Foundations|
    |Operators|
    |Relational Structure and Design|
    |Design Variables|) :xmi-id "+The-Model+")

(in-package :mofi)


(with-slots (abstract-classes ns-uri ns-prefix) *model*
     (setf abstract-classes 
        '(UPR::|OperatorSemanticsClass|
          UPR::|Sensitivity|
          UPR::|UPRConstraint|))
     (setf ns-uri "http://modelegator.nist.gov/UPR")
     (setf ns-prefix "UPR"))
