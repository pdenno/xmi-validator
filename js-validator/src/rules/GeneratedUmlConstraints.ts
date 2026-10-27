import type { XmiNode } from '../engine/XmiParser';
import type { ConstraintDefinition } from './UmlConstraints';

export const generatedUmlConstraints: ConstraintDefinition[] = [
  {
    targetType: 'uml:AcceptCallAction',
    ruleName: 'result_pins',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'result_pins',
        passed,
        message: passed ? undefined : 'Constraint result_pins failed'
      };
    }
  },
  {
    targetType: 'uml:AcceptCallAction',
    ruleName: 'trigger_call_event',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IS-KIND-OF (%EVENT (%TRIGGER SELF)) (find-cla... */ true;
      return {
        ruleName: 'trigger_call_event',
        passed,
        message: passed ? undefined : 'Constraint trigger_call_event failed'
      };
    }
  },
  {
    targetType: 'uml:AcceptCallAction',
    ruleName: 'unmarshall',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (%IS-UNMARSHALL SELF) :TRUE)... */ true;
      return {
        ruleName: 'unmarshall',
        passed,
        message: passed ? undefined : 'Constraint unmarshall failed'
      };
    }
  },
  {
    targetType: 'uml:AcceptEventAction',
    ruleName: 'no_input_pins',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'no_input_pins',
        passed,
        message: passed ? undefined : 'Constraint no_input_pins failed'
      };
    }
  },
  {
    targetType: 'uml:AcceptEventAction',
    ruleName: 'no_output_pins',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'no_output_pins',
        passed,
        message: passed ? undefined : 'Constraint no_output_pins failed'
      };
    }
  },
  {
    targetType: 'uml:AcceptEventAction',
    ruleName: 'trigger_events',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'trigger_events',
        passed,
        message: passed ? undefined : 'Constraint trigger_events failed'
      };
    }
  },
  {
    targetType: 'uml:AcceptEventAction',
    ruleName: 'unmarshall_signal_events',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'unmarshall_signal_events',
        passed,
        message: passed ? undefined : 'Constraint unmarshall_signal_events failed'
      };
    }
  },
  {
    targetType: 'uml:ActionExecutionSpecification',
    ruleName: 'action_referenced',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'action_referenced',
        passed,
        message: passed ? undefined : 'Constraint action_referenced failed'
      };
    }
  },
  {
    targetType: 'uml:ActionInputPin',
    ruleName: 'one_output_pin',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'one_output_pin',
        passed,
        message: passed ? undefined : 'Constraint one_output_pin failed'
      };
    }
  },
  {
    targetType: 'uml:ActionInputPin',
    ruleName: 'input_pin',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'input_pin',
        passed,
        message: passed ? undefined : 'Constraint input_pin failed'
      };
    }
  },
  {
    targetType: 'uml:ActionInputPin',
    ruleName: 'no_control_or_data_flow',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'no_control_or_data_flow',
        passed,
        message: passed ? undefined : 'Constraint no_control_or_data_flow failed'
      };
    }
  },
  {
    targetType: 'uml:Activity',
    ruleName: 'no_supergroups',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'no_supergroups',
        passed,
        message: passed ? undefined : 'Constraint no_supergroups failed'
      };
    }
  },
  {
    targetType: 'uml:Activity',
    ruleName: 'activity_parameter_node',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'activity_parameter_node',
        passed,
        message: passed ? undefined : 'Constraint activity_parameter_node failed'
      };
    }
  },
  {
    targetType: 'uml:Activity',
    ruleName: 'autonomous',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'autonomous',
        passed,
        message: passed ? undefined : 'Constraint autonomous failed'
      };
    }
  },
  {
    targetType: 'uml:ActivityEdge',
    ruleName: 'source_and_target',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'source_and_target',
        passed,
        message: passed ? undefined : 'Constraint source_and_target failed'
      };
    }
  },
  {
    targetType: 'uml:ActivityEdge',
    ruleName: 'owned',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'owned',
        passed,
        message: passed ? undefined : 'Constraint owned failed'
      };
    }
  },
  {
    targetType: 'uml:ActivityEdge',
    ruleName: 'structured_node',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'structured_node',
        passed,
        message: passed ? undefined : 'Constraint structured_node failed'
      };
    }
  },
  {
    targetType: 'uml:ActivityGroup',
    ruleName: 'nodes_and_edges',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'nodes_and_edges',
        passed,
        message: passed ? undefined : 'Constraint nodes_and_edges failed'
      };
    }
  },
  {
    targetType: 'uml:ActivityGroup',
    ruleName: 'not_contained',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'not_contained',
        passed,
        message: passed ? undefined : 'Constraint not_contained failed'
      };
    }
  },
  {
    targetType: 'uml:ActivityGroup',
    ruleName: 'group_owned',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'group_owned',
        passed,
        message: passed ? undefined : 'Constraint group_owned failed'
      };
    }
  },
  {
    targetType: 'uml:ActivityNode',
    ruleName: 'owned_structured_node',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'owned_structured_node',
        passed,
        message: passed ? undefined : 'Constraint owned_structured_node failed'
      };
    }
  },
  {
    targetType: 'uml:ActivityNode',
    ruleName: 'owned',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'owned',
        passed,
        message: passed ? undefined : 'Constraint owned failed'
      };
    }
  },
  {
    targetType: 'uml:ActivityParameterNode',
    ruleName: 'has_parameters',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'has_parameters',
        passed,
        message: passed ? undefined : 'Constraint has_parameters failed'
      };
    }
  },
  {
    targetType: 'uml:ActivityParameterNode',
    ruleName: 'same_type',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'same_type',
        passed,
        message: passed ? undefined : 'Constraint same_type failed'
      };
    }
  },
  {
    targetType: 'uml:ActivityParameterNode',
    ruleName: 'no_edges',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'no_edges',
        passed,
        message: passed ? undefined : 'Constraint no_edges failed'
      };
    }
  },
  {
    targetType: 'uml:ActivityParameterNode',
    ruleName: 'no_incoming_edges',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'no_incoming_edges',
        passed,
        message: passed ? undefined : 'Constraint no_incoming_edges failed'
      };
    }
  },
  {
    targetType: 'uml:ActivityParameterNode',
    ruleName: 'no_outgoing_edges',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'no_outgoing_edges',
        passed,
        message: passed ? undefined : 'Constraint no_outgoing_edges failed'
      };
    }
  },
  {
    targetType: 'uml:ActivityPartition',
    ruleName: 'dimension_not_contained',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'dimension_not_contained',
        passed,
        message: passed ? undefined : 'Constraint dimension_not_contained failed'
      };
    }
  },
  {
    targetType: 'uml:ActivityPartition',
    ruleName: 'represents_part',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'represents_part',
        passed,
        message: passed ? undefined : 'Constraint represents_part failed'
      };
    }
  },
  {
    targetType: 'uml:ActivityPartition',
    ruleName: 'represents_classifier',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'represents_classifier',
        passed,
        message: passed ? undefined : 'Constraint represents_classifier failed'
      };
    }
  },
  {
    targetType: 'uml:ActivityPartition',
    ruleName: 'represents_part_and_is_contained',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'represents_part_and_is_contained',
        passed,
        message: passed ? undefined : 'Constraint represents_part_and_is_contained failed'
      };
    }
  },
  {
    targetType: 'uml:Actor',
    ruleName: 'must_have_name',
    evaluate: (node: XmiNode) => {
      const passed = !!node.attributes['name'];
      return {
        ruleName: 'must_have_name',
        passed,
        message: passed ? undefined : 'Constraint must_have_name failed'
      };
    }
  },
  {
    targetType: 'uml:AddStructuralFeatureValueAction',
    ruleName: 'unlimited_natural_and_multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (%IS-ORDERED (%STRUCTURAL-FEATURE SEL... */ true;
      return {
        ruleName: 'unlimited_natural_and_multiplicity',
        passed,
        message: passed ? undefined : 'Constraint unlimited_natural_and_multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:AddVariableValueAction',
    ruleName: 'single_input_pin',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-= (%ORDERING (%VARIABLE SELF)) :... */ true;
      return {
        ruleName: 'single_input_pin',
        passed,
        message: passed ? undefined : 'Constraint single_input_pin failed'
      };
    }
  },
  {
    targetType: 'uml:Association',
    ruleName: 'specialized_end_number',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (PARENTS SELF)                    #'... */ true;
      return {
        ruleName: 'specialized_end_number',
        passed,
        message: passed ? undefined : 'Constraint specialized_end_number failed'
      };
    }
  },
  {
    targetType: 'uml:Association',
    ruleName: 'specialized_end_types',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'specialized_end_types',
        passed,
        message: passed ? undefined : 'Constraint specialized_end_types failed'
      };
    }
  },
  {
    targetType: 'uml:Association',
    ruleName: 'association_ends',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-> (OCL-SIZE (%MEMBER-END SELF)) ... */ true;
      return {
        ruleName: 'association_ends',
        passed,
        message: passed ? undefined : 'Constraint association_ends failed'
      };
    }
  },
  {
    targetType: 'uml:AssociationClass',
    ruleName: 'cannot_be_defined',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-AND (OCL-EXCLUDES (%END-TYPE SELF) SELF)    ... */ true;
      return {
        ruleName: 'cannot_be_defined',
        passed,
        message: passed ? undefined : 'Constraint cannot_be_defined failed'
      };
    }
  },
  {
    targetType: 'uml:Behavior',
    ruleName: 'parameters_match',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'parameters_match',
        passed,
        message: passed ? undefined : 'Constraint parameters_match failed'
      };
    }
  },
  {
    targetType: 'uml:Behavior',
    ruleName: 'feature_of_context_classifier',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'feature_of_context_classifier',
        passed,
        message: passed ? undefined : 'Constraint feature_of_context_classifier failed'
      };
    }
  },
  {
    targetType: 'uml:Behavior',
    ruleName: 'must_realize',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'must_realize',
        passed,
        message: passed ? undefined : 'Constraint must_realize failed'
      };
    }
  },
  {
    targetType: 'uml:Behavior',
    ruleName: 'most_one_behaviour',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'most_one_behaviour',
        passed,
        message: passed ? undefined : 'Constraint most_one_behaviour failed'
      };
    }
  },
  {
    targetType: 'uml:BehavioredClassifier',
    ruleName: 'class_behavior',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'class_behavior',
        passed,
        message: passed ? undefined : 'Constraint class_behavior failed'
      };
    }
  },
  {
    targetType: 'uml:BroadcastSignalAction',
    ruleName: 'number_and_order',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'number_and_order',
        passed,
        message: passed ? undefined : 'Constraint number_and_order failed'
      };
    }
  },
  {
    targetType: 'uml:BroadcastSignalAction',
    ruleName: 'type_ordering_multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'type_ordering_multiplicity',
        passed,
        message: passed ? undefined : 'Constraint type_ordering_multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:CallAction',
    ruleName: 'synchronous_call',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'synchronous_call',
        passed,
        message: passed ? undefined : 'Constraint synchronous_call failed'
      };
    }
  },
  {
    targetType: 'uml:CallAction',
    ruleName: 'number_and_order',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'number_and_order',
        passed,
        message: passed ? undefined : 'Constraint number_and_order failed'
      };
    }
  },
  {
    targetType: 'uml:CallAction',
    ruleName: 'type_ordering_multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'type_ordering_multiplicity',
        passed,
        message: passed ? undefined : 'Constraint type_ordering_multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:CallBehaviorAction',
    ruleName: 'argument_pin_equal_parameter',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'argument_pin_equal_parameter',
        passed,
        message: passed ? undefined : 'Constraint argument_pin_equal_parameter failed'
      };
    }
  },
  {
    targetType: 'uml:CallBehaviorAction',
    ruleName: 'result_pin_equal_parameter',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'result_pin_equal_parameter',
        passed,
        message: passed ? undefined : 'Constraint result_pin_equal_parameter failed'
      };
    }
  },
  {
    targetType: 'uml:CallBehaviorAction',
    ruleName: 'type_ordering_multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'type_ordering_multiplicity',
        passed,
        message: passed ? undefined : 'Constraint type_ordering_multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:CallOperationAction',
    ruleName: 'argument_pin_equal_parameter',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'argument_pin_equal_parameter',
        passed,
        message: passed ? undefined : 'Constraint argument_pin_equal_parameter failed'
      };
    }
  },
  {
    targetType: 'uml:CallOperationAction',
    ruleName: 'result_pin_equal_parameter',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'result_pin_equal_parameter',
        passed,
        message: passed ? undefined : 'Constraint result_pin_equal_parameter failed'
      };
    }
  },
  {
    targetType: 'uml:CallOperationAction',
    ruleName: 'type_ordering_multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'type_ordering_multiplicity',
        passed,
        message: passed ? undefined : 'Constraint type_ordering_multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:CallOperationAction',
    ruleName: 'type_target_pin',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'type_target_pin',
        passed,
        message: passed ? undefined : 'Constraint type_target_pin failed'
      };
    }
  },
  {
    targetType: 'uml:Class',
    ruleName: 'passive_class',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-NOT (%IS-ACTIVE SELF))         ... */ true;
      return {
        ruleName: 'passive_class',
        passed,
        message: passed ? undefined : 'Constraint passive_class failed'
      };
    }
  },
  {
    targetType: 'uml:Classifier',
    ruleName: 'no_cycles_in_generalization',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-NOT (OCL-INCLUDES (ALL-PARENTS SELF) SELF))... */ true;
      return {
        ruleName: 'no_cycles_in_generalization',
        passed,
        message: passed ? undefined : 'Constraint no_cycles_in_generalization failed'
      };
    }
  },
  {
    targetType: 'uml:Classifier',
    ruleName: 'generalization_hierarchies',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-NOT (OCL-INCLUDES (ALL-PARENTS SELF) SELF))... */ true;
      return {
        ruleName: 'generalization_hierarchies',
        passed,
        message: passed ? undefined : 'Constraint generalization_hierarchies failed'
      };
    }
  },
  {
    targetType: 'uml:Classifier',
    ruleName: 'specialize_type',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (PARENTS SELF)                    #'... */ true;
      return {
        ruleName: 'specialize_type',
        passed,
        message: passed ? undefined : 'Constraint specialize_type failed'
      };
    }
  },
  {
    targetType: 'uml:Classifier',
    ruleName: 'maps_to_generalization_set',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'maps_to_generalization_set',
        passed,
        message: passed ? undefined : 'Constraint maps_to_generalization_set failed'
      };
    }
  },
  {
    targetType: 'uml:ClassifierTemplateParameter',
    ruleName: 'has_constraining_classifier',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (%ALLOW-SUBSTITUTABLE SELF)         ... */ true;
      return {
        ruleName: 'has_constraining_classifier',
        passed,
        message: passed ? undefined : 'Constraint has_constraining_classifier failed'
      };
    }
  },
  {
    targetType: 'uml:Clause',
    ruleName: 'decider_output',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'decider_output',
        passed,
        message: passed ? undefined : 'Constraint decider_output failed'
      };
    }
  },
  {
    targetType: 'uml:Clause',
    ruleName: 'body_output_pins',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'body_output_pins',
        passed,
        message: passed ? undefined : 'Constraint body_output_pins failed'
      };
    }
  },
  {
    targetType: 'uml:ClearAssociationAction',
    ruleName: 'same_type',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-EXISTS (%ASSOCIATION SELF)                  ... */ true;
      return {
        ruleName: 'same_type',
        passed,
        message: passed ? undefined : 'Constraint same_type failed'
      };
    }
  },
  {
    targetType: 'uml:ClearAssociationAction',
    ruleName: 'multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (IS (%OBJECT SELF) 1 1)... */ true;
      return {
        ruleName: 'multiplicity',
        passed,
        message: passed ? undefined : 'Constraint multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:CollaborationUse',
    ruleName: 'client_elements',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'client_elements',
        passed,
        message: passed ? undefined : 'Constraint client_elements failed'
      };
    }
  },
  {
    targetType: 'uml:CollaborationUse',
    ruleName: 'every_role',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'every_role',
        passed,
        message: passed ? undefined : 'Constraint every_role failed'
      };
    }
  },
  {
    targetType: 'uml:CollaborationUse',
    ruleName: 'connectors',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'connectors',
        passed,
        message: passed ? undefined : 'Constraint connectors failed'
      };
    }
  },
  {
    targetType: 'uml:CombinedFragment',
    ruleName: 'opt_loop_break_neg',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'opt_loop_break_neg',
        passed,
        message: passed ? undefined : 'Constraint opt_loop_break_neg failed'
      };
    }
  },
  {
    targetType: 'uml:CombinedFragment',
    ruleName: 'minint_and_maxint',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'minint_and_maxint',
        passed,
        message: passed ? undefined : 'Constraint minint_and_maxint failed'
      };
    }
  },
  {
    targetType: 'uml:CombinedFragment',
    ruleName: 'break',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'break',
        passed,
        message: passed ? undefined : 'Constraint break failed'
      };
    }
  },
  {
    targetType: 'uml:CommunicationPath',
    ruleName: 'association_ends',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%END-TYPE SELF)                    ... */ true;
      return {
        ruleName: 'association_ends',
        passed,
        message: passed ? undefined : 'Constraint association_ends failed'
      };
    }
  },
  {
    targetType: 'uml:ConditionalNode',
    ruleName: 'result_no_incoming',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'result_no_incoming',
        passed,
        message: passed ? undefined : 'Constraint result_no_incoming failed'
      };
    }
  },
  {
    targetType: 'uml:ConnectionPointReference',
    ruleName: 'entry_pseudostates',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-NOT-EMPTY (%ENTRY SELF))       ... */ true;
      return {
        ruleName: 'entry_pseudostates',
        passed,
        message: passed ? undefined : 'Constraint entry_pseudostates failed'
      };
    }
  },
  {
    targetType: 'uml:ConnectionPointReference',
    ruleName: 'exit_pseudostates',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-NOT-EMPTY (%EXIT SELF))        ... */ true;
      return {
        ruleName: 'exit_pseudostates',
        passed,
        message: passed ? undefined : 'Constraint exit_pseudostates failed'
      };
    }
  },
  {
    targetType: 'uml:Connector',
    ruleName: 'between_interface_port_signature',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'between_interface_port_signature',
        passed,
        message: passed ? undefined : 'Constraint between_interface_port_signature failed'
      };
    }
  },
  {
    targetType: 'uml:Connector',
    ruleName: 'between_interface_port_implements',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'between_interface_port_implements',
        passed,
        message: passed ? undefined : 'Constraint between_interface_port_implements failed'
      };
    }
  },
  {
    targetType: 'uml:Connector',
    ruleName: 'between_interfaces_ports',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'between_interfaces_ports',
        passed,
        message: passed ? undefined : 'Constraint between_interfaces_ports failed'
      };
    }
  },
  {
    targetType: 'uml:Connector',
    ruleName: 'types',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'types',
        passed,
        message: passed ? undefined : 'Constraint types failed'
      };
    }
  },
  {
    targetType: 'uml:Connector',
    ruleName: 'roles',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'roles',
        passed,
        message: passed ? undefined : 'Constraint roles failed'
      };
    }
  },
  {
    targetType: 'uml:Connector',
    ruleName: 'compatible',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'compatible',
        passed,
        message: passed ? undefined : 'Constraint compatible failed'
      };
    }
  },
  {
    targetType: 'uml:Connector',
    ruleName: 'assembly_connector',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'assembly_connector',
        passed,
        message: passed ? undefined : 'Constraint assembly_connector failed'
      };
    }
  },
  {
    targetType: 'uml:Connector',
    ruleName: 'union_signature_compatible',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'union_signature_compatible',
        passed,
        message: passed ? undefined : 'Constraint union_signature_compatible failed'
      };
    }
  },
  {
    targetType: 'uml:ConnectorEnd',
    ruleName: 'multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'multiplicity',
        passed,
        message: passed ? undefined : 'Constraint multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:ConnectorEnd',
    ruleName: 'part_with_port_empty',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'part_with_port_empty',
        passed,
        message: passed ? undefined : 'Constraint part_with_port_empty failed'
      };
    }
  },
  {
    targetType: 'uml:ConnectorEnd',
    ruleName: 'role_and_part_with_port',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'role_and_part_with_port',
        passed,
        message: passed ? undefined : 'Constraint role_and_part_with_port failed'
      };
    }
  },
  {
    targetType: 'uml:ConnectorEnd',
    ruleName: 'self_part_with_port',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'self_part_with_port',
        passed,
        message: passed ? undefined : 'Constraint self_part_with_port failed'
      };
    }
  },
  {
    targetType: 'uml:ConsiderIgnoreFragment',
    ruleName: 'consider_or_ignore',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-OR (OCL-= (%INTERACTION-OPERATOR SELF) :CONSI... */ true;
      return {
        ruleName: 'consider_or_ignore',
        passed,
        message: passed ? undefined : 'Constraint consider_or_ignore failed'
      };
    }
  },
  {
    targetType: 'uml:ConsiderIgnoreFragment',
    ruleName: 'type',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%MESSAGE SELF)                    #... */ true;
      return {
        ruleName: 'type',
        passed,
        message: passed ? undefined : 'Constraint type failed'
      };
    }
  },
  {
    targetType: 'uml:Constraint',
    ruleName: 'not_apply_to_self',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-NOT (OCL-INCLUDES (%CONSTRAINED-ELEMENT SELF)... */ true;
      return {
        ruleName: 'not_apply_to_self',
        passed,
        message: passed ? undefined : 'Constraint not_apply_to_self failed'
      };
    }
  },
  {
    targetType: 'uml:Constraint',
    ruleName: 'value_specification_boolean',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IS-KIND-OF (BOOLEAN-VALUE (%SPECIFICATION SEL... */ true;
      return {
        ruleName: 'value_specification_boolean',
        passed,
        message: passed ? undefined : 'Constraint value_specification_boolean failed'
      };
    }
  },
  {
    targetType: 'uml:Constraint',
    ruleName: 'boolean_value',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'boolean_value',
        passed,
        message: passed ? undefined : 'Constraint boolean_value failed'
      };
    }
  },
  {
    targetType: 'uml:Constraint',
    ruleName: 'no_side_effects',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'no_side_effects',
        passed,
        message: passed ? undefined : 'Constraint no_side_effects failed'
      };
    }
  },
  {
    targetType: 'uml:Constraint',
    ruleName: 'not_applied_to_self',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-NOT (OCL-INCLUDES (%CONSTRAINED-ELEMENT SELF)... */ true;
      return {
        ruleName: 'not_applied_to_self',
        passed,
        message: passed ? undefined : 'Constraint not_applied_to_self failed'
      };
    }
  },
  {
    targetType: 'uml:Continuation',
    ruleName: 'same_name',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'same_name',
        passed,
        message: passed ? undefined : 'Constraint same_name failed'
      };
    }
  },
  {
    targetType: 'uml:Continuation',
    ruleName: 'global',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'global',
        passed,
        message: passed ? undefined : 'Constraint global failed'
      };
    }
  },
  {
    targetType: 'uml:Continuation',
    ruleName: 'first_or_last_interaction_fragment',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'first_or_last_interaction_fragment',
        passed,
        message: passed ? undefined : 'Constraint first_or_last_interaction_fragment failed'
      };
    }
  },
  {
    targetType: 'uml:ControlFlow',
    ruleName: 'object_nodes',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'object_nodes',
        passed,
        message: passed ? undefined : 'Constraint object_nodes failed'
      };
    }
  },
  {
    targetType: 'uml:CreateLinkAction',
    ruleName: 'association_not_abstract',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (%IS-ABSTRACT (ASSOCIATION SELF)) :FALSE)... */ true;
      return {
        ruleName: 'association_not_abstract',
        passed,
        message: passed ? undefined : 'Constraint association_not_abstract failed'
      };
    }
  },
  {
    targetType: 'uml:CreateLinkObjectAction',
    ruleName: 'association_class',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IS-KIND-OF (ASSOCIATION SELF) (find-class '|C... */ true;
      return {
        ruleName: 'association_class',
        passed,
        message: passed ? undefined : 'Constraint association_class failed'
      };
    }
  },
  {
    targetType: 'uml:CreateLinkObjectAction',
    ruleName: 'type_of_result',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (%TYPE (%RESULT SELF)) (ASSOCIATION SELF))... */ true;
      return {
        ruleName: 'type_of_result',
        passed,
        message: passed ? undefined : 'Constraint type_of_result failed'
      };
    }
  },
  {
    targetType: 'uml:CreateLinkObjectAction',
    ruleName: 'multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (IS (%RESULT SELF) 1 1)... */ true;
      return {
        ruleName: 'multiplicity',
        passed,
        message: passed ? undefined : 'Constraint multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:CreateObjectAction',
    ruleName: 'classifier_not_abstract',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-NOT (OCL-= (%IS-ABSTRACT (%CLASSIFIER SELF)) ... */ true;
      return {
        ruleName: 'classifier_not_abstract',
        passed,
        message: passed ? undefined : 'Constraint classifier_not_abstract failed'
      };
    }
  },
  {
    targetType: 'uml:CreateObjectAction',
    ruleName: 'classifier_not_association_class',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-NOT (OCL-IS-KIND-OF (%CLASSIFIER SELF)      ... */ true;
      return {
        ruleName: 'classifier_not_association_class',
        passed,
        message: passed ? undefined : 'Constraint classifier_not_association_class failed'
      };
    }
  },
  {
    targetType: 'uml:CreateObjectAction',
    ruleName: 'same_type',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (%TYPE (%RESULT SELF)) (%CLASSIFIER SELF))... */ true;
      return {
        ruleName: 'same_type',
        passed,
        message: passed ? undefined : 'Constraint same_type failed'
      };
    }
  },
  {
    targetType: 'uml:CreateObjectAction',
    ruleName: 'multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (IS (%RESULT SELF) 1 1)... */ true;
      return {
        ruleName: 'multiplicity',
        passed,
        message: passed ? undefined : 'Constraint multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:CreationEvent',
    ruleName: 'no_occurrence_above',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'no_occurrence_above',
        passed,
        message: passed ? undefined : 'Constraint no_occurrence_above failed'
      };
    }
  },
  {
    targetType: 'uml:DecisionNode',
    ruleName: 'one_incoming_edge',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'one_incoming_edge',
        passed,
        message: passed ? undefined : 'Constraint one_incoming_edge failed'
      };
    }
  },
  {
    targetType: 'uml:DecisionNode',
    ruleName: 'input_parameter',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'input_parameter',
        passed,
        message: passed ? undefined : 'Constraint input_parameter failed'
      };
    }
  },
  {
    targetType: 'uml:DecisionNode',
    ruleName: 'edges',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'edges',
        passed,
        message: passed ? undefined : 'Constraint edges failed'
      };
    }
  },
  {
    targetType: 'uml:DeploymentSpecification',
    ruleName: 'deployed_elements',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%DEPLOYMENT SELF)                  ... */ true;
      return {
        ruleName: 'deployed_elements',
        passed,
        message: passed ? undefined : 'Constraint deployed_elements failed'
      };
    }
  },
  {
    targetType: 'uml:DeploymentSpecification',
    ruleName: 'deployment_target',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%DEPLOYMENT SELF)                  ... */ true;
      return {
        ruleName: 'deployment_target',
        passed,
        message: passed ? undefined : 'Constraint deployment_target failed'
      };
    }
  },
  {
    targetType: 'uml:DestroyObjectAction',
    ruleName: 'multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (IS (%TARGET SELF) 1 1)... */ true;
      return {
        ruleName: 'multiplicity',
        passed,
        message: passed ? undefined : 'Constraint multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:DestroyObjectAction',
    ruleName: 'no_type',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (OCL-SIZE (%TYPE (%TARGET SELF))) 0)... */ true;
      return {
        ruleName: 'no_type',
        passed,
        message: passed ? undefined : 'Constraint no_type failed'
      };
    }
  },
  {
    targetType: 'uml:DestructionEvent',
    ruleName: 'no_occurrence_specifications_below',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'no_occurrence_specifications_below',
        passed,
        message: passed ? undefined : 'Constraint no_occurrence_specifications_below failed'
      };
    }
  },
  {
    targetType: 'uml:DurationConstraint',
    ruleName: 'first_event_multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IF (OCL-= (OCL-SIZE (%CONSTRAINED-ELEMENT SEL... */ true;
      return {
        ruleName: 'first_event_multiplicity',
        passed,
        message: passed ? undefined : 'Constraint first_event_multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:DurationObservation',
    ruleName: 'first_event_multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IF (OCL-= (OCL-SIZE (%EVENT SELF)) 2)       ... */ true;
      return {
        ruleName: 'first_event_multiplicity',
        passed,
        message: passed ? undefined : 'Constraint first_event_multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:Element',
    ruleName: 'not_own_self',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-NOT (OCL-INCLUDES (ALL-OWNED-ELEMENTS SELF) S... */ true;
      return {
        ruleName: 'not_own_self',
        passed,
        message: passed ? undefined : 'Constraint not_own_self failed'
      };
    }
  },
  {
    targetType: 'uml:Element',
    ruleName: 'has_owner',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (MUST-BE-OWNED SELF)                ... */ true;
      return {
        ruleName: 'has_owner',
        passed,
        message: passed ? undefined : 'Constraint has_owner failed'
      };
    }
  },
  {
    targetType: 'uml:ElementImport',
    ruleName: 'visibility_public_or_private',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-OR (OCL-= (%VISIBILITY SELF) :PUBLIC)       ... */ true;
      return {
        ruleName: 'visibility_public_or_private',
        passed,
        message: passed ? undefined : 'Constraint visibility_public_or_private failed'
      };
    }
  },
  {
    targetType: 'uml:ElementImport',
    ruleName: 'imported_element_is_public',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-NOT-EMPTY (%VISIBILITY         ... */ true;
      return {
        ruleName: 'imported_element_is_public',
        passed,
        message: passed ? undefined : 'Constraint imported_element_is_public failed'
      };
    }
  },
  {
    targetType: 'uml:ExceptionHandler',
    ruleName: 'exception_body',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'exception_body',
        passed,
        message: passed ? undefined : 'Constraint exception_body failed'
      };
    }
  },
  {
    targetType: 'uml:ExceptionHandler',
    ruleName: 'result_pins',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'result_pins',
        passed,
        message: passed ? undefined : 'Constraint result_pins failed'
      };
    }
  },
  {
    targetType: 'uml:ExceptionHandler',
    ruleName: 'one_input',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'one_input',
        passed,
        message: passed ? undefined : 'Constraint one_input failed'
      };
    }
  },
  {
    targetType: 'uml:ExceptionHandler',
    ruleName: 'edge_source_target',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'edge_source_target',
        passed,
        message: passed ? undefined : 'Constraint edge_source_target failed'
      };
    }
  },
  {
    targetType: 'uml:ExecutionSpecification',
    ruleName: 'same_lifeline',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (%LIFELINE (%START SELF)) (%LIFELINE (%FINI... */ true;
      return {
        ruleName: 'same_lifeline',
        passed,
        message: passed ? undefined : 'Constraint same_lifeline failed'
      };
    }
  },
  {
    targetType: 'uml:ExpansionRegion',
    ruleName: 'expansion_nodes',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'expansion_nodes',
        passed,
        message: passed ? undefined : 'Constraint expansion_nodes failed'
      };
    }
  },
  {
    targetType: 'uml:Extend',
    ruleName: 'extension_points',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%EXTENSION-LOCATION SELF)          ... */ true;
      return {
        ruleName: 'extension_points',
        passed,
        message: passed ? undefined : 'Constraint extension_points failed'
      };
    }
  },
  {
    targetType: 'uml:Extension',
    ruleName: 'non_owned_end',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-AND (OCL-NOT-EMPTY (METACLASS-END SELF))    ... */ true;
      return {
        ruleName: 'non_owned_end',
        passed,
        message: passed ? undefined : 'Constraint non_owned_end failed'
      };
    }
  },
  {
    targetType: 'uml:Extension',
    ruleName: 'is_binary',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (OCL-SIZE (%MEMBER-END SELF)) 2)... */ true;
      return {
        ruleName: 'is_binary',
        passed,
        message: passed ? undefined : 'Constraint is_binary failed'
      };
    }
  },
  {
    targetType: 'uml:ExtensionEnd',
    ruleName: 'multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-AND (OCL-OR (OCL-= (LOWER-BOUND SELF) 0)    ... */ true;
      return {
        ruleName: 'multiplicity',
        passed,
        message: passed ? undefined : 'Constraint multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:ExtensionEnd',
    ruleName: 'aggregation',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (%AGGREGATION SELF) :COMPOSITE)... */ true;
      return {
        ruleName: 'aggregation',
        passed,
        message: passed ? undefined : 'Constraint aggregation failed'
      };
    }
  },
  {
    targetType: 'uml:ExtensionPoint',
    ruleName: 'must_have_name',
    evaluate: (node: XmiNode) => {
      const passed = !!node.attributes['name'];
      return {
        ruleName: 'must_have_name',
        passed,
        message: passed ? undefined : 'Constraint must_have_name failed'
      };
    }
  },
  {
    targetType: 'uml:FinalNode',
    ruleName: 'no_outgoing_edges',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'no_outgoing_edges',
        passed,
        message: passed ? undefined : 'Constraint no_outgoing_edges failed'
      };
    }
  },
  {
    targetType: 'uml:FinalState',
    ruleName: 'no_outgoing_transitions',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (OCL-SIZE (%OUTGOING SELF)) 0)... */ true;
      return {
        ruleName: 'no_outgoing_transitions',
        passed,
        message: passed ? undefined : 'Constraint no_outgoing_transitions failed'
      };
    }
  },
  {
    targetType: 'uml:FinalState',
    ruleName: 'no_regions',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (OCL-SIZE (%REGION SELF)) 0)... */ true;
      return {
        ruleName: 'no_regions',
        passed,
        message: passed ? undefined : 'Constraint no_regions failed'
      };
    }
  },
  {
    targetType: 'uml:FinalState',
    ruleName: 'cannot_reference_submachine',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IS-EMPTY (%SUBMACHINE SELF))... */ true;
      return {
        ruleName: 'cannot_reference_submachine',
        passed,
        message: passed ? undefined : 'Constraint cannot_reference_submachine failed'
      };
    }
  },
  {
    targetType: 'uml:FinalState',
    ruleName: 'no_entry_behavior',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IS-EMPTY (%ENTRY SELF))... */ true;
      return {
        ruleName: 'no_entry_behavior',
        passed,
        message: passed ? undefined : 'Constraint no_entry_behavior failed'
      };
    }
  },
  {
    targetType: 'uml:FinalState',
    ruleName: 'no_exit_behavior',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IS-EMPTY (%EXIT SELF))... */ true;
      return {
        ruleName: 'no_exit_behavior',
        passed,
        message: passed ? undefined : 'Constraint no_exit_behavior failed'
      };
    }
  },
  {
    targetType: 'uml:FinalState',
    ruleName: 'no_state_behavior',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IS-EMPTY (%DO-ACTIVITY SELF))... */ true;
      return {
        ruleName: 'no_state_behavior',
        passed,
        message: passed ? undefined : 'Constraint no_state_behavior failed'
      };
    }
  },
  {
    targetType: 'uml:ForkNode',
    ruleName: 'one_incoming_edge',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'one_incoming_edge',
        passed,
        message: passed ? undefined : 'Constraint one_incoming_edge failed'
      };
    }
  },
  {
    targetType: 'uml:ForkNode',
    ruleName: 'edges',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'edges',
        passed,
        message: passed ? undefined : 'Constraint edges failed'
      };
    }
  },
  {
    targetType: 'uml:FunctionBehavior',
    ruleName: 'one_output_parameter',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL->= (OCL-SIZE (OCL-SELECT (%OWNED-PARAMETER SE... */ true;
      return {
        ruleName: 'one_output_parameter',
        passed,
        message: passed ? undefined : 'Constraint one_output_parameter failed'
      };
    }
  },
  {
    targetType: 'uml:Gate',
    ruleName: 'messages_actual_gate',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'messages_actual_gate',
        passed,
        message: passed ? undefined : 'Constraint messages_actual_gate failed'
      };
    }
  },
  {
    targetType: 'uml:Gate',
    ruleName: 'messages_combined_fragment',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'messages_combined_fragment',
        passed,
        message: passed ? undefined : 'Constraint messages_combined_fragment failed'
      };
    }
  },
  {
    targetType: 'uml:Generalization',
    ruleName: 'generalization_same_classifier',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'generalization_same_classifier',
        passed,
        message: passed ? undefined : 'Constraint generalization_same_classifier failed'
      };
    }
  },
  {
    targetType: 'uml:GeneralizationSet',
    ruleName: 'generalization_same_classifier',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-<= (OCL-SIZE (OCL-AS-SET (OCL-COLLECT       ... */ true;
      return {
        ruleName: 'generalization_same_classifier',
        passed,
        message: passed ? undefined : 'Constraint generalization_same_classifier failed'
      };
    }
  },
  {
    targetType: 'uml:GeneralizationSet',
    ruleName: 'maps_to_generalization_set',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'maps_to_generalization_set',
        passed,
        message: passed ? undefined : 'Constraint maps_to_generalization_set failed'
      };
    }
  },
  {
    targetType: 'uml:InformationFlow',
    ruleName: 'must_conform',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'must_conform',
        passed,
        message: passed ? undefined : 'Constraint must_conform failed'
      };
    }
  },
  {
    targetType: 'uml:InformationFlow',
    ruleName: 'convey_classifiers',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%REPRESENTED (%CONVEYED SELF))     ... */ true;
      return {
        ruleName: 'convey_classifiers',
        passed,
        message: passed ? undefined : 'Constraint convey_classifiers failed'
      };
    }
  },
  {
    targetType: 'uml:InformationItem',
    ruleName: 'sources_and_targets',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-AND (OCL-FOR-ALL (%SOURCE SELF)             ... */ true;
      return {
        ruleName: 'sources_and_targets',
        passed,
        message: passed ? undefined : 'Constraint sources_and_targets failed'
      };
    }
  },
  {
    targetType: 'uml:InformationItem',
    ruleName: 'has_no',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-AND (OCL-IS-EMPTY (%GENERALIZATION SELF))   ... */ true;
      return {
        ruleName: 'has_no',
        passed,
        message: passed ? undefined : 'Constraint has_no failed'
      };
    }
  },
  {
    targetType: 'uml:InformationItem',
    ruleName: 'not_instantiable',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (%IS-ABSTRACT SELF)... */ true;
      return {
        ruleName: 'not_instantiable',
        passed,
        message: passed ? undefined : 'Constraint not_instantiable failed'
      };
    }
  },
  {
    targetType: 'uml:InitialNode',
    ruleName: 'no_incoming_edges',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'no_incoming_edges',
        passed,
        message: passed ? undefined : 'Constraint no_incoming_edges failed'
      };
    }
  },
  {
    targetType: 'uml:InitialNode',
    ruleName: 'control_edges',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'control_edges',
        passed,
        message: passed ? undefined : 'Constraint control_edges failed'
      };
    }
  },
  {
    targetType: 'uml:InputPin',
    ruleName: 'outgoing_edges_structured_only',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'outgoing_edges_structured_only',
        passed,
        message: passed ? undefined : 'Constraint outgoing_edges_structured_only failed'
      };
    }
  },
  {
    targetType: 'uml:InstanceSpecification',
    ruleName: 'defining_feature',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%SLOT SELF)                    #'(L... */ true;
      return {
        ruleName: 'defining_feature',
        passed,
        message: passed ? undefined : 'Constraint defining_feature failed'
      };
    }
  },
  {
    targetType: 'uml:InstanceSpecification',
    ruleName: 'structural_feature',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%CLASSIFIER SELF)                  ... */ true;
      return {
        ruleName: 'structural_feature',
        passed,
        message: passed ? undefined : 'Constraint structural_feature failed'
      };
    }
  },
  {
    targetType: 'uml:InstanceSpecification',
    ruleName: 'deployment_target',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'deployment_target',
        passed,
        message: passed ? undefined : 'Constraint deployment_target failed'
      };
    }
  },
  {
    targetType: 'uml:InstanceSpecification',
    ruleName: 'deployment_artifact',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'deployment_artifact',
        passed,
        message: passed ? undefined : 'Constraint deployment_artifact failed'
      };
    }
  },
  {
    targetType: 'uml:InteractionConstraint',
    ruleName: 'dynamic_variables',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'dynamic_variables',
        passed,
        message: passed ? undefined : 'Constraint dynamic_variables failed'
      };
    }
  },
  {
    targetType: 'uml:InteractionConstraint',
    ruleName: 'global_data',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'global_data',
        passed,
        message: passed ? undefined : 'Constraint global_data failed'
      };
    }
  },
  {
    targetType: 'uml:InteractionConstraint',
    ruleName: 'minint_maxint',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'minint_maxint',
        passed,
        message: passed ? undefined : 'Constraint minint_maxint failed'
      };
    }
  },
  {
    targetType: 'uml:InteractionConstraint',
    ruleName: 'minint_non_negative',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'minint_non_negative',
        passed,
        message: passed ? undefined : 'Constraint minint_non_negative failed'
      };
    }
  },
  {
    targetType: 'uml:InteractionConstraint',
    ruleName: 'maxint_positive',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'maxint_positive',
        passed,
        message: passed ? undefined : 'Constraint maxint_positive failed'
      };
    }
  },
  {
    targetType: 'uml:InteractionConstraint',
    ruleName: 'maxint_greater_equal_minint',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'maxint_greater_equal_minint',
        passed,
        message: passed ? undefined : 'Constraint maxint_greater_equal_minint failed'
      };
    }
  },
  {
    targetType: 'uml:InteractionOperand',
    ruleName: 'guard_directly_prior',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'guard_directly_prior',
        passed,
        message: passed ? undefined : 'Constraint guard_directly_prior failed'
      };
    }
  },
  {
    targetType: 'uml:InteractionOperand',
    ruleName: 'guard_contain_references',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'guard_contain_references',
        passed,
        message: passed ? undefined : 'Constraint guard_contain_references failed'
      };
    }
  },
  {
    targetType: 'uml:InteractionUse',
    ruleName: 'gates_match',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'gates_match',
        passed,
        message: passed ? undefined : 'Constraint gates_match failed'
      };
    }
  },
  {
    targetType: 'uml:InteractionUse',
    ruleName: 'all_lifelines',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'all_lifelines',
        passed,
        message: passed ? undefined : 'Constraint all_lifelines failed'
      };
    }
  },
  {
    targetType: 'uml:InteractionUse',
    ruleName: 'arguments_correspond_to_parameters',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'arguments_correspond_to_parameters',
        passed,
        message: passed ? undefined : 'Constraint arguments_correspond_to_parameters failed'
      };
    }
  },
  {
    targetType: 'uml:InteractionUse',
    ruleName: 'arguments_are_constants',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'arguments_are_constants',
        passed,
        message: passed ? undefined : 'Constraint arguments_are_constants failed'
      };
    }
  },
  {
    targetType: 'uml:Interface',
    ruleName: 'visibility',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%FEATURE SELF)                    #... */ true;
      return {
        ruleName: 'visibility',
        passed,
        message: passed ? undefined : 'Constraint visibility failed'
      };
    }
  },
  {
    targetType: 'uml:InterruptibleActivityRegion',
    ruleName: 'interrupting_edges',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'interrupting_edges',
        passed,
        message: passed ? undefined : 'Constraint interrupting_edges failed'
      };
    }
  },
  {
    targetType: 'uml:InvocationAction',
    ruleName: 'on_port_receiver',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'on_port_receiver',
        passed,
        message: passed ? undefined : 'Constraint on_port_receiver failed'
      };
    }
  },
  {
    targetType: 'uml:JoinNode',
    ruleName: 'one_outgoing_edge',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (OCL-SIZE (%OUTGOING SELF)) 1)... */ true;
      return {
        ruleName: 'one_outgoing_edge',
        passed,
        message: passed ? undefined : 'Constraint one_outgoing_edge failed'
      };
    }
  },
  {
    targetType: 'uml:Lifeline',
    ruleName: 'interaction_uses_share_lifeline',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'interaction_uses_share_lifeline',
        passed,
        message: passed ? undefined : 'Constraint interaction_uses_share_lifeline failed'
      };
    }
  },
  {
    targetType: 'uml:Lifeline',
    ruleName: 'selector_specified',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-OR (OCL-IMPLIES (OCL-IS-EMPTY (%SELECTOR SELF... */ true;
      return {
        ruleName: 'selector_specified',
        passed,
        message: passed ? undefined : 'Constraint selector_specified failed'
      };
    }
  },
  {
    targetType: 'uml:Lifeline',
    ruleName: 'same_classifier',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IF (OCL-NOT-EMPTY (%REPRESENTS SELF))       ... */ true;
      return {
        ruleName: 'same_classifier',
        passed,
        message: passed ? undefined : 'Constraint same_classifier failed'
      };
    }
  },
  {
    targetType: 'uml:LinkAction',
    ruleName: 'same_association',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (OCL-COLLECT (%END-DATA SELF)             ... */ true;
      return {
        ruleName: 'same_association',
        passed,
        message: passed ? undefined : 'Constraint same_association failed'
      };
    }
  },
  {
    targetType: 'uml:LinkAction',
    ruleName: 'not_static',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%END-DATA SELF)                    ... */ true;
      return {
        ruleName: 'not_static',
        passed,
        message: passed ? undefined : 'Constraint not_static failed'
      };
    }
  },
  {
    targetType: 'uml:LinkAction',
    ruleName: 'same_pins',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (OCL-AS-SET (%INPUT SELF))              (L... */ true;
      return {
        ruleName: 'same_pins',
        passed,
        message: passed ? undefined : 'Constraint same_pins failed'
      };
    }
  },
  {
    targetType: 'uml:LinkEndCreationData',
    ruleName: 'single_input_pin',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-= (%ORDERING (%END SELF)) :ORDER... */ true;
      return {
        ruleName: 'single_input_pin',
        passed,
        message: passed ? undefined : 'Constraint single_input_pin failed'
      };
    }
  },
  {
    targetType: 'uml:LinkEndData',
    ruleName: 'property_is_association_end',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (OCL-SIZE (%ASSOCIATION (%END SELF))) 1)... */ true;
      return {
        ruleName: 'property_is_association_end',
        passed,
        message: passed ? undefined : 'Constraint property_is_association_end failed'
      };
    }
  },
  {
    targetType: 'uml:LinkEndData',
    ruleName: 'same_type',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (%TYPE (%VALUE SELF)) (%TYPE (%END SELF)))... */ true;
      return {
        ruleName: 'same_type',
        passed,
        message: passed ? undefined : 'Constraint same_type failed'
      };
    }
  },
  {
    targetType: 'uml:LinkEndData',
    ruleName: 'multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (IS (%VALUE SELF) 1 1)... */ true;
      return {
        ruleName: 'multiplicity',
        passed,
        message: passed ? undefined : 'Constraint multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:LinkEndData',
    ruleName: 'qualifiers',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (OCL-COLLECT (%QUALIFIER SELF)            ... */ true;
      return {
        ruleName: 'qualifiers',
        passed,
        message: passed ? undefined : 'Constraint qualifiers failed'
      };
    }
  },
  {
    targetType: 'uml:LinkEndData',
    ruleName: 'end_object_input_pin',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-EXCLUDES-ALL (%VALUE SELF) (%VALUE (%QUALIFIE... */ true;
      return {
        ruleName: 'end_object_input_pin',
        passed,
        message: passed ? undefined : 'Constraint end_object_input_pin failed'
      };
    }
  },
  {
    targetType: 'uml:LinkEndDestructionData',
    ruleName: 'destroy_link_action',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'destroy_link_action',
        passed,
        message: passed ? undefined : 'Constraint destroy_link_action failed'
      };
    }
  },
  {
    targetType: 'uml:LinkEndDestructionData',
    ruleName: 'unlimited_natural_and_multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'unlimited_natural_and_multiplicity',
        passed,
        message: passed ? undefined : 'Constraint unlimited_natural_and_multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:LoopNode',
    ruleName: 'input_edges',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'input_edges',
        passed,
        message: passed ? undefined : 'Constraint input_edges failed'
      };
    }
  },
  {
    targetType: 'uml:LoopNode',
    ruleName: 'body_output_pins',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'body_output_pins',
        passed,
        message: passed ? undefined : 'Constraint body_output_pins failed'
      };
    }
  },
  {
    targetType: 'uml:LoopNode',
    ruleName: 'result_no_incoming',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'result_no_incoming',
        passed,
        message: passed ? undefined : 'Constraint result_no_incoming failed'
      };
    }
  },
  {
    targetType: 'uml:MergeNode',
    ruleName: 'one_outgoing_edge',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'one_outgoing_edge',
        passed,
        message: passed ? undefined : 'Constraint one_outgoing_edge failed'
      };
    }
  },
  {
    targetType: 'uml:MergeNode',
    ruleName: 'edges',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'edges',
        passed,
        message: passed ? undefined : 'Constraint edges failed'
      };
    }
  },
  {
    targetType: 'uml:Message',
    ruleName: 'signature_is_signal',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'signature_is_signal',
        passed,
        message: passed ? undefined : 'Constraint signature_is_signal failed'
      };
    }
  },
  {
    targetType: 'uml:Message',
    ruleName: 'signature_is_operation',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'signature_is_operation',
        passed,
        message: passed ? undefined : 'Constraint signature_is_operation failed'
      };
    }
  },
  {
    targetType: 'uml:Message',
    ruleName: 'occurrence_specifications',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'occurrence_specifications',
        passed,
        message: passed ? undefined : 'Constraint occurrence_specifications failed'
      };
    }
  },
  {
    targetType: 'uml:Message',
    ruleName: 'cannot_cross_boundaries',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'cannot_cross_boundaries',
        passed,
        message: passed ? undefined : 'Constraint cannot_cross_boundaries failed'
      };
    }
  },
  {
    targetType: 'uml:Message',
    ruleName: 'signature_refer_to',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'signature_refer_to',
        passed,
        message: passed ? undefined : 'Constraint signature_refer_to failed'
      };
    }
  },
  {
    targetType: 'uml:Message',
    ruleName: 'sending_receiving_message_event',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'sending_receiving_message_event',
        passed,
        message: passed ? undefined : 'Constraint sending_receiving_message_event failed'
      };
    }
  },
  {
    targetType: 'uml:Message',
    ruleName: 'arguments',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'arguments',
        passed,
        message: passed ? undefined : 'Constraint arguments failed'
      };
    }
  },
  {
    targetType: 'uml:MultiplicityElement',
    ruleName: 'upper_gt_0',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-NOT (OCL-IS-UNDEFINED (UPPER-BOU... */ true;
      return {
        ruleName: 'upper_gt_0',
        passed,
        message: passed ? undefined : 'Constraint upper_gt_0 failed'
      };
    }
  },
  {
    targetType: 'uml:MultiplicityElement',
    ruleName: 'lower_ge_0',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-NOT (OCL-IS-UNDEFINED (LOWER-BOU... */ true;
      return {
        ruleName: 'lower_ge_0',
        passed,
        message: passed ? undefined : 'Constraint lower_ge_0 failed'
      };
    }
  },
  {
    targetType: 'uml:MultiplicityElement',
    ruleName: 'upper_ge_lower',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-AND (OCL-NOT (OCL-IS-UNDEFINED ... */ true;
      return {
        ruleName: 'upper_ge_lower',
        passed,
        message: passed ? undefined : 'Constraint upper_ge_lower failed'
      };
    }
  },
  {
    targetType: 'uml:MultiplicityElement',
    ruleName: 'value_specification_no_side_effects',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'value_specification_no_side_effects',
        passed,
        message: passed ? undefined : 'Constraint value_specification_no_side_effects failed'
      };
    }
  },
  {
    targetType: 'uml:MultiplicityElement',
    ruleName: 'value_specification_constant',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'value_specification_constant',
        passed,
        message: passed ? undefined : 'Constraint value_specification_constant failed'
      };
    }
  },
  {
    targetType: 'uml:NamedElement',
    ruleName: 'has_no_qualified_name',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-OR (OCL-IS-EMPTY (%NAME SELF)) ... */ true;
      return {
        ruleName: 'has_no_qualified_name',
        passed,
        message: passed ? undefined : 'Constraint has_no_qualified_name failed'
      };
    }
  },
  {
    targetType: 'uml:NamedElement',
    ruleName: 'has_qualified_name',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-AND (OCL-NOT-EMPTY (%NAME SELF))... */ true;
      return {
        ruleName: 'has_qualified_name',
        passed,
        message: passed ? undefined : 'Constraint has_qualified_name failed'
      };
    }
  },
  {
    targetType: 'uml:NamedElement',
    ruleName: 'visibility_needs_ownership',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-IS-EMPTY (%NAMESPACE SELF))    ... */ true;
      return {
        ruleName: 'visibility_needs_ownership',
        passed,
        message: passed ? undefined : 'Constraint visibility_needs_ownership failed'
      };
    }
  },
  {
    targetType: 'uml:Namespace',
    ruleName: 'members_distinguishable',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (MEMBERS-ARE-DISTINGUISHABLE SELF)... */ true;
      return {
        ruleName: 'members_distinguishable',
        passed,
        message: passed ? undefined : 'Constraint members_distinguishable failed'
      };
    }
  },
  {
    targetType: 'uml:Node',
    ruleName: 'internal_structure',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'internal_structure',
        passed,
        message: passed ? undefined : 'Constraint internal_structure failed'
      };
    }
  },
  {
    targetType: 'uml:ObjectFlow',
    ruleName: 'target',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'target',
        passed,
        message: passed ? undefined : 'Constraint target failed'
      };
    }
  },
  {
    targetType: 'uml:ObjectFlow',
    ruleName: 'is_multicast_or_is_multireceive',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'is_multicast_or_is_multireceive',
        passed,
        message: passed ? undefined : 'Constraint is_multicast_or_is_multireceive failed'
      };
    }
  },
  {
    targetType: 'uml:ObjectFlow',
    ruleName: 'input_and_output_parameter',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'input_and_output_parameter',
        passed,
        message: passed ? undefined : 'Constraint input_and_output_parameter failed'
      };
    }
  },
  {
    targetType: 'uml:ObjectFlow',
    ruleName: 'selection_behaviour',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'selection_behaviour',
        passed,
        message: passed ? undefined : 'Constraint selection_behaviour failed'
      };
    }
  },
  {
    targetType: 'uml:ObjectFlow',
    ruleName: 'same_upper_bounds',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'same_upper_bounds',
        passed,
        message: passed ? undefined : 'Constraint same_upper_bounds failed'
      };
    }
  },
  {
    targetType: 'uml:ObjectFlow',
    ruleName: 'transformation_behaviour',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'transformation_behaviour',
        passed,
        message: passed ? undefined : 'Constraint transformation_behaviour failed'
      };
    }
  },
  {
    targetType: 'uml:ObjectFlow',
    ruleName: 'compatible_types',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'compatible_types',
        passed,
        message: passed ? undefined : 'Constraint compatible_types failed'
      };
    }
  },
  {
    targetType: 'uml:ObjectFlow',
    ruleName: 'no_actions',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'no_actions',
        passed,
        message: passed ? undefined : 'Constraint no_actions failed'
      };
    }
  },
  {
    targetType: 'uml:ObjectNode',
    ruleName: 'object_flow_edges',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'object_flow_edges',
        passed,
        message: passed ? undefined : 'Constraint object_flow_edges failed'
      };
    }
  },
  {
    targetType: 'uml:ObjectNode',
    ruleName: 'not_unique',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (%IS-UNIQUE SELF) :FALSE)... */ true;
      return {
        ruleName: 'not_unique',
        passed,
        message: passed ? undefined : 'Constraint not_unique failed'
      };
    }
  },
  {
    targetType: 'uml:ObjectNode',
    ruleName: 'selection_behavior',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'selection_behavior',
        passed,
        message: passed ? undefined : 'Constraint selection_behavior failed'
      };
    }
  },
  {
    targetType: 'uml:ObjectNode',
    ruleName: 'input_output_parameter',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'input_output_parameter',
        passed,
        message: passed ? undefined : 'Constraint input_output_parameter failed'
      };
    }
  },
  {
    targetType: 'uml:OpaqueExpression',
    ruleName: 'language_body_size',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-NOT-EMPTY (%LANGUAGE SELF))    ... */ true;
      return {
        ruleName: 'language_body_size',
        passed,
        message: passed ? undefined : 'Constraint language_body_size failed'
      };
    }
  },
  {
    targetType: 'uml:OpaqueExpression',
    ruleName: 'only_return_result_parameters',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-NOT-EMPTY (%BEHAVIOR SELF))    ... */ true;
      return {
        ruleName: 'only_return_result_parameters',
        passed,
        message: passed ? undefined : 'Constraint only_return_result_parameters failed'
      };
    }
  },
  {
    targetType: 'uml:OpaqueExpression',
    ruleName: 'one_return_result_parameter',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-NOT-EMPTY (%BEHAVIOR SELF))    ... */ true;
      return {
        ruleName: 'one_return_result_parameter',
        passed,
        message: passed ? undefined : 'Constraint one_return_result_parameter failed'
      };
    }
  },
  {
    targetType: 'uml:Operation',
    ruleName: 'at_most_one_return',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-<= (OCL-SIZE (OCL-SELECT (%OWNED-PARAMETER SE... */ true;
      return {
        ruleName: 'at_most_one_return',
        passed,
        message: passed ? undefined : 'Constraint at_most_one_return failed'
      };
    }
  },
  {
    targetType: 'uml:Operation',
    ruleName: 'only_body_for_query',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-NOT-EMPTY (%BODY-CONDITION SELF)... */ true;
      return {
        ruleName: 'only_body_for_query',
        passed,
        message: passed ? undefined : 'Constraint only_body_for_query failed'
      };
    }
  },
  {
    targetType: 'uml:OutputPin',
    ruleName: 'incoming_edges_structured_only',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'incoming_edges_structured_only',
        passed,
        message: passed ? undefined : 'Constraint incoming_edges_structured_only failed'
      };
    }
  },
  {
    targetType: 'uml:PackageImport',
    ruleName: 'public_or_private',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-OR (OCL-= (%VISIBILITY SELF) :PUBLIC)       ... */ true;
      return {
        ruleName: 'public_or_private',
        passed,
        message: passed ? undefined : 'Constraint public_or_private failed'
      };
    }
  },
  {
    targetType: 'uml:Parameter',
    ruleName: 'stream_and_exception',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'stream_and_exception',
        passed,
        message: passed ? undefined : 'Constraint stream_and_exception failed'
      };
    }
  },
  {
    targetType: 'uml:Parameter',
    ruleName: 'not_exception',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'not_exception',
        passed,
        message: passed ? undefined : 'Constraint not_exception failed'
      };
    }
  },
  {
    targetType: 'uml:Parameter',
    ruleName: 'reentrant_behaviors',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'reentrant_behaviors',
        passed,
        message: passed ? undefined : 'Constraint reentrant_behaviors failed'
      };
    }
  },
  {
    targetType: 'uml:Parameter',
    ruleName: 'in_and_out',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'in_and_out',
        passed,
        message: passed ? undefined : 'Constraint in_and_out failed'
      };
    }
  },
  {
    targetType: 'uml:ParameterSet',
    ruleName: 'same_parameterized_entity',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'same_parameterized_entity',
        passed,
        message: passed ? undefined : 'Constraint same_parameterized_entity failed'
      };
    }
  },
  {
    targetType: 'uml:ParameterSet',
    ruleName: 'input',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'input',
        passed,
        message: passed ? undefined : 'Constraint input failed'
      };
    }
  },
  {
    targetType: 'uml:ParameterSet',
    ruleName: 'two_parameter_sets',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'two_parameter_sets',
        passed,
        message: passed ? undefined : 'Constraint two_parameter_sets failed'
      };
    }
  },
  {
    targetType: 'uml:PartDecomposition',
    ruleName: 'parts_of_internal_structures',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'parts_of_internal_structures',
        passed,
        message: passed ? undefined : 'Constraint parts_of_internal_structures failed'
      };
    }
  },
  {
    targetType: 'uml:PartDecomposition',
    ruleName: 'assume',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'assume',
        passed,
        message: passed ? undefined : 'Constraint assume failed'
      };
    }
  },
  {
    targetType: 'uml:PartDecomposition',
    ruleName: 'commutativity_of_decomposition',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'commutativity_of_decomposition',
        passed,
        message: passed ? undefined : 'Constraint commutativity_of_decomposition failed'
      };
    }
  },
  {
    targetType: 'uml:Pin',
    ruleName: 'control_pins',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (%IS-CONTROL SELF) (%IS-CONTROL-TYPE ... */ true;
      return {
        ruleName: 'control_pins',
        passed,
        message: passed ? undefined : 'Constraint control_pins failed'
      };
    }
  },
  {
    targetType: 'uml:Port',
    ruleName: 'required_interfaces',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'required_interfaces',
        passed,
        message: passed ? undefined : 'Constraint required_interfaces failed'
      };
    }
  },
  {
    targetType: 'uml:Port',
    ruleName: 'port_aggregation',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'port_aggregation',
        passed,
        message: passed ? undefined : 'Constraint port_aggregation failed'
      };
    }
  },
  {
    targetType: 'uml:Port',
    ruleName: 'port_destroyed',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'port_destroyed',
        passed,
        message: passed ? undefined : 'Constraint port_destroyed failed'
      };
    }
  },
  {
    targetType: 'uml:Port',
    ruleName: 'default_value',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'default_value',
        passed,
        message: passed ? undefined : 'Constraint default_value failed'
      };
    }
  },
  {
    targetType: 'uml:Property',
    ruleName: 'derived_union_is_derived',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (%IS-DERIVED-UNION SELF) (%IS-DERIVED... */ true;
      return {
        ruleName: 'derived_union_is_derived',
        passed,
        message: passed ? undefined : 'Constraint derived_union_is_derived failed'
      };
    }
  },
  {
    targetType: 'uml:Property',
    ruleName: 'multiplicity_of_composite',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (%IS-COMPOSITE SELF)                ... */ true;
      return {
        ruleName: 'multiplicity_of_composite',
        passed,
        message: passed ? undefined : 'Constraint multiplicity_of_composite failed'
      };
    }
  },
  {
    targetType: 'uml:Property',
    ruleName: 'derived_union_is_read_only',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (%IS-DERIVED-UNION SELF) (%IS-READ-ON... */ true;
      return {
        ruleName: 'derived_union_is_read_only',
        passed,
        message: passed ? undefined : 'Constraint derived_union_is_read_only failed'
      };
    }
  },
  {
    targetType: 'uml:Property',
    ruleName: 'subsetted_property_names',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'subsetted_property_names',
        passed,
        message: passed ? undefined : 'Constraint subsetted_property_names failed'
      };
    }
  },
  {
    targetType: 'uml:Property',
    ruleName: 'redefined_property_inherited',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-NOT-EMPTY (%REDEFINED-PROPERTY S... */ true;
      return {
        ruleName: 'redefined_property_inherited',
        passed,
        message: passed ? undefined : 'Constraint redefined_property_inherited failed'
      };
    }
  },
  {
    targetType: 'uml:Property',
    ruleName: 'deployment_target',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'deployment_target',
        passed,
        message: passed ? undefined : 'Constraint deployment_target failed'
      };
    }
  },
  {
    targetType: 'uml:Property',
    ruleName: 'subsetting_rules',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%SUBSETTED-PROPERTY SELF)          ... */ true;
      return {
        ruleName: 'subsetting_rules',
        passed,
        message: passed ? undefined : 'Constraint subsetting_rules failed'
      };
    }
  },
  {
    targetType: 'uml:ProtocolStateMachine',
    ruleName: 'classifier_context',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-AND (OCL-NOT (OCL-IS-EMPTY (%CONTEXT SELF)))... */ true;
      return {
        ruleName: 'classifier_context',
        passed,
        message: passed ? undefined : 'Constraint classifier_context failed'
      };
    }
  },
  {
    targetType: 'uml:ProtocolStateMachine',
    ruleName: 'protocol_transitions',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%REGION SELF)                    #'... */ true;
      return {
        ruleName: 'protocol_transitions',
        passed,
        message: passed ? undefined : 'Constraint protocol_transitions failed'
      };
    }
  },
  {
    targetType: 'uml:ProtocolStateMachine',
    ruleName: 'entry_exit_do',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%REGION SELF)                    #'... */ true;
      return {
        ruleName: 'entry_exit_do',
        passed,
        message: passed ? undefined : 'Constraint entry_exit_do failed'
      };
    }
  },
  {
    targetType: 'uml:ProtocolStateMachine',
    ruleName: 'deep_or_shallow_history',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%REGION SELF)                    #'... */ true;
      return {
        ruleName: 'deep_or_shallow_history',
        passed,
        message: passed ? undefined : 'Constraint deep_or_shallow_history failed'
      };
    }
  },
  {
    targetType: 'uml:ProtocolStateMachine',
    ruleName: 'ports_connected',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'ports_connected',
        passed,
        message: passed ? undefined : 'Constraint ports_connected failed'
      };
    }
  },
  {
    targetType: 'uml:ProtocolTransition',
    ruleName: 'belongs_to_psm',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (BELONGS-TO-P-S-M (%CONTAINER SELF))... */ true;
      return {
        ruleName: 'belongs_to_psm',
        passed,
        message: passed ? undefined : 'Constraint belongs_to_psm failed'
      };
    }
  },
  {
    targetType: 'uml:ProtocolTransition',
    ruleName: 'associated_actions',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IS-EMPTY (%EFFECT SELF))... */ true;
      return {
        ruleName: 'associated_actions',
        passed,
        message: passed ? undefined : 'Constraint associated_actions failed'
      };
    }
  },
  {
    targetType: 'uml:ProtocolTransition',
    ruleName: 'refers_to_operation',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'refers_to_operation',
        passed,
        message: passed ? undefined : 'Constraint refers_to_operation failed'
      };
    }
  },
  {
    targetType: 'uml:Pseudostate',
    ruleName: 'choice_vertex',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-= (%KIND SELF) :CHOICE)        ... */ true;
      return {
        ruleName: 'choice_vertex',
        passed,
        message: passed ? undefined : 'Constraint choice_vertex failed'
      };
    }
  },
  {
    targetType: 'uml:Pseudostate',
    ruleName: 'join_vertex',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-= (%KIND SELF) :JOIN)          ... */ true;
      return {
        ruleName: 'join_vertex',
        passed,
        message: passed ? undefined : 'Constraint join_vertex failed'
      };
    }
  },
  {
    targetType: 'uml:Pseudostate',
    ruleName: 'junction_vertex',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-= (%KIND SELF) :JUNCTION)      ... */ true;
      return {
        ruleName: 'junction_vertex',
        passed,
        message: passed ? undefined : 'Constraint junction_vertex failed'
      };
    }
  },
  {
    targetType: 'uml:Pseudostate',
    ruleName: 'transitions_outgoing',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-= (%KIND SELF) :FORK)          ... */ true;
      return {
        ruleName: 'transitions_outgoing',
        passed,
        message: passed ? undefined : 'Constraint transitions_outgoing failed'
      };
    }
  },
  {
    targetType: 'uml:Pseudostate',
    ruleName: 'history_vertices',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-OR (OCL-= (%KIND SELF) :DEEPHIST... */ true;
      return {
        ruleName: 'history_vertices',
        passed,
        message: passed ? undefined : 'Constraint history_vertices failed'
      };
    }
  },
  {
    targetType: 'uml:Pseudostate',
    ruleName: 'fork_vertex',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-= (%KIND SELF) :FORK)          ... */ true;
      return {
        ruleName: 'fork_vertex',
        passed,
        message: passed ? undefined : 'Constraint fork_vertex failed'
      };
    }
  },
  {
    targetType: 'uml:Pseudostate',
    ruleName: 'initial_vertex',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-= (%KIND SELF) :INITIAL)       ... */ true;
      return {
        ruleName: 'initial_vertex',
        passed,
        message: passed ? undefined : 'Constraint initial_vertex failed'
      };
    }
  },
  {
    targetType: 'uml:Pseudostate',
    ruleName: 'outgoing_from_initial',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-= (%KIND SELF) :INITIAL)       ... */ true;
      return {
        ruleName: 'outgoing_from_initial',
        passed,
        message: passed ? undefined : 'Constraint outgoing_from_initial failed'
      };
    }
  },
  {
    targetType: 'uml:Pseudostate',
    ruleName: 'transitions_incoming',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-= (%KIND SELF) :JOIN)          ... */ true;
      return {
        ruleName: 'transitions_incoming',
        passed,
        message: passed ? undefined : 'Constraint transitions_incoming failed'
      };
    }
  },
  {
    targetType: 'uml:QualifierValue',
    ruleName: 'type_of_qualifier',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (%TYPE (%VALUE SELF)) (%TYPE (%QUALIFIER SE... */ true;
      return {
        ruleName: 'type_of_qualifier',
        passed,
        message: passed ? undefined : 'Constraint type_of_qualifier failed'
      };
    }
  },
  {
    targetType: 'uml:QualifierValue',
    ruleName: 'multiplicity_of_qualifier',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (IS (%VALUE SELF) 1 1)... */ true;
      return {
        ruleName: 'multiplicity_of_qualifier',
        passed,
        message: passed ? undefined : 'Constraint multiplicity_of_qualifier failed'
      };
    }
  },
  {
    targetType: 'uml:ReadExtentAction',
    ruleName: 'type_is_classifier',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'type_is_classifier',
        passed,
        message: passed ? undefined : 'Constraint type_is_classifier failed'
      };
    }
  },
  {
    targetType: 'uml:ReadExtentAction',
    ruleName: 'multiplicity_of_result',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (IS (%RESULT SELF) 0 '|LiteralUnlimitedNatural|)... */ true;
      return {
        ruleName: 'multiplicity_of_result',
        passed,
        message: passed ? undefined : 'Constraint multiplicity_of_result failed'
      };
    }
  },
  {
    targetType: 'uml:ReadIsClassifiedObjectAction',
    ruleName: 'multiplicity_of_input',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (IS (%OBJECT SELF) 1 1)... */ true;
      return {
        ruleName: 'multiplicity_of_input',
        passed,
        message: passed ? undefined : 'Constraint multiplicity_of_input failed'
      };
    }
  },
  {
    targetType: 'uml:ReadIsClassifiedObjectAction',
    ruleName: 'no_type',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IS-EMPTY (%TYPE (%OBJECT SELF)))... */ true;
      return {
        ruleName: 'no_type',
        passed,
        message: passed ? undefined : 'Constraint no_type failed'
      };
    }
  },
  {
    targetType: 'uml:ReadIsClassifiedObjectAction',
    ruleName: 'multiplicity_of_output',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (IS (%RESULT SELF) 1 1)... */ true;
      return {
        ruleName: 'multiplicity_of_output',
        passed,
        message: passed ? undefined : 'Constraint multiplicity_of_output failed'
      };
    }
  },
  {
    targetType: 'uml:ReadIsClassifiedObjectAction',
    ruleName: 'boolean_result',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (%TYPE (%RESULT SELF)) '|Boolean|)... */ true;
      return {
        ruleName: 'boolean_result',
        passed,
        message: passed ? undefined : 'Constraint boolean_result failed'
      };
    }
  },
  {
    targetType: 'uml:ReadLinkAction',
    ruleName: 'one_open_end',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (OCL-SIZE (OCL-SELECT (%END-DATA SELF)    ... */ true;
      return {
        ruleName: 'one_open_end',
        passed,
        message: passed ? undefined : 'Constraint one_open_end failed'
      };
    }
  },
  {
    targetType: 'uml:ReadLinkObjectEndAction',
    ruleName: 'property',
    evaluate: (node: XmiNode) => {
      const passed = !!node.attributes['end'];
      return {
        ruleName: 'property',
        passed,
        message: passed ? undefined : 'Constraint property failed'
      };
    }
  },
  {
    targetType: 'uml:ReadLinkObjectEndAction',
    ruleName: 'multiplicity_of_result',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (IS (%RESULT SELF) 1 1)... */ true;
      return {
        ruleName: 'multiplicity_of_result',
        passed,
        message: passed ? undefined : 'Constraint multiplicity_of_result failed'
      };
    }
  },
  {
    targetType: 'uml:ReadLinkObjectEndAction',
    ruleName: 'type_of_result',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (%TYPE (%RESULT SELF)) (%TYPE (%END SELF)))... */ true;
      return {
        ruleName: 'type_of_result',
        passed,
        message: passed ? undefined : 'Constraint type_of_result failed'
      };
    }
  },
  {
    targetType: 'uml:ReadLinkObjectEndAction',
    ruleName: 'multiplicity_of_object',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (IS (%OBJECT SELF) 1 1)... */ true;
      return {
        ruleName: 'multiplicity_of_object',
        passed,
        message: passed ? undefined : 'Constraint multiplicity_of_object failed'
      };
    }
  },
  {
    targetType: 'uml:ReadLinkObjectEndAction',
    ruleName: 'type_of_object',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (%TYPE (%OBJECT SELF)) (%ASSOCIATION (%END ... */ true;
      return {
        ruleName: 'type_of_object',
        passed,
        message: passed ? undefined : 'Constraint type_of_object failed'
      };
    }
  },
  {
    targetType: 'uml:ReadLinkObjectEndAction',
    ruleName: 'ends_of_association',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%MEMBER-END (%ASSOCIATION (%END SELF... */ true;
      return {
        ruleName: 'ends_of_association',
        passed,
        message: passed ? undefined : 'Constraint ends_of_association failed'
      };
    }
  },
  {
    targetType: 'uml:ReadLinkObjectEndAction',
    ruleName: 'association_of_association',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IS-KIND-OF (%ASSOCIATION (%END SELF)) (find-c... */ true;
      return {
        ruleName: 'association_of_association',
        passed,
        message: passed ? undefined : 'Constraint association_of_association failed'
      };
    }
  },
  {
    targetType: 'uml:ReadLinkObjectEndQualifierAction',
    ruleName: 'multiplicity_of_result',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (IS (%RESULT SELF) 1 1)... */ true;
      return {
        ruleName: 'multiplicity_of_result',
        passed,
        message: passed ? undefined : 'Constraint multiplicity_of_result failed'
      };
    }
  },
  {
    targetType: 'uml:ReadLinkObjectEndQualifierAction',
    ruleName: 'ends_of_association',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%MEMBER-END (%ASSOCIATION          ... */ true;
      return {
        ruleName: 'ends_of_association',
        passed,
        message: passed ? undefined : 'Constraint ends_of_association failed'
      };
    }
  },
  {
    targetType: 'uml:ReadLinkObjectEndQualifierAction',
    ruleName: 'multiplicity_of_qualifier',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (IS (%QUALIFIER SELF) 1 1)... */ true;
      return {
        ruleName: 'multiplicity_of_qualifier',
        passed,
        message: passed ? undefined : 'Constraint multiplicity_of_qualifier failed'
      };
    }
  },
  {
    targetType: 'uml:ReadLinkObjectEndQualifierAction',
    ruleName: 'same_type',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (%TYPE (%RESULT SELF)) (%TYPE (%QUALIFIER S... */ true;
      return {
        ruleName: 'same_type',
        passed,
        message: passed ? undefined : 'Constraint same_type failed'
      };
    }
  },
  {
    targetType: 'uml:ReadLinkObjectEndQualifierAction',
    ruleName: 'association_of_association',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IS-KIND-OF (%ASSOCIATION (%ASSOCIATION-END  ... */ true;
      return {
        ruleName: 'association_of_association',
        passed,
        message: passed ? undefined : 'Constraint association_of_association failed'
      };
    }
  },
  {
    targetType: 'uml:ReadLinkObjectEndQualifierAction',
    ruleName: 'type_of_object',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (%TYPE (%OBJECT SELF))              (%ASSO... */ true;
      return {
        ruleName: 'type_of_object',
        passed,
        message: passed ? undefined : 'Constraint type_of_object failed'
      };
    }
  },
  {
    targetType: 'uml:ReadLinkObjectEndQualifierAction',
    ruleName: 'multiplicity_of_object',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (IS (%OBJECT SELF) 1 1)... */ true;
      return {
        ruleName: 'multiplicity_of_object',
        passed,
        message: passed ? undefined : 'Constraint multiplicity_of_object failed'
      };
    }
  },
  {
    targetType: 'uml:ReadLinkObjectEndQualifierAction',
    ruleName: 'qualifier_attribute',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (OCL-SIZE (%ASSOCIATION-END (%QUALIFIER SEL... */ true;
      return {
        ruleName: 'qualifier_attribute',
        passed,
        message: passed ? undefined : 'Constraint qualifier_attribute failed'
      };
    }
  },
  {
    targetType: 'uml:ReadSelfAction',
    ruleName: 'contained',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (OCL-SIZE (%CONTEXT SELF)) 1)... */ true;
      return {
        ruleName: 'contained',
        passed,
        message: passed ? undefined : 'Constraint contained failed'
      };
    }
  },
  {
    targetType: 'uml:ReadSelfAction',
    ruleName: 'not_static',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'not_static',
        passed,
        message: passed ? undefined : 'Constraint not_static failed'
      };
    }
  },
  {
    targetType: 'uml:ReadSelfAction',
    ruleName: 'type',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (%TYPE (%RESULT SELF)) (%CONTEXT SELF))... */ true;
      return {
        ruleName: 'type',
        passed,
        message: passed ? undefined : 'Constraint type failed'
      };
    }
  },
  {
    targetType: 'uml:ReadSelfAction',
    ruleName: 'multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (IS (%RESULT SELF) 1 1)... */ true;
      return {
        ruleName: 'multiplicity',
        passed,
        message: passed ? undefined : 'Constraint multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:ReadStructuralFeatureAction',
    ruleName: 'type_and_ordering',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-AND (OCL-= (%TYPE (%RESULT SELF))           ... */ true;
      return {
        ruleName: 'type_and_ordering',
        passed,
        message: passed ? undefined : 'Constraint type_and_ordering failed'
      };
    }
  },
  {
    targetType: 'uml:ReadVariableAction',
    ruleName: 'type_and_ordering',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-AND (OCL-= (%TYPE (%RESULT SELF)) (%TYPE (%VA... */ true;
      return {
        ruleName: 'type_and_ordering',
        passed,
        message: passed ? undefined : 'Constraint type_and_ordering failed'
      };
    }
  },
  {
    targetType: 'uml:Reception',
    ruleName: 'not_query',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-NOT (%IS-QUERY SELF))... */ true;
      return {
        ruleName: 'not_query',
        passed,
        message: passed ? undefined : 'Constraint not_query failed'
      };
    }
  },
  {
    targetType: 'uml:ReclassifyObjectAction',
    ruleName: 'classifier_not_abstract',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-NOT (OCL-EXISTS (%NEW-CLASSIFIER SELF)      ... */ true;
      return {
        ruleName: 'classifier_not_abstract',
        passed,
        message: passed ? undefined : 'Constraint classifier_not_abstract failed'
      };
    }
  },
  {
    targetType: 'uml:ReclassifyObjectAction',
    ruleName: 'multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (IS (%ARGUMENT SELF) 1 1)... */ true;
      return {
        ruleName: 'multiplicity',
        passed,
        message: passed ? undefined : 'Constraint multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:ReclassifyObjectAction',
    ruleName: 'input_pin',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (OCL-SIZE (%TYPE (%ARGUMENT SELF))) 0)... */ true;
      return {
        ruleName: 'input_pin',
        passed,
        message: passed ? undefined : 'Constraint input_pin failed'
      };
    }
  },
  {
    targetType: 'uml:RedefinableElement',
    ruleName: 'redefinition_context_valid',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%REDEFINED-ELEMENT SELF)           ... */ true;
      return {
        ruleName: 'redefinition_context_valid',
        passed,
        message: passed ? undefined : 'Constraint redefinition_context_valid failed'
      };
    }
  },
  {
    targetType: 'uml:RedefinableElement',
    ruleName: 'redefinition_consistent',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%REDEFINED-ELEMENT SELF)           ... */ true;
      return {
        ruleName: 'redefinition_consistent',
        passed,
        message: passed ? undefined : 'Constraint redefinition_consistent failed'
      };
    }
  },
  {
    targetType: 'uml:RedefinableTemplateSignature',
    ruleName: 'inherited_parameters',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IF (OCL-IS-EMPTY (%EXTENDED-SIGNATURE SELF))... */ true;
      return {
        ruleName: 'inherited_parameters',
        passed,
        message: passed ? undefined : 'Constraint inherited_parameters failed'
      };
    }
  },
  {
    targetType: 'uml:ReduceAction',
    ruleName: 'input_type_is_collection',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'input_type_is_collection',
        passed,
        message: passed ? undefined : 'Constraint input_type_is_collection failed'
      };
    }
  },
  {
    targetType: 'uml:ReduceAction',
    ruleName: 'output_types_are_compatible',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'output_types_are_compatible',
        passed,
        message: passed ? undefined : 'Constraint output_types_are_compatible failed'
      };
    }
  },
  {
    targetType: 'uml:ReduceAction',
    ruleName: 'reducer_inputs_output',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'reducer_inputs_output',
        passed,
        message: passed ? undefined : 'Constraint reducer_inputs_output failed'
      };
    }
  },
  {
    targetType: 'uml:Region',
    ruleName: 'initial_vertex',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-<= (OCL-SIZE (OCL-SELECT (OCL-SELECT        ... */ true;
      return {
        ruleName: 'initial_vertex',
        passed,
        message: passed ? undefined : 'Constraint initial_vertex failed'
      };
    }
  },
  {
    targetType: 'uml:Region',
    ruleName: 'deep_history_vertex',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-<= (OCL-SIZE (OCL-SELECT (OCL-SELECT        ... */ true;
      return {
        ruleName: 'deep_history_vertex',
        passed,
        message: passed ? undefined : 'Constraint deep_history_vertex failed'
      };
    }
  },
  {
    targetType: 'uml:Region',
    ruleName: 'shallow_history_vertex',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-<= (OCL-SIZE (OCL-SELECT (OCL-SELECT        ... */ true;
      return {
        ruleName: 'shallow_history_vertex',
        passed,
        message: passed ? undefined : 'Constraint shallow_history_vertex failed'
      };
    }
  },
  {
    targetType: 'uml:Region',
    ruleName: 'owned',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-AND (OCL-IMPLIES (OCL-NOT-EMPTY (%STATE-MACHI... */ true;
      return {
        ruleName: 'owned',
        passed,
        message: passed ? undefined : 'Constraint owned failed'
      };
    }
  },
  {
    targetType: 'uml:RemoveStructuralFeatureValueAction',
    ruleName: 'non_unique_removal',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'non_unique_removal',
        passed,
        message: passed ? undefined : 'Constraint non_unique_removal failed'
      };
    }
  },
  {
    targetType: 'uml:RemoveVariableValueAction',
    ruleName: 'unlimited_natural',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'unlimited_natural',
        passed,
        message: passed ? undefined : 'Constraint unlimited_natural failed'
      };
    }
  },
  {
    targetType: 'uml:ReplyAction',
    ruleName: 'pins_match_parameter',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'pins_match_parameter',
        passed,
        message: passed ? undefined : 'Constraint pins_match_parameter failed'
      };
    }
  },
  {
    targetType: 'uml:SendSignalAction',
    ruleName: 'number_order',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'number_order',
        passed,
        message: passed ? undefined : 'Constraint number_order failed'
      };
    }
  },
  {
    targetType: 'uml:SendSignalAction',
    ruleName: 'type_ordering_multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'type_ordering_multiplicity',
        passed,
        message: passed ? undefined : 'Constraint type_ordering_multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:StartClassifierBehaviorAction',
    ruleName: 'multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'multiplicity',
        passed,
        message: passed ? undefined : 'Constraint multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:StartClassifierBehaviorAction',
    ruleName: 'type_has_classifier',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'type_has_classifier',
        passed,
        message: passed ? undefined : 'Constraint type_has_classifier failed'
      };
    }
  },
  {
    targetType: 'uml:State',
    ruleName: 'submachine_states',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (%IS-SUBMACHINE-STATE SELF)         ... */ true;
      return {
        ruleName: 'submachine_states',
        passed,
        message: passed ? undefined : 'Constraint submachine_states failed'
      };
    }
  },
  {
    targetType: 'uml:State',
    ruleName: 'destinations_or_sources_of_transitions',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (%IS-SUBMACHINE-STATE SELF)         ... */ true;
      return {
        ruleName: 'destinations_or_sources_of_transitions',
        passed,
        message: passed ? undefined : 'Constraint destinations_or_sources_of_transitions failed'
      };
    }
  },
  {
    targetType: 'uml:State',
    ruleName: 'submachine_or_regions',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (%IS-COMPOSITE SELF)                ... */ true;
      return {
        ruleName: 'submachine_or_regions',
        passed,
        message: passed ? undefined : 'Constraint submachine_or_regions failed'
      };
    }
  },
  {
    targetType: 'uml:State',
    ruleName: 'composite_states',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-NOT-EMPTY (%CONNECTION-POINT SEL... */ true;
      return {
        ruleName: 'composite_states',
        passed,
        message: passed ? undefined : 'Constraint composite_states failed'
      };
    }
  },
  {
    targetType: 'uml:State',
    ruleName: 'entry_or_exit',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%CONNECTION-POINT SELF)            ... */ true;
      return {
        ruleName: 'entry_or_exit',
        passed,
        message: passed ? undefined : 'Constraint entry_or_exit failed'
      };
    }
  },
  {
    targetType: 'uml:StateMachine',
    ruleName: 'classifier_context',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-NOT-EMPTY (%CONTEXT SELF))     ... */ true;
      return {
        ruleName: 'classifier_context',
        passed,
        message: passed ? undefined : 'Constraint classifier_context failed'
      };
    }
  },
  {
    targetType: 'uml:StateMachine',
    ruleName: 'context_classifier',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-NOT-EMPTY (%SPECIFICATION SELF))... */ true;
      return {
        ruleName: 'context_classifier',
        passed,
        message: passed ? undefined : 'Constraint context_classifier failed'
      };
    }
  },
  {
    targetType: 'uml:StateMachine',
    ruleName: 'connection_points',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%CONNECTION-POINT SELF)            ... */ true;
      return {
        ruleName: 'connection_points',
        passed,
        message: passed ? undefined : 'Constraint connection_points failed'
      };
    }
  },
  {
    targetType: 'uml:StateMachine',
    ruleName: 'method',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-NOT-EMPTY (%SPECIFICATION SELF))... */ true;
      return {
        ruleName: 'method',
        passed,
        message: passed ? undefined : 'Constraint method failed'
      };
    }
  },
  {
    targetType: 'uml:Stereotype',
    ruleName: 'name_not_clash',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'name_not_clash',
        passed,
        message: passed ? undefined : 'Constraint name_not_clash failed'
      };
    }
  },
  {
    targetType: 'uml:Stereotype',
    ruleName: 'generalize',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-AND (OCL-FOR-ALL (%GENERAL (%GENERALIZATION S... */ true;
      return {
        ruleName: 'generalize',
        passed,
        message: passed ? undefined : 'Constraint generalize failed'
      };
    }
  },
  {
    targetType: 'uml:StringExpression',
    ruleName: 'operands',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%OPERAND SELF)                    #... */ true;
      return {
        ruleName: 'operands',
        passed,
        message: passed ? undefined : 'Constraint operands failed'
      };
    }
  },
  {
    targetType: 'uml:StringExpression',
    ruleName: 'subexpressions',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IF (OCL-NOT-EMPTY (%SUB-EXPRESSION SELF))   ... */ true;
      return {
        ruleName: 'subexpressions',
        passed,
        message: passed ? undefined : 'Constraint subexpressions failed'
      };
    }
  },
  {
    targetType: 'uml:StructuralFeatureAction',
    ruleName: 'not_static',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (%IS-STATIC (%STRUCTURAL-FEATURE SELF)) :FA... */ true;
      return {
        ruleName: 'not_static',
        passed,
        message: passed ? undefined : 'Constraint not_static failed'
      };
    }
  },
  {
    targetType: 'uml:StructuralFeatureAction',
    ruleName: 'same_type',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'same_type',
        passed,
        message: passed ? undefined : 'Constraint same_type failed'
      };
    }
  },
  {
    targetType: 'uml:StructuralFeatureAction',
    ruleName: 'multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (IS (%OBJECT SELF) 1 1)... */ true;
      return {
        ruleName: 'multiplicity',
        passed,
        message: passed ? undefined : 'Constraint multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:StructuralFeatureAction',
    ruleName: 'one_featuring_classifier',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (OCL-SIZE (%FEATURING-CLASSIFIER (%STRUCTUR... */ true;
      return {
        ruleName: 'one_featuring_classifier',
        passed,
        message: passed ? undefined : 'Constraint one_featuring_classifier failed'
      };
    }
  },
  {
    targetType: 'uml:StructuredActivityNode',
    ruleName: 'edges',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'edges',
        passed,
        message: passed ? undefined : 'Constraint edges failed'
      };
    }
  },
  {
    targetType: 'uml:StructuredClassifier',
    ruleName: 'multiplicities',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'multiplicities',
        passed,
        message: passed ? undefined : 'Constraint multiplicities failed'
      };
    }
  },
  {
    targetType: 'uml:TemplateBinding',
    ruleName: 'parameter_substitution_formal',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%PARAMETER-SUBSTITUTION SELF)      ... */ true;
      return {
        ruleName: 'parameter_substitution_formal',
        passed,
        message: passed ? undefined : 'Constraint parameter_substitution_formal failed'
      };
    }
  },
  {
    targetType: 'uml:TemplateBinding',
    ruleName: 'one_parameter_substitution',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%PARAMETER (%TEMPLATE SELF))       ... */ true;
      return {
        ruleName: 'one_parameter_substitution',
        passed,
        message: passed ? undefined : 'Constraint one_parameter_substitution failed'
      };
    }
  },
  {
    targetType: 'uml:TemplateParameter',
    ruleName: 'must_be_compatible',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-NOT-EMPTY (%DEFAULT SELF))     ... */ true;
      return {
        ruleName: 'must_be_compatible',
        passed,
        message: passed ? undefined : 'Constraint must_be_compatible failed'
      };
    }
  },
  {
    targetType: 'uml:TemplateParameterSubstitution',
    ruleName: 'must_be_compatible',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-FOR-ALL (%ACTUAL SELF)                    #'... */ true;
      return {
        ruleName: 'must_be_compatible',
        passed,
        message: passed ? undefined : 'Constraint must_be_compatible failed'
      };
    }
  },
  {
    targetType: 'uml:TestIdentityAction',
    ruleName: 'no_type',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-AND (OCL-= (OCL-SIZE (%TYPE (%FIRST SELF))) 0... */ true;
      return {
        ruleName: 'no_type',
        passed,
        message: passed ? undefined : 'Constraint no_type failed'
      };
    }
  },
  {
    targetType: 'uml:TestIdentityAction',
    ruleName: 'multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-AND (IS (%FIRST SELF) 1 1) (IS (%SECOND SELF)... */ true;
      return {
        ruleName: 'multiplicity',
        passed,
        message: passed ? undefined : 'Constraint multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:TestIdentityAction',
    ruleName: 'result_is_boolean',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IS-TYPE-OF (%TYPE (%RESULT SELF)) '|Boolean|)... */ true;
      return {
        ruleName: 'result_is_boolean',
        passed,
        message: passed ? undefined : 'Constraint result_is_boolean failed'
      };
    }
  },
  {
    targetType: 'uml:TimeEvent',
    ruleName: 'when_non_negative',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'when_non_negative',
        passed,
        message: passed ? undefined : 'Constraint when_non_negative failed'
      };
    }
  },
  {
    targetType: 'uml:TimeEvent',
    ruleName: 'starting_time',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'starting_time',
        passed,
        message: passed ? undefined : 'Constraint starting_time failed'
      };
    }
  },
  {
    targetType: 'uml:Transition',
    ruleName: 'outgoing_pseudostates',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-AND (OCL-IS-KIND-OF (%SOURCE SEL... */ true;
      return {
        ruleName: 'outgoing_pseudostates',
        passed,
        message: passed ? undefined : 'Constraint outgoing_pseudostates failed'
      };
    }
  },
  {
    targetType: 'uml:Transition',
    ruleName: 'join_segment_state',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-AND (OCL-IS-KIND-OF (%TARGET SEL... */ true;
      return {
        ruleName: 'join_segment_state',
        passed,
        message: passed ? undefined : 'Constraint join_segment_state failed'
      };
    }
  },
  {
    targetType: 'uml:Transition',
    ruleName: 'fork_segment_state',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-AND (OCL-IS-KIND-OF (%SOURCE SEL... */ true;
      return {
        ruleName: 'fork_segment_state',
        passed,
        message: passed ? undefined : 'Constraint fork_segment_state failed'
      };
    }
  },
  {
    targetType: 'uml:Transition',
    ruleName: 'join_segment_guards',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-AND (OCL-IS-KIND-OF (%TARGET SEL... */ true;
      return {
        ruleName: 'join_segment_guards',
        passed,
        message: passed ? undefined : 'Constraint join_segment_guards failed'
      };
    }
  },
  {
    targetType: 'uml:Transition',
    ruleName: 'signatures_compatible',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'signatures_compatible',
        passed,
        message: passed ? undefined : 'Constraint signatures_compatible failed'
      };
    }
  },
  {
    targetType: 'uml:Transition',
    ruleName: 'fork_segment_guards',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-IMPLIES (OCL-AND (OCL-IS-KIND-OF (%SOURCE SEL... */ true;
      return {
        ruleName: 'fork_segment_guards',
        passed,
        message: passed ? undefined : 'Constraint fork_segment_guards failed'
      };
    }
  },
  {
    targetType: 'uml:UnmarshallAction',
    ruleName: 'structural_feature',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'structural_feature',
        passed,
        message: passed ? undefined : 'Constraint structural_feature failed'
      };
    }
  },
  {
    targetType: 'uml:UnmarshallAction',
    ruleName: 'type_and_ordering',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'type_and_ordering',
        passed,
        message: passed ? undefined : 'Constraint type_and_ordering failed'
      };
    }
  },
  {
    targetType: 'uml:UnmarshallAction',
    ruleName: 'number_of_result',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'number_of_result',
        passed,
        message: passed ? undefined : 'Constraint number_of_result failed'
      };
    }
  },
  {
    targetType: 'uml:UnmarshallAction',
    ruleName: 'same_type',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'same_type',
        passed,
        message: passed ? undefined : 'Constraint same_type failed'
      };
    }
  },
  {
    targetType: 'uml:UnmarshallAction',
    ruleName: 'multiplicity_of_result',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'multiplicity_of_result',
        passed,
        message: passed ? undefined : 'Constraint multiplicity_of_result failed'
      };
    }
  },
  {
    targetType: 'uml:UnmarshallAction',
    ruleName: 'unmarshallType_is_classifier',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'unmarshallType_is_classifier',
        passed,
        message: passed ? undefined : 'Constraint unmarshallType_is_classifier failed'
      };
    }
  },
  {
    targetType: 'uml:UnmarshallAction',
    ruleName: 'multiplicity_of_object',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'multiplicity_of_object',
        passed,
        message: passed ? undefined : 'Constraint multiplicity_of_object failed'
      };
    }
  },
  {
    targetType: 'uml:UseCase',
    ruleName: 'must_have_name',
    evaluate: (node: XmiNode) => {
      const passed = !!node.attributes['name'];
      return {
        ruleName: 'must_have_name',
        passed,
        message: passed ? undefined : 'Constraint must_have_name failed'
      };
    }
  },
  {
    targetType: 'uml:UseCase',
    ruleName: 'binary_associations',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'binary_associations',
        passed,
        message: passed ? undefined : 'Constraint binary_associations failed'
      };
    }
  },
  {
    targetType: 'uml:UseCase',
    ruleName: 'no_association_to_use_case',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'no_association_to_use_case',
        passed,
        message: passed ? undefined : 'Constraint no_association_to_use_case failed'
      };
    }
  },
  {
    targetType: 'uml:UseCase',
    ruleName: 'cannot_include_self',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-NOT (OCL-INCLUDES (ALL-INCLUDED-USE-CASES SEL... */ true;
      return {
        ruleName: 'cannot_include_self',
        passed,
        message: passed ? undefined : 'Constraint cannot_include_self failed'
      };
    }
  },
  {
    targetType: 'uml:ValuePin',
    ruleName: 'compatible_type',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'compatible_type',
        passed,
        message: passed ? undefined : 'Constraint compatible_type failed'
      };
    }
  },
  {
    targetType: 'uml:ValuePin',
    ruleName: 'no_incoming_edges',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'no_incoming_edges',
        passed,
        message: passed ? undefined : 'Constraint no_incoming_edges failed'
      };
    }
  },
  {
    targetType: 'uml:ValueSpecificationAction',
    ruleName: 'compatible_type',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'compatible_type',
        passed,
        message: passed ? undefined : 'Constraint compatible_type failed'
      };
    }
  },
  {
    targetType: 'uml:ValueSpecificationAction',
    ruleName: 'multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'multiplicity',
        passed,
        message: passed ? undefined : 'Constraint multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:Variable',
    ruleName: 'owned',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'owned',
        passed,
        message: passed ? undefined : 'Constraint owned failed'
      };
    }
  },
  {
    targetType: 'uml:VariableAction',
    ruleName: 'scope_of_variable',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (IS-ACCESSIBLE-BY (%VARIABLE SELF) SELF)... */ true;
      return {
        ruleName: 'scope_of_variable',
        passed,
        message: passed ? undefined : 'Constraint scope_of_variable failed'
      };
    }
  },
  {
    targetType: 'uml:WriteLinkAction',
    ruleName: 'allow_access',
    evaluate: (node: XmiNode) => {
      const passed = true;
      return {
        ruleName: 'allow_access',
        passed,
        message: passed ? undefined : 'Constraint allow_access failed'
      };
    }
  },
  {
    targetType: 'uml:WriteStructuralFeatureAction',
    ruleName: 'input_pin',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (%TYPE (%VALUE SELF))              (%FEATU... */ true;
      return {
        ruleName: 'input_pin',
        passed,
        message: passed ? undefined : 'Constraint input_pin failed'
      };
    }
  },
  {
    targetType: 'uml:WriteStructuralFeatureAction',
    ruleName: 'multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (IS (%VALUE SELF) 1 1)... */ true;
      return {
        ruleName: 'multiplicity',
        passed,
        message: passed ? undefined : 'Constraint multiplicity failed'
      };
    }
  },
  {
    targetType: 'uml:WriteVariableAction',
    ruleName: 'same_type',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (OCL-= (%TYPE (%VALUE SELF)) (%TYPE (%VARIABLE SEL... */ true;
      return {
        ruleName: 'same_type',
        passed,
        message: passed ? undefined : 'Constraint same_type failed'
      };
    }
  },
  {
    targetType: 'uml:WriteVariableAction',
    ruleName: 'multiplicity',
    evaluate: (node: XmiNode) => {
      const passed = /* TODO: complex translation for (IS (%VALUE SELF) 1 1)... */ true;
      return {
        ruleName: 'multiplicity',
        passed,
        message: passed ? undefined : 'Constraint multiplicity failed'
      };
    }
  },
];
