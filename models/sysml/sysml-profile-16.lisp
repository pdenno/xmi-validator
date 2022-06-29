;;; Automatically created by pop-gen at 2022-06-28 15:53:47.
;;; Source file is ptc-18-10-04.xmi

(in-package :SYSML16)



(def-meta-primitive |SysML_dataType.Boolean| (:model :SYSML16 :superclasses NIL :xmi-id "SysML_dataType.Boolean"))



(def-meta-primitive |SysML_dataType.Complex| (:model :SYSML16 :superclasses NIL :xmi-id "SysML_dataType.Complex"))



(def-meta-primitive |SysML_dataType.Integer| (:model :SYSML16 :superclasses NIL :xmi-id "SysML_dataType.Integer"))



(def-meta-primitive |SysML_dataType.Number| (:model :SYSML16 :superclasses NIL :xmi-id "SysML_dataType.Number"))



(def-meta-primitive |SysML_dataType.Real| (:model :SYSML16 :superclasses NIL :xmi-id "SysML_dataType.Real"))



(def-meta-primitive |SysML_dataType.String| (:model :SYSML16 :superclasses NIL :xmi-id "SysML_dataType.String"))



(def-meta-enum |ControlValueKind| (:model :SYSML16 :superclasses NIL
   :xmi-id "SysML_dataType.ControlValueKind")
   (|disable| |enable|)
   "The ControlValueKind enumeration is a type for treating control values
    as data (see clause11.3.2.2) and for UML control pins. It can be used as
    the type of behavior and operation parameters, object nodes, and attributes,
    and so on. The possible runtime values are given as enumeration literals.
    Modelers can extend the enumeration with additional literals, such as suspend,
    resume, with their own semantics.  The disable literal means a termination
    of an executing behavior that can only be started again from the beginning
    (compare to suspend). The enable literal means to start a new execution
    of a behavior (compare to resume).")



(def-meta-enum |FeatureDirectionKind| (:model :SYSML16 :superclasses NIL
   :xmi-id "SysML_dataType.FeatureDirectionKind")
   (|provided| |providedRequired| |required|)
   "FeatureDirectionKind is an enumeration type that defines literals used
    by directed features for specifying whether they are supported by the owning
    block, or is to be supported by other blocks for the owning block to use.")



(def-meta-enum |FlowDirectionKind| (:model :SYSML16 :superclasses NIL
   :xmi-id "SysML_dataType.FlowDirectionKind")
   (|in| |inout| |out|)
   "FlowDirectionKind is an enumeration type that defines literals used for
    specifying the direction that items can flow to or from a block. FlowDirectionKind
    is used by flow properties to indicate the direction that its items can
    flow to or from its owner. (See clause 9.3.2.13  for definition of owning
    block of proxy ports in this case.)")



(def-meta-enum |VerdictKind| (:model :SYSML16 :superclasses NIL
   :xmi-id "SysML_dataType.VerdictKind")
   (|error| |fail| |inconclusive| |pass|)
   "Type of a return parameter of a TestCase must be VerdictKind, consistent
    with the UML Testing Profile.")



;;; =========================================================
;;; ====================== AbstractRequirement
;;; =========================================================
(def-meta-stereotype |AbstractRequirement|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|NamedElement|)
 :packages (|SysML| |Requirements|)
 :xmi-id "SysML.AbstractRequirement")
 "An AbstractRequirement establishes the attributes and relationships essential
  to any potential kind of requirement. Any intended requirement kind should
  subclass AbstractRequirement. The only normative stereotype based on AbstractRequirement
  is the Requirement stereotype, described in clause 16.3.2.5 . Examples
  of additional non-normative stereotypes based on AbstractRequirement are
  included in clause 22.8 ."
  ((|base_NamedElement| :xmi-id "SysML.AbstractRequirement.base_NamedElement"
    :range UML251:|NamedElement| :multiplicity (1 1))
   (|derived| :xmi-id "SysML.AbstractRequirement.derived"
    :range |AbstractRequirement| :multiplicity (0 -1) :is-derived-p T
    :documentation
     "Derived from all requirements that are the client of a  deriveReqt  relationship
      for which this requirement is a supplier.")
   (|derivedFrom| :xmi-id "SysML.AbstractRequirement.derivedFrom"
    :range |AbstractRequirement| :multiplicity (0 -1) :is-derived-p T
    :documentation
     "Derived from all requirements that are the supplier of a  deriveReqt  relationship
      for which this requirement is a client.")
   (|id| :xmi-id "SysML.AbstractRequirement.id"
    :range |String| :multiplicity (1 1) :default ""
    :documentation
     "The unique id of the requirement.")
   (|master| :xmi-id "SysML.AbstractRequirement.master"
    :range |AbstractRequirement| :multiplicity (0 -1) :is-derived-p T
    :documentation
     "This is a derived property that lists the master requirement for this slave
      requirement. The master attribute is derived from the supplier of the Copy
      dependency that has this requirement as the slave.")
   (|refinedBy| :xmi-id "SysML.AbstractRequirement.refinedBy"
    :range UML251:|NamedElement| :multiplicity (0 -1) :is-derived-p T
    :documentation
     "Derived from all elements that are the client of a  refine  relationship
      for which this requirement is a supplier.")
   (|satisfiedBy| :xmi-id "SysML.AbstractRequirement.satisfiedBy"
    :range UML251:|NamedElement| :multiplicity (0 -1) :is-derived-p T
    :documentation
     "Derived from all elements that are the client of a  satisfy  relationship
      for which this requirement is a supplier.")
   (|text| :xmi-id "SysML.AbstractRequirement.text"
    :range |String| :multiplicity (1 1) :default ""
    :documentation
     "The textual representation or a reference to the textual representation
      of the requirement.")
   (|tracedTo| :xmi-id "SysML.AbstractRequirement.tracedTo"
    :range UML251:|NamedElement| :multiplicity (0 -1) :is-derived-p T
    :documentation
     "Derived from all elements that are the client of a  trace  relationship
      for which this requirement is a supplier.")
   (|verifiedBy| :xmi-id "SysML.AbstractRequirement.verifiedBy"
    :range UML251:|NamedElement| :multiplicity (0 -1) :is-derived-p T
    :documentation
     "Derived from all elements that are the client of a  verify  relationship
      for which this requirement is a supplier.")))

(def-meta-operation |derived| |AbstractRequirement|
   ""
   :operation-body
   "DeriveReqt.allInstances()->select(base_Abstraction.supplier=self).base_Abstraction.client"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|AbstractRequirement|
			:parameter-return-p T))
)

(def-meta-operation |derivedFrom| |AbstractRequirement|
   ""
   :operation-body
   "DeriveReqt.allInstances()->select(base_Abstraction.client=self).base_Abstraction.supplier"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|AbstractRequirement|
			:parameter-return-p T))
)

(def-meta-operation |master| |AbstractRequirement|
   ""
   :operation-body
   "Copy.allInstances()->select(base_Abstraction.client=self).base_Abstraction.supplier"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|AbstractRequirement|
			:parameter-return-p T))
)

(def-meta-operation |refinedBy| |AbstractRequirement|
   ""
   :operation-body
   "Refine.allInstances()->select(base_Abstraction.supplier=self).base_Abstraction.client"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type 'UML251:|NamedElement|
			:parameter-return-p T))
)

(def-meta-operation |satisfiedBy| |AbstractRequirement|
   ""
   :operation-body
   "Satisfy.allInstances()->select(base_Abstraction.supplier=self).base_Abstraction.client "
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type 'UML251:|NamedElement|
			:parameter-return-p T))
)

(def-meta-operation |tracedTo| |AbstractRequirement|
   ""
   :operation-body
   "Trace.allInstances()->select(base_Abstraction.client=self).base_Abstraction.supplier"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type 'UML251:|NamedElement|
			:parameter-return-p T))
)

(def-meta-operation |verifiedBy| |AbstractRequirement|
   ""
   :operation-body
   "Verify.allInstances()->select(base_Abstraction.supplier=self).base_Abstraction.client"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type 'UML251:|NamedElement|
			:parameter-return-p T))
)

;;; =========================================================
;;; ====================== AcceptChangeStructuralFeatureEventAction
;;; =========================================================
(def-meta-stereotype |AcceptChangeStructuralFeatureEventAction|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|AcceptEventAction|)
 :packages (|SysML| |PortsAndFlows|)
 :xmi-id "SysML.AcceptChangeStructuralFeatureEventAction")
 "Accept change structural feature event actions handle change structural
  feature events (see clause 9.3.2.10). The actions have exactly two output
  pins. The first output pin holds the values of the structural feature just
  after the values changed, while the second pin holds the values just before
  the values changed. The action only accepts events for structural features
  on the blocks owning the behavior containing the action, or on the behavior
  itself, if the behavior is not owned by a block."
  ((|base_AcceptEventAction| :xmi-id "SysML.AcceptChangeStructuralFeatureEventAction.base_AcceptEventAction"
    :range UML251:|AcceptEventAction| :multiplicity (1 1))))

(def-meta-constraint |1_one_trigger| |AcceptChangeStructuralFeatureEventAction|
   "The action has exactly one trigger, the event of which shall be a change
    structural feature event."
   :operation-body
   "self.base_AcceptEventAction.trigger->size()=1 and let trigger: UML::Trigger = self.base_AcceptEventAction.trigger->any(true) in ChangeStructuralFeatureEvent.allInstances().base_ChangeEvent->includes(trigger.event)")

(def-meta-constraint |2_two_resultpins| |AcceptChangeStructuralFeatureEventAction|
   "The action has two result pins with type and ordering the same as the type
    and ordering of the structural feature of the trigger event, and multiplicity
    compatible with the multiplicity of the structural feature."
   :operation-body
   "let event: ChangeStructuralFeatureEvent = ChangeStructuralFeatureEvent.allInstances()->any(e | e.base_ChangeEvent = self.base_AcceptEventAction.trigger->any(true).event) in self.base_AcceptEventAction.result->size() = 2 and  self.base_AcceptEventAction.result->forAll(r | r.type = event.structuralFeature.type   and r.isOrdered = event.structuralFeature.isOrdered  and r.lower <= event.structuralFeature.lower  and r.upper >= event.structuralFeature.upper) ")

(def-meta-constraint |3_context_owns_structuralfeature| |AcceptChangeStructuralFeatureEventAction|
   "The structural feature of the trigger event shall be owned by or inherited
    by the context of the behavior containing the action. (The context of a
    behavior is either its owning block or itself if it is not owned by a block.
    See definition in the UML 2 standard.)"
   :operation-body
   "let event: ChangeStructuralFeatureEvent = ChangeStructuralFeatureEvent.allInstances()->any(e | e.base_ChangeEvent = self.base_AcceptEventAction.trigger->any(true).event) in self.base_AcceptEventAction._'context'->notEmpty() and self.base_AcceptEventAction._'context'.allFeatures()->includes(event.structuralFeature)")

(def-meta-constraint |4_can_access_structuralfeature| |AcceptChangeStructuralFeatureEventAction|
   "Visibility of the structural feature of the trigger event shall allow access
    to the object performing the action."
   :operation-body
   "let event: ChangeStructuralFeatureEvent = ChangeStructuralFeatureEvent.allInstances()->any(e | e.base_ChangeEvent = self.base_AcceptEventAction.trigger->any(true).event) in  if event.structuralFeature.visibility = UML::VisibilityKind::private then  self.base_AcceptEventAction._'context'.feature->includes(event.structuralFeature)   else if event.structuralFeature.visibility = UML::VisibilityKind::protected then  self.base_AcceptEventAction._'context'.allFeatures()->includes(event.structuralFeature)   else if event.structuralFeature.visibility = UML::VisibilityKind::_'package' then  let thePackage: UML::Package = event.structuralFeature.allNamespaces()->select(n | n.oclIsKindOf(UML::Package))->first().oclAsType(UML::Package) in   (not thePackage.oclIsUndefined()) and (   let index: Integer = event.structuralFeature.allNamespaces()->indexOf(thePackage) in   event.structuralFeature.allNamespaces()->subOrderedSet(1, index)   ->iterate(n; acc: Boolean=true |    acc and not (n.visibility=UML::VisibilityKind::private or n.visibility=UML::VisibilityKind::protected)) ) else  true endif endif endif")

(def-meta-constraint |5_uml_constraint_removed| |AcceptChangeStructuralFeatureEventAction|
   "The constraint under 11.3.2,  AcceptEventAction  in the UML 2 standard,
     [2] There are no output pins if the trigger events are only ChangeEvents,
     shall be removed for accept event actions that have AcceptChangeStructuralFeatureEventAction
    applied."
   :operation-body
   "-- cannot be expressed in OCL ")

(def-meta-assoc "SysML.E_extension_AcceptChangeStructuralFeatureEventAction_base_AcceptEventAction"
  :name |E_extension_AcceptChangeStructuralFeatureEventAction_base_AcceptEventAction|
  :metatype :extension
  :member-ends ((|AcceptChangeStructuralFeatureEventAction|
		 "base_AcceptEventAction")
		("SysML.E_extension_AcceptChangeStructuralFeatureEventAction_base_AcceptEventAction.extension_AcceptChangeStructuralFeatureEventAction"
		 "extension_AcceptChangeStructuralFeatureEventAction"))
  :owned-ends  (("SysML.E_extension_AcceptChangeStructuralFeatureEventAction_base_AcceptEventAction.extension_AcceptChangeStructuralFeatureEventAction"
		 "extension_AcceptChangeStructuralFeatureEventAction")))

(def-meta-assoc-end "SysML.E_extension_AcceptChangeStructuralFeatureEventAction_base_AcceptEventAction.extension_AcceptChangeStructuralFeatureEventAction"
    :type |AcceptChangeStructuralFeatureEventAction|
    :multiplicity (1 1)
    :association "SysML.E_extension_AcceptChangeStructuralFeatureEventAction_base_AcceptEventAction"
    :name "extension_AcceptChangeStructuralFeatureEventAction")

;;; =========================================================
;;; ====================== AddFlowPropertyValueOnNestedPortAction
;;; =========================================================
(def-meta-stereotype |AddFlowPropertyValueOnNestedPortAction|
   (:model :SYSML16 :superclasses (|ElementPropertyPath|) :extends (UML251:|AddStructuralFeatureValueAction|)
 :packages (|SysML| |PortsAndFlows|)
 :xmi-id "SysML.AddFlowPropertyValueOnNestedPortAction")
 "This enables values added to a flow property to propagate out through a
  specified behavioral port of an object executing the action, rather than
  all behavior ports exposing the flow property. It also enables values added
  to a flow property to propagate into objects. Values flowing out of an
  object are added to an out or inout flow property of the executing object.
  In this case, the applied stereotype specifies a (possibly nested) behavioral
  port at the end of a (possibly multi-level) path of behavioral ports from
  a block that supports the flow property. Values flowing into an object
  are added to an in or inout flow property of that object, specifying a
  (possibly nested) port of that object."
  ((|base_AddStructuralFeatureValueAction| :xmi-id "SysML.AddFlowPropertyValueOnNestedPortAction.base_AddStructuralFeatureValueAction"
    :range UML251:|AddStructuralFeatureValueAction| :multiplicity (1 1))
   (|onNestedPort| :xmi-id "SysML.AddFlowPropertyValueOnNestedPortAction.onNestedPort"
    :range UML251:|Port| :multiplicity (1 -1) :is-ordered-p T
    :documentation
     "Gives a series of ports that end in one supporting the flow property to
      which a value is being added. The ordering of ports is from a port of the
      object of the stereotyped action, through a port of each intermediate block
      that types the preceding port, ending in a port with a type that owns or
      inherits the flow property. The same port might appear more than once because
      a block can own a port with the same block as a type, or another block
      that has the same property." :redefined-property (|ElementPropertyPath|
							|propertyPath|))))

(def-meta-constraint |1_feature_flowproperty| |AddFlowPropertyValueOnNestedPortAction|
   "The structural feature referred by actions with this stereotype applied
    must have FlowProperty applied."
   :operation-body
   "FlowProperty.allInstances().base_Property->includes(self.base_AddStructuralFeatureValueAction.structuralFeature)")

(def-meta-constraint |2_onnestedport_first_owned_by_target_type| |AddFlowPropertyValueOnNestedPortAction|
   "The port at the first position in the onNestedPort list shall be owned
    by the block that types the object pin of the stereotyped action, or one
    of that block s generalizations."
   :operation-body
   "self.base_AddStructuralFeatureValueAction.object.type.oclAsType(UML::Classifier)->allFeatures()->includes(self.onNestedPort->first()))")

(def-meta-constraint |3_path_consistency| |AddFlowPropertyValueOnNestedPortAction|
   "The port at each successive position of the onNestedPort attribute, following
    the first position, shall be owned by the Block that types the port at
    the immediately preceding position, or a generalization of that Block"
   :operation-body
   "self.onNestedPort->size() >1 implies self.propertyPath->subSequence(2, self.onNestedPort->size())->forAll(p | let pp: UML::Property = self.onNestedPort->at(self.onNestedPort->indexOf(p)-1) in let owners: Set(UML::Classifier) = pp.type.oclAsType(UML::Classifier)->including(pp.type.oclAsType(UML::Classifier)) in owners->includes(p.owner))")

(def-meta-constraint |4_onnestedport_last_type_owns_invocation_onPort| |AddFlowPropertyValueOnNestedPortAction|
   "The type of the port at the last position of the onNestedPort list shall
    own or inherit the flow property that is the structural feature of the
    stereotyped action"
   :operation-body
   "self.onNestedPort->last().type.oclAsType(UML::Classifier).allFeatures()->includes(self.base_AddStructuralFeatureValueAction.structuralFeature)")

(def-meta-assoc "SysML."
  :name ||
  :metatype :extension
  :member-ends ((|AddFlowPropertyValueOnNestedPortAction|
		 "base_AddStructuralFeatureValueAction")
		("SysML..extension_AddFlowPropertyValueOnNestedPortAction"
		 "extension_AddFlowPropertyValueOnNestedPortAction"))
  :owned-ends  (("SysML..extension_AddFlowPropertyValueOnNestedPortAction"
		 "extension_AddFlowPropertyValueOnNestedPortAction")))

(def-meta-assoc-end "SysML..extension_AddFlowPropertyValueOnNestedPortAction"
    :type |AddFlowPropertyValueOnNestedPortAction|
    :multiplicity (1 1)
    :association "SysML."
    :name "extension_AddFlowPropertyValueOnNestedPortAction"
    :aggregation :COMPOSITE)

;;; =========================================================
;;; ====================== AdjunctProperty
;;; =========================================================
(def-meta-stereotype |AdjunctProperty|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Property|)
 :packages (|SysML| |Blocks|)
 :xmi-id "SysML.AdjunctProperty")
 "The AdjunctProperty stereotype can be applied to properties to constrain
  their values to the values of connectors typed by association blocks, call
  actions, object nodes, variables, parameters, interaction uses, and submachine
  states. The values of connectors typed by association blocks are the instances
  of the association block typing a connector in the block having the stereotyped
  property. The values of call actions are the executions of behaviors invoked
  by the behavior having the call action and the stereotyped property (see
  11.3.1.1 , Notation for more about this use of the stereotype). The values
  of object nodes are the values of tokens in the object nodes of the behavior
  having the stereotyped property (see 11.3.1.4.1 , Notation for more about
  this use of the stereotype). The values of variables are those assigned
  by executions of activities that have the stereotyped property. The values
  of parameters are those assigned by executions of behaviors that have the
  stereotyped property. The keyword  adjunct  before a property name indicates
  the property is stereotyped by AdjunctProperty."
  ((|base_Property| :xmi-id "SysML.AdjunctProperty.base_Property"
    :range UML251:|Property| :multiplicity (1 1))
   (|principal| :xmi-id "SysML.AdjunctProperty.principal"
    :range UML251:|Element| :multiplicity (1 1)
    :documentation
     "Gives the element that determines the values of the property.")))

(def-meta-constraint |10_multiplicity_same_or_less_restrictive| |AdjunctProperty|
   "Properties with AdjunctProperty applied that have a Variable or Parameter
    as principal shall have a lower multiplicity the same as or lower than
    the lower multiplicity of their principal, and an upper multiplicity the
    same as or higher than the upper multiplicity of their principal"
   :operation-body
   " self.principal.oclIsKindOf(UML::MultiplicityElement) implies self.base_Property.lower <=  self.principal.oclAsType(UML::MultiplicityElement).lower and self.base_Property.upper >= self.principal.oclAsType(UML::MultiplicityElement).upper")

(def-meta-constraint |11_submachine_and_interactionuse_composite_and _compatible_type| |AdjunctProperty|
   "Properties with AdjunctProperty applied that have an InteractionUse or
    submachine State as principal shall be composite and be typed by the interaction
    or state machine invoked by the interaction use or submachine State or
    one of their generalizations."
   :operation-body
   " self.principal.oclIsKindOf(UML::InteractionUse) or self.principal.oclIsKindOf(UML::State) implies let behavior: UML::Behavior =  if self.principal.oclIsKindOf(UML::InteractionUse) then   self.principal.oclAsType(UML::InteractionUse).refersTo  else  self.principal.oclAsType(UML::State).submachine  endif in if behavior.oclIsUndefined() then  self.base_Property.type->isEmpty() else  self.base_Property.type->notEmpty() and behavior->closure(generalization)->including(behavior)->includes(self.base_Property.type) endif")

(def-meta-constraint |1_principal_kind| |AdjunctProperty|
   "The principal of an applied AdjunctProperty shall be a Connector, CallAction,
    ObjectNode, Variable, Parameter, submachine State, or InteractionUse."
   :operation-body
   "self.principal.oclIsKindOf(UML::Connector) or self.principal.oclIsKindOf(UML::CallAction) or self.principal.oclIsKindOf(UML::ObjectNode) or self.principal.oclIsKindOf(UML::Variable) or self.principal.oclIsKindOf(UML::Parameter) or self.principal.oclIsKindOf(UML::InteractionUse) or (self.principal.oclIsKindOf(UML::State) and self.principal.oclAsType(UML::State).isSubmachineState)")

(def-meta-constraint |2_same_name| |AdjunctProperty|
   "Properties to which AdjunctProperty applied shall have the same name as
    the principal, if the principal is a NamedElement."
   :operation-body
   " self.principal.oclIsKindOf(UML::NamedElement) implies self.base_Property.name = self.principal.oclAsType(UML::NamedElement).name")

(def-meta-constraint |3_connector_and_callaction_composite| |AdjunctProperty|
   "Properties with AdjunctProperty applied that have a Connector or CallAction
    as principal shall be composite."
   :operation-body
   " self.principal.oclIsKindOf(UML::Connector) or self.principal.oclIsKindOf(UML::CallAction) implies self.base_Property.isComposite()")

(def-meta-constraint |4_same_owner| |AdjunctProperty|
   "Properties with AdjunctProperty applied shall be owned by an element that
    owns the principal, at least indirectly, or one of that element's specializations."
   :operation-body
   "let owners: Set(UML::Element) = self.principal->closure(owner) in let specializations: Set(UML::Element) = UML::Classifier.allInstances()->select(c | c->closure(general)->intersection(owners)->notEmpty()) in owners->union(specializations)->includes(self.base_Property.owner)")

(def-meta-constraint |5_compatible_type| |AdjunctProperty|
   "Properties with AdjunctProperty applied that have as principal a Connector,
    ObjectNode, Variable, or Parameter shall have the same type as the principal
    or one of that type s generalizations."
   :operation-body
   "  self.principal.oclIsKindOf(UML::Connector) or self.principal.oclIsKindOf(UML::Variable) or self.principal.oclIsKindOf(UML::Parameter) implies  let principal_type: UML::Classifier = if self.principal.oclIsKindOf(UML::Connector) then self.principal.oclAsType(UML::Connector).type else self.principal.oclAsType(UML::TypedElement).type.oclAsType(UML::Classifier) endif in principal_type->closure(general)->including(principal_type)->includes(self.base_Property.type)")

(def-meta-constraint |6_connector_principal_associationblock| |AdjunctProperty|
   "Connectors that are principals of an applied AdjunctProperty shall have
    association blocks as types"
   :operation-body
   " self.principal.oclIsKindOf(UML::Connector) implies let type: UML::Association = self.principal.oclAsType(UML::Connector).type in Block.allInstances().base_Class->includes(type)")

(def-meta-constraint |7_adjunctproperty_connectorproperty_consistent| |AdjunctProperty|
   "AdjunctProperty and ConnectorProperty applied to the same property shall
    have the same values for principal and connector, respectively."
   :operation-body
   " AdjunctProperty.allInstances()->forAll(ap | let cp: ConnectorProperty = ConnectorProperty.allInstances()->any(base_Property=ap.base_Property) in (not cp.oclIsUndefined()) implies cp.connector = ap.principal) ")

(def-meta-constraint |8_callAction_composite_and_consitent_type| |AdjunctProperty|
   "Properties with AdjunctProperty applied that have a CallAction as principal
    shall be composite and be typed by the behavior invoked by the call action
    or one of that behavior s generalizations (for CallOperationActions, this
    shall generalize all behaviors that might be dispatched), and an upper
    multiplicity of one if the CallAction invokes a nonreentrant behavior."
   :operation-body
   "self.principal.oclIsKindOf(UML::CallAction) implies if self.principal.oclIsKindOf(UML::CallOperationAction) then  let called: Set(UML::Behavior) = self.principal.oclAsType(UML::CallOperationAction).operation.method in  if called->isEmpty() then   self.base_Property.type->isEmpty()  else    self.base_Property.type->notEmpty() and called->forAll(b | b.general->including(b)->includes(self.base_Property.type))  endif else  let called: UML::Behavior = if self.principal.oclIsKindOf(UML::CallBehaviorAction) then   self.principal.oclAsType(UML::CallBehaviorAction).behavior  else   self.principal.oclAsType(UML::StartObjectBehaviorAction).behavior() endif in  if called.oclIsUndefined() then   self.base_Property.type.oclIsUndefined()  else    let behaviors: Set(UML::Behavior) = called->closure(generalization).oclAsType(UML::Behavior)->including(called)->asSet() in    self.base_Property.type->notEmpty() and behaviors->includes(self.base_Property.type)  endif endif")

(def-meta-constraint |9_objectnode_multiplicity| |AdjunctProperty|
   "Properties with AdjunctProperty applied that have an ObjectNode as principal
    shall have a lower multiplicity of zero and an upper multiplicity the same
    as or higher than the upperBound of the ObjectNode."
   :operation-body
   "self.principal.oclIsKindOf(UML::ObjectNode) implies self.base_Property.lower = 0 and self.base_Property.upper >= self.principal.oclAsType(UML::ObjectNode).upperBound.unlimitedValue()")

(def-meta-assoc "SysML.A_adjunctProperty_principal"
  :name |A_adjunctProperty_principal|
  :metatype :association
  :member-ends ((|AdjunctProperty| "principal")
		("SysML.A_adjunctProperty_principal.adjunctProperty"
		 "adjunctProperty"))
  :owned-ends  (("SysML.A_adjunctProperty_principal.adjunctProperty"
		 "adjunctProperty")))

(def-meta-assoc-end "SysML.A_adjunctProperty_principal.adjunctProperty"
    :type |AdjunctProperty|
    :multiplicity (0 -1)
    :association "SysML.A_adjunctProperty_principal"
    :name "adjunctProperty")

(def-meta-assoc "SysML.E_extension_AdjunctProperty_base_Property"
  :name |E_extension_AdjunctProperty_base_Property|
  :metatype :extension
  :member-ends ((|AdjunctProperty| "base_Property")
		("SysML.E_extension_AdjunctProperty_base_Property.extension_AdjunctProperty"
		 "extension_AdjunctProperty"))
  :owned-ends  (("SysML.E_extension_AdjunctProperty_base_Property.extension_AdjunctProperty"
		 "extension_AdjunctProperty")))

(def-meta-assoc-end "SysML.E_extension_AdjunctProperty_base_Property.extension_AdjunctProperty"
    :type |AdjunctProperty|
    :multiplicity (1 1)
    :association "SysML.E_extension_AdjunctProperty_base_Property"
    :name "extension_AdjunctProperty")

;;; =========================================================
;;; ====================== Allocate
;;; =========================================================
(def-meta-stereotype |Allocate|
   (:model :SYSML16 :superclasses (|DirectedRelationshipPropertyPath|) :extends (UML251:|Abstraction|)
 :packages (|SysML| |Allocations|)
 :xmi-id "SysML.Allocate")
 "Allocate is a dependency based on UML::Abstraction. It is a mechanism for
  associating elements of different types, or in different hierarchies, at
  an abstract level. Allocate is used for assessing user model consistency
  and directing future design activity. It is expected that an  allocate
   relationship between model elements is a precursor to a more concrete
  relationship between the elements, their properties, operations, attributes,
  or sub-classes.  Allocate is a stereotype of a UML4SysML::Abstraction that
  is permissible between any two NamedElements. It is depicted as a dependency
  with the  allocate  keyword attached to it. Allocate is directional in
  that one NamedElement is the  from  end (no arrow), and one NamedElement
  is the  to  end (the end with the arrow). The Allocate stereotype specializes
  DirectedRelationshipPropertyPath to enable allocations to identify their
  sources and targets by a multi-level path of accessible properties from
  context blocks for the sources and targets.  The following paragraphs describe
  types of allocation that are typical in systems engineering.  Behavior
  allocation relates to the systems engineering concept segregating form
  from function. This concept requires independent models of  function  (behavior)
  and  form  (structure), and a separate, deliberate mapping between elements
  in each of these models. It is acknowledged that this concept does not
  support a standard object-oriented paradigm, not is this always even desirable.
  Experience on large scale, complex systems engineering problems have proven,
  however, that segregation of form and function is a valuable approach.
  In addition, behavior allocation may also include the allocation of Behaviors
  to BehavioralFeatures of Blocks (e.g., Operations).  Flow allocation specifically
  maps flows in functional system representations to flows in structural
  system representations.  Flow between activities can either be control
  or object flow. The figures in the Usage Examples show concrete syntax
  for how object flow is mapped to connectors on Activity Diagrams. Allocation
  of control flow is not specifically addressed in SysML, but may be represented
  by relating an ItemFlow to the Control Flow using the UML relationship
  InformationalFlow.realizingActivityEdge.  Note that allocation of ObjectFlow
  to Connector is an Allocation of Usage, and does NOT imply any relation
  between any defining Blocks of ObjectFlows and any defining associations
  of connectors.  The figures in the Usage Examples illustrate an available
  mechanism for relating the objectNode from an activity diagram to the ItemFlow
  on an internal block diagram. ItemFlow is discussed in  clause 9 ,  Ports
  and Flows.   Pin to Port allocation is not addressed in this release of
  SysML.  Structure allocation is associated with the concept of separate
   logical  and  physical  representations of a system. It is often necessary
  to construct separate depictions of a system and define mappings between
  them. For example, a complete system hierarchy may be built and maintained
  at an abstract level. In turn, it shall then be mapped to another complete
  assembly hierarchy at a more concrete level. The set of models supporting
  complex systems development may include many of these levels of abstraction.
  This International Standard will not define  logical  or  physical  in
  this context, except to acknowledge the stated need to capture allocation
  relationships between separate system representations."
  ((|base_Abstraction| :xmi-id "SysML.Allocate.base_Abstraction"
    :range UML251:|Abstraction| :multiplicity (1 1) :redefined-property (|DirectedRelationshipPropertyPath|
									 |base_DirectedRelationship|))))

(def-meta-constraint |2_binary| |Allocate|
   "A single  allocate  dependency shall have only one client (from) and one
    supplier (to)."
   :operation-body
   "self.base_Abstraction.source->size() = 1 and self.base_Abstraction.target->size() = 1")

(def-meta-operation |getAllocatedFrom| |Allocate|
   ""
   :operation-body
   "getAllocatedFrom = Allocate.allInstances()->select(to = ref).from"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name '|ref| :parameter-type 'UML251:|NamedElement|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name NIL :parameter-type 'UML251:|NamedElement|
			:parameter-return-p T))
)

(def-meta-operation |getAllocatedTo| |Allocate|
   ""
   :operation-body
   "getAllocatedFrom = Allocate.allInstances()->select(from = ref).to"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name '|ref| :parameter-type 'UML251:|NamedElement|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name NIL :parameter-type 'UML251:|NamedElement|
			:parameter-return-p T))
)

(def-meta-assoc "SysML.E_extension_Allocate_base_Abstraction"
  :name |E_extension_Allocate_base_Abstraction|
  :metatype :extension
  :member-ends (("SysML.E_extension_Allocate_base_Abstraction.extension_Allocate"
		 "extension_Allocate")
		(|Allocate| "base_Abstraction"))
  :owned-ends  (("SysML.E_extension_Allocate_base_Abstraction.extension_Allocate"
		 "extension_Allocate")))

(def-meta-assoc-end "SysML.E_extension_Allocate_base_Abstraction.extension_Allocate"
    :type |Allocate|
    :multiplicity (1 1)
    :association "SysML.E_extension_Allocate_base_Abstraction"
    :name "extension_Allocate")

;;; =========================================================
;;; ====================== AllocateActivityPartition
;;; =========================================================
(def-meta-stereotype |AllocateActivityPartition|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|ActivityPartition|)
 :packages (|SysML| |Allocations|)
 :xmi-id "SysML.AllocateActivityPartition")
 "AllocateActivityPartition is used to depict an  allocate  relationship
  on an Activity diagram. The AllocateActivityPartition is a standard UML::ActivityPartition,
  with modified constraints as stated below."
  ((|base_ActivityPartition| :xmi-id "SysML.AllocateActivityPartition.base_ActivityPartition"
    :range UML251:|ActivityPartition| :multiplicity (1 1))))

(def-meta-constraint |1_actions_on_client_ends| |AllocateActivityPartition|
   "An Action appearing in an  AllocateActivityPartition  shall be the /client
    (from) end of an  allocate  dependency. The element that represents the
     AllocateActivityPartition  shall be the /supplier (to) end of the same
     allocate  dependency. In the  AllocateActivityPartition  name field, Properties
    are designated by the use of a fully qualified name (including colon, e.g.,
     part_name:Block_Name ), and Classifiers are designated by a simple name
    (no colons, e.g.,  Block_Name )."
   :operation-body
   "self.base_ActivityPartition.node->select(n|n.oclIsKindOf(UML::Action)) ->forAll(a | let allocs: Set(UML::Abstraction) = Allocate.allInstances().base_Abstraction->select(x |x.client->includes(a))->asSet() in  allocs->exists(x | x.supplier->includes(self.base_ActivityPartition.represents)))")

(def-meta-constraint |2_not_uml_semantics| |AllocateActivityPartition|
   "The  AllocateActivityPartition  shall maintain the constraints, but not
    the semantics, of the UML::ActivityPartition. Classifiers or Properties
    represented by an  AllocateActivityPartition  do not have any direct responsibility
    for invoking behavior depicted within the partition boundaries. To depict
    this kind of direct responsibility, the modeler is directed to the UML
    2 standard, sub clause 12.3.10,  ActivityPartition,  Semantics topic."
   :operation-body
   "-- Cannot be expressed in OCL")

(def-meta-assoc "SysML.E_extension_AllocateActivityPartition_base_ActivityPartition"
  :name |E_extension_AllocateActivityPartition_base_ActivityPartition|
  :metatype :extension
  :member-ends (("SysML.E_extension_AllocateActivityPartition_base_ActivityPartition.extension_AllocateActivityPartition"
		 "extension_AllocateActivityPartition")
		(|AllocateActivityPartition| "base_ActivityPartition"))
  :owned-ends  (("SysML.E_extension_AllocateActivityPartition_base_ActivityPartition.extension_AllocateActivityPartition"
		 "extension_AllocateActivityPartition")))

(def-meta-assoc-end "SysML.E_extension_AllocateActivityPartition_base_ActivityPartition.extension_AllocateActivityPartition"
    :type |AllocateActivityPartition|
    :multiplicity (1 1)
    :association "SysML.E_extension_AllocateActivityPartition_base_ActivityPartition"
    :name "extension_AllocateActivityPartition")

;;; =========================================================
;;; ====================== BindingConnector
;;; =========================================================
(def-meta-stereotype |BindingConnector|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Connector|)
 :packages (|SysML| |Blocks|)
 :xmi-id "SysML.BindingConnector")
 "A Binding Connector is a connector which specifies that the properties
  at both ends of the connector have equal values. If the properties at the
  ends of a binding connector are typed by a ValueType, the connector specifies
  that the instances of the properties shall hold equal values, recursively
  through any nested properties within the connected properties. If the properties
  at the ends of a binding connector are typed by a Block, the connector
  specifies that the instances of the properties shall refer to the same
  block instance. As with any connector owned by a SysML Block, the ends
  of a binding connector may be nested within a multi-level path of properties
  accessible from the owning block. The NestedConnectorEnd stereotype is
  used to represent such nested ends just as for nested ends of other SysML
  connectors."
  ((|base_Connector| :xmi-id "SysML.BindingConnector.base_Connector"
    :range UML251:|Connector| :multiplicity (1 1))))

(def-meta-constraint |1_compatible_types| |BindingConnector|
   "The two ends of a binding connector shall have either the same type or
    types that are compatible so that equality of their values can be defined."
   :operation-body
   "self.base_Connector.end->at(1).role.type.conformsTo(self.base_Connector.end->at(2).role.type) or self.base_Connector.end->at(2).role.type.conformsTo(self.base_Connector.end->at(1).role.type)")

(def-meta-assoc "SysML.E_extension_BindingConnector_base_Connector"
  :name |E_extension_BindingConnector_base_Connector|
  :metatype :extension
  :member-ends (("SysML.E_extension_BindingConnector_base_Connector.extension_BindingConnector"
		 "extension_BindingConnector")
		(|BindingConnector| "base_Connector"))
  :owned-ends  (("SysML.E_extension_BindingConnector_base_Connector.extension_BindingConnector"
		 "extension_BindingConnector")))

(def-meta-assoc-end "SysML.E_extension_BindingConnector_base_Connector.extension_BindingConnector"
    :type |BindingConnector|
    :multiplicity (1 1)
    :association "SysML.E_extension_BindingConnector_base_Connector"
    :name "extension_BindingConnector")

;;; =========================================================
;;; ====================== Block
;;; =========================================================
(def-meta-stereotype |Block|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Class|)
 :packages (|SysML| |Blocks|)
 :xmi-id "SysML.Block")
 "A Block is a modular unit that describes the structure of a system or element.
  It may include both structural and behavioral features, such as properties
  and operations, that represent the state of the system and behavior that
  the system may exhibit. Some of these properties may hold parts of a system,
  which can also be described by blocks that type the properties. Properties
  without types do not restrict the instances that can be values of the properties,
  as if they had the most general type possible. A block may include a structure
  of connectors between its properties to indicate how its parts or other
  properties relate to one another.  SysML blocks provide a general-purpose
  capability to describe the architecture of a system. They provide the ability
  to represent a system hierarchy, in which a system at one level is composed
  of systems at a more basic level. They can describe not only the connectivity
  relationships between the systems at any level, but also quantitative values
  or other information about a system.  SysML does not restrict the kind
  of system or system element that may be described by a block. Any reusable
  form of description that may be applied to a system or a set of system
  characteristics may be described by a block. Such reusable descriptions,
  for example, may be applied to purely conceptual aspects of a system design,
  such as relationships that hold between parts or properties of a system.
   Connectors owned by SysML blocks may be used to define relationships between
  parts or other properties of the same containing block. Connectors can
  be typed by associations, which can specify more detail about the links
  between parts or other properties of a system, along with the types of
  the connected properties. Associations can also be blocks, and when used
  to type connectors give relationships their own interconnected parts and
  other properties. Connectors without types do not restrict the way the
  connected properties are linked together, as if they had the most general
  type possible. Connectors have both structural and behavioral functions,
  which can be used together or separately. Connectors as structure specify
  links between parts or other properties of a system. Connectors as behavior
  specify communication and item flow between parts or other properties.
  Connected properties can be linked without specifying communication and
  item flow, or can specify communication and item flow without specifying
  a particular kind of link, or both.  SysML excludes variations of associations
  in UML in which navigable ends can be owned directly by the association.
  In SysML, navigation is equivalent to a named property owned directly by
  a block. The only form of an association end that SysML allows an association
  to own directly is an unnamed end used to carry an inverse multiplicity
  of a reference property. This unnamed end provides a metamodel element
  to record an inverse multiplicity, to cover the specific case of a unidirectional
  reference that defines no named property for navigation in the inverse
  direction. SysML enforces its equivalence of navigation and ownership by
  means of constraints that the block stereotype enforces on the existing
  UML metamodel.  SysML establishes four basic classifications of properties
  belonging to a SysML Block or ValueType. A property typed by a SysML Block
  that has composite aggregation is classified as a part property, except
  for the special case of a constraint property. Constraint properties are
  further defined in clause 10 . A port is another category of property,
  as further defined in  Section 9  . A property typed by a Block that does
  not have composite aggregation is classified as a reference property. A
  property typed by a SysML ValueType is classified as a value property,
  and always has composite aggregation. Part, reference, value, and constraint
  properties may be shown in block definition compartments with the labels
   parts,   references,   values,  and  constraints  respectively. Properties
  of any type may be shown in a  properties  compartment or in additional
  compartments with user-defined labels.  On a block definition diagram,
  a part property is shown by a black diamond symbol on an association. As
  in UML, an instance of a block may be included in at most one instance
  of a block at a time, though possibly as a value of more than one part
  property of the containing block. A part property holds instances that
  belong to a larger whole. Typically, a part- whole relationship means that
  certain operations that apply to the whole also apply to each of the parts.
  For example, if a whole represents a physical object, a change in position
  of the whole could also change the position of each of the parts. A property
  of the whole such as its mass could also be implied by its parts. Operations
  and relationships that apply to parts typically apply transitively across
  all parts of these parts, through any number of levels. A particular application
  domain may establish its own interpretation of part-whole relationships
  across the blocks defined in a particular model, including the definition
  of operations that apply to the parts along with the whole. For software
  objects, a typical interpretation is that delete, copy, and move operations
  apply across all parts of a composite object.  SysML also supports properties
  with shared aggregation, as shown by a white diamond symbol on an association.
  Like UML, SysML defines no specific semantics or constraints for properties
  with shared aggregation, but particular models or tools may interpret them
  in specific ways.  In addition to the form of default value specifications
  that SysML supports on properties of a block (with an optional  =  <value-specification>
  string following the rest of a property definition), SysML supports an
  additional form of value specification for properties using initialValue
  compartments on an internal block diagram (see Internal Block Diagram on
  page 46). An entire tree of context-specific values can be specified on
  a containing block to carry values of nested properties as shown on an
  internal block diagram.  Context-specific values are represented in the
  SysML metamodel by means of the InstanceValue subtype of UML ValueSpecification.
  Selected slots of UML instance specifications referenced by these instance
  values carry the individual values shown in initialValue compartments.
   If a property belonging to a block has a specification of initial values
  for any of the properties belonging to its type, then the default value
  of that property shall be a UML InstanceValue element. This element shall
  reference a UML InstanceSpecification element created to hold the initial
  values of the individual properties within its usage context.  Selected
  slots of the referenced instance specification shall contain value specifications
  for the individual property values specified in a corresponding initialValues
  compartment. If a value of a property is shown by a nested property box
  with its own initialValues compartment, then the slot of the instance specification
  for the containing property shall hold a new InstanceValue element. Selected
  slots of the instance specification referenced by this value shall contain
  value specifications for any nested initial values, recursively through
  any number of levels of nesting. A tree of instance values referencing
  instance specifications, each of which may in turn hold slots carrying
  instance values, shall exist until self- contained value specifications
  are reached at the leaf level."
  ((|base_Class| :xmi-id "SysML.Block.base_Class"
    :range UML251:|Class| :multiplicity (1 1))
   (|isEncapsulated| :xmi-id "SysML.Block.isEncapsulated"
    :range |Boolean| :multiplicity (0 1)
    :documentation
     "If true, then the block is treated as a black box; a part typed by this
      black box can only be connected via its ports or directly to its outer
      boundary. If false, or if a value is not present, then connections can
      be established to elements of its internal structure via deep-nested connector
      ends.")))

(def-meta-constraint |1_associations_binary| |Block|
   "For an association in which both ends are typed by blocks, the number of
    ends shall be exactly two"
   :operation-body
   "UML::Association.allInstances()->select(a| a.memberEnd->forAll(e| e.type->notEmpty() and Block.allInstances().base_Class->includes(e.type)))->forAll(a | a.memberEnd->size()=2)")

(def-meta-constraint |2_connectors_binary| |Block|
   "The number of ends of a connector owned by a block shall be exactly two.
    (In SysML, a binding connector is not typed by an association, so this
    constraint is not implied entirely by the preceding constraint.)"
   :operation-body
   "self.base_Class.ownedConnector->forAll(c | c.end->size()=2 )")

(def-meta-constraint |5_uml_connector_constraint_removed| |Block|
   "The following constraint under 11.8,  Connector  in the UML 2 standard
    is removed by SysML:  The ConnectableElements attached as roles to each
    ConnectorEnd owned by a Connector must be roles of the Classifier that
    owned the Connector, or they must be ports of such roles"
   :operation-body
   "-- Cannot be expressed in OCL")

(def-meta-constraint |6_valueproperties_composite| |Block|
   "If a property owned by a SysML Block or SysML ValueType is typed by a SysML
    ValueType, then the aggregation attribute of the property shall be  composite."
   :operation-body
   "self.base_Class.ownedAttribute->select(a| ValueType.allInstances().base_DataType->includes(a.type))->forAll(a|a.isComposite())")

(def-meta-constraint |7_composition_acyclic| |Block|
   "Within an instance of a SysML Block, the values of any property with composite
    aggregation (aggregation = composite) shall not contain the block in any
    of its own properties that also have composite aggregation, or within any
    unbroken chain of properties that all have composite aggregation. (Within
    an instance of a SysML Block, the instances of properties with composite
    aggregation shall form an acyclic graph.)"
   :operation-body
   "self.base_Class->closure(part->select(p|p.type.oclIsKindOf(UML::Class)).type.oclAsType(UML::Class))->excludes(self.base_Class)")

(def-meta-constraint |8_specializations_are_blocks| |Block|
   "Any classifier that specializes a Block shall also have the Block stereotype
    or one of its specializations applied."
   :operation-body
   "UML::Classifier.allInstances()->select(c | c.general->includes(self.base_Class))->forAll(c | Block.allInstances()->includes(c))")

(def-meta-constraint |9_uml constraint_removed| |Block|
   "The following constraint under 11.8, ConnectorEnd  in the UML 2 standard
    is removed by SysML:  [3] The property held in self.partWithPort must not
    be a Port."
   :operation-body
   "-- cannot be expressed in OCL")

(def-meta-assoc "SysML.E_extension_Block_base_Class"
  :name |E_extension_Block_base_Class|
  :metatype :extension
  :member-ends (("SysML.E_extension_Block_base_Class.extension_Block"
		 "extension_Block")
		(|Block| "base_Class"))
  :owned-ends  (("SysML.E_extension_Block_base_Class.extension_Block"
		 "extension_Block")))

(def-meta-assoc-end "SysML.E_extension_Block_base_Class.extension_Block"
    :type |Block|
    :multiplicity (1 1)
    :association "SysML.E_extension_Block_base_Class"
    :name "extension_Block")

;;; =========================================================
;;; ====================== BoundReference
;;; =========================================================
(def-meta-stereotype |BoundReference|
   (:model :SYSML16 :superclasses (|EndPathMultiplicity|) :extends NIL
 :packages (|SysML| |Blocks|)
 :xmi-id "SysML.BoundReference")
 ""
  ((|bindingPath| :xmi-id "SysML.BoundReference.bindingPath"
    :range UML251:|Property| :multiplicity (1 -1) :is-ordered-p T :is-derived-p T
    :documentation
     "Gives the propertyPath of the NestedConnectorEnd applied, if any, to the
      boundEnd, appended to the role of the boundEnd.")
   (|boundEnd| :xmi-id "SysML.BoundReference.boundEnd"
    :range UML251:|ConnectorEnd| :multiplicity (1 1)
    :documentation
     "Gives a connector end of a binding connector opposite to the end linked
      to the stereotyped property, or linked to a property that generalizes the
      stereotyped one through redefinition.")))

(def-meta-constraint |1_bindingconnector_end| |BoundReference|
   "Properties to which BoundReference is applied shall be the role of a connector
    end of at least one binding connector, or generalized by such a property
    through redefinition"
   :operation-body
   "BindingConnector.allInstances().base_Connector.end.role->exists(r | r=self.base_Property or self.base_Property->closure(redefinedElement)->includes(r))")

(def-meta-constraint |2_opposite_bindingconnector_end| |BoundReference|
   "The value of boundEnd shall be a connector end of a binding connector,
    as identified in constraint 1, opposite the property, as identified in
    constraint 1."
   :operation-body
   "let opposite: UML::ConnectorEnd = BindingConnector.allInstances().base_Connector.end->any(e | e.role=self.base_Property or self.base_Property->closure(redefinedElement)->includes(e.role)) in self.boundEnd = opposite.owner.oclAsType(UML::Connector).end->any(e | e<>opposite)")

(def-meta-constraint |3_navigable| |BoundReference|
   "The role of boundEnd shall be a property accessible by navigation from
    instances of the block owning the property to which BoundReference is applied,
    but shall not be the property to which BoundReference is applied, or one
    that it is related to by redefinition."
   :operation-body
   "self.base_Property.association->notEmpty() and  self.boundEnd.definingEnd->notEmpty() and self.base_Property.association.navigableOwnedEnd->includes(self.boundEnd.definingEnd)")

(def-meta-constraint |4_propertypath_consistency| |BoundReference|
   "The last value of bindingPath shall be the role of boundEnd, and the other
    values shall be the propertyPath of the NestedConnectorEnd applied to boundEnd,
    if any."
   :operation-body
   "self.boundEnd = self.bindingPath->last() and  (let nce: NestedConnectorEnd = NestedConnectorEnd.allInstances()->any(n| n.base_ConnectorEnd=self.boundEnd) in nce->oclIsUndefined() or self.bindingPath->subSequence(1, self.bindingPath->size()-1) = nce.propertyPath)")

(def-meta-constraint |5_reference_or_valueproperty| |BoundReference|
   "Properties to which BoundReference is applied shall either be reference
    properties or value properties."
   :operation-body
   "ValueType.allInstances().base_DataType->includes(self.base_Property.type) or not self.base_Property.isComposite()")

(def-meta-constraint |6_ordered_nonunique| |BoundReference|
   "Properties with BoundReference applied that have an upper multiplicity
    greater than one shall be ordered and non-unique."
   :operation-body
   "self.base_Property.upper > 1 implies self.base_Property.isOrdered and not self.base_Property.isUnique")

(def-meta-constraint |7_cannot_redefine_boundreference| |BoundReference|
   "BoundReferences shall not be applied to properties that are related by
    redefinition to other properties with BoundReference applied."
   :operation-body
   "self.base_Property.redefinedElement->notEmpty() implies BoundReference.allInstances().base_Property->excludesAll(self.base_Property.redefinedElement)")

(def-meta-constraint |8_notbounded_to_itslef| |BoundReference|
   "The binding connector identified in constraint 1 shall not have the same
    property on both ends, or properties related by redefinition."
   :operation-body
   "let e1: UML::ConnectorEnd = self.boundEnd.owner.oclAsType(UML::Connector).end->at(1) in let e2: UML::ConnectorEnd = self.boundEnd.owner.oclAsType(UML::Connector).end->at(2) in e1.role <> e2.role and  (e1.role.oclIsKindOf(UML::Property) and e2.role.oclIsKindOf(UML::Property) implies e1.role.oclAsType(UML::Property).redefinedElement->excludes(e2.role) and e2.role.oclAsType(UML::Property).redefinedElement->excludes(e1.role))")

;;; =========================================================
;;; ====================== ChangeStructuralFeatureEvent
;;; =========================================================
(def-meta-stereotype |ChangeStructuralFeatureEvent|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|ChangeEvent|)
 :packages (|SysML| |PortsAndFlows|)
 :xmi-id "SysML.ChangeStructuralFeatureEvent")
 "A ChangeStructuralFeatureEvent models changes in values of structural features."
  ((|base_ChangeEvent| :xmi-id "SysML.ChangeStructuralFeatureEvent.base_ChangeEvent"
    :range UML251:|ChangeEvent| :multiplicity (1 1))
   (|structuralFeature| :xmi-id "SysML.ChangeStructuralFeatureEvent.structuralFeature"
    :range UML251:|StructuralFeature| :multiplicity (1 1)
    :documentation
     "he event models occurrences of changes to values of this structural feature.")))

(def-meta-constraint |1_not_static| |ChangeStructuralFeatureEvent|
   "The structural feature shall not be static"
   :operation-body
   "not self.structuralFeature.isStatic")

(def-meta-constraint |2_one_featuringclassifier| |ChangeStructuralFeatureEvent|
   "The structural feature shall have exactly one featuringClassifier"
   :operation-body
   "self.structuralFeature.featuringClassifier->size()=1")

(def-meta-assoc "SysML.A_changeStructuralFeatureEvent_structuralFeature"
  :name |A_changeStructuralFeatureEvent_structuralFeature|
  :metatype :association
  :member-ends (("SysML.A_changeStructuralFeatureEvent_structuralFeature.changeStructuralFeatureEvent"
		 "changeStructuralFeatureEvent")
		(|ChangeStructuralFeatureEvent| "structuralFeature"))
  :owned-ends  (("SysML.A_changeStructuralFeatureEvent_structuralFeature.changeStructuralFeatureEvent"
		 "changeStructuralFeatureEvent")))

(def-meta-assoc-end "SysML.A_changeStructuralFeatureEvent_structuralFeature.changeStructuralFeatureEvent"
    :type |ChangeStructuralFeatureEvent|
    :multiplicity (0 -1)
    :association "SysML.A_changeStructuralFeatureEvent_structuralFeature"
    :name "changeStructuralFeatureEvent")

(def-meta-assoc "SysML.E_extension_ChangeStructuralFeatureEvent_base_ChangeEvent"
  :name |E_extension_ChangeStructuralFeatureEvent_base_ChangeEvent|
  :metatype :extension
  :member-ends ((|ChangeStructuralFeatureEvent| "base_ChangeEvent")
		("SysML.E_extension_ChangeStructuralFeatureEvent_base_ChangeEvent.extension_ChangeStructuralFeatureEvent"
		 "extension_ChangeStructuralFeatureEvent"))
  :owned-ends  (("SysML.E_extension_ChangeStructuralFeatureEvent_base_ChangeEvent.extension_ChangeStructuralFeatureEvent"
		 "extension_ChangeStructuralFeatureEvent")))

(def-meta-assoc-end "SysML.E_extension_ChangeStructuralFeatureEvent_base_ChangeEvent.extension_ChangeStructuralFeatureEvent"
    :type |ChangeStructuralFeatureEvent|
    :multiplicity (1 1)
    :association "SysML.E_extension_ChangeStructuralFeatureEvent_base_ChangeEvent"
    :name "extension_ChangeStructuralFeatureEvent")

;;; =========================================================
;;; ====================== ClassifierBehaviorProperty
;;; =========================================================
(def-meta-stereotype |ClassifierBehaviorProperty|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Property|)
 :packages (|SysML| |Blocks|)
 :xmi-id "SysML.ClassifierBehaviorProperty")
 "The ClassifierBehaviorProperty stereotype can be applied to properties
  to constrain their values to be the executions of classifier behaviors.
  The value of properties with ClassifierBehaviorProperty applied are the
  executions of classifier behaviors invoked by instantiation of the block
  that owns the stereotyped property or one of its specializations."
  ((|base_Property| :xmi-id "SysML.ClassifierBehaviorProperty.base_Property"
    :range UML251:|Property| :multiplicity (1 1))))

(def-meta-constraint |1_owner_classifierbehavior| |ClassifierBehaviorProperty|
   "ClassifierBehaviorProperty shall only be applied to properties owned (not
    inherited) by blocks that have classifier behaviors."
   :operation-body
   "Block.allInstances().base_Class->exists(c | c.ownedAttribute->includes(self.base_Property) and c.classifierBehavior->notEmpty())")

(def-meta-constraint |2_composite| |ClassifierBehaviorProperty|
   "Properties to which ClassifierBehaviorProperty is applied shall be composite"
   :operation-body
   "self.base_Property.isComposite")

(def-meta-constraint |3_typed_by_classifierbehavior| |ClassifierBehaviorProperty|
   "Properties to which ClassifierBehaviorProperty applied shall be typed by
    the classifier behavior of their owning block or a generalization of the
    classifier behavior."
   :operation-body
   "let clBehavior: UML::Behavior = self.base_Property.owner.oclAsType(UML::Class).classifierBehavior in self.base_Property.type->notEmpty() and clBehavior->closure(general)->including(clBehavior)->includes(self.base_Property.type)")

(def-meta-assoc "SysML.E_extension_ClassifierBehaviorProperty_base_Property"
  :name |E_extension_ClassifierBehaviorProperty_base_Property|
  :metatype :extension
  :member-ends ((|ClassifierBehaviorProperty| "base_Property")
		("SysML.E_extension_ClassifierBehaviorProperty_base_Property.extension_ClassifierBehaviorProperty"
		 "extension_ClassifierBehaviorProperty"))
  :owned-ends  (("SysML.E_extension_ClassifierBehaviorProperty_base_Property.extension_ClassifierBehaviorProperty"
		 "extension_ClassifierBehaviorProperty")))

(def-meta-assoc-end "SysML.E_extension_ClassifierBehaviorProperty_base_Property.extension_ClassifierBehaviorProperty"
    :type |ClassifierBehaviorProperty|
    :multiplicity (1 1)
    :association "SysML.E_extension_ClassifierBehaviorProperty_base_Property"
    :name "extension_ClassifierBehaviorProperty")

;;; =========================================================
;;; ====================== Conform
;;; =========================================================
(def-meta-stereotype |Conform|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Generalization|)
 :packages (|SysML| |ModelElements|)
 :xmi-id "SysML.Conform")
 "A Conform relationship is a dependency between a view and a viewpoint.
  The view conforms to the specified rules and conventions detailed in the
  viewpoint. Conform is a specialization of the UML dependency, and as with
  other dependencies the arrow direction points from the (client/source)
  to the (supplier/target)."
  ((|base_Generalization| :xmi-id "SysML.Conform.base_Generalization"
    :range UML251:|Generalization| :multiplicity (1 1))))

(def-meta-constraint |1_general_is_viewpoint| |Conform|
   "The general classifier shall be an element stereotyped by Viewpoint"
   :operation-body
   "Viewpoint.allInstances()->exists(v | v.base_Class = self.base_Generalization.general)")

(def-meta-constraint |2_specific_is_view| |Conform|
   "The specific classifier shall be an element that is stereotyped by View"
   :operation-body
   "View.allInstances()->exists(v | v.base_Class = self.base_Generalization.specific)")

(def-meta-assoc "SysML.E_extension_Conform_base_Generalization"
  :name |E_extension_Conform_base_Generalization|
  :metatype :extension
  :member-ends ((|Conform| "base_Generalization")
		("SysML.E_extension_Conform_base_Generalization.extension_Conform"
		 "extension_Conform"))
  :owned-ends  (("SysML.E_extension_Conform_base_Generalization.extension_Conform"
		 "extension_Conform")))

(def-meta-assoc-end "SysML.E_extension_Conform_base_Generalization.extension_Conform"
    :type |Conform|
    :multiplicity (1 1)
    :association "SysML.E_extension_Conform_base_Generalization"
    :name "extension_Conform")

;;; =========================================================
;;; ====================== ConnectorProperty
;;; =========================================================
(def-meta-stereotype |ConnectorProperty|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Property|)
 :packages (|SysML| |Blocks|)
 :xmi-id "SysML.ConnectorProperty")
 "Connectors can be typed by association classes that are stereotyped by
  Block (association blocks, see ParticipantProperty on page 60). These connectors
  specify instances of the association block created within the instances
  of the block that owns the connector. The values of a connector property
  are instances of the association block created due to the connector referred
  to by the connector property.  A connector property can optionally be shown
  in an internal block diagram with a dotted line from the connector line
  to a rectangle notating the connector property. The keyword  connector
   before a property name indicates the property is stereotyped by ConnectorProperty."
  ((|base_Property| :xmi-id "SysML.ConnectorProperty.base_Property"
    :range UML251:|Property| :multiplicity (1 1))
   (|connector| :xmi-id "SysML.ConnectorProperty.connector"
    :range UML251:|Connector| :multiplicity (1 1)
    :documentation
     "A connector of the block owning the property on which the stereotype is
      applied.")))

(def-meta-constraint |1_block_property| |ConnectorProperty|
   "ConnectorProperty shall only be applied to properties of classes stereotyped
    by Block."
   :operation-body
   "Block.allInstances().base_Class->exists(c | c.ownedAttribute->includes(self.base_Property))")

(def-meta-constraint |2_owned_or_inherited| |ConnectorProperty|
   "The connector attribute of the applied stereotype shall refer to a connector
    owned or inherited by a block owning the property on which the stereotype
    is applied."
   :operation-body
   "let owner: UML::Class = Block.allInstances().base_Class->any(c | c.ownedAttribute->includes(self.base_Property)) in owner->closure(general)->select(oclIsKindOf(UML::Class)).oclAsType(UML::Class).ownedConnector->flatten()->includes(self.connector)")

(def-meta-constraint |3_composite| |ConnectorProperty|
   "The aggregation of a property stereotyped by ConnectorProperty shall be
    composite."
   :operation-body
   "self.base_Property.isComposite")

(def-meta-constraint |4_typed_by_associationblock| |ConnectorProperty|
   "The type of the connector referred to by a connector attribute shall be
    an association class stereotyped by Block."
   :operation-body
   "Block.allInstances().base_Class->exists(c | c.oclIsKindOf(UML::AssociationClass) and self.connector.type = c)")

(def-meta-constraint |5_same_name| |ConnectorProperty|
   "A property stereotyped by ConnectorProperty shall have the same name and
    type as the connector referred to by the connector attribute."
   :operation-body
   "self.base_Property.name = self.connector.name")

(def-meta-assoc "SysML.E_extension_ConnectorProperty_base_Property"
  :name |E_extension_ConnectorProperty_base_Property|
  :metatype :extension
  :member-ends (("SysML.E_extension_ConnectorProperty_base_Property.extension_ConnectorProperty"
		 "extension_ConnectorProperty")
		(|ConnectorProperty| "base_Property"))
  :owned-ends  (("SysML.E_extension_ConnectorProperty_base_Property.extension_ConnectorProperty"
		 "extension_ConnectorProperty")))

(def-meta-assoc-end "SysML.E_extension_ConnectorProperty_base_Property.extension_ConnectorProperty"
    :type |ConnectorProperty|
    :multiplicity (1 1)
    :association "SysML.E_extension_ConnectorProperty_base_Property"
    :name "extension_ConnectorProperty")

;;; =========================================================
;;; ====================== ConstraintBlock
;;; =========================================================
(def-meta-stereotype |ConstraintBlock|
   (:model :SYSML16 :superclasses (|Block|) :extends NIL
 :packages (|SysML| |ConstraintBlocks|)
 :xmi-id "SysML.ConstraintBlock")
 "A constraint block is a block that packages the statement of a constraint
  so it may be applied in a reusable way to constrain properties of other
  blocks. A constraint block typically defines one or more constraint parameters,
  which are bound to properties of other blocks in a surrounding context
  where the constraint is used. Binding connectors, as defined in  clause
  8 are used to bind each parameter of the constraint block to a property
  in the surrounding context. All properties of a constraint block are constraint
  parameters, with the exception of constraint properties that hold internally
  nested usages of constraint blocks.  A constraint property is a property
  of any block that is typed by a constraint block. It holds a localized
  usage of the constraint block. Binding connectors may be used to bind the
  parameters of this constraint block to other properties of the block that
  contains the usage."
  ())

(def-meta-constraint |1_constraintparameters_only| |ConstraintBlock|
   "A constraint block shall not own any structural or behavioral elements
    beyond the properties that define its constraint parameters, constraint
    properties that hold internal usages of constraint blocks, binding connectors
    between its internally nested constraint parameters, constraint expressions
    that define an interpretation for the constraint block, and general-purpose
    model management and crosscutting elements."
   :operation-body
   "-- Cannot be expressed in OCL")

(def-meta-constraint |3_composite| |ConstraintBlock|
   "Any property of a block that is typed by a ConstraintBlock shall have composite
    aggregation."
   :operation-body
   "self.base_Class.ownedAttribute->forAll(p| p.isComposite) ")

;;; =========================================================
;;; ====================== Continuous
;;; =========================================================
(def-meta-stereotype |Continuous|
   (:model :SYSML16 :superclasses (|Rate|) :extends NIL
 :packages (|SysML| |Activities|)
 :xmi-id "SysML.Continuous")
 "Continuous rate is a special case of rate of flow (see Rate) where the
  increment of time between items approaches zero. It is intended to represent
  continuous flows that may correspond to water flowing through a pipe, a
  time continuous signal, or continuous energy flow. It is independent from
  UML streaming, see clause 11.3.2.8. A streaming parameter may or may not
  apply to continuous flow, and a continuous flow may or may not apply to
  streaming parameters.  UML places no restriction on the rate at which tokens
  flow. In particular, the time between tokens can approach as close to zero
  as needed, for example to simulate continuous flow. There is also no restriction
  in UML on the kind of values that flow through an activity. In particular,
  the value may represent as small a number as needed, for example to simulate
  continuous material or energy flow. Finally, the exact timing of token
  flow is not completely prescribed in UML. In particular, token flow on
  different edges may be coordinated to occur in a clocked fashion, as in
  time march algorithms for numerical solvers of ordinary differential equations,
  such as Runge-Kutta."
  ())

;;; =========================================================
;;; ====================== ControlOperator
;;; =========================================================
(def-meta-stereotype |ControlOperator|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Behavior|
						UML251:|Operation|)
 :packages (|SysML| |Activities|)
 :xmi-id "SysML.ControlOperator")
 "A control operator is a behavior that is intended to represent an arbitrarily
  complex logical operator that can be used to enable and disable other actions.
  When the  controlOperator  stereotype is applied to behaviors, the behavior
  takes control values as inputs or provides them as outputs, that is, it
  treats control as data (see clause 11.3.3.1.1). When the  controlOperator
   stereotype is not applied, the behavior may not have a parameter typed
  by ControlValue. The  controlOperator  stereotype also applies to operations
  with the same semantics.  The control value inputs do not enable or disable
  the control operator execution based on their value, they only enable based
  on their presence as data. Pins for control parameters are regular pins,
  not UML control pins. This is so the control value can be passed into or
  out of the action and the invoked behavior, rather than control the starting
  of the action, or indicating the ending of it."
  ((|base_Behavior| :xmi-id "SysML.ControlOperator.base_Behavior"
    :range UML251:|Behavior| :multiplicity (0 1))
   (|base_Operation| :xmi-id "SysML.ControlOperator.base_Operation"
    :range UML251:|Operation| :multiplicity (0 1))))

(def-meta-constraint |1_one_parameter_controlvalue| |ControlOperator|
   "When the  controlOperator  stereotype is applied, the behavior or operation
    shall have at least one parameter typed by ControlValue. If the stereotype
    is not applied, the behavior or operation may not have any parameter typed
    by ControlValue."
   :operation-body
   "UML::Behavior.allInstances()->forAll(b | not (ControlOperator.allInstances().base_Behavior->includes(b) xor b.ownedParameter->exists(p | p.type=SysML::Libraries::ControlValues::ControlValue))) and  UML::Operation.allInstances()->forAll(o | not (ControlOperator.allInstances().base_Operation->includes(o) xor o.ownedParameter->exists(p | p.type=SysML::Libraries::ControlValues::ControlValue))) ")

(def-meta-constraint |2_controloperator_operation_method| |ControlOperator|
   "A behavior shall have the  controlOperator  stereotype applied if it is
    a method of an operation that has the  controlOperator  stereotype applied."
   :operation-body
   "(self.base_Operation->notEmpty() and self.base_Operation.method->notEmpty()) implies  self.base_Operation.method->forAll(b | ControlOperator.allInstances().base_Behavior->includes(b))")

(def-meta-assoc "SysML.E_extension_ControlOperator_base_Behavior"
  :name |E_extension_ControlOperator_base_Behavior|
  :metatype :extension
  :member-ends (("SysML.E_extension_ControlOperator_base_Behavior.extension_ControlOperator"
		 "extension_ControlOperator")
		(|ControlOperator| "base_Behavior"))
  :owned-ends  (("SysML.E_extension_ControlOperator_base_Behavior.extension_ControlOperator"
		 "extension_ControlOperator")))

(def-meta-assoc-end "SysML.E_extension_ControlOperator_base_Behavior.extension_ControlOperator"
    :type |ControlOperator|
    :multiplicity (1 1)
    :association "SysML.E_extension_ControlOperator_base_Behavior"
    :name "extension_ControlOperator")

(def-meta-assoc "SysML.E_extension_ControlOperator_base_Operation"
  :name |E_extension_ControlOperator_base_Operation|
  :metatype :extension
  :member-ends (("SysML.E_extension_ControlOperator_base_Operation.extension_ControlOperator"
		 "extension_ControlOperator")
		(|ControlOperator| "base_Operation"))
  :owned-ends  (("SysML.E_extension_ControlOperator_base_Operation.extension_ControlOperator"
		 "extension_ControlOperator")))

(def-meta-assoc-end "SysML.E_extension_ControlOperator_base_Operation.extension_ControlOperator"
    :type |ControlOperator|
    :multiplicity (1 1)
    :association "SysML.E_extension_ControlOperator_base_Operation"
    :name "extension_ControlOperator")

;;; =========================================================
;;; ====================== Copy
;;; =========================================================
(def-meta-stereotype |Copy|
   (:model :SYSML16 :superclasses (|Trace|) :extends NIL
 :packages (|SysML| |Requirements|)
 :xmi-id "SysML.Copy")
 "A Copy relationship is a dependency between a supplier requirement and
  a client requirement that specifies that the text of the client requirement
  is a read-only copy of the text of the supplier requirement.  A Copy dependency
  created between two requirements maintains a master/slave relationship
  between the two elements for the purpose of requirements re-use in different
  contexts. When a Copy dependency exists between two requirements, the requirement
  text of the client requirement is a read-only copy of the requirement text
  ofthe requirement at the supplier end of the dependency."
  ())

(def-meta-constraint |1_source_and_taget_are_requirements| |Copy|
   "A Copy dependency may only be created between two NamedElements that have
    a subtype of the abstractRequirement stereotype applied"
   :operation-body
   "AbstractRequirement.allInstances().base_NamedElement->includesAll(self.base_Abstraction.client) and AbstractRequirement.allInstances().base_NamedElement->includesAll(self.base_Abstraction.supplier)")

(def-meta-constraint |2_same_text| |Copy|
   "The text property of the client requirement is constrained to be a read-only
    copy of the text property of the supplier requirement and this applies
    recursively to all subrequirements"
   :operation-body
   "let cltReq: AbstractRequirement = AbstractRequirement.allInstances()->any(r | self.base_Abstraction.client->includes(r.base_NamedElement)) in let supReq: AbstractRequirement = AbstractRequirement.allInstances()->any(r | self.base_Abstraction.supplier->includes(r.base_NamedElement)) in self.isCopy(cltReq, supReq)")

(def-meta-operation |isCopy| |Copy|
   ""
   :operation-body
   "let subReq1: Set(AbstractRequirement) = AbstractRequirement.allInstances() ->select(r | req1.base_NamedElement.ownedElement->includes(r.base_NamedElement)) in let subReq2: Set(AbstractRequirement) = AbstractRequirement.allInstances() ->select(r | req2.base_NamedElement.ownedElement->includes(r.base_NamedElement)) in req1.text = req2.text and subReq1->size() = subReq2->size() and subReq1->forAll(r1 | subReq2->exists(r2 | self.isCopy(r1, r2) ))"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name '|req1| :parameter-type '|AbstractRequirement|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name '|req2| :parameter-type '|AbstractRequirement|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|Boolean|
			:parameter-return-p T))
)

;;; =========================================================
;;; ====================== DeriveReqt
;;; =========================================================
(def-meta-stereotype |DeriveReqt|
   (:model :SYSML16 :superclasses (|Trace|) :extends NIL
 :packages (|SysML| |Requirements|)
 :xmi-id "SysML.DeriveReqt")
 "A DeriveReqt relationship is a dependency between two requirements in which
  a client requirement can be derived from the supplier requirement. For
  example, a system requirement may be derived from a business need, or lower-level
  requirements may be derived from a system requirement. As with other dependencies,
  the arrow direction points from the derived (client) requirement to the
  (supplier) requirement from which it is derived."
  ())

(def-meta-constraint |1_supplier_is_requirement| |DeriveReqt|
   "The supplier shall be an element stereotyped by a subtype of AbstractRequirement."
   :operation-body
   "AbstractRequirement.allInstances().base_NamedElement->includesAll(self.base_Abstraction.client)")

(def-meta-constraint |2_client_is_requirement| |DeriveReqt|
   "The client shall be an element stereotyped by a subtype of AbstractRequirement."
   :operation-body
   "AbstractRequirement.allInstances().base_NamedElement->includesAll(self.base_Abstraction.supplier)")

;;; =========================================================
;;; ====================== DirectedFeature
;;; =========================================================
(def-meta-stereotype |DirectedFeature|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Feature|)
 :packages (|SysML| |PortsAndFlows|)
 :xmi-id "SysML.DirectedFeature")
 "A DirectedFeature indicates whether the feature is supported by the owning
  block (provided), or is to be supported by other blocks for the owning
  block to use (required), or both (the owning block for features on types
  of proxy ports is the type of the block usage the proxy port is standing
  in for, which might be an internal part). Using non-flow properties means
  to read or write them, and using behavioral features means to invoke them.
  Provided non-flow properties are read and written on the owning block,
  while required non-flow properties are read or written on an external block.
  Provided behavioral features are invoked with the owning block as target,
  while required behavioral features are invoked with an external block as
  target (required).  Blocks owning or inheriting required behavioral features
  can have behaviors invoking the behavioral features on instances of the
  block. This sends invocations out along connectors from usages of the block
  in internal structures of other blocks, provided the behavioral features
  match on the other end of the connectors.  Invocations of provided behavioral
  features due to required behavioral features can only occur when the features
  match. A single provided behavioral feature shall match each required one
  according to the following conditions:    The kind of behavioral feature
  is the same (operation or reception).   Names are the same, including parameter
  names, in the same order.   Parameter directions are the same, in the same
  order.   Provided parameter types for parameters with:    in direction
  are the same or more general than the required ones, in order.    out or
  return direction are the same or more specialized than the required ones,
  in order.    inout direction are the same as the required ones, in order.
   Parameters without types are treated as if their type is more general
  than all other types.    Provided parameter multiplicity has the same condition
  as type, where wider multiplicities are  more general  than narrower ones.
     Provided parameter order (of each parameter separately) has the same
  condition as type, where unordered parameters are  more general  than ordered
  ones.    Provided parameter uniqueness (of each parameter separately) has
  the same condition as type, where non-unique parameters are  more general
   than unique ones.    Provided operation preconditions are the same as
  or more general than required ones.    Provided operation body conditions
  and postconditions are the same or more specialized than required ones.
   If corresponding parameters in provided and required behavioral features
  both have defaults, the default value specification of the required feature
  is used for in parameters, and the default value specification of the provided
  feature is used for out and return parameters.  Reading or writing provided
  non-flow properties due to required non-flow properties can only occur
  when the features match. Matching non-flow properties shall have the same
  name. For reading non-flow properties, the types, multiplicities, uniqueness,
  and ordering shall match in the same way as out parameters for behavioral
  features above. For writing non- flow properties, the types, multiplicities,
  uniqueness, and ordering shall match in the same way as in parameters for
  behavioral features above. For both reading and writing non-flow properties,
  the types, multiplicities, uniqueness, and ordering shall be the same.
  If provided and required non-flow properties both have defaults, the default
  value specification of the required feature is used for writing and the
  default specification of the provided feature is used for reading."
  ((|base_Feature| :xmi-id "SysML.DirectedFeature.base_Feature"
    :range UML251:|Feature| :multiplicity (1 1))
   (|featureDirection| :xmi-id "SysML.DirectedFeature.featureDirection"
    :range |FeatureDirectionKind| :multiplicity (1 1)
    :documentation
     "Specifies whether the feature is supported by the owning block (featureDirection=
      provided ), or is to be supported by other blocks for the owning block
      to use (featureDirection= required ), or both (featureDirection= providedrequired
      ).")))

(def-meta-constraint |1_behavioralfeature_or_not_flowproperty| |DirectedFeature|
   "DirectedFeature shall only be applied to behavioral features, or to properties
    that do not have FlowProperty applied, including on subsetted or redefined
    features."
   :operation-body
   "self.base_Feature.oclIsKindOf(UML::BehavioralFeature) or  (self.base_Feature.oclIsKindOf(UML::Property) and   let property: UML::Property = self.base_Feature.oclAsType(UML::Property) in  FlowProperty.allInstances().base_Property->excludesAll(property.redefinedProperty->union(property.subsettedProperty)->including(property)))")

(def-meta-constraint |2_method_if_provided| |DirectedFeature|
   "A non-provided operation shall not be associated with a behavior as its
    method."
   :operation-body
   "self.base_Feature.oclIsKindOf(UML::Operation) and self.featureDirection=FeatureDirectionKind::required implies self.base_Feature.oclAsType(UML::Operation).method->isEmpty()")

(def-meta-assoc "SysML.E_extension_DirectedFeature_base_Feature"
  :name |E_extension_DirectedFeature_base_Feature|
  :metatype :extension
  :member-ends ((|DirectedFeature| "base_Feature")
		("SysML.E_extension_DirectedFeature_base_Feature.extension_DirectedFeature"
		 "extension_DirectedFeature"))
  :owned-ends  (("SysML.E_extension_DirectedFeature_base_Feature.extension_DirectedFeature"
		 "extension_DirectedFeature")))

(def-meta-assoc-end "SysML.E_extension_DirectedFeature_base_Feature.extension_DirectedFeature"
    :type |DirectedFeature|
    :multiplicity (1 1)
    :association "SysML.E_extension_DirectedFeature_base_Feature"
    :name "extension_DirectedFeature")

;;; =========================================================
;;; ====================== DirectedRelationshipPropertyPath
;;; =========================================================
(def-meta-stereotype |DirectedRelationshipPropertyPath|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|DirectedRelationship|)
 :packages (|SysML| |Blocks|)
 :xmi-id "SysML.DirectedRelationshipPropertyPath")
 "The DirectedRelationshipPropertyPath stereotype based on UML DirectedRelationship
  enables directed relationships to identify their sources and targets by
  a multi-level path of properties accessible from context blocks for the
  sources and targets. Context blocks are typically the owner of the first
  property in the path of properties, but can be specializations of the owner
  to limit the scope of the relationship."
  ((|base_DirectedRelationship| :xmi-id "SysML.DirectedRelationshipPropertyPath.base_DirectedRelationship"
    :range UML251:|DirectedRelationship| :multiplicity (1 1))
   (|sourceContext| :xmi-id "SysML.DirectedRelationshipPropertyPath.sourceContext"
    :range UML251:|Classifier| :multiplicity (0 1)
    :documentation
     "Gives the context for sourcePropertyPath to begin from.")
   (|sourcePropertyPath| :xmi-id "SysML.DirectedRelationshipPropertyPath.sourcePropertyPath"
    :range UML251:|Property| :multiplicity (0 -1) :is-ordered-p T
    :documentation
     "A series of properties that identifies the source of the directed relationship
      in the context of the block specified by the sourceContext property. The
      ordering of properties is from a property of the sourceContext block, through
      a property of each intermediate block that types the preceding property,
      ending in a property with a type that owns or inherits the source of the
      directed relationship. The source is not included in the propertyPath list.
      The same property might appear more than once because a block can own a
      property with the same or specialized block as a type.")
   (|targetContext| :xmi-id "SysML.DirectedRelationshipPropertyPath.targetContext"
    :range UML251:|Classifier| :multiplicity (0 1)
    :documentation
     "Gives the context for targetPropertyPath to begin from.")
   (|targetPropertyPath| :xmi-id "SysML.DirectedRelationshipPropertyPath.targetPropertyPath"
    :range UML251:|Property| :multiplicity (0 -1) :is-ordered-p T
    :documentation
     "A series of properties that identifies the target of the directed relationship
      in the context of the block specified by the targetContext property. The
      ordering of properties is from a property of the targetContext block, through
      a property of each intermediate block that types the preceding property,
      ending in a property with a type that owns or inherits the target of the
      directed relationship. The target is not included in the propertyPath list.
      The same property might appear more than once because a block can own a
      property with the same or specialized block as a type.")))

(def-meta-constraint |1_sourcecontext_iif_property| |DirectedRelationshipPropertyPath|
   "sourceContext shall have a value when source is a property, otherwise it
    shall not have a value"
   :operation-body
   "self.base_DirectedRelationship.source->exists(s | s.oclIsKindOf(UML::Property)) xor self.sourceContext->isEmpty() ")

(def-meta-constraint |2_targetcontext_iif_property| |DirectedRelationshipPropertyPath|
   "targetContext shall have a value when target is a property, otherwise it
    shall not have a value."
   :operation-body
   "self.base_DirectedRelationship.source->exists(s | s.oclIsKindOf(UML::Property)) xor self.sourceContext->isEmpty() ")

(def-meta-constraint |3_sourcepropertypath_implies_property| |DirectedRelationshipPropertyPath|
   "source shall be a property when sourcePropertyPath has a value."
   :operation-body
   "self.sourcePropertyPath->notEmpty() implies self.base_DirectedRelationship.source->forAll(s | s.oclIsKindOf(UML::Property)) ")

(def-meta-constraint |4_targetpropertypath_implies_property| |DirectedRelationshipPropertyPath|
   "target shall be a property when targetPropertyPath has a value."
   :operation-body
   "self.targetPropertyPath->notEmpty() implies self.base_DirectedRelationship.target->forAll(s | s.oclIsKindOf(UML::Property)) ")

(def-meta-constraint |5_sourcecontext_owns_sourcepath_first| |DirectedRelationshipPropertyPath|
   "The property in the first position of the sourcePropertyPath list, if any,
    shall be owned by the sourceContext or one of its generalizations"
   :operation-body
   "self.sourcePropertyPath->notEmpty() implies self.sourceContext.allAttributes()->includes(self.sourcePropertyPath->first())")

(def-meta-constraint |6_targetcontext_owns_targetpath_first| |DirectedRelationshipPropertyPath|
   "The property in the first position of the targetPropertyPath list, if any,
    shall be owned by the targetContext or one of its generalizations."
   :operation-body
   "self.targetPropertyPath->notEmpty() implies self.targetContext.allAttributes()->includes(self.targetPropertyPath->first())")

(def-meta-constraint |7_path_and_owners_consistency| |DirectedRelationshipPropertyPath|
   "The property at each successive position of the sourcePropertyPath and
    targetPropertyPath, following the first position, shall be owned by the
    Block or ValueType that types the property at the immediately preceding
    position, or a generalization of the Block or ValueType."
   :operation-body
   "(self.sourcePropertyPath->size() >1 implies self.sourcePropertyPath->subSequence(2, self.sourcePropertyPath->size())->forAll(p |  let pp: UML::Property = self.sourcePropertyPath->at(self.sourcePropertyPath->indexOf(p)-1) in  let owners: Set(UML::Classifier) = pp.type.oclAsType(UML::Classifier)->including(pp.type.oclAsType(UML::Classifier)) in  owners->includes(p.owner))) and (self.targetPropertyPath->size() >1 implies self.targetPropertyPath->subSequence(2, self.targetPropertyPath->size())->forAll(p |  let pp: UML::Property = self.targetPropertyPath->at(self.targetPropertyPath->indexOf(p)-1) in  let owners: Set(UML::Classifier) = pp.type.oclAsType(UML::Classifier)->including(pp.type.oclAsType(UML::Classifier)) in  owners->includes(p.owner)))")

(def-meta-constraint |8_sourcepath_last_type_owns_source| |DirectedRelationshipPropertyPath|
   "The type of the property at the last position of the sourcePropertyPath
    list shall own or inherit the source of the stereotyped directed relationship."
   :operation-body
   "self.sourcePropertyPath->notEmpty() implies self.sourcePropertyPath->last().type.oclAsType(UML::Classifier).allAttributes()->includesAll(self.base_DirectedRelationship.source)")

(def-meta-constraint |9_targetpath_last_type_owns_target| |DirectedRelationshipPropertyPath|
   "The type of the property at the last position of the targetPropertyPath
    list shall own or inherit the target of the stereotyped directed relationship."
   :operation-body
   "self.targetPropertyPath->notEmpty() implies self.targetPropertyPath->last().type.oclAsType(UML::Classifier).allAttributes()->includesAll(self.base_DirectedRelationship.target)")

(def-meta-assoc "SysML.A_directedRelationshipPropertyPath_sourceContext"
  :name |A_directedRelationshipPropertyPath_sourceContext|
  :metatype :association
  :member-ends ((|DirectedRelationshipPropertyPath| "sourceContext")
		("SysML.A_directedRelationshipPropertyPath_sourceContext.directedRelationshipPropertyPath"
		 "directedRelationshipPropertyPath"))
  :owned-ends  (("SysML.A_directedRelationshipPropertyPath_sourceContext.directedRelationshipPropertyPath"
		 "directedRelationshipPropertyPath")))

(def-meta-assoc-end "SysML.A_directedRelationshipPropertyPath_sourceContext.directedRelationshipPropertyPath"
    :type |DirectedRelationshipPropertyPath|
    :multiplicity (0 -1)
    :association "SysML.A_directedRelationshipPropertyPath_sourceContext"
    :name "directedRelationshipPropertyPath")

(def-meta-assoc "SysML.A_directedRelationshipPropertyPath_sourcePropertyPath"
  :name |A_directedRelationshipPropertyPath_sourcePropertyPath|
  :metatype :association
  :member-ends ((|DirectedRelationshipPropertyPath| "sourcePropertyPath")
		("SysML.A_directedRelationshipPropertyPath_sourcePropertyPath.directedRelationshipPropertyPath"
		 "directedRelationshipPropertyPath"))
  :owned-ends  (("SysML.A_directedRelationshipPropertyPath_sourcePropertyPath.directedRelationshipPropertyPath"
		 "directedRelationshipPropertyPath")))

(def-meta-assoc-end "SysML.A_directedRelationshipPropertyPath_sourcePropertyPath.directedRelationshipPropertyPath"
    :type |DirectedRelationshipPropertyPath|
    :multiplicity (0 -1)
    :association "SysML.A_directedRelationshipPropertyPath_sourcePropertyPath"
    :name "directedRelationshipPropertyPath")

(def-meta-assoc "SysML.A_directedRelationshipPropertyPath_targetContext"
  :name |A_directedRelationshipPropertyPath_targetContext|
  :metatype :association
  :member-ends ((|DirectedRelationshipPropertyPath| "targetContext")
		("SysML.A_directedRelationshipPropertyPath_targetContext.directedRelationshipPropertyPath"
		 "directedRelationshipPropertyPath"))
  :owned-ends  (("SysML.A_directedRelationshipPropertyPath_targetContext.directedRelationshipPropertyPath"
		 "directedRelationshipPropertyPath")))

(def-meta-assoc-end "SysML.A_directedRelationshipPropertyPath_targetContext.directedRelationshipPropertyPath"
    :type |DirectedRelationshipPropertyPath|
    :multiplicity (0 -1)
    :association "SysML.A_directedRelationshipPropertyPath_targetContext"
    :name "directedRelationshipPropertyPath")

(def-meta-assoc "SysML.A_directedRelationshipPropertyPath_targetPropertyPath"
  :name |A_directedRelationshipPropertyPath_targetPropertyPath|
  :metatype :association
  :member-ends ((|DirectedRelationshipPropertyPath| "targetPropertyPath")
		("SysML.A_directedRelationshipPropertyPath_targetPropertyPath.directedRelationshipPropertyPath"
		 "directedRelationshipPropertyPath"))
  :owned-ends  (("SysML.A_directedRelationshipPropertyPath_targetPropertyPath.directedRelationshipPropertyPath"
		 "directedRelationshipPropertyPath")))

(def-meta-assoc-end "SysML.A_directedRelationshipPropertyPath_targetPropertyPath.directedRelationshipPropertyPath"
    :type |DirectedRelationshipPropertyPath|
    :multiplicity (0 -1)
    :association "SysML.A_directedRelationshipPropertyPath_targetPropertyPath"
    :name "directedRelationshipPropertyPath")

(def-meta-assoc "SysML.E_extension_DirectedRelationshipPropertyPath_base_DirectedRelationship"
  :name |E_extension_DirectedRelationshipPropertyPath_base_DirectedRelationship|
  :metatype :extension
  :member-ends ((|DirectedRelationshipPropertyPath| "base_DirectedRelationship")
		("SysML.E_extension_DirectedRelationshipPropertyPath_base_DirectedRelationship.extension_DirectedRelationshipPropertyPath"
		 "extension_DirectedRelationshipPropertyPath"))
  :owned-ends  (("SysML.E_extension_DirectedRelationshipPropertyPath_base_DirectedRelationship.extension_DirectedRelationshipPropertyPath"
		 "extension_DirectedRelationshipPropertyPath")))

(def-meta-assoc-end "SysML.E_extension_DirectedRelationshipPropertyPath_base_DirectedRelationship.extension_DirectedRelationshipPropertyPath"
    :type |DirectedRelationshipPropertyPath|
    :multiplicity (1 1)
    :association "SysML.E_extension_DirectedRelationshipPropertyPath_base_DirectedRelationship"
    :name "extension_DirectedRelationshipPropertyPath")

;;; =========================================================
;;; ====================== Discrete
;;; =========================================================
(def-meta-stereotype |Discrete|
   (:model :SYSML16 :superclasses (|Rate|) :extends NIL
 :packages (|SysML| |Activities|)
 :xmi-id "SysML.Discrete")
 "Discrete rate is a special case of rate of flow (see clause11.3.2.8) where
  the increment of time between items is a non-zero. Examples include the
  production of assemblies in a factory and signals set at periodic time
  intervals."
  ())

(def-meta-constraint |1_not_continuous| |Discrete|
   "The  discrete  and  continuous  stereotypes shall not be applied to the
    same element at the same time."
   :operation-body
   "(self.base_ActivityEdge->notEmpty() implies Continuous.allInstances().base_ActivityEdge->excludes(self.base_ActivityEdge)) and (self.base_Parameter->notEmpty() implies Continuous.allInstances().base_Parameter->excludes(self.base_Parameter)) ")

;;; =========================================================
;;; ====================== DistributedProperty
;;; =========================================================
(def-meta-stereotype |DistributedProperty|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Property|)
 :packages (|SysML| |Blocks|)
 :xmi-id "SysML.DistributedProperty")
 "DistributedProperty is a stereotype of Property used to apply a probability
  distribution to the values of the property. Specific distributions should
  be defined as subclasses of the DistributedProperty stereotype with the
  operands of the distributions represented by properties of those stereotype
  subclasses. A sample set of probability distributions that could be applied
  to value properties is given in clause 22.7 ."
  ((|base_Property| :xmi-id "SysML.DistributedProperty.base_Property"
    :range UML251:|Property| :multiplicity (1 1))))

(def-meta-constraint |1_block_or_valuetype| |DistributedProperty|
   "The DistributedProperty stereotype shall only be applied to properties
    of classifiers stereotyped by Block or ValueType."
   :operation-body
   "Block.allInstances().base_Class.oclAsType(UML::Classifier)->union(ValueType.allInstances().base_DataType)->includes(self.base_Property.owner) ")

(def-meta-assoc "SysML.E_extension_DistributedProperty_base_Property"
  :name |E_extension_DistributedProperty_base_Property|
  :metatype :extension
  :member-ends (("SysML.E_extension_DistributedProperty_base_Property.extension_DistributedProperty"
		 "extension_DistributedProperty")
		(|DistributedProperty| "base_Property"))
  :owned-ends  (("SysML.E_extension_DistributedProperty_base_Property.extension_DistributedProperty"
		 "extension_DistributedProperty")))

(def-meta-assoc-end "SysML.E_extension_DistributedProperty_base_Property.extension_DistributedProperty"
    :type |DistributedProperty|
    :multiplicity (1 1)
    :association "SysML.E_extension_DistributedProperty_base_Property"
    :name "extension_DistributedProperty")

;;; =========================================================
;;; ====================== ElementGroup
;;; =========================================================
(def-meta-stereotype |ElementGroup|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Comment|)
 :packages (|SysML| |ModelElements|)
 :xmi-id "SysML.ElementGroup")
 "The ElementGroup stereotype provides a lightweight mechanism for grouping
  various and possibly heterogeneous model elements by extending the capability
  of comments to refer to multiple annotated elements. For example, it can
  group elements that are associated with a particular release of the model,
  have a certain risk level, or are associated with a legacy design. The
  semantics of ElementGroup is modeler-defined. In particular, the body text
  is not restricted. It can describe the grouped elements as well as elements
  or values related to the grouped elements.  Element groups are named using
  the name property. The criterion for membership in an element group is
  specified by the body of the comment the stereotype is applied to. By grouping
  elements, the modeler asserts that the criterion of the group applies to
  the member. Optionally, members of an element group can be ordered using
  its orderedMember property.  ElementGroups appear in diagrams as comments,
  and properties of the stereotype appear in the notation for stereotype
  properties. Grouped elements are the annotated elements of the comment
  to which the stereotype is applied. This has several implications:
     Element groups do not own their elements and thus an element can participate
  in an unlimited number of groups.       The elements in a group are identified
  by the modeler, as opposed to being the result of a query, as in views.
	Element groups can be members of other element groups, but this does
  not  imply that members of the first are members of the second.  Elements
  related to the grouped elements are not included in the group, even though
  the body text can address them. In particular, element groups annotating
  deeply nested properties or properties with bindings are grouping only
  the properties, rather than their nesting or their bound properties.  Grouped
  elements are also limited to elements of models, rather than instances
  of values of those model elements. In particular, element groups annotating
  blocks or properties are not grouping the instances of the blocks or the
  values of the properties. However, since the semantics of ElementGroup
  is left to the modeler, the body text can refer to related elements outside
  the group, such as instances and values of the grouped elements, or to
  bound properties. The modeler is then responsible for writing body text
  that explains the implications for the related elements. For instance:
	 A group with the criterion:  Authored by John  could annotate any
  model element added in the model by John. This body text does not address
  any related elements. For example, if the annotated element is a property
  bound to another property, the group would not imply authorship of the
  second property.       A group with the criterion:  Instances are manufactured
  in a foreign country  could annotate Blocks to indicate that any instances
  of those Blocks are produced in a foreign country. This body text does
  not address the Block itself, which is not necessarily  manufactured  in
  a foreign country.       A group with criterion:  Values are manufactured
  in a foreign country  could annotate properties, including part properties,
  to indicate the values of the property are produced in a foreign country.
  This body text does not address the property itself, which is not necessarily
   manufactured  in a foreign country.  Since the text is about values of
  the property, it is also about values of other properties that might be
  bound to the annotated property, because the values of bound properties
  are the same."
  ((|base_Comment| :xmi-id "SysML.ElementGroup.base_Comment"
    :range UML251:|Comment| :multiplicity (1 1))
   (|criterion| :xmi-id "SysML.ElementGroup.criterion"
    :range |String| :multiplicity (0 1) :is-derived-p T
    :documentation
     "Specifies the rationale for being member of the group. Adding an element
      to the group asserts that the criterion applies to this element. Derived
      from Comment::body.")
   (|member| :xmi-id "SysML.ElementGroup.member"
    :range UML251:|Element| :multiplicity (0 -1) :is-derived-p T
    :documentation
     "Set specifying the members of the group. Derived from Comment::annotatedElement.")
   (|name| :xmi-id "SysML.ElementGroup.name"
    :range |String| :multiplicity (1 1)
    :documentation
     "Name of the element group")
   (|orderedMember| :xmi-id "SysML.ElementGroup.orderedMember"
    :range UML251:|Element| :multiplicity (0 -1) :is-ordered-p T
    :subsetted-properties ((|ElementGroup| |member|))
    :documentation
     "Organize member according to an arbitrary order. Optional.")
   (|size| :xmi-id "SysML.ElementGroup.size"
    :range |Integer| :multiplicity (1 1) :is-derived-p T
    :documentation
     "Number of members in the group. Derived.")))

(def-meta-operation |allGroups| |ElementGroup|
   "The query allGroups() returns the set of all the groups an element is member
    of."
   :operation-body
   ""
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name '|e| :parameter-type 'UML251:|Element|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|ElementGroup|
			:parameter-return-p T))
)

(def-meta-operation |criterion.1| |ElementGroup|
   "The query criterion() returns the text describing the criterion defining
    the group."
   :operation-body
   ""
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|String|
			:parameter-return-p T))
)

(def-meta-operation |member.1| |ElementGroup|
   "The query member() returns the set of all the members of the group."
   :operation-body
   ""
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type 'UML251:|Element|
			:parameter-return-p T))
)

(def-meta-operation |size.1| |ElementGroup|
   "The query size() returns the number of elements which are members of the
    group."
   :operation-body
   ""
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|Integer|
			:parameter-return-p T))
)

(def-meta-assoc "SysML.E_extension_ElementGroup_base_Comment"
  :name |E_extension_ElementGroup_base_Comment|
  :metatype :extension
  :member-ends ((|ElementGroup| "base_Comment")
		("SysML.E_extension_ElementGroup_base_Comment.extension_ElementGroup"
		 "extension_ElementGroup"))
  :owned-ends  (("SysML.E_extension_ElementGroup_base_Comment.extension_ElementGroup"
		 "extension_ElementGroup")))

(def-meta-assoc-end "SysML.E_extension_ElementGroup_base_Comment.extension_ElementGroup"
    :type |ElementGroup|
    :multiplicity (1 1)
    :association "SysML.E_extension_ElementGroup_base_Comment"
    :name "extension_ElementGroup")

;;; =========================================================
;;; ====================== ElementPropertyPath
;;; =========================================================
(def-meta-stereotype |ElementPropertyPath|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Element|)
 :packages (|SysML| |Blocks|)
 :xmi-id "SysML.ElementPropertyPath")
 "The ElementPropertyPath stereotype based on UML Element enables elements
  to identify other elements by a multi-level path of properties accessible
  from a context block. The context block is described in specializations
  of ElementPropertyPath."
  ((|base_Element| :xmi-id "SysML.ElementPropertyPath.base_Element"
    :range UML251:|Element| :multiplicity (1 1))
   (|propertyPath| :xmi-id "SysML.ElementPropertyPath.propertyPath"
    :range UML251:|Property| :multiplicity (1 -1) :is-ordered-p T
    :documentation
     "A series of properties that identifies elements in the context of a block
      described in specializations of ElementPropertyPath. The ordering of properties
      is from a property of the context block, through a property of each intermediate
      block that types the preceding property, ending in a property with a type
      that owns or inherits the fully nested property. The fully nested property
      is not included in the propertyPath list, but is given by the element to
      which the ElementPropertyPath is applied in a way described in specializations
      of ElementPropertyPath. The same property might appear more than once because
      a block can own a property with the same or specialized block as a type.")))

(def-meta-constraint |1_path_consistency| |ElementPropertyPath|
   "The property at each successive position of the propertyPath attribute,
    following the first position, shall be owned by the Block or ValueType
    that types the property at the immediately preceding position, or a generalization
    of the Block or ValueType."
   :operation-body
   "self.propertyPath->size() >1 implies self.propertyPath->subSequence(2, self.propertyPath->size())->forAll(p | let pp: UML::Property = self.propertyPath->at(self.propertyPath->indexOf(p)-1) in let owners: Set(UML::Classifier) = pp.type.oclAsType(UML::Classifier)->including(pp.type.oclAsType(UML::Classifier)) in owners->includes(p.owner))")

(def-meta-assoc "SysML.A_elementPropertyPath_propertyPath"
  :name |A_elementPropertyPath_propertyPath|
  :metatype :association
  :member-ends (("SysML.A_elementPropertyPath_propertyPath.elementPropertyPath"
		 "elementPropertyPath")
		(|ElementPropertyPath| "propertyPath"))
  :owned-ends  (("SysML.A_elementPropertyPath_propertyPath.elementPropertyPath"
		 "elementPropertyPath")))

(def-meta-assoc-end "SysML.A_elementPropertyPath_propertyPath.elementPropertyPath"
    :type |ElementPropertyPath|
    :multiplicity (0 -1)
    :association "SysML.A_elementPropertyPath_propertyPath"
    :name "elementPropertyPath")

(def-meta-assoc "SysML.E_extension_ElementPropertyPath_base_Element"
  :name |E_extension_ElementPropertyPath_base_Element|
  :metatype :extension
  :member-ends ((|ElementPropertyPath| "base_Element")
		("SysML.E_extension_ElementPropertyPath_base_Element.extension_ElementPropertyPath"
		 "extension_ElementPropertyPath"))
  :owned-ends  (("SysML.E_extension_ElementPropertyPath_base_Element.extension_ElementPropertyPath"
		 "extension_ElementPropertyPath")))

(def-meta-assoc-end "SysML.E_extension_ElementPropertyPath_base_Element.extension_ElementPropertyPath"
    :type |ElementPropertyPath|
    :multiplicity (1 1)
    :association "SysML.E_extension_ElementPropertyPath_base_Element"
    :name "extension_ElementPropertyPath")

;;; =========================================================
;;; ====================== EndPathMultiplicity
;;; =========================================================
(def-meta-stereotype |EndPathMultiplicity|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Property|)
 :packages (|SysML| |Blocks|)
 :xmi-id "SysML.EndPathMultiplicity")
 "The EndPathMultiplicity stereotype can be applied to properties that are
  related by redefinition to properties that have BoundReference applied.
  The lower and upper properties of the stereotype give the minimum and maximum
  number of values, respectively, of the property at the bound end of the
  related bound reference, for each object reached by navigation along its
  binding path."
  ((|base_Property| :xmi-id "SysML.EndPathMultiplicity.base_Property"
    :range UML251:|Property| :multiplicity (1 1))
   (|lower| :xmi-id "SysML.EndPathMultiplicity.lower"
    :range |Integer| :multiplicity (0 1) :default 0
    :documentation
     "Gives the minimum number of values of the property at the end of the related
      bindingPath, for each object reached by navigation along the bindingPath
      from an instance of the block owning the property to which EndPathMultiplicity
      is applied")
   (|upper| :xmi-id "SysML.EndPathMultiplicity.upper"
    :range |UnlimitedNatural| :multiplicity (0 1) :default :*
    :documentation
     "Gives the maximum number of values of the property at the end of the related
      bindingPath, for each object reached by navigation along the bindingPath
      from an instance of the block owning the property to which EndPathMultiplicity
      is applied.")))

(def-meta-constraint |1_redefinition| |EndPathMultiplicity|
   "Properties to which EndPathMultiplicity is applied shall be related by
    redefinition to a property to which BoundReference is applied."
   :operation-body
   "self.base_Property.redefinedProperty->notEmpty() and BoundReference.allInstances().base_Property->exists(p | self.base_Property.redefinedProperty->includes(p))")

(def-meta-constraint |2_non_negative| |EndPathMultiplicity|
   "endPathLower shall be non-negative."
   :operation-body
   "self.lower >= 0")

(def-meta-assoc "SysML.E_extension_EndPathMultiplicity_base_Property"
  :name |E_extension_EndPathMultiplicity_base_Property|
  :metatype :extension
  :member-ends ((|EndPathMultiplicity| "base_Property")
		("SysML.E_extension_EndPathMultiplicity_base_Property.extension_EndPathMultiplicity"
		 "extension_EndPathMultiplicity"))
  :owned-ends  (("SysML.E_extension_EndPathMultiplicity_base_Property.extension_EndPathMultiplicity"
		 "extension_EndPathMultiplicity")))

(def-meta-assoc-end "SysML.E_extension_EndPathMultiplicity_base_Property.extension_EndPathMultiplicity"
    :type |EndPathMultiplicity|
    :multiplicity (1 1)
    :association "SysML.E_extension_EndPathMultiplicity_base_Property"
    :name "extension_EndPathMultiplicity")

;;; =========================================================
;;; ====================== Expose
;;; =========================================================
(def-meta-stereotype |Expose|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Dependency|)
 :packages (|SysML| |ModelElements|)
 :xmi-id "SysML.Expose")
 "The expose relationship relates a view to one or more model elements. Each
  model element is an access point to initiate the query. The view and the
  model elements related to the view are passed to the constructor when it
  is invoked. The method describes how the exposed elements are navigated
  to extract the desired information."
  ((|base_Dependency| :xmi-id "SysML.Expose.base_Dependency"
    :range UML251:|Dependency| :multiplicity (1 1))))

(def-meta-constraint |1_client_is_view| |Expose|
   "The client shall be an element stereotyped by View."
   :operation-body
   "View.allInstances()->exists(v | v.base_Class = self.base_Dependency.client)")

(def-meta-assoc "SysML.E_extension_Expose_base_Dependency"
  :name |E_extension_Expose_base_Dependency|
  :metatype :extension
  :member-ends ((|Expose| "base_Dependency")
		("SysML.E_extension_Expose_base_Dependency.extension_Expose"
		 "extension_Expose"))
  :owned-ends  (("SysML.E_extension_Expose_base_Dependency.extension_Expose"
		 "extension_Expose")))

(def-meta-assoc-end "SysML.E_extension_Expose_base_Dependency.extension_Expose"
    :type |Expose|
    :multiplicity (1 1)
    :association "SysML.E_extension_Expose_base_Dependency"
    :name "extension_Expose")

;;; =========================================================
;;; ====================== FlowPort
;;; =========================================================
(def-meta-stereotype |FlowPort|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Port|)
 :packages (|SysML| |DeprecatedElements|)
 :xmi-id "SysML.FlowPort")
 "A FlowPort is an interaction point through which input and/or output of
  items such as data, material, or energy may flow. This enables the owning
  block to declare which items it may exchange with its environment and the
  interaction points through which the exchange is made. We distinguish between
  atomic flow port and a nonatomic flow port. Atomic flow ports relay items
  that are classified by a single Block, ValueType, DataType, or Signal classifier.
  A nonatomic flow port relays items of several types as specified by a FlowSpecification.
  Flow ports and associated flow specifications define  what can flow  between
  the block and its environment, whereas item flows specify  what does flow
   in a specific usage context. Flow ports relay items to their owning block
  or to a connector that connects them with their owner s internal parts
  (internal connector)."
  ((|base_Port| :xmi-id "SysML.FlowPort.base_Port"
    :range UML251:|Port| :multiplicity (1 1))
   (|direction| :xmi-id "SysML.FlowPort.direction"
    :range |FlowDirectionKind| :multiplicity (1 1) :default :inout
    :documentation
     "Indicates the direction in which an atomic flow port relays its items.
      If the direction is set to  in,  then the items are relayed from an external
      connector via the flow port into the flow port s owner (or one of its parts).
      If the direction is set to  out,  then the items are relayed from the flow
      port s owner, via the flow port, through an external connector attached
      to the flow port. If the direction is set to  inout,  then items can flow
      both ways. By default, the value is inout.")
   (|isAtomic| :xmi-id "SysML.FlowPort.isAtomic"
    :range |Boolean| :multiplicity (1 1) :is-derived-p T
    :documentation
     "This is a derived attribute (derived from the flow port s type). For a
      flow port typed by a flow specification the value of this attribute is
      False, otherwise the value is True.")))

(def-meta-assoc "SysML.E_extension_FlowPort_base_Port"
  :name |E_extension_FlowPort_base_Port|
  :metatype :extension
  :member-ends (("SysML.E_extension_FlowPort_base_Port.extension_FlowPort"
		 "extension_FlowPort")
		(|FlowPort| "base_Port"))
  :owned-ends  (("SysML.E_extension_FlowPort_base_Port.extension_FlowPort"
		 "extension_FlowPort")))

(def-meta-assoc-end "SysML.E_extension_FlowPort_base_Port.extension_FlowPort"
    :type |FlowPort|
    :multiplicity (1 1)
    :association "SysML.E_extension_FlowPort_base_Port"
    :name "extension_FlowPort")

;;; =========================================================
;;; ====================== FlowProperty
;;; =========================================================
(def-meta-stereotype |FlowProperty|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Property|)
 :packages (|SysML| |PortsAndFlows|)
 :xmi-id "SysML.FlowProperty")
 "A FlowProperty signifies a single kind of flow element that can flow to/from
  its owning instance that is specified by the block defining that flow property.
  A flow property s values are either received from or transmitted to another
  instance. An \"in\" flow property value cannot be modified by the owning
  instance of that flow property, or by parts of that instance. An \"out\"
  flow property can only be modified by the owning instance of that flow
  property, or by parts of that instance. An \"inout\" flow property can be
  used as an \"in\" flow property or an \"out\" flow property, and there is no
  restriction regarding the way it can be modified. (The owning block of
  a proxy port in this case depends on how the port is nested in the internal
  structures of blocks, because the block directly owning the port might
  be used to type ports or parts at different levels of nesting in multiple
  blocks, or the same block. The owning block of a proxy port in the internal
  structure of a block is the block typing the innermost full port or part
  under which the port is nested.)  Flow due to flow properties can only
  occur when flow properties match. Matching flow properties shall have matching
  direction and types. Matching direction is defined below. Flow property
  types match when the target flow property type has the same, or a generalization
  of, the source flow property type. (See 9.3.2.11, ItemFlow for looser constraints
  on flow property types across connectors with item flows.) If multiple
  flow properties on either end of a connector match by direction and type,
  then the names of the flow properties shall also be the same for flow to
  occur. If multiple flow properties on either end match by direction, type,
  and name, which can happen for unnamed flow properties, then no flow will
  occur.  Flow properties enable item flows across connectors between usages
  typed by blocks having the properties. For Block and ValueType flow properties,
  setting an  out  or  inout  FlowProperty value of a block usage on one
  end of a connector will result in assigning the same value of an  in  or
   inout  FlowProperty of a block usage at the other end of the connector,
  provided the flow properties are matched. It is not specified whether send/receive
  signal events are generated when values are written to out/in flow properties
  typed by Signal (implementations might choose to do this, but it is not
  required). This paragraph does not apply to internal connectors of proxy
  ports, see next paragraph.  Items going to or from behavioral ports (UML
  isBehavior = true) are actually going to or from the owning block. (See
  clause9.3.2.8 for definition of owning block of proxy ports in this case.)
  Items going to or from non-behavioral ports (UML isBehavior = false) are
  actually going to the port itself (for full ports) or to internal parts
  connected to the port (for proxy ports). Because of this, flow properties
  of a proxy port are the same as flow properties on the owning block or
  internal parts, so the flow property directions shall be the same on the
  proxy port and owning block or internal parts for items to flow. See Section
  9.3.2.18 for the definition of internal connectors and the semantics of
  proxy ports.  The flow property semantics above applies to each connector
  of a block usage, including when the block usage has multiple connectors.
   The binding of flow properties on ports to behavior parameters can be
  achieved in ways not dictated by SysML. One approach is to perform name
  and type matching. Another approach is to explicitly use binding relationships
  between the ports properties and behavior parameters or block properties."
  ((|base_Property| :xmi-id "SysML.FlowProperty.base_Property"
    :range UML251:|Property| :multiplicity (1 1))
   (|direction| :xmi-id "SysML.FlowProperty.direction"
    :range |FlowDirectionKind| :multiplicity (1 1) :default :inout
    :documentation
     "Specifies if the property value is received from an external block (direction=
      in ), transmitted to an external Block (direction= out ) or both (direction=
      inout ).")))

(def-meta-constraint |1_restricted_types| |FlowProperty|
   "A FlowProperty shall be typed by a ValueType, Block, or Signal."
   :operation-body
   "Block.allInstances().base_Class->includes(self.base_Property.type) or ValueType.allInstances().base_DataType->includes(self.base_Property.type) or self.base_Property.oclIsKindOf(UML::Signal)")

(def-meta-assoc "SysML.E_extension_FlowProperty_base_Property"
  :name |E_extension_FlowProperty_base_Property|
  :metatype :extension
  :member-ends (("SysML.E_extension_FlowProperty_base_Property.extension_FlowProperty"
		 "extension_FlowProperty")
		(|FlowProperty| "base_Property"))
  :owned-ends  (("SysML.E_extension_FlowProperty_base_Property.extension_FlowProperty"
		 "extension_FlowProperty")))

(def-meta-assoc-end "SysML.E_extension_FlowProperty_base_Property.extension_FlowProperty"
    :type |FlowProperty|
    :multiplicity (1 1)
    :association "SysML.E_extension_FlowProperty_base_Property"
    :name "extension_FlowProperty")

;;; =========================================================
;;; ====================== FlowSpecification
;;; =========================================================
(def-meta-stereotype |FlowSpecification|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Interface|)
 :packages (|SysML| |DeprecatedElements|)
 :xmi-id "SysML.FlowSpecification")
 "A FlowSpecification specifies inputs and outputs as a set of flow properties.
  A flow specification is used by flow ports to specify what items can flow
  via the port."
  ((|base_Interface| :xmi-id "SysML.FlowSpecification.base_Interface"
    :range UML251:|Interface| :multiplicity (1 1))))

(def-meta-assoc "SysML.E_extension_FlowSpecification_base_Interface"
  :name |E_extension_FlowSpecification_base_Interface|
  :metatype :extension
  :member-ends (("SysML.E_extension_FlowSpecification_base_Interface.extension_FlowSpecification"
		 "extension_FlowSpecification")
		(|FlowSpecification| "base_Interface"))
  :owned-ends  (("SysML.E_extension_FlowSpecification_base_Interface.extension_FlowSpecification"
		 "extension_FlowSpecification")))

(def-meta-assoc-end "SysML.E_extension_FlowSpecification_base_Interface.extension_FlowSpecification"
    :type |FlowSpecification|
    :multiplicity (1 1)
    :association "SysML.E_extension_FlowSpecification_base_Interface"
    :name "extension_FlowSpecification")

;;; =========================================================
;;; ====================== FullPort
;;; =========================================================
(def-meta-stereotype |FullPort|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Port|)
 :packages (|SysML| |PortsAndFlows|)
 :xmi-id "SysML.FullPort")
 "Full ports specify a separate element of the system from the owning block
  or its internal parts. They might have their own internal parts, and behaviors
  to support interaction with the owning block, its internal parts, or external
  blocks. They cannot be behavioral ports, or linked to internal parts by
  binding connectors, because these constructs imply identity with the owning
  block or internal parts. However, full ports can be linked to non-full
  ports by binding connectors, because this does not necessarily imply identity
  with other parts of the system."
  ((|base_Port| :xmi-id "SysML.FullPort.base_Port"
    :range UML251:|Port| :multiplicity (1 1))))

(def-meta-constraint |1_not_proxy| |FullPort|
   "Full ports shall not also be proxy ports. This applies even if some of
    the stereotypes are on subsetted or redefined ports."
   :operation-body
   "ProxyPort.allInstances()->excludes(self.base_Port)")

(def-meta-constraint |2_not_bound_to_fullport| |FullPort|
   "Binding connectors shall not link full ports (either directly or indirectly
    through other binding connectors) to other composite properties of the
    block owning the full port (or that block s generalizations or specializations),
    unless the composite properties are non-full ports."
   :operation-body
   "let fullPorts: Set(UML::Port) = FullPort.allInstances().base_Port->asSet() in BindingConnector.allInstances().base_Connector->select(c | c.end.role->includes(self.base_Port))->forAll(c | fullPorts->excludesAll(c.end.role->reject(r | r=self.base_Port)))")

(def-meta-constraint |3_not_behavioral| |FullPort|
   "Full ports shall not be behavioral (isBehavior=false)."
   :operation-body
   "not self.base_Port.isBehavior")

(def-meta-assoc "SysML.E_extension_FullPort_base_Port"
  :name |E_extension_FullPort_base_Port|
  :metatype :extension
  :member-ends ((|FullPort| "base_Port")
		("SysML.E_extension_FullPort_base_Port.extension_FullPort"
		 "extension_FullPort"))
  :owned-ends  (("SysML.E_extension_FullPort_base_Port.extension_FullPort"
		 "extension_FullPort")))

(def-meta-assoc-end "SysML.E_extension_FullPort_base_Port.extension_FullPort"
    :type |FullPort|
    :multiplicity (1 1)
    :association "SysML.E_extension_FullPort_base_Port"
    :name "extension_FullPort")

;;; =========================================================
;;; ====================== InterfaceBlock
;;; =========================================================
(def-meta-stereotype |InterfaceBlock|
   (:model :SYSML16 :superclasses (|Block|) :extends NIL
 :packages (|SysML| |PortsAndFlows|)
 :xmi-id "SysML.InterfaceBlock")
 "Interface blocks cannot have behaviors, including classifier behaviors
  or methods, or internal parts."
  ())

(def-meta-constraint |1_no_behavior| |InterfaceBlock|
   "Interface blocks shall not own or inherit behaviors, have classifier behaviors,
    or methods for their behavioral features."
   :operation-body
   "self.base_Class.inheritedMember->select(m | m.oclIsKindOf(UML::Behavior))->isEmpty() and self.base_Class.operation.method->flatten()->isEmpty()")

(def-meta-constraint |2_no_part| |InterfaceBlock|
   "Interface blocks' composite properties are either ports, value properties
    or flow properties"
   :operation-body
   "self.base_Class.ownedAttribute->select(a|a.isComposite)->forAll(a | a.oclIsKindOf(UML::Port) or a.oclIsKindOf(ValueType))")

(def-meta-constraint |3_interfaceblock_typed_ports| |InterfaceBlock|
   "Ports owned by interface blocks shall only be typed by interface blocks."
   :operation-body
   "self.base_Class.ownedPort->forAll(p|InterfaceBlock.allInstances().base_Class->includes(p.type))")

(def-meta-constraint |isconjugated_not_used| |InterfaceBlock|
   "Any port typed by an InterfaceBlock shall have its isConjugated property
    set to false."
   :operation-body
   "Port.allInstances()->forAll(p | p.type = self.base_Class implies p.isConjugated=false)")

(def-meta-operation |getConjugated| |InterfaceBlock|
   ""
   :operation-body
   "~InterfaceBlock.allInstances()->any(ib | ib.original = self)"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|InterfaceBlock|
			:parameter-return-p T))
)

;;; =========================================================
;;; ====================== InvocationOnNestedPortAction
;;; =========================================================
(def-meta-stereotype |InvocationOnNestedPortAction|
   (:model :SYSML16 :superclasses (|ElementPropertyPath|) :extends (UML251:|InvocationAction|)
 :packages (|SysML| |PortsAndFlows|)
 :xmi-id "SysML.InvocationOnNestedPortAction")
 "This extends the capabilities of UML s onPort property of InvocationAction
  to support nested ports. It identifies a nested port by a multi-level path
  of ports from the block that executes the action. Like UML s onPort property,
  this extends invocation actions to send invocations out of ports of objects
  executing the actions, or to ports of those objects or other objects. Invocations
  intended to go out of the object executing the action shall be sent to
  the executing object on a proxy port. Invocations intended to go directly
  to a target object are sent to that object on a port of that object."
  ((|base_InvocationAction| :xmi-id "SysML.InvocationOnNestedPortAction.base_InvocationAction"
    :range UML251:|InvocationAction| :multiplicity (1 1) :redefined-property (|ElementPropertyPath|
									      |base_Element|))
   (|onNestedPort| :xmi-id "SysML.InvocationOnNestedPortAction.onNestedPort"
    :range UML251:|Port| :multiplicity (1 -1) :is-ordered-p T
    :documentation
     "Gives a series of ports that identifies the port receiving the invocation
      in the context of the target object of the invocation. The ordering of
      ports is from a port of the target object, through a port of each intermediate
      block that types the preceding port, ending in a port with a type that
      owns or inherits the port given by the onPort property of the invocation
      action. The onPort port is not included in the onNestedPort list. The same
      port might appear more than once because a block can own a port with the
      same block as a type, or another block that has the same property." :redefined-property (|ElementPropertyPath|
											       |propertyPath|))))

(def-meta-constraint |1_onPort_defined| |InvocationOnNestedPortAction|
   "The onPort property of an invocation action shall have a value when this
    stereotype is applied."
   :operation-body
   "self.base_InvocationAction.onPort->notEmpty()")

(def-meta-constraint |2_onnestedport_first_owned_by_target_type| |InvocationOnNestedPortAction|
   "The port at the first position in the onNestedPort list shall be owned
    (directly or via inheritance) by a block that types the target pin of the
    invocation action, or one of the block s generalizations."
   :operation-body
   "let target: UML::InputPin = if self.base_InvocationAction.oclIsKindOf(UML::CallOperationAction) then    self.base_InvocationAction.oclAsType(UML::CallOperationAction).target else if self.base_InvocationAction.oclIsKindOf(UML::SendSignalAction) then    self.base_InvocationAction.oclAsType(UML::SendSignalAction).target else if self.base_InvocationAction.oclIsKindOf(UML::SendObjectAction) then    self.base_InvocationAction.oclAsType(UML::SendObjectAction).target else    invalid endif endif endif in not target.oclIsUndefined() and (   let target_type: UML::Class = Block.allInstances()->any(b | b.base_Class = target.type).base_Class in   not target_type.oclIsUndefined() and target_type.allFeatures()->includes(self.onNestedPort->first()))  ")

(def-meta-constraint |3_path_consistency| |InvocationOnNestedPortAction|
   "The port at each successive position of the onNestedPort attribute, following
    the first position, shall be owned by the Block that types the port at
    the immediately preceding position, or a generalization of that Block."
   :operation-body
   "self.onNestedPort->size() >1 implies self.propertyPath->subSequence(2, self.onNestedPort->size())->forAll(p |   let pp: UML::Property = self.onNestedPort->at(self.onNestedPort->indexOf(p)-1) in   let owners: Set(UML::Classifier) = pp.type.oclAsType(UML::Classifier)->including(pp.type.oclAsType(UML::Classifier)) in   owners->includes(p.owner))")

(def-meta-constraint |4_onnestedport_last_type_owns_invocation_onPort| |InvocationOnNestedPortAction|
   "The type of the port at the last position of the onNestedPort list shall
    own or inherit the onPort port of the stereotyped invocation action."
   :operation-body
   "self.onNestedPort->last().type.oclAsType(UML::Classifier).allFeatures()->includes(self.base_InvocationAction.onPort)")

(def-meta-assoc "SysML.A_invocationOnNestedPortAction_onNestedPort"
  :name |A_invocationOnNestedPortAction_onNestedPort|
  :metatype :association
  :member-ends (("SysML.A_invocationOnNestedPortAction_onNestedPort.invocationOnNestedPortAction"
		 "invocationOnNestedPortAction")
		(|InvocationOnNestedPortAction| "onNestedPort"))
  :owned-ends  (("SysML.A_invocationOnNestedPortAction_onNestedPort.invocationOnNestedPortAction"
		 "invocationOnNestedPortAction")))

(def-meta-assoc-end "SysML.A_invocationOnNestedPortAction_onNestedPort.invocationOnNestedPortAction"
    :type |InvocationOnNestedPortAction|
    :multiplicity (0 -1)
    :association "SysML.A_invocationOnNestedPortAction_onNestedPort"
    :name "invocationOnNestedPortAction")

(def-meta-assoc "SysML.E_extension_InvocationOnNestedPortAction_base_InvocationAction"
  :name |E_extension_InvocationOnNestedPortAction_base_InvocationAction|
  :metatype :extension
  :member-ends ((|InvocationOnNestedPortAction| "base_InvocationAction")
		("SysML.E_extension_InvocationOnNestedPortAction_base_InvocationAction.extension_InvocationOnNestedPortAction"
		 "extension_InvocationOnNestedPortAction"))
  :owned-ends  (("SysML.E_extension_InvocationOnNestedPortAction_base_InvocationAction.extension_InvocationOnNestedPortAction"
		 "extension_InvocationOnNestedPortAction")))

(def-meta-assoc-end "SysML.E_extension_InvocationOnNestedPortAction_base_InvocationAction.extension_InvocationOnNestedPortAction"
    :type |InvocationOnNestedPortAction|
    :multiplicity (1 1)
    :association "SysML.E_extension_InvocationOnNestedPortAction_base_InvocationAction"
    :name "extension_InvocationOnNestedPortAction")

;;; =========================================================
;;; ====================== ItemFlow
;;; =========================================================
(def-meta-stereotype |ItemFlow|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|InformationFlow|)
 :packages (|SysML| |PortsAndFlows|)
 :xmi-id "SysML.ItemFlow")
 "An ItemFlow describes the flow of items across a connector or an association.
  It may constrain the item exchange between blocks, block usages, or ports
  as specified by their flow properties. For example, a pump connected to
  a tank: the pump has an  out  flow property of type Liquid and the tank
  has an  in  FlowProperty of type Liquid. To signify that only water flows
  between the pump and the tank, we can specify an ItemFlow of type Water
  on the connector.  One can label an ItemFlow with the classifiers of the
  items that may be conveyed. For example: a label Water would imply that
  instances of Water might be transmitted over this ItemFlow. In addition,
  if the item flow identifies an item property, then one can label the item
  flow with the item property. For example, a label of  liquid: Water  means
  Water items might flow and these items are the values of the property
  liquid,  i.e., the values of the  liquid  item property are the instances
  of Water flowing at any given time. Item properties are owned by the common
  (possibly indirect) owner of the source and target of the item flow, rather
  than by the source and target types, as flow properties are.  Item flows
  on connectors shall be compatible with flow properties of the blocks usages
  at each end of the connector, if any. The direction of the item flow shall
  be compatible wit the direction of flow specified by the flow properties.
  (See clause 9.3.2.12 and clause 9.3.2.13 about flow property direction.)
  Each classifier of conveyed items on an item flow shall be the same as,
  a specialization of, or a generalization of at least one flow property
  type on each end of the connected block usages (or their accessible nested
  block usages recursively, see clause 9.3.2.8 about encapsulated blocks).
  The target flow property type shall be the same as, or a generalization
  of, a classifier of the item flow or the source flow property type, whichever
  is more specialized. (See clause 9.3.2.13, for tighter constraints on flow
  property types across connectors without item flows.)"
  ((|base_InformationFlow| :xmi-id "SysML.ItemFlow.base_InformationFlow"
    :range UML251:|InformationFlow| :multiplicity (1 1))
   (|itemProperty| :xmi-id "SysML.ItemFlow.itemProperty"
    :range UML251:|Property| :multiplicity (0 1)
    :documentation
     "An optional property that relates the flowing item to the instances of
      the connector s enclosing block. This property is applicable only for item
      flows realized by connectors. The itemProperty attribute has no values
      if the item flow is realized by an Association.")))

(def-meta-constraint |1_source_and_target_linked| |ItemFlow|
   "A Connector or an Association, or an inherited Association shall exist
    between the source and the target of the InformationFlow."
   :operation-body
   "let target: UML::NamedElement = self.base_InformationFlow.informationTarget->any(true) in let targets: Set(UML::NamedElement) = if target.oclIsKindOf(UML::Classifier) then  target.oclAsType(UML::Classifier)->closure(general)->including(target) else  target->asSet() endif in let source: UML::NamedElement = self.base_InformationFlow.informationSource->any(true) in let sources: Set(UML::NamedElement) = if source.oclIsKindOf(UML::Classifier) then  source.oclAsType(UML::Classifier)->closure(general)->including(source) else  source->asSet() endif in UML::Association.allInstances()->exists(a | a.memberEnd->intersection(targets)->notEmpty() and  a.memberEnd->intersection(sources)->notEmpty()) or UML::Connector.allInstances()->exists(c | c.end->intersection(targets)->notEmpty() and  c.end->intersection(sources)->notEmpty())  ")

(def-meta-constraint |2_type_restricted| |ItemFlow|
   "An ItemFlow itemProperty shall be typed by a ValueType, Block, or Signal."
   :operation-body
   "ValueType.allInstances().base_DataType->includes(self.itemProperty.type) or Block.allInstances().base_Class->includes(self.itemProperty.type) or UML::Signal.allInstances()->includes(self.itemProperty.type)")

(def-meta-constraint |3_itemproperty_common_owner| |ItemFlow|
   "If itemProperty has a value it shall be a property of the common (possibly
    indirect) owner of the source and the target."
   :operation-body
   "self.itemProperty->notEmpty() implies  (let target: UML::Element = self.base_InformationFlow.informationTarget->any(true) in let source: UML::Element = self.base_InformationFlow.informationSource->any(true) in target.oclIsKindOf(UML::Property) and  source.oclIsKindOf(UML::Property) and let owners: Set(UML::Classifier) = target->closure(owner)->select(o1 | o1.oclIsKindOf(UML::Classifier))->asSet() ->intersection(source->closure(owner)->select(o2 | o2.oclIsKindOf(UML::Classifier))).oclAsType(UML::Classifier)->asSet() in owners.attribute->flatten()->includes(self.itemProperty))")

(def-meta-constraint |4_association_xor_itemproperty| |ItemFlow|
   "itemProperty shall not have a value if the item flow is realized by an
    Association."
   :operation-body
   "self.base_InformationFlow.realization->exists(r | r.oclIsKindOf(UML::Association)) implies self.itemProperty->isEmpty()")

(def-meta-constraint |5_same_type| |ItemFlow|
   "If an ItemFlow has an itemProperty, one of the classifiers of conveyed
    items shall be the same as the type of the item property."
   :operation-body
   "self.itemProperty->notEmpty() implies self.base_InformationFlow.conveyed->includes(self.itemProperty.type)")

(def-meta-constraint |6_same_name| |ItemFlow|
   "If an ItemFlow has an itemProperty, its name shall be the same as the name
    of the item flow."
   :operation-body
   "self.itemProperty->notEmpty() implies self.itemProperty.name = self.base_InformationFlow.name")

(def-meta-assoc "SysML.E_extension_ItemFlow_base_InformationFlow"
  :name |E_extension_ItemFlow_base_InformationFlow|
  :metatype :extension
  :member-ends (("SysML.E_extension_ItemFlow_base_InformationFlow.extension_ItemFlow"
		 "extension_ItemFlow")
		(|ItemFlow| "base_InformationFlow"))
  :owned-ends  (("SysML.E_extension_ItemFlow_base_InformationFlow.extension_ItemFlow"
		 "extension_ItemFlow")))

(def-meta-assoc-end "SysML.E_extension_ItemFlow_base_InformationFlow.extension_ItemFlow"
    :type |ItemFlow|
    :multiplicity (1 1)
    :association "SysML.E_extension_ItemFlow_base_InformationFlow"
    :name "extension_ItemFlow")

;;; =========================================================
;;; ====================== NestedConnectorEnd
;;; =========================================================
(def-meta-stereotype |NestedConnectorEnd|
   (:model :SYSML16 :superclasses (|ElementPropertyPath|) :extends (UML251:|ConnectorEnd|)
 :packages (|SysML| |Blocks|)
 :xmi-id "SysML.NestedConnectorEnd")
 "The NestedConnectorEnd stereotype of UML ConnectorEnd extends a UML ConnectorEnd
  so that the connected property may be identified by a multi-level path
  of accessible properties from the block that owns the connector. The propertyPath
  inherited from ElementPropertyPath gives a series of properties that identifies
  the connected property in the context of the block that owns the connector.
  The ordering of properties is from a property of the block that owns the
  connector, through a property of each intermediate block that types the
  preceding property, ending in a property with a type that owns or inherits
  the property that is the role of the connector end (the property that the
  connector graphically attaches to at that end). The property that is the
  role of the connector end is not included in the propertyPath list."
  ((|base_ConnectorEnd| :xmi-id "SysML.NestedConnectorEnd.base_ConnectorEnd"
    :range UML251:|ConnectorEnd| :multiplicity (1 1) :redefined-property (|ElementPropertyPath|
									  |base_Element|))))

(def-meta-constraint |1_propertypath_first_owned_by_connector_owner| |NestedConnectorEnd|
   "The first property in propertyPath shall be owned by the block that owns
    the connector, or one of the block s generalizations."
   :operation-body
   "let owningBlock: UML::Class = self.base_ConnectorEnd.owner.oclAsType(UML::Connector).owner.oclAsType(UML::Class) in (not owningBlock.oclIsUndefined()) and owningBlock->closure(general)->including(owningBlock)->includes(self.propertyPath->first().owner) ")

(def-meta-constraint |2_propertypath_last_type_owns_role| |NestedConnectorEnd|
   "The type of the property at the last position of the propertyPath list
    shall own or inherit the role property of the stereotyped connector end"
   :operation-body
   "let type: UML::Classifier = self.propertyPath->last().type.oclAsType(UML::Classifier) in (not type.oclIsUndefined()) and type.allFeatures()->includes(self.base_ConnectorEnd.role) ")

(def-meta-assoc "SysML.E_extension_NestedConnectorEnd_base_ConnectorEnd"
  :name |E_extension_NestedConnectorEnd_base_ConnectorEnd|
  :metatype :extension
  :member-ends (("SysML.E_extension_NestedConnectorEnd_base_ConnectorEnd.extension_NestedConnectorEnd"
		 "extension_NestedConnectorEnd")
		(|NestedConnectorEnd| "base_ConnectorEnd"))
  :owned-ends  (("SysML.E_extension_NestedConnectorEnd_base_ConnectorEnd.extension_NestedConnectorEnd"
		 "extension_NestedConnectorEnd")))

(def-meta-assoc-end "SysML.E_extension_NestedConnectorEnd_base_ConnectorEnd.extension_NestedConnectorEnd"
    :type |NestedConnectorEnd|
    :multiplicity (1 1)
    :association "SysML.E_extension_NestedConnectorEnd_base_ConnectorEnd"
    :name "extension_NestedConnectorEnd")

;;; =========================================================
;;; ====================== NoBuffer
;;; =========================================================
(def-meta-stereotype |NoBuffer|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|ObjectNode|)
 :packages (|SysML| |Activities|)
 :xmi-id "SysML.NoBuffer")
 "When the  nobuffer  stereotype is applied to object nodes, tokens arriving
  at the node are discarded if they are refused by outgoing edges, or refused
  by actions for object nodes that are input pins. This is typically used
  with fast or continuously flowing data values, to prevent buffer overrun,
  or to model transient values, such as electrical signals. For object nodes
  that are the target of continuous flows,  nobuffer  and  overwrite  have
  the same effect. The stereotype does not override UML token offering semantics;
  it just indicates what happens to the token when it is accepted. When the
  stereotype is not applied, the semantics are as in UML, specifically, tokens
  arriving at an object node that are refused by outgoing edges, or action
  for input pins, are held until they can leave the object node."
  ((|base_ObjectNode| :xmi-id "SysML.NoBuffer.base_ObjectNode"
    :range UML251:|ObjectNode| :multiplicity (1 1))))

(def-meta-constraint |1_not_overwrite| |NoBuffer|
   "The  nobuffer  and  overwrite  stereotypes cannot be applied to the same
    element at the same time."
   :operation-body
   "Overwrite.allInstances().base_ObjectNode->excludes(self.base_ObjectNode)")

(def-meta-assoc "SysML.E_extension_NoBuffer_base_ObjectNode"
  :name |E_extension_NoBuffer_base_ObjectNode|
  :metatype :extension
  :member-ends (("SysML.E_extension_NoBuffer_base_ObjectNode.extension_NoBuffer"
		 "extension_NoBuffer")
		(|NoBuffer| "base_ObjectNode"))
  :owned-ends  (("SysML.E_extension_NoBuffer_base_ObjectNode.extension_NoBuffer"
		 "extension_NoBuffer")))

(def-meta-assoc-end "SysML.E_extension_NoBuffer_base_ObjectNode.extension_NoBuffer"
    :type |NoBuffer|
    :multiplicity (1 1)
    :association "SysML.E_extension_NoBuffer_base_ObjectNode"
    :name "extension_NoBuffer")

;;; =========================================================
;;; ====================== Optional
;;; =========================================================
(def-meta-stereotype |Optional|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Parameter|)
 :packages (|SysML| |Activities|)
 :xmi-id "SysML.Optional")
 "When the  optional  stereotype is applied to parameters, the lower multiplicity
  shall be equal to zero. This means the parameter is not required to have
  a value for the activity or any behavior to begin or end execution. Otherwise,
  the lower multiplicity shall be greater than zero, which is called  required.
   The absence of this stereotype indicates a constraint, see below."
  ((|base_Parameter| :xmi-id "SysML.Optional.base_Parameter"
    :range UML251:|Parameter| :multiplicity (1 1))))

(def-meta-constraint |1_lower_is_0| |Optional|
   "A parameter with the  optional  stereotypes applied shall have multiplicity.lower
    equal to zero, otherwise multiplicity.lower shall be greater than zero"
   :operation-body
   "UML::Parameter.allInstances()->forAll(p | Optional.allInstances().base_Parameter->includes(p) xor p.lower > 0)")

(def-meta-assoc "SysML.E_extension_Optional_base_Parameter"
  :name |E_extension_Optional_base_Parameter|
  :metatype :extension
  :member-ends (("SysML.E_extension_Optional_base_Parameter.extension_Optional"
		 "extension_Optional")
		(|Optional| "base_Parameter"))
  :owned-ends  (("SysML.E_extension_Optional_base_Parameter.extension_Optional"
		 "extension_Optional")))

(def-meta-assoc-end "SysML.E_extension_Optional_base_Parameter.extension_Optional"
    :type |Optional|
    :multiplicity (1 1)
    :association "SysML.E_extension_Optional_base_Parameter"
    :name "extension_Optional")

;;; =========================================================
;;; ====================== Overwrite
;;; =========================================================
(def-meta-stereotype |Overwrite|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|ObjectNode|)
 :packages (|SysML| |Activities|)
 :xmi-id "SysML.Overwrite")
 "When the  overwrite  stereotype is applied to object nodes, a token arriving
  at a full object node removes one that is already there before being added
  (a full object node has as many tokens as allowed by its upper bound).
  This is typically used on an input pin with an upper bound of 1 to ensure
  that stale data is overridden at an input pin. For upper bounds greater
  than one, the token removed is the one that has been in the object node
  the longest. For FIFO ordering, this is the token that is next to be selected,
  for LIFO it is the token that would be last to be selected. Tokens arriving
  at a full object node with the Overwrite stereotype applied take up their
  positions in the ordering as normal, if any. The arriving tokens do not
  take the positions of the removed tokens. A null token removes all the
  tokens already there. The number of tokens replaced is equal to the weight
  of the incoming edge, which defaults to 1. For object nodes that are the
  target of continuous flows,  overwrite  and  nobuffer  have the same effect.
  The stereotype does not override UML token offering semantics, just indicates
  what happens to the token when it is accepted. When the stereotype is not
  applied, the semantics is as in UML, specifically, tokens arriving at object
  nodes do not replace ones that are already there."
  ((|base_ObjectNode| :xmi-id "SysML.Overwrite.base_ObjectNode"
    :range UML251:|ObjectNode| :multiplicity (1 1))))

(def-meta-constraint |1_not_nobuffer| |Overwrite|
   "The  overwrite  and  nobuffer  stereotypes cannot be applied to the same
    element at the same time."
   :operation-body
   "NoBuffer.allInstances().base_ObjectNode->excludes(self.base_ObjectNode)")

(def-meta-assoc "SysML.E_extension_Overwrite_base_ObjectNode"
  :name |E_extension_Overwrite_base_ObjectNode|
  :metatype :extension
  :member-ends (("SysML.E_extension_Overwrite_base_ObjectNode.extension_Overwrite"
		 "extension_Overwrite")
		(|Overwrite| "base_ObjectNode"))
  :owned-ends  (("SysML.E_extension_Overwrite_base_ObjectNode.extension_Overwrite"
		 "extension_Overwrite")))

(def-meta-assoc-end "SysML.E_extension_Overwrite_base_ObjectNode.extension_Overwrite"
    :type |Overwrite|
    :multiplicity (1 1)
    :association "SysML.E_extension_Overwrite_base_ObjectNode"
    :name "extension_Overwrite")

;;; =========================================================
;;; ====================== ParticipantProperty
;;; =========================================================
(def-meta-stereotype |ParticipantProperty|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Property|)
 :packages (|SysML| |Blocks|)
 :xmi-id "SysML.ParticipantProperty")
 "The Block stereotype extends Class, so it can be applied to any specialization
  of Class, including Association Classes. These are informally called  association
  blocks.  An association block can own properties and connectors, like any
  other block. Each instance of an association block can link together instances
  of the end classifiers of the association.  To refer to linked objects
  and values of an instance of an association block, it is necessary for
  the modeler to specify which (participant) properties of the association
  block identify the instances being linked at which end of the association.
  The value of a participant property on an instance (link) of the association
  block is the value or object at the end of the link corresponding to this
  end of the association.  Participant properties can be the ends of connectors
  owned by an association block. The association block can be the type of
  multiple other connectors to reuse the same internal structure for all
  the connectors. The keyword  participant  before a property name indicates
  the property is stereotyped by ParticipantProperty. They are always the
  same as the corresponding association end type.  Participant properties
  can be the ends of connectors owned by an association block. The association
  block can be the type of multiple other connectors to reuse the same internal
  structure for all the connectors. The keyword  participant  before a property
  name indicates the property is stereotyped by ParticipantProperty. They
  are always the same as the corresponding association end type"
  ((|base_Property| :xmi-id "SysML.ParticipantProperty.base_Property"
    :range UML251:|Property| :multiplicity (1 1))
   (|end| :xmi-id "SysML.ParticipantProperty.end"
    :range UML251:|Property| :multiplicity (1 1)
    :documentation
     "A member end of the association block owning the property on which the
      stereotype is applied.")))

(def-meta-constraint |1_associationblock| |ParticipantProperty|
   "ParticipantProperty shall only be applied to properties of association
    classes stereotyped by Block."
   :operation-body
   "self.base_Property.class.oclIsKindOf(UML::AssociationClass) and  Block.allInstances().base_Class->includes(self.base_Property.class)")

(def-meta-constraint |2_memberend| |ParticipantProperty|
   "ParticipantProperty shall not be applied to properties that are member
    ends of an association."
   :operation-body
   "UML::Association.allInstances().memberEnd->flatten()->excludes(self.base_Property)")

(def-meta-constraint |3_aggregationkind_none| |ParticipantProperty|
   "The aggregation of a property stereotyped by ParticipantProperty shall
    be none."
   :operation-body
   "self.base_Property.aggregation = UML::AggregationKind::none")

(def-meta-constraint |4_end_owner| |ParticipantProperty|
   "The end attribute of the applied stereotype shall refer to a member end
    of the association block owning the property on which the stereotype is
    applied."
   :operation-body
   "self.base_Property.association.memberEnd->includes(self.end)")

(def-meta-constraint |5_same_type| |ParticipantProperty|
   "A property stereotyped by ParticipantProperty shall have the same type
    as the property referred to by the end attribute."
   :operation-body
   "self.base_Property.type = self.end.type")

(def-meta-constraint |6_multiplicity_1| |ParticipantProperty|
   "A property to which the ParticipantProperty is applied shall have a multiplicity
    of 1."
   :operation-body
   "self.base_Property.lower = 1 and self.base_Property.upper = 1")

(def-meta-assoc "SysML.E_extension_ParticipantProperty_base_Property"
  :name |E_extension_ParticipantProperty_base_Property|
  :metatype :extension
  :member-ends (("SysML.E_extension_ParticipantProperty_base_Property.extension_ParticipantProperty"
		 "extension_ParticipantProperty")
		(|ParticipantProperty| "base_Property"))
  :owned-ends  (("SysML.E_extension_ParticipantProperty_base_Property.extension_ParticipantProperty"
		 "extension_ParticipantProperty")))

(def-meta-assoc-end "SysML.E_extension_ParticipantProperty_base_Property.extension_ParticipantProperty"
    :type |ParticipantProperty|
    :multiplicity (1 1)
    :association "SysML.E_extension_ParticipantProperty_base_Property"
    :name "extension_ParticipantProperty")

;;; =========================================================
;;; ====================== Probability
;;; =========================================================
(def-meta-stereotype |Probability|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|ParameterSet|
						UML251:|ActivityEdge|)
 :packages (|SysML| |Activities|)
 :xmi-id "SysML.Probability")
 "When the  probability  stereotype is applied to edges coming out of decision
  nodes and object nodes, it provides an expression for the probability that
  the edge will be traversed. These shall be between zero and one inclusive,
  and add up to one for edges with same source at the time the probabilities
  are used.  When the  probability  stereotype is applied to output parameter
  sets, it gives the probability the parameter set will be given values at
  runtime. These shall be between zero and one inclusive, and add up to one
  for output parameter sets of the same behavior at the time the probabilities
  are used."
  ((|base_ActivityEdge| :xmi-id "SysML.Probability.base_ActivityEdge"
    :range UML251:|ActivityEdge| :multiplicity (0 1))
   (|base_ParameterSet| :xmi-id "SysML.Probability.base_ParameterSet"
    :range UML251:|ParameterSet| :multiplicity (0 1))
   (|probability| :xmi-id "SysML.Probability.probability"
    :range UML251:|ValueSpecification| :multiplicity (1 1)
    :documentation
     "Value of the probability")))

(def-meta-constraint |1_source_decisionnode_or_objectnode| |Probability|
   "The  probability  stereotype shall only be applied to activity edges that
    have decision nodes or object nodes as sources, or to output parameter
    sets."
   :operation-body
   "(self.base_ActivityEdge->notEmpty() implies self.base_ActivityEdge.source.oclIsKindOf(UML::DecisionNode)) and (self.base_ParameterSet->notEmpty() implies self.base_ParameterSet.parameter->forAll(p | p.direction=UML::ParameterDirectionKind::out)) ")

(def-meta-constraint |2_all_outgoing_edges| |Probability|
   "When the  probability  stereotype is applied to an activity edge, then
    it shall be applied to all edges coming out of the same source."
   :operation-body
   "self.base_ActivityEdge->notEmpty() implies Probability.allInstances().base_ActivityEdge->includesAll(self.base_ActivityEdge.target.incoming) ")

(def-meta-constraint |3_all_parametersets| |Probability|
   "When the  probability  stereotype is applied to an output parameter set,
    it shall be applied to all the parameter sets of the behavior or operation
    owning the original parameter set."
   :operation-body
   "self.base_ParameterSet->notEmpty() implies Probability.allInstances().base_ParameterSet->includesAll(self.base_ParameterSet.namespace.ownedMember->select(m | m.oclIsKindOf(UML::ParameterSet))) ")

(def-meta-constraint |4_all_outputparameter_in_parametersets| |Probability|
   "When the  probability  stereotype is applied to an output parameter set,
    all the output parameters shall be in some parameter set."
   :operation-body
   "(self.base_ActivityEdge->notEmpty() implies Continuous.allInstances().base_ActivityEdge->excludes(self.base_ActivityEdge)) and (self.base_Parameter->notEmpty() implies Continuous.allInstances().base_Parameter->excludes(self.base_Parameter)) ")

(def-meta-assoc "SysML.E_extension_Probability_base_ActivityEdge"
  :name |E_extension_Probability_base_ActivityEdge|
  :metatype :extension
  :member-ends (("SysML.E_extension_Probability_base_ActivityEdge.extension_Probability"
		 "extension_Probability")
		(|Probability| "base_ActivityEdge"))
  :owned-ends  (("SysML.E_extension_Probability_base_ActivityEdge.extension_Probability"
		 "extension_Probability")))

(def-meta-assoc-end "SysML.E_extension_Probability_base_ActivityEdge.extension_Probability"
    :type |Probability|
    :multiplicity (1 1)
    :association "SysML.E_extension_Probability_base_ActivityEdge"
    :name "extension_Probability")

(def-meta-assoc "SysML.E_extension_Probability_base_ParameterSet"
  :name |E_extension_Probability_base_ParameterSet|
  :metatype :extension
  :member-ends (("SysML.E_extension_Probability_base_ParameterSet.extension_Probability"
		 "extension_Probability")
		(|Probability| "base_ParameterSet"))
  :owned-ends  (("SysML.E_extension_Probability_base_ParameterSet.extension_Probability"
		 "extension_Probability")))

(def-meta-assoc-end "SysML.E_extension_Probability_base_ParameterSet.extension_Probability"
    :type |Probability|
    :multiplicity (1 1)
    :association "SysML.E_extension_Probability_base_ParameterSet"
    :name "extension_Probability")

;;; =========================================================
;;; ====================== Problem
;;; =========================================================
(def-meta-stereotype |Problem|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Comment|)
 :packages (|SysML| |ModelElements|)
 :xmi-id "SysML.Problem")
 "A Problem documents a deficiency, limitation, or failure of one or more
  model elements to satisfy a requirement or need, or other undesired outcome.
  It may be used to capture problems identified during analysis, design,
  verification, or manufacture and associate the problem with the relevant
  model elements. Problem is a stereotype of comment and may be attached
  to any other model element in the same manner as a comment."
  ((|base_Comment| :xmi-id "SysML.Problem.base_Comment"
    :range UML251:|Comment| :multiplicity (1 1))))

(def-meta-assoc "SysML.E_extension_Problem_base_Comment"
  :name |E_extension_Problem_base_Comment|
  :metatype :extension
  :member-ends (("SysML.E_extension_Problem_base_Comment.extension_Problem"
		 "extension_Problem")
		(|Problem| "base_Comment"))
  :owned-ends  (("SysML.E_extension_Problem_base_Comment.extension_Problem"
		 "extension_Problem")))

(def-meta-assoc-end "SysML.E_extension_Problem_base_Comment.extension_Problem"
    :type |Problem|
    :multiplicity (1 1)
    :association "SysML.E_extension_Problem_base_Comment"
    :name "extension_Problem")

;;; =========================================================
;;; ====================== PropertySpecificType
;;; =========================================================
(def-meta-stereotype |PropertySpecificType|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Classifier|)
 :packages (|SysML| |Blocks|)
 :xmi-id "SysML.PropertySpecificType")
 "The PropertySpecificType stereotype can be applied to classifiers that
  type exactly one property and that are owned by the owner of that property.
  Classifiers with this stereotype applied shall be generalized by at most
  one other classifier.  Instances of a property-specific type are exactly
  those that are values of the property it types, in all instances of the
  property owner. Values are (de)classified under property-specific types
  as they are (removed from) added to the property they type:    Added values
  are classified as instances of the property-specific type.   Removed values
  are    Declassified as instances of the property-specific type.    Classified
  as instances of the most specific generalization of the property-specific
  type that is not a property-specific type, unless the instances are indirectly
  classified by that generalization already. If there is no such property-specific
  type, removed values are not additionally classified. This enables values
  of the property to    Support more features than they would when they are
  not values of the property.   Have redefined or constrained features only
  while they are values of the property."
  ((|base_Classifier| :xmi-id "SysML.PropertySpecificType.base_Classifier"
    :range UML251:|Classifier| :multiplicity (1 1))))

(def-meta-constraint |1_only_one_property| |PropertySpecificType|
   "A classifier to which the PropertySpecificType stereotype is applied shall
    be referenced as the type of one and only one property."
   :operation-body
   "UML::Property.allInstances()->select(p | p.type = self.base_Classifier)->size() = 1")

(def-meta-assoc "SysML.E_extension_PropertySpecificType_base_Classifier"
  :name |E_extension_PropertySpecificType_base_Classifier|
  :metatype :extension
  :member-ends (("SysML.E_extension_PropertySpecificType_base_Classifier.extension_PropertySpecificType"
		 "extension_PropertySpecificType")
		(|PropertySpecificType| "base_Classifier"))
  :owned-ends  (("SysML.E_extension_PropertySpecificType_base_Classifier.extension_PropertySpecificType"
		 "extension_PropertySpecificType")))

(def-meta-assoc-end "SysML.E_extension_PropertySpecificType_base_Classifier.extension_PropertySpecificType"
    :type |PropertySpecificType|
    :multiplicity (1 1)
    :association "SysML.E_extension_PropertySpecificType_base_Classifier"
    :name "extension_PropertySpecificType")

;;; =========================================================
;;; ====================== ProxyPort
;;; =========================================================
(def-meta-stereotype |ProxyPort|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Port|)
 :packages (|SysML| |PortsAndFlows|)
 :xmi-id "SysML.ProxyPort")
 "Proxy ports identify features of the owning block or its internal parts
  that are available to external blocks through external connectors to the
  ports. They do not specify a separate element of the system from the owning
  block or internal parts. Actions on features of a proxy port have the same
  effect as if they were acting on features of the owning block or internal
  parts the port stands in for, and changes to features of the owning block
  or internal parts that the proxy port makes available to external blocks
  are visible to those blocks via connectors to the port. (This applies to
  provided features; for required features, see Section 9.3.2.10.) Proxy
  ports do not specify their own behaviors or internal parts, and shall be
  typed by interface blocks. Their nested ports shall also be proxy ports.
   A completely specified proxy port shall describe how any interaction through
  the port is handled or initiated. This can be achieved in several ways.
  For instance by making it behavioral, by binding it to a fully specified
  internal part or by having all its properties individually bound to internal
  parts. However, blocks can be defined with non-behavioral proxy ports that
  do not have internal connectors, with the expectation that these will be
  added in specialized blocks. Internal connectors to ports are the ones
  inside the port s owner (specifically, they are the ones that do not have
  a UML partwithPort on the connector end linked to the port, assuming NestedConnectorEnd
  is not applied to that end, or if NestedConnectorEnd is applied to that
  end, they are the connectors that have only ports in the property path
  of that end). The rest of the connectors linked to a port are external.
   Proxy ports can be connected to internal parts or ports on internal parts,
  identifying features on those parts or ports that are available to external
  blocks. When a proxy port is connected to a single internal part, the connector
  shall be a binding connector, or have the same semantics as a binding connector
  (the value of the proxy port and the connected internal part are the same;
  links of associations typing the connector are between all objects and
  themselves, and no others). When a proxy port is connected to multiple
  internal parts, the connectors have the same semantics as a single binding
  connector to an aggregate of those parts, supporting all their features,
  and treating flows and invocations from outside the aggregate as if they
  were to those parts, and flows and invocations it receives from those parts
  as if they were to the outside. This aggregate is not a separate element
  of the system, and only groups the internal parts for purposes of binding
  to the proxy port. Internal connectors to proxy ports can be typed by association
  blocks, including when the connector is binding."
  ((|base_Port| :xmi-id "SysML.ProxyPort.base_Port"
    :range UML251:|Port| :multiplicity (1 1))))

(def-meta-constraint |1_not_fullport| |ProxyPort|
   "Proxy ports shall not also be full ports. This applies even if some of
    the stereotypes are on subsetted or redefined ports."
   :operation-body
   "FullPort.allInstances()->excludes(self.base_Port)")

(def-meta-constraint |2_interfaceblock| |ProxyPort|
   "Proxy ports shall only be typed by interface blocks."
   :operation-body
   "InterfaceBlock.allInstances().base_Class->includes(self.base_Port.type)")

(def-meta-constraint |3_subports_are_proxyports| |ProxyPort|
   "Ports owned by the type of a proxy port shall be proxy ports."
   :operation-body
   "ProxyPort.allInstances().base_Port->includesAll(self.base_Port.class.ownedPort)")

(def-meta-assoc "SysML.E_extension_ProxyPort_base_Port"
  :name |E_extension_ProxyPort_base_Port|
  :metatype :extension
  :member-ends ((|ProxyPort| "base_Port")
		("SysML.E_extension_ProxyPort_base_Port.extension_ProxPort"
		 "extension_ProxPort"))
  :owned-ends  (("SysML.E_extension_ProxyPort_base_Port.extension_ProxPort"
		 "extension_ProxPort")))

(def-meta-assoc-end "SysML.E_extension_ProxyPort_base_Port.extension_ProxPort"
    :type |ProxyPort|
    :multiplicity (1 1)
    :association "SysML.E_extension_ProxyPort_base_Port"
    :name "extension_ProxPort")

;;; =========================================================
;;; ====================== QuantityKind
;;; =========================================================
(def-meta-class |QuantityKind|
   (:model :SYSML16 :superclasses NIL
    :packages (|SysML| |Libraries| |UnitAndQuantityKind|)
    :xmi-id "SysML.QuantityKind")
 "A QuantityKind is a kind of quantity that may be stated by means of defined
  units. For example, the quantity kind of length may be measured by units
  of meters, kilometers, or feet. QuantityKind is defined as a non-abstract
  SysML Block defined in the SysML UnitAndQuantityKind model library. QuantityKind,
  or a specialization of it, classifies an InstanceSpecification to define
  a particular  kind-of-quantity  in the sense of an  aspect common to mutually
  comparable quantities  [VIM3-1.2], where a SysML value property is understood
  to correspond to the VIM concept of  quantity  defined as a  property of
  a phenomenon, body or substance, where the property has a magnitude that
  can be expressed as a number and a reference  [VIM3-1.1]. Modelers specialize
  QuantityKind as done in SysML s QUDV model library or in a similar manner
  in other model libraries. The definitionURI of an InstanceSpecification
  classified by a kind of QuantityKind identifies the particular  kind-of-quantity
   [VIM3-1.2] that the InstanceSpecification represents. Two such InstanceSpecifications
  represent the same  kind-of-quantity  if and only if their definitionURIs
  have values and their values are equal. The only valid use of a QuantityKind
  instance is to be referenced by the quantityKind property of a ValueType
  or Unit. See the non-normative model library in E.5 for an optional way
  to specify more comprehensive definitions of units and quantity kinds as
  part of systems of units and systems of quantities. The name of a QuantityKind,
  its definitionURI, or other means may be used to link individual quantity
  kinds to additional sources of documentation such as this optional model
  library."
  ((|definitionURI| :xmi-id "SysML.QuantityKind.definitionURI"
    :range |String| :multiplicity (0 1))
   (|description| :xmi-id "SysML.QuantityKind.description"
    :range |String| :multiplicity (0 1))
   (|symbol| :xmi-id "SysML.QuantityKind.symbol"
    :range |String| :multiplicity (0 1))))

;;; =========================================================
;;; ====================== Rate
;;; =========================================================
(def-meta-stereotype |Rate|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Parameter|
						UML251:|ObjectNode|
						UML251:|ActivityEdge|)
 :packages (|SysML| |Activities|)
 :xmi-id "SysML.Rate")
 "When the  rate  stereotype is applied to an activity edge, it specifies
  the expected value of the number of objects and values that traverse the
  edge per time interval, that is, the expected value rate at which they
  leave the source node and arrive at the target node. It does not refer
  to the rate at which a value changes over time. When the stereotype is
  applied to a parameter, the parameter shall be streaming, and the stereotype
  gives the number of objects or values that flow in or out of the parameter
  per time interval while the behavior or operation is executing. Streaming
  is a characteristic of UML behavior parameters that supports the input
  and output of items while a behavior is executing, rather than only when
  the behavior starts and stops. The flow may be continuous or discrete,
  see the specialized rates in clause 11.3.2.1 and clause 11.3.2.3. The
  rate  stereotype has a rate property of type InstanceSpecification. The
  values of this property shall be instances of classifiers stereotyped by
   valueType  or  distributionDefinition , see  clause 8. In particular,
  the denominator for units used in the rate property shall be time units."
  ((|base_ActivityEdge| :xmi-id "SysML.Rate.base_ActivityEdge"
    :range UML251:|ActivityEdge| :multiplicity (0 1))
   (|base_ObjectNode| :xmi-id "SysML.Rate.base_ObjectNode"
    :range UML251:|ObjectNode| :multiplicity (0 1))
   (|base_Parameter| :xmi-id "SysML.Rate.base_Parameter"
    :range UML251:|Parameter| :multiplicity (0 1))
   (|rate| :xmi-id "SysML.Rate.rate"
    :range UML251:|InstanceSpecification| :multiplicity (1 1)
    :documentation
     "Value of the rate")))

(def-meta-constraint |1_streaming| |Rate|
   "When the  rate  stereotype is applied to a parameter, the parameter shall
    be streaming."
   :operation-body
   "self.base_Parameter->notEmpty() implies self.base_Parameter.isStream")

(def-meta-constraint |2_edges_rates| |Rate|
   "The rate of a parameter shall be less than or equal to rates on edges that
    come into or go out from pins and parameters nodes corresponding to the
    parameter."
   :operation-body
   "self.base_Parameter->notEmpty() implies (   let nodes: Set(UML::ObjectNode) =     if self.base_Parameter.owner.oclIsKindOf(UML::Behavior) then     let pOwner: UML::Behavior = self.base_Parameter.owner.oclAsType(UML::Behavior) in     UML::CallBehaviorAction.allInstances()->select(a | a.behavior = pOwner)     ->collect(a | a.argument->at(pOwner.ownedParameter->indexOf(self.base_Parameter)))     ->union(UML::StartObjectBehaviorAction.allInstances()->select(a | a.behavior() = pOwner)     ->collect(a | a.argument->at(pOwner.ownedParameter->indexOf(self.base_Parameter))))     ->union(UML::ActivityParameterNode.allInstances()->select(n | n.parameter = self.base_Parameter))->asSet()   else if self.base_Parameter.owner.oclIsKindOf(UML::Operation) then     let pOwner: UML::Operation = self.base_Parameter.owner.oclAsType(UML::Operation) in     UML::CallOperationAction.allInstances()->select(a | a.operation = pOwner)    ->collect(a | a.argument->at(pOwner.ownedParameter->indexOf(self.base_Parameter)))->asSet()   else     Set(UML::ObjectNode){}   endif endif in   nodes.incoming->flatten()->union(nodes.outgoing->flatten())   ->forAll(e | let eRate: Rate = Rate.allInstances()->any(r |  r.base_ActivityEdge=e) in   (not eRate.oclIsUndefined() and self.rate.specification.realValue() <= eRate.rate.specification.realValue())) )")

(def-meta-assoc "SysML.E_extension_Rate_base_ActivityEdge"
  :name |E_extension_Rate_base_ActivityEdge|
  :metatype :extension
  :member-ends (("SysML.E_extension_Rate_base_ActivityEdge.extension_Rate"
		 "extension_Rate")
		(|Rate| "base_ActivityEdge"))
  :owned-ends  (("SysML.E_extension_Rate_base_ActivityEdge.extension_Rate"
		 "extension_Rate")))

(def-meta-assoc-end "SysML.E_extension_Rate_base_ActivityEdge.extension_Rate"
    :type |Rate|
    :multiplicity (1 1)
    :association "SysML.E_extension_Rate_base_ActivityEdge"
    :name "extension_Rate")

(def-meta-assoc "SysML.E_extension_Rate_base_ObjectNode"
  :name |E_extension_Rate_base_ObjectNode|
  :metatype :extension
  :member-ends (("SysML.E_extension_Rate_base_ObjectNode.extension_Rate"
		 "extension_Rate")
		(|Rate| "base_ObjectNode"))
  :owned-ends  (("SysML.E_extension_Rate_base_ObjectNode.extension_Rate"
		 "extension_Rate")))

(def-meta-assoc-end "SysML.E_extension_Rate_base_ObjectNode.extension_Rate"
    :type |Rate|
    :multiplicity (1 1)
    :association "SysML.E_extension_Rate_base_ObjectNode"
    :name "extension_Rate")

(def-meta-assoc "SysML.E_extension_Rate_base_Parameter"
  :name |E_extension_Rate_base_Parameter|
  :metatype :extension
  :member-ends (("SysML.E_extension_Rate_base_Parameter.extension_Rate"
		 "extension_Rate")
		(|Rate| "base_Parameter"))
  :owned-ends  (("SysML.E_extension_Rate_base_Parameter.extension_Rate"
		 "extension_Rate")))

(def-meta-assoc-end "SysML.E_extension_Rate_base_Parameter.extension_Rate"
    :type |Rate|
    :multiplicity (1 1)
    :association "SysML.E_extension_Rate_base_Parameter"
    :name "extension_Rate")

;;; =========================================================
;;; ====================== Rationale
;;; =========================================================
(def-meta-stereotype |Rationale|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Comment|)
 :packages (|SysML| |ModelElements|)
 :xmi-id "SysML.Rationale")
 "A Rationale documents the justification for decisions and the requirements,
  design, and other decisions. A Rationale can be attached to any model element
  including relationships. It allows the user, for example, to specify a
  rationale that may reference more detailed documentation such as a trade
  study or analysis report. Rationale is a stereotype of comment and may
  be attached to any other model element in the same manner as a comment."
  ((|base_Comment| :xmi-id "SysML.Rationale.base_Comment"
    :range UML251:|Comment| :multiplicity (1 1))))

(def-meta-assoc "SysML.E_extension_Rationale_base_Comment"
  :name |E_extension_Rationale_base_Comment|
  :metatype :extension
  :member-ends (("SysML.E_extension_Rationale_base_Comment.extension_Rationale"
		 "extension_Rationale")
		(|Rationale| "base_Comment"))
  :owned-ends  (("SysML.E_extension_Rationale_base_Comment.extension_Rationale"
		 "extension_Rationale")))

(def-meta-assoc-end "SysML.E_extension_Rationale_base_Comment.extension_Rationale"
    :type |Rationale|
    :multiplicity (1 1)
    :association "SysML.E_extension_Rationale_base_Comment"
    :name "extension_Rationale")

;;; =========================================================
;;; ====================== Refine
;;; =========================================================
(def-meta-stereotype |Refine|
   (:model :SYSML16 :superclasses (|DirectedRelationshipPropertyPath|) :extends (UML251:|Abstraction|)
 :packages (|SysML| |Requirements|)
 :xmi-id "SysML.Refine")
 "The Refine stereotype specializes UML4SysML Refine and DirectedRelationshipPropertyPath
  to enable refinements to identify their sources and targets by a multi-level
  path of accessible properties from context blocks for the sources and targets."
  ((|base_Abstraction| :xmi-id "SysML.Refine.base_Abstraction"
    :range UML251:|Abstraction| :multiplicity (1 1) :redefined-property (|DirectedRelationshipPropertyPath|
									 |base_DirectedRelationship|))))

(def-meta-constraint |2_binary| |Refine|
   "Abstractions with a Refine stereotype or one of its specializations applied
    shall have exactly one client and one supplier."
   :operation-body
   "self.base_Abstraction.client->size()=1 and self.base_Abstraction.supplier->size()=1")

(def-meta-operation |getRefines| |Refine|
   "The query getRefines() gives all the requirements that are suppliers (
    to end of the concrete syntax) of a  Refine  relationships whose client
    is the element in parameter. This is a static query."
   :operation-body
   "Refine.allInstances()->select(base_Abstraction.client=ref).base_Abstraction.supplier"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name '|ref| :parameter-type 'UML251:|NamedElement|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|AbstractRequirement|
			:parameter-return-p T))
)

(def-meta-assoc "SysML.E_extension_Refine_base_Abstraction"
  :name |E_extension_Refine_base_Abstraction|
  :metatype :extension
  :member-ends ((|Refine| "base_Abstraction")
		("SysML.E_extension_Refine_base_Abstraction.extension_Refine"
		 "extension_Refine"))
  :owned-ends  (("SysML.E_extension_Refine_base_Abstraction.extension_Refine"
		 "extension_Refine")))

(def-meta-assoc-end "SysML.E_extension_Refine_base_Abstraction.extension_Refine"
    :type |Refine|
    :multiplicity (1 1)
    :association "SysML.E_extension_Refine_base_Abstraction"
    :name "extension_Refine")

;;; =========================================================
;;; ====================== Requirement
;;; =========================================================
(def-meta-stereotype |Requirement|
   (:model :SYSML16 :superclasses (|AbstractRequirement|) :extends (UML251:|Class|)
 :packages (|SysML| |Requirements|)
 :xmi-id "SysML.Requirement")
 "A requirement specifies a capability or condition that must (or should)
  be satisfied. A requirement may specify a function that a system must perform
  or a performance condition that a system must satisfy. Requirements are
  used to establish a contract between the customer (or other stakeholder)
  and those responsible for designing and implementing the system.  A requirement
  is a stereotype of both Class and Abstract Requirement. Compound requirements
  can be created by using the nesting capability of the class definition
  mechanism. The default interpretation of a compound requirement, unless
  stated differently by the compound requirement itself, is that all its
  subrequirements shall be satisfied for the compound requirement to be satisfied.
  Subrequirements shall be accessed through the  nestedClassifier  property
  of a class. When a requirement has nested requirements, all the nested
  requirements apply as part of the container requirement. Deleting the container
  requirement deleted the nested requirements, a functionality inherited
  from UML."
  ((|base_Class| :xmi-id "SysML.Requirement.base_Class"
    :range UML251:|Class| :multiplicity (1 1) :redefined-property (|AbstractRequirement|
								   |base_NamedElement|))))

(def-meta-constraint |1_no_operation| |Requirement|
   "The property  ownedOperation  shall be empty."
   :operation-body
   "self.base_Class.ownedOperation->isEmpty()")

(def-meta-constraint |2_no_attribute| |Requirement|
   "The property  ownedAttribute  shall be empty."
   :operation-body
   "self.base_Class.ownedAttribute->isEmpty()")

(def-meta-constraint |3_no_association| |Requirement|
   "Classes stereotyped by  requirement  shall not participate in associations."
   :operation-body
   "UML::Association.allInstances().memberEnd->flatten().type->excludes(self.base_Class)")

(def-meta-constraint |4_no_generalization| |Requirement|
   "Classes stereotyped by  requirement  shall not participate in generalizations."
   :operation-body
   "UML::Classifier.allInstances().general->flatten()->excludes(self.base_Class)")

(def-meta-constraint |5_nestedclassifiers_are_requirements| |Requirement|
   "A nested classifier of a class stereotyped by Requirement or one of its
    specializations shall also be stereotyped by Requirement or one of its
    specializations"
   :operation-body
   "self.base_Class.nestedClassifier->forAll(c | Requirement.allInstances().base_Class->includes(c))")

(def-meta-constraint |6_not_a_type| |Requirement|
   "Classes stereotyped by  requirement  shall not be used to type any other
    model element."
   :operation-body
   "UML::TypedElement.allInstances().type->excludes(self.base_Class)")

(def-meta-assoc "SysML.E_extension_Requirement_base_Class"
  :name |E_extension_Requirement_base_Class|
  :metatype :extension
  :member-ends (("SysML.E_extension_Requirement_base_Class.extension_Requirement"
		 "extension_Requirement")
		(|Requirement| "base_Class"))
  :owned-ends  (("SysML.E_extension_Requirement_base_Class.extension_Requirement"
		 "extension_Requirement")))

(def-meta-assoc-end "SysML.E_extension_Requirement_base_Class.extension_Requirement"
    :type |Requirement|
    :multiplicity (1 1)
    :association "SysML.E_extension_Requirement_base_Class"
    :name "extension_Requirement")

;;; =========================================================
;;; ====================== Satisfy
;;; =========================================================
(def-meta-stereotype |Satisfy|
   (:model :SYSML16 :superclasses (|Trace|) :extends NIL
 :packages (|SysML| |Requirements|)
 :xmi-id "SysML.Satisfy")
 "A Satisfy relationship is a dependency between a requirement and a model
  element that fulfills the requirement. As with other dependencies, the
  arrow direction points from the satisfying (client) model element to the
  (supplier) requirement that is satisfied."
  ())

(def-meta-constraint |1_supplier_is_requirement| |Satisfy|
   "The supplier shall be an element stereotyped by any subtype of  AbstractRequirement
    ."
   :operation-body
   "AbstractRequirement.allInstances().base_NamedElement->includes(self.base_Abstraction.supplier)")

(def-meta-operation |getSatisfies| |Satisfy|
   ""
   :operation-body
   "Satisfy.allInstances()->select(base_Abstraction.client=ref).base_Abstraction.supplier"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name '|ref| :parameter-type 'UML251:|NamedElement|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|AbstractRequirement|
			:parameter-return-p T))
)

;;; =========================================================
;;; ====================== Stakeholder
;;; =========================================================
(def-meta-stereotype |Stakeholder|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Classifier|)
 :packages (|SysML| |ModelElements|)
 :xmi-id "SysML.Stakeholder")
 "A stakeholder represents a role, group, or individual who has concerns
  that will be addressed by the View of the model."
  ((|base_Classifier| :xmi-id "SysML.Stakeholder.base_Classifier"
    :range UML251:|Classifier| :multiplicity (1 1))
   (|concern| :xmi-id "SysML.Stakeholder.concern"
    :range |String| :multiplicity (0 -1) :is-derived-p T)
   (|concernList| :xmi-id "SysML.Stakeholder.concernList"
    :range UML251:|Comment| :multiplicity (0 -1))))

(def-meta-constraint |1_not_association| |Stakeholder|
   "A Stakeholder stereotype can only be applied to UML::Actor or UML::Class
    which are not a UML::Association."
   :operation-body
   "self.base_Classifier.oclIsKindOf(UML::Actor) or  (self.base_Classifier.oclIsKindOf(UML::Class) and not self.base_Classifier.oclIsKindOf(UML::Association))")

(def-meta-constraint |not_association| |Stakeholder|
   "The stakeholder stereotype can only be applied to UML::Actor or UML::Class
    which are not a UML::Association"
   :operation-body
   "(self.base_Classifier.oclIsKindOf(UML::Actor) or self.base_Classifier.oclIsKindOf(UML::Class)) and not self.base_Classifier.oclIsKindOf(UML::Association)")

(def-meta-assoc "SysML.E_extension_Stakeholder_base_Classifier"
  :name |E_extension_Stakeholder_base_Classifier|
  :metatype :extension
  :member-ends ((|Stakeholder| "base_Classifier")
		("SysML.E_extension_Stakeholder_base_Classifier.extension_Stakeholder"
		 "extension_Stakeholder"))
  :owned-ends  (("SysML.E_extension_Stakeholder_base_Classifier.extension_Stakeholder"
		 "extension_Stakeholder")))

(def-meta-assoc-end "SysML.E_extension_Stakeholder_base_Classifier.extension_Stakeholder"
    :type |Stakeholder|
    :multiplicity (1 1)
    :association "SysML.E_extension_Stakeholder_base_Classifier"
    :name "extension_Stakeholder")

;;; =========================================================
;;; ====================== TestCase
;;; =========================================================
(def-meta-stereotype |TestCase|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Behavior|
						UML251:|Operation|)
 :packages (|SysML| |Requirements|)
 :xmi-id "SysML.TestCase")
 "A test case is a method for verifying a requirement is satisfied."
  ((|base_Behavior| :xmi-id "SysML.TestCase.base_Behavior"
    :range UML251:|Behavior| :multiplicity (0 1))
   (|base_Operation| :xmi-id "SysML.TestCase.base_Operation"
    :range UML251:|Operation| :multiplicity (0 1))))

(def-meta-constraint |1_return_verdictkind| |TestCase|
   "The type of return parameter of the stereotyped model element shall be
    VerdictKind. (note this is consistent with the UML Testing Profile)."
   :operation-body
   "(self.base_Behavior->notEmpty() implies self.base_Behavior.ownedParameter->exists(p | p.direction=UML::ParameterDirectionKind::return and p.type = VerdictKind )) and (self.base_Operation->notEmpty() implies self.base_Operation.ownedParameter->exists(p | p.direction=UML::ParameterDirectionKind::return and p.type = VerdictKind )) ")

(def-meta-assoc "SysML.E_extension_TestCase_base_Behavior"
  :name |E_extension_TestCase_base_Behavior|
  :metatype :extension
  :member-ends (("SysML.E_extension_TestCase_base_Behavior.extension_TestCase"
		 "extension_TestCase")
		(|TestCase| "base_Behavior"))
  :owned-ends  (("SysML.E_extension_TestCase_base_Behavior.extension_TestCase"
		 "extension_TestCase")))

(def-meta-assoc-end "SysML.E_extension_TestCase_base_Behavior.extension_TestCase"
    :type |TestCase|
    :multiplicity (1 1)
    :association "SysML.E_extension_TestCase_base_Behavior"
    :name "extension_TestCase")

(def-meta-assoc "SysML.E_extension_TestCase_base_Operation"
  :name |E_extension_TestCase_base_Operation|
  :metatype :extension
  :member-ends (("SysML.E_extension_TestCase_base_Operation.extension_TestCase"
		 "extension_TestCase")
		(|TestCase| "base_Operation"))
  :owned-ends  (("SysML.E_extension_TestCase_base_Operation.extension_TestCase"
		 "extension_TestCase")))

(def-meta-assoc-end "SysML.E_extension_TestCase_base_Operation.extension_TestCase"
    :type |TestCase|
    :multiplicity (1 1)
    :association "SysML.E_extension_TestCase_base_Operation"
    :name "extension_TestCase")

;;; =========================================================
;;; ====================== Trace
;;; =========================================================
(def-meta-stereotype |Trace|
   (:model :SYSML16 :superclasses (|DirectedRelationshipPropertyPath|) :extends (UML251:|Abstraction|)
 :packages (|SysML| |Requirements|)
 :xmi-id "SysML.Trace")
 "The Trace stereotype specializes UML4SysML Trace and DirectedRelationshipPropertyPath
  to enable traces to identify their sources and targets by a multi-level
  path of accessible properties from context blocks for the sources and targets."
  ((|base_Abstraction| :xmi-id "SysML.Trace.base_Abstraction"
    :range UML251:|Abstraction| :multiplicity (1 1) :redefined-property (|DirectedRelationshipPropertyPath|
									 |base_DirectedRelationship|))))

(def-meta-constraint |2_binary| |Trace|
   "Abstractions with a Trace stereotype or one of its specializations applied
    shall have exactly one client and one supplier."
   :operation-body
   "self.base_Abstraction.client->size()=1 and self.base_Abstraction.supplier->size()=1")

(def-meta-operation |getTracedFrom| |Trace|
   "The query getTracedFrom() gives all the requirements that are clients (
    from  end of the concrete syntax) of a  Trace  relationship whose supplier
    is the element in parameter. This is a static query."
   :operation-body
   "AbstractRequirement.allInstances()->select(tracedTo->includes(ref)) "
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name '|ref| :parameter-type 'UML251:|NamedElement|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|AbstractRequirement|
			:parameter-return-p T))
)

(def-meta-assoc "SysML.E_extension_Trace_base_Abstraction"
  :name |E_extension_Trace_base_Abstraction|
  :metatype :extension
  :member-ends ((|Trace| "base_Abstraction")
		("SysML.E_extension_Trace_base_Abstraction.extension_Trace"
		 "extension_Trace"))
  :owned-ends  (("SysML.E_extension_Trace_base_Abstraction.extension_Trace"
		 "extension_Trace")))

(def-meta-assoc-end "SysML.E_extension_Trace_base_Abstraction.extension_Trace"
    :type |Trace|
    :multiplicity (1 1)
    :association "SysML.E_extension_Trace_base_Abstraction"
    :name "extension_Trace")

;;; =========================================================
;;; ====================== TriggerOnNestedPort
;;; =========================================================
(def-meta-stereotype |TriggerOnNestedPort|
   (:model :SYSML16 :superclasses (|ElementPropertyPath|) :extends (UML251:|Trigger|)
 :packages (|SysML| |PortsAndFlows|)
 :xmi-id "SysML.TriggerOnNestedPort")
 "This extends trigger to support nested ports. It identifies a nested port
  by a multi-level path of ports from the object receiving the triggering
  events. It is not applicable to full ports."
  ((|base_Trigger| :xmi-id "SysML.TriggerOnNestedPort.base_Trigger"
    :range UML251:|Trigger| :multiplicity (1 1) :redefined-property (|ElementPropertyPath|
								     |base_Element|))
   (|onNestedPort| :xmi-id "SysML.TriggerOnNestedPort.onNestedPort"
    :range UML251:|Port| :multiplicity (1 -1) :is-ordered-p T
    :documentation
     "Gives a series of ports that identifies a port on which the event is occurring,
      in the context of a block in which the trigger is used. The ordering of
      ports is from a port of the receiving object, through a port of each intermediate
      block that types the preceding port, ending in a property with a type that
      owns or inherits the port given by the port property of the trigger. The
      port property is not included in the onNestedPort list. The same port might
      appear more than once because a block can own a port with the same block
      as a type, or another block that has the same property." :redefined-property (|ElementPropertyPath|
										    |propertyPath|))))

(def-meta-constraint |1_single_proxyport| |TriggerOnNestedPort|
   "The port property of the stereotyped trigger shall have exactly one value,
    and the value cannot be a full port."
   :operation-body
   "self.base_Trigger.port->size()=1 and FullPort.allInstances().base_Port->excludes(self.base_Trigger.port)")

(def-meta-constraint |2_no_fullport| |TriggerOnNestedPort|
   "The values of the onNestedPort property shall not be full ports."
   :operation-body
   "FullPort.allInstances().base_Port->excludesAll(self.onNestedPort)")

(def-meta-constraint |3_onnestedport_first_owned_by_context| |TriggerOnNestedPort|
   "The port at the first position in the onNestedPort list shall be owned
    by a block in which the trigger is used, or one of the block s generalizations."
   :operation-body
   "let theContext: UML::Classifier = if self.base_Trigger.owner.oclIsKindOf(UML::Action) then  self.base_Trigger.owner.oclAsType(UML::Action)._'context'.oclAsType(UML::Class) else  self.base_Trigger.owner.oclAsType(UML::Transition).containingStateMachine()._'context'.oclAsType(UML::Class) endif in let owners: Set(UML::Classifier) = theContext->closure(general)->including(theContext) in owners->includes(self.onNestedPort->first().owner)")

(def-meta-constraint |4_path_consistency| |TriggerOnNestedPort|
   "The port at each successive position of the onNestedPort attribute, following
    the first position, shall be owned by the Block that types the port at
    the immediately preceding position, or a generalization of the Block."
   :operation-body
   "self.onNestedPort->size() >1 implies self.onNestedPort->subSequence(2, self.onNestedPort->size())->forAll(p |   let np: UML::Port = self.onNestedPort->at(self.onNestedPort->indexOf(p)-1) in   let owners: Set(UML::Classifier) = np.type.oclAsType(UML::Classifier)->including(np.type.oclAsType(UML::Classifier)) in   owners->includes(p.owner))")

(def-meta-constraint |5_onnestedport_last_type_owns_trigger_port| |TriggerOnNestedPort|
   "The type of the port at the last position of the onNestedPort list must
    own or inherit the port of the stereotyped trigger."
   :operation-body
   "self.onNestedPort->last().type.oclAsType(UML::Classifier).allFeatures()->includes(self.base_Trigger.port)")

(def-meta-assoc "SysML.A_triggerOnNestedPort_onNestedPort"
  :name |A_triggerOnNestedPort_onNestedPort|
  :metatype :association
  :member-ends (("SysML.A_triggerOnNestedPort_onNestedPort.triggerOnNestedPort"
		 "triggerOnNestedPort")
		(|TriggerOnNestedPort| "onNestedPort"))
  :owned-ends  (("SysML.A_triggerOnNestedPort_onNestedPort.triggerOnNestedPort"
		 "triggerOnNestedPort")))

(def-meta-assoc-end "SysML.A_triggerOnNestedPort_onNestedPort.triggerOnNestedPort"
    :type |TriggerOnNestedPort|
    :multiplicity (0 -1)
    :association "SysML.A_triggerOnNestedPort_onNestedPort"
    :name "triggerOnNestedPort")

(def-meta-assoc "SysML.E_extension_TriggerOnNestedPort_base_Trigger"
  :name |E_extension_TriggerOnNestedPort_base_Trigger|
  :metatype :extension
  :member-ends ((|TriggerOnNestedPort| "base_Trigger")
		("SysML.E_extension_TriggerOnNestedPort_base_Trigger.extension_TriggerOnNestedPort"
		 "extension_TriggerOnNestedPort"))
  :owned-ends  (("SysML.E_extension_TriggerOnNestedPort_base_Trigger.extension_TriggerOnNestedPort"
		 "extension_TriggerOnNestedPort")))

(def-meta-assoc-end "SysML.E_extension_TriggerOnNestedPort_base_Trigger.extension_TriggerOnNestedPort"
    :type |TriggerOnNestedPort|
    :multiplicity (1 1)
    :association "SysML.E_extension_TriggerOnNestedPort_base_Trigger"
    :name "extension_TriggerOnNestedPort")

;;; =========================================================
;;; ====================== Unit
;;; =========================================================
(def-meta-class |Unit|
   (:model :SYSML16 :superclasses NIL
    :packages (|SysML| |Libraries| |UnitAndQuantityKind|)
    :xmi-id "SysML.Unit")
 "QuantityKind is a kind of quantity that may be stated by means of defined
  units. For example, the quantity kind of length may be measured by units
  of meters, kilometers, or feet. QuantityKind is defined as a non-abstract
  SysML Block defined in the SysML UnitAndQuantityKind model library. QuantityKind,
  or a specialization of it, classifies an InstanceSpecification to define
  a particular  kind-of-quantity  in the sense of an  aspect common to mutually
  comparable quantities  [VIM3-1.2], where a SysML value property is understood
  to correspond to the VIM concept of  quantity  defined as a  property of
  a phenomenon, body or substance, where the property has a magnitude that
  can be expressed as a number and a reference  [VIM3-1.1]. Modelers specialize
  QuantityKind as done in SysML s QUDV model library or in a similar manner
  in other model libraries. The definitionURI of an InstanceSpecification
  classified by a kind of QuantityKind identifies the particular  kind-of-quantity
   [VIM3-1.2] that the InstanceSpecification represents. Two such InstanceSpecifications
  represent the same  kind-of-quantity  if and only if their definitionURIs
  have values and their values are equal. The only valid use of a QuantityKind
  instance is to be referenced by the quantityKind property of a ValueType
  or Unit. See the non-normative model library in E.5 for an optional way
  to specify more comprehensive definitions of units and quantity kinds as
  part of systems of units and systems of quantities. The name of a QuantityKind,
  its definitionURI, or other means may be used to link individual quantity
  kinds to additional sources of documentation such as this optional model
  library. A Unit is a quantity in terms of which the magnitudes of other
  quantities that have the same quantity kind can be stated. A unit often
  relies on precise and reproducible ways to measure the unit. For example,
  a unit of length such as meter may be specified as a multiple of a particular
  wavelength of light. A unit may also specify less stable or precise ways
  to express some value, such as a cost expressed in some currency, or a
  severity rating measured by a numerical scale. Unit is defined as a non-abstract
  SysML Block defined in the SysML UnitAndQuantityKind model library. Unit,
  or a specialization of it, classifies an InstanceSpecification to define
  a particular  measurement unit  in the sense of a  real scalar quantity,
  defined and adopted by convention, with which any other quantity of the
  same kind can be compared to express the ratio of the two quantities as
  a number  [VIM3-1.9], where a SysML value property is understood to correspond
  to the VIM concept of  quantity  defined as a  property of a phenomenon,
  body or substance, where the property has a magnitude that can be expressed
  as a number and a reference  [VIM3-1.1]. Modelers specialize Unit as done
  in SysML s QUDV model library or in a similar manner in other model libraries.
  The definitionURI of an InstanceSpecification classified by a kind of Unit
  identifies the particular  measurement unit  [VIM3-1.9] that the InstanceSpecification
  represents. Two such InstanceSpecifications represent the same  measurement
  unit  if and only if their definitionURIs have values and their values
  are equal. The only valid use of a Unit instance is to be referenced by
  the unit property of a ValueType stereotype. See the non-normative model
  library in E.5 for an optional way to specify more comprehensive definitions
  of units and quantity kinds as part of systems of units and systems of
  quantities. The name of a Unit, its definitionURI, or other means may be
  used to link individual units to additional sources of documentation such
  as this optional model library."
  ((|definitionURI| :xmi-id "SysML.Unit.definitionURI"
    :range |String| :multiplicity (0 1))
   (|description| :xmi-id "SysML.Unit.description"
    :range |String| :multiplicity (0 1))
   (|quantityKind| :xmi-id "SysML.Unit.quantityKind"
    :range |QuantityKind| :multiplicity (0 -1))
   (|symbol| :xmi-id "SysML.Unit.symbol"
    :range |String| :multiplicity (0 1))))

(def-meta-assoc "SysML.A_quantityKind_unit"
  :name |A_quantityKind_unit|
  :metatype :association
  :member-ends ((|Unit| "quantityKind")
		("SysML.A_quantityKind_unit.unit" "unit"))
  :owned-ends  (("SysML.A_quantityKind_unit.unit" "unit")))

(def-meta-assoc-end "SysML.A_quantityKind_unit.unit"
    :type |Unit|
    :multiplicity (0 -1)
    :association "SysML.A_quantityKind_unit"
    :name "unit")

;;; =========================================================
;;; ====================== ValueType
;;; =========================================================
(def-meta-stereotype |ValueType|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|DataType|)
 :packages (|SysML| |Blocks|)
 :xmi-id "SysML.ValueType")
 "A ValueType defines types of values that may be used to express information
  about a system, but cannot be identified as the target of any reference.
  Since a value cannot be identified except by means of the value itself,
  each such value within a model is independent of any other, unless other
  forms of constraints are imposed.  Value types may be used to type properties,
  operation parameters, or potentially other elements within SysML. SysML
  defines ValueType as a stereotype of UML DataType to establish a more neutral
  term for system values that may never be given a concrete data representation.
  For example, the SysML  Real  ValueType expresses the mathematical concept
  of a real number, but does not impose any restrictions on the precision
  or scale of a fixed or floating-point representation that expresses this
  concept. More specific value types can define the concrete data representations
  that a digital computer can process, such as conventional Float, Integer,
  or String types.  SysML ValueType adds an ability to carry a unit of measure
  and quantity kind associated with the value. A quantity kind is a kind
  of quantity that may be stated in terms of defined units, but does not
  restrict the selection of a unit to state the value. A unit is a particular
  value in terms of which a quantity of the same quantity kind may be expressed.
  A SysML ValueType and its quantityKind establishes, via UML typing, the
  associative relationship between a particular  quantity  [VIM3-1.1] (modeled
  as a SysML value property typed by a ValueType) and a  kind of quantity
   [VIM3-1.2] (the ValueType::quantityKind of the SysML value property s
  type). This UML/SysML associative relationship reflects the terminological
  distinction made in VIM3 between the concepts of  quantity  [VIM3-1.1]
  and  kind-of-quantity  [VIM3- 1.2] that  cannot be in a generic or partitive
  hierarchical relation to each other  [Dybkaer-2010].  A SysML ValueType
  may define its own properties and/or operations, just as for a UML DataType.
  See 8.3.2.4, Block for property classifications that SysML defines for
  either a Block or ValueType."
  ((|base_DataType| :xmi-id "SysML.ValueType.base_DataType"
    :range UML251:|DataType| :multiplicity (1 1))
   (|quantityKind| :xmi-id "SysML.ValueType.quantityKind"
    :range UML251:|InstanceSpecification| :multiplicity (0 1)
    :documentation
     "A ValueType defines types of values that may be used to express information
      about a system, but cannot be identified as the target of any reference.
      Since a value cannot be identified except by means of the value itself,
      each such value within a model is independent of any other, unless other
      forms of constraints are imposed.  Value types may be used to type properties,
      operation parameters, or potentially other elements within SysML. SysML
      defines ValueType as a stereotype of UML DataType to establish a more neutral
      term for system values that may never be given a concrete data representation.
      For example, the SysML  Real  ValueType expresses the mathematical concept
      of a real number, but does not impose any restrictions on the precision
      or scale of a fixed or floating-point representation that expresses this
      concept. More specific value types can define the concrete data representations
      that a digital computer can process, such as conventional Float, Integer,
      or String types.  SysML ValueType adds an ability to carry a unit of measure
      and quantity kind associated with the value. A quantity kind is a kind
      of quantity that may be stated in terms of defined units, but does not
      restrict the selection of a unit to state the value. A unit is a particular
      value in terms of which a quantity of the same quantity kind may be expressed.
      A SysML ValueType and its quantityKind establishes, via UML typing, the
      associative relationship between a particular  quantity  [VIM3-1.1] (modeled
      as a SysML value property typed by a ValueType) and a  kind of quantity
       [VIM3-1.2] (the ValueType::quantityKind of the SysML value property s
      type). This UML/SysML associative relationship reflects the terminological
      distinction made in VIM3 between the concepts of  quantity  [VIM3-1.1]
      and  kind-of-quantity  [VIM3- 1.2] that  cannot be in a generic or partitive
      hierarchical relation to each other  [Dybkaer-2010].  A SysML ValueType
      may define its own properties and/or operations, just as for a UML DataType.
      See 8.3.2.4, Block for property classifications that SysML defines for
      either a Block or ValueType.")
   (|unit| :xmi-id "SysML.ValueType.unit"
    :range UML251:|InstanceSpecification| :multiplicity (0 1)
    :documentation
     "A quantity, represented by an InstanceSpecification classified by a kind
      of SysML Unit, in terms of which the magnitudes of other quantities that
      have the same quantity kind can be stated.")))

(def-meta-constraint |1_specializations_are_valuetypes| |ValueType|
   "Any classifier that specializes a ValueType shall also have the ValueType
    stereotype applied."
   :operation-body
   "UML::Classifier.allInstances()->forAll(c | c.general->includes(self.base_DataType) implies ValueType.allInstances().base_DataType->includes(c))")

(def-meta-constraint |2_unit| |ValueType|
   "The unit of a ValueType, if any, shall be an InstanceSpecification classified
    by SysML s Unit block in the UnitAndQuantityKind model library or a specialization
    of it."
   :operation-body
   "self.unit->notEmpty() and self.unit.classifier->notEmpty() implies self.unit.classifier->forAll(c | c.oclIsKindOf(Libraries::UnitAndQuantityKind::Unit))")

(def-meta-constraint |3_quantitykind| |ValueType|
   "The quantityKind of a ValueType, if any, shall be an InstanceSpecification
    classified by SysML s QuantityKind block in the UnitAndQuantityKind model
    library or a specialization of it."
   :operation-body
   "self.quantityKind->notEmpty() and self.quantityKind.classifier->notEmpty() implies self.quantityKind.classifier->forAll(c | c.oclIsKindOf(Libraries::UnitAndQuantityKind::QuantityKind))")

(def-meta-assoc "SysML.A_valueType_quantityKind"
  :name |A_valueType_quantityKind|
  :metatype :association
  :member-ends (("SysML.A_valueType_quantityKind.valueType" "valueType")
		(|ValueType| "quantityKind"))
  :owned-ends  (("SysML.A_valueType_quantityKind.valueType" "valueType")))

(def-meta-assoc-end "SysML.A_valueType_quantityKind.valueType"
    :type |ValueType|
    :multiplicity (0 -1)
    :association "SysML.A_valueType_quantityKind"
    :name "valueType")

(def-meta-assoc "SysML.A_valueType_unit"
  :name |A_valueType_unit|
  :metatype :association
  :member-ends (("SysML.A_valueType_unit.valueType" "valueType")
		(|ValueType| "unit"))
  :owned-ends  (("SysML.A_valueType_unit.valueType" "valueType")))

(def-meta-assoc-end "SysML.A_valueType_unit.valueType"
    :type |ValueType|
    :multiplicity (0 -1)
    :association "SysML.A_valueType_unit"
    :name "valueType")

(def-meta-assoc "SysML.E_extension_ValueType_base_DataType"
  :name |E_extension_ValueType_base_DataType|
  :metatype :extension
  :member-ends (("SysML.E_extension_ValueType_base_DataType.extension_ValueType"
		 "extension_ValueType")
		(|ValueType| "base_DataType"))
  :owned-ends  (("SysML.E_extension_ValueType_base_DataType.extension_ValueType"
		 "extension_ValueType")))

(def-meta-assoc-end "SysML.E_extension_ValueType_base_DataType.extension_ValueType"
    :type |ValueType|
    :multiplicity (1 1)
    :association "SysML.E_extension_ValueType_base_DataType"
    :name "extension_ValueType")

;;; =========================================================
;;; ====================== Verify
;;; =========================================================
(def-meta-stereotype |Verify|
   (:model :SYSML16 :superclasses (|Trace|) :extends NIL
 :packages (|SysML| |Requirements|)
 :xmi-id "SysML.Verify")
 "A Verify relationship is a dependency between a requirement and a test
  case or other model element that can determine whether a system fulfills
  the requirement. As with other dependencies, the arrow direction points
  from the (client) element to the (supplier) requirement."
  ())

(def-meta-constraint |1_supplier_is_requirement| |Verify|
   "The supplier shall be an element stereotyped by any subtype of  AbstractRequirement
    ."
   :operation-body
   "AbstractRequirement.allInstances().base_NamedElement->includes(self.base_Abstraction.supplier)")

(def-meta-operation |getVerifies| |Verify|
   "The query getVerifies() gives all the requirements that are suppliers (
     to  end of the concrete syntax ) of a  Verify  relationships whose client
    is the element in parameter. This is a static query."
   :operation-body
   "Verify.allInstances()->select(base_Abstraction.client=ref).base_Abstraction.supplier"
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name '|ref| :parameter-type 'UML251:|NamedElement|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|AbstractRequirement|
			:parameter-return-p T))
)

;;; =========================================================
;;; ====================== View
;;; =========================================================
(def-meta-stereotype |View|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Class|)
 :packages (|SysML| |ModelElements|)
 :xmi-id "SysML.View")
 "A View is a model element that represents a real world artifact that can
  be presented to stakeholders. The view is the result of querying one or
  more models that are defined by a viewpoint method. The view shall conform
  to the viewpoint in terms of the viewpoint stakeholders, concerns, method,
  language, and presentation requirements.  It is sometimes desirable to
  construct views from other views, and to establish an order for presenting
  the views. Views may include one or more views as properties, each of which
  conforms to their viewpoint. The order of the referenced views is reflected
  in the property order.  The information may be presented to the stakeholder
  in any format specified by the viewpoint, which may include figures, tables,
  plots, entire documents, presentation slides, or video."
  ((|base_Class| :xmi-id "SysML.View.base_Class"
    :range UML251:|Class| :multiplicity (1 1))
   (|stakeholder| :xmi-id "SysML.View.stakeholder"
    :range |Stakeholder| :multiplicity (0 -1) :is-derived-p T
    :documentation
     "The list of stakeholders is derived from the viewpoint the view conforms
      to.")
   (|viewpoint| :xmi-id "SysML.View.viewpoint"
    :range |Viewpoint| :multiplicity (1 1) :is-derived-p T
    :documentation
     "The viewpoint for this View is derived from the conform relationship.")))

(def-meta-constraint |1_single_viewpoint| |View|
   "A view shall only conform to a single viewpoint"
   :operation-body
   "Conform.allInstances()->select(base_Generalization.specific = self.base_Class)->size() = 1")

(def-meta-constraint |2_viewpoint_derived_from_conform| |View|
   "The derived value of the viewpoint shall be the classifier stereotyped
    by Viewpoint that is the general classifier of the generalization relationship
    stereotyped by Conform for which the View is the specific classifier"
   :operation-body
   "self.viewpoint = Viewpoint.allInstances()->any(base_Class = Conform.allInstances()->any(base_Generalization.specific = self.base_Class).base_Generalization.general)")

(def-meta-constraint |3_stakeholder_derived_from_conform| |View|
   "The derived values of the stakeholder attribute shall be the classifiers
    stereotyped by Stakeholder that are the values of the stakeholder attribute
    of the general classifier of the generalization relationship stereotyped
    by Conform for which the View is the specific classifier."
   :operation-body
   "self.stakeholder = Viewpoint.allInstances()->any(base_Class = Conform.allInstances()->any(base_Generalization.specific = self.base_Class).base_Generalization.general).stakeholder")

(def-meta-assoc "SysML.E_extension_View_base_Class"
  :name |E_extension_View_base_Class|
  :metatype :extension
  :member-ends ((|View| "base_Class")
		("SysML.E_extension_View_base_Class.extension_View"
		 "extension_View"))
  :owned-ends  (("SysML.E_extension_View_base_Class.extension_View"
		 "extension_View")))

(def-meta-assoc-end "SysML.E_extension_View_base_Class.extension_View"
    :type |View|
    :multiplicity (1 1)
    :association "SysML.E_extension_View_base_Class"
    :name "extension_View")

;;; =========================================================
;;; ====================== Viewpoint
;;; =========================================================
(def-meta-stereotype |Viewpoint|
   (:model :SYSML16 :superclasses NIL :extends (UML251:|Class|)
 :packages (|SysML| |ModelElements|)
 :xmi-id "SysML.Viewpoint")
 "A Viewpoint is a specification of the conventions and rules for constructing
  and using a view for the purpose of addressing a set of stakeholder concerns.
  The languages and methods for specifying a view may reference languages
  and methods in another viewpoint. They specify the elements expected to
  be represented in the view, and may be formally or informally defined.
  For example, the security viewpoint may require the security requirements,
  security functional and physical architecture, and security test cases."
  ((|base_Class| :xmi-id "SysML.Viewpoint.base_Class"
    :range UML251:|Class| :multiplicity (1 1))
   (|concern| :xmi-id "SysML.Viewpoint.concern"
    :range |String| :multiplicity (0 -1) :is-derived-p T
    :documentation
     "The interest of the stakeholders displayed as the body of the comments
      from concernList.")
   (|concernList| :xmi-id "SysML.Viewpoint.concernList"
    :range UML251:|Comment| :multiplicity (0 -1)
    :documentation
     "The interests of the stakeholders addressed by this viewpoint.")
   (|language| :xmi-id "SysML.Viewpoint.language"
    :range |String| :multiplicity (0 -1)
    :documentation
     "The languages used to express the models that represent content which is
      represented by the view. The language specification such as its metamodel,
      profile, or other language specification is referred to by its URI.")
   (|method| :xmi-id "SysML.Viewpoint.method"
    :range UML251:|Behavior| :multiplicity (0 -1) :is-derived-p T
    :documentation
     "The behavior is derived from the method of the operation with the Create
      stereotype.")
   (|presentation| :xmi-id "SysML.Viewpoint.presentation"
    :range |String| :multiplicity (0 -1)
    :documentation
     "The specifications prescribed for formatting and styling the view.")
   (|purpose| :xmi-id "SysML.Viewpoint.purpose"
    :range |String| :multiplicity (1 1)
    :documentation
     "The purpose addresses the stakeholder concerns.")
   (|stakeholder| :xmi-id "SysML.Viewpoint.stakeholder"
    :range |Stakeholder| :multiplicity (0 -1)
    :documentation
     "Set of stakeholders whose concerns are to be addressed by the viewpoint.")))

(def-meta-constraint |1_method_derived_from_create_operations| |Viewpoint|
   "The derived values of the method attribute shall be the names of the methods
    of the operations stereotyped by the UML Create stereotype on the classifier
    stereotyped by Viewpoint."
   :operation-body
   "self.method = self.base_Class.allFeatures()->select(f | f.oclIsKindOf(UML::Operation))->select(o | Standard::Create.allInstances().base_BehavioralFeature->includes(o)).oclAsType(UML::Operation).method")

(def-meta-constraint |2_create_view_operation| |Viewpoint|
   "The property ownedOperation shall include at least one operation named
     View  with the UML Create stereotype applied."
   :operation-body
   "self.base_Class.ownedOperation->exists(o | o.name='View' and Standard::Create.allInstances().base_BehavioralFeature->includes(o))")

(def-meta-assoc "SysML.E_extension_Viewpoint_base_Class"
  :name |E_extension_Viewpoint_base_Class|
  :metatype :extension
  :member-ends (("SysML.E_extension_Viewpoint_base_Class.extension_Viewpoint"
		 "extension_Viewpoint")
		(|Viewpoint| "base_Class"))
  :owned-ends  (("SysML.E_extension_Viewpoint_base_Class.extension_Viewpoint"
		 "extension_Viewpoint")))

(def-meta-assoc-end "SysML.E_extension_Viewpoint_base_Class.extension_Viewpoint"
    :type |Viewpoint|
    :multiplicity (1 1)
    :association "SysML.E_extension_Viewpoint_base_Class"
    :name "extension_Viewpoint")

;;; =========================================================
;;; ====================== ~InterfaceBlock
;;; =========================================================
(def-meta-stereotype |~InterfaceBlock|
   (:model :SYSML16 :superclasses (|InterfaceBlock|) :extends NIL
 :packages (|SysML| |PortsAndFlows|)
 :xmi-id "SysML.tildeInterfaceBlock")
 "The ~InterfaceBlock stereotype  (shall be pronounced: \"conjugated interface
  block\") is a specialization of InterfaceBlock that has the same features
  as its original InterfaceBlock except that its DirectedFeatures  and FlowProperties
  are reversed (conjugated), for example, in flow properties are conjugated
  as out flow properties and provided features are conjugated as required
  features. Conjugation is specified by a constraint giving the features
  of  ~InterfaceBlocks according to those of their original InterfaceBlocks
   (see the  Constraints subsection below). It is expected that tools conforming
  to this specification automatically create features of ~InterfaceBlocks."
  ((|original| :xmi-id "SysML.tildeInterfaceBlock.original"
    :range |InterfaceBlock| :multiplicity (1 1)
    :documentation
     "The InterfaceBlock that this is a conjugation of.")))

(def-meta-constraint |enforced_name| |~InterfaceBlock|
   "The name of an ~InterfaceBlock shall be the name of its original InterfaceBlock
    with a tilde (\"~\") character prepended"
   :operation-body
   "self.base_Class.name = '~'+self.original.base_Class.name")

(def-meta-constraint |inverted_features| |~InterfaceBlock|
   "An ~InterfaceBlock has same features and owned rules than its original
    InterfaceBlock except that   where applicable   both its DirectedFeatures
     and FlowProperties have inverted directions (i.e. are \"conjugated\")."
   :operation-body
   "let allAttributes: Set(UML::Property) = self.base_Class.allFeatures()->select(oclIsKindOf(UML::Property)).oclAsType(UML::Property)->asSet() in let allOperations: Set(UML::Operation) = self.base_Class.allFeatures()->select(oclIsKindOf(UML::Operation)).oclAsType(UML::Operation)->asSet() in let allReceptions: Set(UML::Reception) = self.base_Class.allFeatures()->select(oclIsKindOf(UML::Reception)).oclAsType(UML::Reception)->asSet() in let inheritedRules: Set(UML::Constraint) = self.base_Class.inherit(self.base_Class.inheritedMember->select(oclIsKindOf(UML::Constraint))).oclAsType(UML::Constraint)->asSet() in let allRules: Set(UML::Constraint) = self.base_Class.ownedRule->union(inheritedRules) in let allOriginalAttributes: Set(UML::Property) = self.original.base_Class.allFeatures()->select(oclIsKindOf(UML::Property)).oclAsType(UML::Property)->asSet() in let allOriginalOperations: Set(UML::Operation) = self.original.base_Class.allFeatures()->select(oclIsKindOf(UML::Operation)).oclAsType(UML::Operation)->asSet() in let allOriginalReceptions: Set(UML::Reception) = self.original.base_Class.allFeatures()->select(oclIsKindOf(UML::Reception)).oclAsType(UML::Reception)->asSet() in let originalInheritedRules: Set(UML::Constraint) = self.original.base_Class.inherit(self.original.base_Class.inheritedMember->select(oclIsKindOf(UML::Constraint))).oclAsType(UML::Constraint)->asSet() in let allOrignalRules: Set(UML::Constraint) = self.original.base_Class.ownedRule->union(originalInheritedRules) in  allAttributes->size() = allOriginalAttributes->size() and allOperations->size() = allOriginalOperations->size() and allReceptions->size() = allOriginalReceptions->size()  and (allAttributes->isEmpty() or allAttributes->forAll(a | allOriginalAttributes->exists(oa | areConjugated(a, oa)))) and (allOperations->isEmpty() or allOperations->forAll(o | allOriginalOperations->exists(oo | areConjugated(o, oo)))) and (allReceptions->isEmpty() or allReceptions->forAll(r | allOriginalReceptions->exists(ro | areConjugated(r, ro)))) and areSameConstraintSets(allRules, allOrignalRules) ")

(def-meta-operation |areConjugated| |~InterfaceBlock|
   "DirectedFeature overloaded version of the areConjugated query used for
    specifying the inverted_feature invariant that checks whether one feature
    definition is the conjugated definition of the other."
   :operation-body
   "if (df1.oclIsUndefined()) then   (not df2.oclIsUndefined() and df2.featureDirection = FeatureDirectionKind::required) else if (df2.oclIsUndefined()) then   (not df1.oclIsUndefined() and df1.featureDirection = FeatureDirectionKind::required) else   (df1.featureDirection = FeatureDirectionKind::provided and df2.featureDirection = FeatureDirectionKind::required)   or (df1.featureDirection = FeatureDirectionKind::required and df2.featureDirection = FeatureDirectionKind::provided)   or (df1.featureDirection = FeatureDirectionKind::providedRequired and df2.featureDirection = FeatureDirectionKind::providedRequired) endif endif "
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name '|df1| :parameter-type '|DirectedFeature|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name '|df2| :parameter-type '|DirectedFeature|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|Boolean|
			:parameter-return-p T))
)

(def-meta-operation |areConjugated| |~InterfaceBlock|
   "FlowProperty overloaded version of the areConjugated query used for specifying
    the inverted_feature invariant that check whether one feature definition
    is the conjugated definition of the other"
   :operation-body
   "(fp1.direction = FlowDirectionKind::_in and fp2.direction = FlowDirectionKind::out) or (fp1.direction = FlowDirectionKind::out and fp2.direction = FlowDirectionKind::_in) or (fp1.direction = FlowDirectionKind::inout and fp2.direction = FlowDirectionKind::inout) "
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name '|fp1| :parameter-type '|FlowProperty|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name '|fp2| :parameter-type '|FlowProperty|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|Boolean|
			:parameter-return-p T))
)

(def-meta-operation |areConjugated| |~InterfaceBlock|
   "Reception overloaded version of the areConjugated query used for specifying
    the inverted_feature invariant that check whether one feature definition
    is the conjugated definition of the other."
   :operation-body
   "let df1: DirectedFeature = DirectedFeature.allInstances()->any(base_Feature = r1) in let df2: DirectedFeature = DirectedFeature.allInstances()->any(base_Feature = r2) in r1.concurrency = r2.concurrency and r1.isAbstract = r2.isAbstract and r1.ownedParameterSet->forAll(ps1 | r2.ownedParameterSet->exists(ps2 | areSameParameterSets(r1, ps1, r2, ps2))) and haveSameSignatures(r1, r2) and r1.signal = r2.signal and areConjugated(df1, df2) "
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name '|r1| :parameter-type 'UML251:|Reception|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name '|r2| :parameter-type 'UML251:|Reception|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|Boolean|
			:parameter-return-p T))
)

(def-meta-operation |areConjugated| |~InterfaceBlock|
   "Operation overloaded version of the areConjugated query used for specifying
    the inverted_feature invariant that check whether one feature definition
    is the conjugated definition of the other."
   :operation-body
   "let df1: DirectedFeature = DirectedFeature .allInstances()->any(base_Feature = o1) in let df2: DirectedFeature = DirectedFeature .allInstances()->any(base_Feature = o2) in o1.concurrency = o2.concurrency and o1.isAbstract = o2.isAbstract and o1.ownedParameterSet->forAll(ps1 | o2.ownedParameterSet->exists(ps2 | areSameParameterSets(o1, ps1, o2, ps2))) and areSameConstraintSets(o1.bodyCondition->asSet(), o2.bodyCondition->asSet()) and areSameConstraintSets(o1.precondition, o2.precondition) and areSameConstraintSets(o1.postcondition, o2.postcondition) and haveSameSignatures(o1, o2) and o1.raisedException->forAll(e1 | o2.raisedException->exists(e2 | e2 = e1)) and o1.isQuery = o2.isQuery and areConjugated(df1, df2) "
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name '|o1| :parameter-type 'UML251:|Operation|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name '|o2| :parameter-type 'UML251:|Operation|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|Boolean|
			:parameter-return-p T))
)

(def-meta-operation |areConjugated| |~InterfaceBlock|
   "Property overloaded version of the areConjugated query used for specifying
    the inverted_feature invariant that checks whether one feature definition
    is the conjugated definition of the other."
   :operation-body
   "let fp1: FlowProperty = FlowProperty.allInstances()->any(base_Property = a1) in let fp2: FlowProperty = FlowProperty.allInstances()->any(base_Property = a2) in let df1: DirectedFeature = DirectedFeature .allInstances()->any(base_Feature = a1) in let df2: DirectedFeature = DirectedFeature .allInstances()->any(base_Feature = a2) in a1.name = a2.name and a1.type = a2.type and a1.isStatic = a2.isStatic and a1.isOrdered = a2.isOrdered and a1.isUnique = a2.isUnique and a1.lower = a2.lower and a1.upper = a2.upper and a1.isReadOnly = a2.isReadOnly and a1.aggregation = a2.aggregation and a1.isDerived = a2.isDerived and a1.isDerivedUnion = a2.isDerivedUnion and a1.isID = a2.isID and ((not fp1.oclIsUndefined() and not fp2.oclIsUndefined() and areConjugated(fp1, fp2))   or   (fp1.oclIsUndefined() and fp2.oclIsUndefined())) and ((not df1.oclIsUndefined() and not df2.oclIsUndefined() and areConjugated(df1, df2))    or (df1.oclIsUndefined() and df2.oclIsUndefined())) "
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name '|p1| :parameter-type 'UML251:|Property|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name '|p2| :parameter-type 'UML251:|Property|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|Boolean|
			:parameter-return-p T))
)

(def-meta-operation |areSameConstraintSets | |~InterfaceBlock|
   "The areSameConstraintSets query is used for specifying the inverted_feature
    invariant. It checks whether two sets of constraints are equivalent."
   :operation-body
   "(cs1->isEmpty() and cs2->isEmpty()) or (cs1->size() = cs2->size()   and cs1->forAll(c1 | cs1->exists(c2 | c2.name = c1.name     and c2.specification.booleanValue()=true implies c1.specification.booleanValue()=true     and c2.specification.booleanValue()=false implies c1.specification.booleanValue()=false))) "
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name '|cs1| :parameter-type 'UML251:|Constraint|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name '|cs2| :parameter-type 'UML251:|Constraint|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|Boolean|
			:parameter-return-p T))
)

(def-meta-operation |areSameParameterSets | |~InterfaceBlock|
   "The areSameParameterSets query is used for specifying the inverted_feature
    invariant. It checks whether two sets of parameters are identical."
   :operation-body
   "(ps1->isEmpty() and ps2->isEmpty()) or (ps1->size() = ps2->size()   and areSameConstraintSets(ps1.condition, ps2.condition   and ps1.parameter->forAll(p1 | ps2.parameter->exists(p2 |      bf1.ownedParameter->indexOf(p1) = bf2.ownedParameter->indexOf(p2))))) "
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name '|ps1| :parameter-type 'UML251:|ParameterSet|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name '|ps2| :parameter-type 'UML251:|ParameterSet|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|Boolean|
			:parameter-return-p T))
)

(def-meta-operation |haveSameSignatures | |~InterfaceBlock|
   "The areSameConstraintSignatures query is used for specifying the inverted_feature
    invariant. It checks whether two behavioral features have the same signature."
   :operation-body
   "bf1.name = bf2.name and bf1.ownedParameter->size() = bf2.ownedParameter->size() and bf1.ownedParameter->forAll(p1 | let p2: UML::Parameter = bf2.ownedParameter->at(bf1.ownedParameter->indexOf(p1)) in   p1.name = p2.name   and p1.type = p2.type   and p1.direction = p2.direction   and p1.isOrdered = p2.isOrdered   and p1.isUnique = p2.isUnique   and p1.lower = p2.lower   and p1.upper = p2.upper   and p1.effect = p2.effect   and p1.isException = p2.isException   and p1.isStream = p2.isStream) "
   :parameters
   (list (make-instance 'ocl-parameter :parameter-name '|bf1| :parameter-type 'UML251:|BehavioralFeature|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name '|bf2| :parameter-type 'UML251:|BehavioralFeature|
			:parameter-return-p NIL)
	  (make-instance 'ocl-parameter :parameter-name NIL :parameter-type '|Boolean|
			:parameter-return-p T))
)

(def-meta-package |Activities| |SysML| :SYSML16
   (|Optional|
    |Continuous|
    |NoBuffer|
    |Probability|
    |Rate|
    |Discrete|
    |ControlOperator|
    |Overwrite|) :xmi-id "SysML.Activities")

(def-meta-package |Allocations| |SysML| :SYSML16
   (|Allocate|
    |AllocateActivityPartition|) :xmi-id "SysML.Allocations")

(def-meta-package |Blocks| |SysML| :SYSML16
   (|BoundReference|
    |AdjunctProperty|
    |BindingConnector|
    |DistributedProperty|
    |ParticipantProperty|
    |ConnectorProperty|
    |EndPathMultiplicity|
    |ClassifierBehaviorProperty|
    |PropertySpecificType|
    |Block|
    |ValueType|
    |ElementPropertyPath|
    |DirectedRelationshipPropertyPath|
    |NestedConnectorEnd|) :xmi-id "SysML.Blocks")

(def-meta-package |ConstraintBlocks| |SysML| :SYSML16
   (|ConstraintBlock|) :xmi-id "SysML.ConstraintBlocks")

(def-meta-package |ControlValues| |Libraries| :SYSML16
   (|ControlValueKind|) :xmi-id "SysML.Libraries.ControlValues")

(def-meta-package |DeprecatedElements| |SysML| :SYSML16
   (|FlowPort|
    |FlowSpecification|) :xmi-id "SysML.DeprecatedElements")

(def-meta-package |Libraries| |SysML| :SYSML16
   (|ControlValues|
    |PrimitiveValueTypes|
    |UnitAndQuantityKind|) :xmi-id "SysML.Libraries")

(def-meta-package |ModelElements| |SysML| :SYSML16
   (|Conform|
    |Stakeholder|
    |View|
    |Expose|
    |Viewpoint|
    |Rationale|
    |Problem|
    |ElementGroup|) :xmi-id "SysML.ModelElements")

(def-meta-package |PortsAndFlows| |SysML| :SYSML16
   (|FullPort|
    |DirectedFeature|
    |InvocationOnNestedPortAction|
    |FlowDirectionKind|
    |ChangeStructuralFeatureEvent|
    |FlowProperty|
    |FeatureDirectionKind|
    |ItemFlow|
    |InterfaceBlock|
    |~InterfaceBlock|
    |AddFlowPropertyValueOnNestedPortAction|
    |AcceptChangeStructuralFeatureEventAction|
    |ProxyPort|
    |TriggerOnNestedPort|) :xmi-id "SysML.PortsAndFlows")

(def-meta-package |PrimitiveTypes.xmi| NIL :SYSML16
   () :xmi-id NIL)

(def-meta-package |PrimitiveValueTypes| |Libraries| :SYSML16
   (|Number|
    |Complex|
    |String|
    |Boolean|
    |Real|
    |Integer|) :xmi-id "SysML.Libraries.PrimitiveValueTypes")

(def-meta-package |Requirements| |SysML| :SYSML16
   (|Trace|
    |TestCase|
    |Requirement|
    |Verify|
    |Refine|
    |Satisfy|
    |Copy|
    |VerdictKind|
    |AbstractRequirement|
    |DeriveReqt|) :xmi-id "SysML.Requirements")

(def-meta-package |SysML| NIL :SYSML16
   (|Activities|
    |Requirements|
    |Libraries|
    |Blocks|
    |ModelElements|
    |ConstraintBlocks|
    |PortsAndFlows|
    |DeprecatedElements|
    |Allocations|) :xmi-id "SysML")

(def-meta-package |UML 2.5.1| NIL :SYSML16
   () :xmi-id NIL)

(def-meta-package |UnitAndQuantityKind| |Libraries| :SYSML16
   (|QuantityKind|
    |Unit|) :xmi-id "SysML.Libraries.UnitAndQuantityKind")

(in-package :mofi)


(with-slots (abstract-classes ns-uri ns-prefix) *model*
     (setf abstract-classes
	'(SYSML16::|AbstractRequirement|
	  SYSML16::|DirectedRelationshipPropertyPath|
	  SYSML16::|ElementPropertyPath|))
     (setf ns-uri "http://www.omg.org/spec/SysML/20181001/SysML")
     (setf ns-prefix "SYSML16"))
