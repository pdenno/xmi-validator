;;; -*- Mode: Lisp; -*-

;;; File created by Expresso 4.0.0 (compiled 2009-Aug-31 08:59)
;;; Date created: 2009-08-31 09:22:56
;;; Compilation of ap233.exp

(in-package :AP233)

(SETF (SCHEMA *EXPRESSO*)
      (ENSURE-SCHEMA 'EXPRESS-SCHEMA
                     :NAME
                     "ap233"
                     :LISP-PACKAGE
                     :AP233
                     :INTERNED-NAME
                     'AP233
                     :SCHEMA-PATHNAME
                     #P"ap233.exp"))
(EXPO::CLEAR-SCHEMA (FIND-SCHEMA "ap233"))
(MAPCAR #'SHADOW-FOR-MODEL
        '("CLASS" "GROUP" "VARIABLE" "CONDITION" "POSITION" "VECTOR"))


;;;=================
;;; SpecializedTypes
;;;=================
(DEFTYPE-CLASS "DESCRIPTION_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY_METHOD
                   ANALYSED_ITEM
                   ANALYSIS
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   ASSIGNED_PROPERTY
                   BEHAVIOUR
                   BEHAVIOUR_MODEL
                   BEHAVIOUR_VERSION
                   BEHAVIOUR_VIEW_DEFINITION
                   CLASS
                   CONDITION
                   CONDITION_PARAMETER
                   ENVIRONMENT_DEFINITION_VIEW
                   EVENT
                   EXPRESSION
                   EXTERNAL_SOURCE
                   FILE
                   GENERAL_MODEL_PARAMETER
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_DEFINITION_FOR
                   ISSUE
                   LESSONS_LEARNED
                   MANAGED_RESOURCE
                   OBSERVATION
                   OBSERVED_ENVIRONMENT_VIEW
                   PRODUCT
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROPERTY_DEFINITION_REPRESENTATION
                   REPRESENTATION
                   REPRESENTATION_ITEM
                   RISK
                   RISK_ANALYSIS
                   RISK_TREATMENT
                   STATE_BASED_BEHAVIOUR_MODEL
                   STATE_DEFINITION
                   STATE_DEFINITION_RELATIONSHIP
                   TASK_IO
                   UNIT
                   VALUE_WITH_UNIT)))


(DEFTYPE-CLASS "ACTIVITY_METHOD_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_PROPERTY
                   ANALYSIS_ASSIGNMENT
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPROVAL_ASSIGNMENT
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSIGNED_DOCUMENT_PROPERTY
                   ASSIGNED_PROPERTY
                   BEHAVIOUR_DESCRIPTION_ASSOCIATION
                   BREAKDOWN_ELEMENT
                   BREAKDOWN_ELEMENT_DEFINITION
                   BREAKDOWN_ELEMENT_USAGE
                   BREAKDOWN_ELEMENT_VERSION
                   CERTIFICATION
                   CONDITION
                   CONTRACT
                   CONTRACT_RELATIONSHIP
                   DATE_OR_DATE_TIME_ASSIGNMENT
                   DOCUMENT
                   DOCUMENT_VERSION
                   ENVIRONMENT_DEFINITION_VIEW
                   EVENT
                   FILE
                   IN_ZONE
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_CONNECTION
                   JUSTIFICATION
                   LOCATION
                   MANAGED_RESOURCE
                   OBSERVATION
                   OBSERVATION_CONSEQUENCE
                   OBSERVED_ENVIRONMENT_VIEW
                   ORGANIZATION
                   ORGANIZATION_TYPE
                   PART
                   PART_VERSION
                   PART_VIEW_DEFINITION
                   PERSON
                   PERSON_IN_ORGANIZATION
                   POSITION
                   POSITION_GROUP
                   POSITION_TYPE
                   PRODUCT
                   PRODUCT_AS_INDIVIDUAL
                   PRODUCT_AS_INDIVIDUAL_VERSION
                   PRODUCT_AS_INDIVIDUAL_VIEW
                   PRODUCT_BASED_LOCATION_IDENTIFICATION
                   PRODUCT_CONCEPT
                   PRODUCT_CONFIGURATION
                   PRODUCT_GROUP
                   PRODUCT_VERSION
                   PRODUCT_VERSION_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   REQUIRED_RESOURCE
                   REQUIRED_RESOURCE_ASSIGNMENT
                   REQUIREMENT_ASSIGNMENT
                   RESOURCE_AS_REALIZED
                   RESOURCE_EVENT
                   RESOURCE_ITEM
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_PROPERTY
                   RISK
                   RISK_IMPACT_ASSIGNMENT
                   RISK_TREATMENT
                   SCHEME_ENTRY
                   SECURITY_CLASSIFICATION
                   STATE_DEFINITION
                   STATE_RELATIONSHIP
                   TASK_IO
                   TASK_IO_HIERARCHY
                   TASK_METHOD
                   TASK_METHOD_VERSION
                   TASK_OBJECTIVE
                   TYPE_OF_PERSON
                   TYPE_OF_PERSON_DEFINITION
                   VERIFICATION
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_OUTPUT
                   WORK_OUTPUT_ASSIGNMENT)))


(DEFTYPE-CLASS "COLLECTION_ASSIGNMENT_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   CONTRACT
                   ORGANIZATION
                   PRODUCT
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROJECT)))


(DEFTYPE-CLASS "COLLECTION_MEMBER_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ADDRESS
                   ADDRESS_ASSIGNMENT
                   APPLIED_INFORMATION_USAGE_RIGHT
                   APPROVAL
                   APPROVAL_ASSIGNMENT
                   APPROVAL_RELATIONSHIP
                   APPROVAL_STATUS
                   APPROVING_PERSON_ORGANIZATION
                   ASSIGNED_PROPERTY
                   ATTRIBUTE_TRANSLATION_ASSIGNMENT
                   CALENDAR_DATE
                   CERTIFICATION
                   CERTIFICATION_ASSIGNMENT
                   CLASS
                   CLASSIFICATION_ASSIGNMENT
                   COLLECTION_ASSIGNMENT
                   COLLECTION_MEMBERSHIP
                   CONTRACT
                   CONTRACT_ASSIGNMENT
                   CONTRACT_RELATIONSHIP
                   DATE_OR_DATE_TIME_ASSIGNMENT
                   DATE_TIME
                   DERIVED_UNIT_ELEMENT
                   DOCUMENT_ASSIGNMENT
                   EFFECTIVITY
                   EFFECTIVITY_ASSIGNMENT
                   EFFECTIVITY_RELATIONSHIP
                   EVENT
                   EVENT_ASSIGNMENT
                   EVENT_RELATIONSHIP
                   EXTERNAL_SOURCE
                   EXTERNAL_SOURCE_IDENTIFICATION
                   FILE
                   IDENTIFICATION_ASSIGNMENT
                   IDENTIFICATION_RELATIONSHIP
                   INDEPENDENT_PROPERTY
                   INDEPENDENT_PROPERTY_RELATIONSHIP
                   INFORMATION_RIGHT
                   INFORMATION_USAGE_RIGHT
                   INFORMATION_USAGE_RIGHT_RELATIONSHIP
                   LANGUAGE
                   LANGUAGE_INDICATION
                   LOCAL_TIME
                   ORGANIZATION
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   ORGANIZATION_RELATIONSHIP
                   PERSON
                   PERSON_IN_ORGANIZATION
                   PRODUCT
                   PRODUCT_RELATIONSHIP
                   PRODUCT_VERSION
                   PRODUCT_VERSION_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   PROJECT_ASSIGNMENT
                   PROJECT_RELATIONSHIP
                   PROPERTY_DEFINITION_REPRESENTATION
                   REPRESENTATION
                   REPRESENTATION_CONTEXT
                   REPRESENTATION_ITEM
                   REPRESENTATION_RELATIONSHIP
                   REQUIREMENT_ASSIGNMENT
                   REQUIREMENT_SATISFIED_BY
                   REQUIREMENT_SOURCE
                   SAME_AS_EXTERNAL_ITEM
                   SECURITY_CLASSIFICATION
                   SECURITY_CLASSIFICATION_ASSIGNMENT
                   TIME_INTERVAL
                   TIME_INTERVAL_RELATIONSHIP
                   TIME_OFFSET
                   UNIT
                   VALUE_WITH_UNIT
                   VIEW_DEFINITION_CONTEXT
                   VIEW_DEFINITION_RELATIONSHIP)))


(DEFTYPE-CLASS "IDENTIFICATION_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_REALIZATION
                   ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                   ACTIVITY_METHOD_RELATIONSHIP
                   ACTIVITY_PROPERTY
                   ADDRESS
                   AFFECTED_ITEMS_ASSIGNMENT
                   ANALYSIS
                   ANALYSIS_DISCIPLINE_DEFINITION
                   ANALYSIS_VERSION
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   APPLIED_STATE_DEFINITION_ASSIGNMENT
                   APPROVAL
                   APPROVAL_STATUS
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   ASSIGNED_PROPERTY
                   BEHAVIOUR
                   BEHAVIOUR_VERSION
                   BEHAVIOUR_VIEW_DEFINITION
                   BREAKDOWN
                   BREAKDOWN_ELEMENT
                   BREAKDOWN_ELEMENT_DEFINITION
                   BREAKDOWN_ELEMENT_VERSION
                   BREAKDOWN_VERSION
                   CERTIFICATION
                   CLASS
                   CONDITION
                   CONDITION_EVALUATION
                   CONTRACT
                   CONTRACT_RELATIONSHIP
                   DESCRIPTION_TEXT_ASSIGNMENT
                   DESCRIPTIVE_DOCUMENT_PROPERTY
                   DIGITAL_DOCUMENT_DEFINITION
                   DIGITAL_FILE
                   DIRECTED_ACTIVITY
                   DISPOSITION
                   DOCUMENT
                   DOCUMENT_ASSIGNMENT
                   DOCUMENT_VERSION
                   EFFECTIVITY
                   ENVIRONMENT_DEFINITION
                   ENVIRONMENT_DEFINITION_VERSION
                   ENVIRONMENT_PRODUCT_ASSIGNMENT
                   ENVIRONMENT_VIEW_DEFINITION_RELATIONSHIP
                   EVENT
                   EVIDENCE
                   EXPERIENCE_INSTANCE
                   EXPERIENCE_TYPE
                   EXTERNAL_CLASS_LIBRARY
                   EXTERNAL_SOURCE_IDENTIFICATION
                   FILE
                   GENERAL_MODEL_PARAMETER
                   GROUP
                   GROUP_RELATIONSHIP
                   HARDCOPY
                   INDEPENDENT_PROPERTY
                   INDEPENDENT_PROPERTY_RELATIONSHIP
                   INFORMATION_RIGHT
                   INFORMATION_USAGE_RIGHT
                   INFORMATION_USAGE_RIGHT_RELATIONSHIP
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR
                   INTERFACE_CONNECTOR_DEFINITION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_CONNECTOR_VERSION
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_DEFINITION_FOR
                   INTERFACE_SPECIFICATION
                   INTERFACE_SPECIFICATION_DEFINITION
                   INTERFACE_SPECIFICATION_VERSION
                   ITEM_SHAPE
                   JUSTIFICATION
                   JUSTIFICATION_ASSIGNMENT
                   JUSTIFICATION_RELATIONSHIP
                   JUSTIFICATION_SUPPORT_ASSIGNMENT
                   LOCATION
                   LOCATION_REPRESENTATION
                   MANAGED_RESOURCE
                   MARKET
                   NUMERICAL_DOCUMENT_PROPERTY
                   OBSERVATION
                   OBSERVATION_ASSIGNMENT
                   OBSERVATION_CONSEQUENCE
                   OBSERVED_ENVIRONMENT
                   OBSERVED_ENVIRONMENT_PRODUCT_ASSIGNMENT
                   OBSERVED_ENVIRONMENT_VERSION
                   OBSERVED_ENVIRONMENT_VIEW_DEFINITION_RELATIONSHIP
                   ORGANIZATION
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   ORGANIZATION_TYPE
                   ORGANIZATIONAL_LOCATION_IDENTIFICATION
                   PART
                   PART_VERSION
                   PART_VIEW_DEFINITION
                   PERSON
                   PERSON_IN_ORGANIZATION
                   PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
                   PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
                   PHYSICAL_DOCUMENT_DEFINITION
                   POSITION
                   POSITION_ASSIGNMENT
                   POSITION_GROUP
                   POSITION_ROLE
                   PROBABILITY_DISTRIBUTION
                   PRODUCT
                   PRODUCT_AS_INDIVIDUAL
                   PRODUCT_AS_INDIVIDUAL_VERSION
                   PRODUCT_AS_INDIVIDUAL_VIEW
                   PRODUCT_AS_PLANNED
                   PRODUCT_AS_REALIZED
                   PRODUCT_CONCEPT
                   PRODUCT_CONFIGURATION
                   PRODUCT_GROUP
                   PRODUCT_GROUP_MEMBERSHIP
                   PRODUCT_GROUP_RELATIONSHIP
                   PRODUCT_RELATIONSHIP
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   QUALIFICATION_ASSIGNMENT
                   QUALIFICATION_TYPE
                   REPRESENTATION
                   REPRESENTATION_ITEM
                   REQUIRED_RESOURCE
                   REQUIRED_RESOURCE_RELATIONSHIP
                   REQUIREMENT
                   REQUIREMENT_ASSIGNMENT
                   REQUIREMENT_COLLECTION_RELATIONSHIP
                   REQUIREMENT_SOURCE
                   REQUIREMENT_VERSION
                   REQUIREMENT_VERSION_RELATIONSHIP
                   REQUIREMENT_VIEW_DEFINITION
                   RESOURCE_AS_REALIZED
                   RESOURCE_EVENT
                   RESOURCE_ITEM
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_PROPERTY
                   RISK
                   RISK_ANALYSIS
                   RISK_IDENTIFICATION
                   RISK_IMPACT
                   RISK_IMPACT_ASSIGNMENT
                   RISK_PERCEPTION_SOURCE_ASSIGNMENT
                   RISK_TREATMENT
                   SECURITY_CLASSIFICATION
                   SECURITY_CLASSIFICATION_ASSIGNMENT
                   SHAPE_ELEMENT_RELATIONSHIP
                   STATE_BASED_BEHAVIOUR_MODEL
                   STATE_DEFINITION
                   STATE_DEFINITION_RELATIONSHIP
                   STATE_TRANSITION_DEFINITION
                   SYSTEM
                   SYSTEM_VERSION
                   SYSTEM_VIEW_DEFINITION
                   TASK_ELEMENT
                   TASK_ELEMENT_RELATIONSHIP
                   TASK_ELEMENT_STATE_RELATIONSHIP
                   TASK_IO
                   TASK_METHOD
                   TASK_METHOD_ASSIGNMENT
                   TASK_METHOD_RELATIONSHIP
                   TASK_METHOD_STATE_RELATIONSHIP
                   TASK_METHOD_VERSION
                   TASK_METHOD_VERSION_ASSIGNMENT
                   TASK_METHOD_VERSION_RELATIONSHIP
                   TASK_OBJECTIVE
                   TASK_OBJECTIVE_STATE_RELATIONSHIP
                   TASK_STEP
                   TRACING_RELATIONSHIP
                   TYPE_OF_PERSON
                   VERIFICATION
                   VIEW_DEFINITION_CONTEXT
                   VIEW_DEFINITION_RELATIONSHIP
                   VIEW_DEFINITION_USAGE
                   WORK_ORDER
                   WORK_OUTPUT
                   WORK_REQUEST)))


(DEFTYPE-CLASS "APPROVAL_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_ACTUAL
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_ASSIGNMENT
                   ACTIVITY_METHOD_REALIZATION
                   ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                   ACTIVITY_METHOD_RELATIONSHIP
                   ACTIVITY_PROPERTY
                   ADDRESS_ASSIGNMENT
                   AFFECTED_ITEMS_ASSIGNMENT
                   ALTERNATE_PART_RELATIONSHIP
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   ANALYSIS_DISCIPLINE_DEFINITION
                   ANALYSIS_VERSION
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   APPLIED_INFORMATION_USAGE_RIGHT
                   APPLIED_STATE_ASSIGNMENT
                   APPLIED_STATE_DEFINITION_ASSIGNMENT
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   ASSIGNED_PROPERTY
                   BREAKDOWN
                   BREAKDOWN_ELEMENT
                   BREAKDOWN_ELEMENT_DEFINITION
                   BREAKDOWN_ELEMENT_REALIZATION
                   BREAKDOWN_ELEMENT_USAGE
                   BREAKDOWN_ELEMENT_VERSION
                   BREAKDOWN_VERSION
                   CERTIFICATION
                   CERTIFICATION_ASSIGNMENT
                   CLASSIFICATION_ASSIGNMENT
                   CONDITION
                   CONDITION_ASSIGNMENT
                   CONDITION_EVALUATION
                   CONDITION_EVALUATION_ASSIGNMENT
                   CONTRACT
                   CONTRACT_ASSIGNMENT
                   CONTRACT_RELATIONSHIP
                   DATE_OR_DATE_TIME_ASSIGNMENT
                   DIGITAL_DOCUMENT_DEFINITION
                   DIRECTED_ACTIVITY
                   DOCUMENT_ASSIGNMENT
                   DOCUMENT_DEFINITION
                   DOCUMENT_DEFINITION_RELATIONSHIP
                   DOCUMENT_VERSION
                   EFFECTIVITY
                   EFFECTIVITY_ASSIGNMENT
                   EVENT
                   EVENT_ASSIGNMENT
                   EVIDENCE
                   EXPERIENCE_GAINED
                   EXPERIENCE_TYPE
                   GROUP
                   GROUP_RELATIONSHIP
                   IDENTIFICATION_ASSIGNMENT
                   IN_ZONE
                   INDEPENDENT_PROPERTY
                   INDEPENDENT_PROPERTY_RELATIONSHIP
                   INFORMATION_USAGE_RIGHT
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_DEFINITION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_CONNECTOR_VERSION
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_DEFINITION_FOR
                   INTERFACE_SPECIFICATION
                   INTERFACE_SPECIFICATION_DEFINITION
                   INTERFACE_SPECIFICATION_VERSION
                   ISSUE
                   ITEM_USAGE_EFFECTIVITY
                   JUSTIFICATION
                   JUSTIFICATION_ASSIGNMENT
                   JUSTIFICATION_RELATIONSHIP
                   JUSTIFICATION_SUPPORT_ASSIGNMENT
                   MANAGED_RESOURCE
                   MANAGED_RESOURCE_RELATIONSHIP
                   OBSERVATION
                   OBSERVATION_ASSIGNMENT
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   ORGANIZATION_ORGANIZATION_TYPE_RELATIONSHIP
                   ORGANIZATION_RELATIONSHIP
                   PART
                   PART_VERSION
                   PART_VIEW_DEFINITION
                   PERSON_IN_ORGANIZATION
                   PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
                   PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
                   PHYSICAL_DOCUMENT_DEFINITION
                   POSITION
                   POSITION_ASSIGNMENT
                   POSITION_GROUP_ASSIGNMENT
                   POSITION_POSITION_TYPE_ASSIGNMENT
                   POSITION_TYPE
                   POSITION_TYPE_ASSIGNMENT
                   PRODUCT
                   PRODUCT_AS_INDIVIDUAL
                   PRODUCT_AS_PLANNED
                   PRODUCT_AS_REALIZED
                   PRODUCT_CONCEPT
                   PRODUCT_CONFIGURATION
                   PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP
                   PRODUCT_DESIGN_TO_INDIVIDUAL
                   PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL
                   PRODUCT_GROUP
                   PRODUCT_GROUP_MEMBERSHIP
                   PRODUCT_GROUP_RELATIONSHIP
                   PRODUCT_PLANNED_TO_REALIZED
                   PRODUCT_RELATIONSHIP
                   PRODUCT_VERSION
                   PRODUCT_VERSION_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   PROJECT_ASSIGNMENT
                   QUALIFICATION_ASSIGNMENT
                   QUALIFICATION_TYPE
                   REQUIRED_RESOURCE
                   REQUIRED_RESOURCE_ASSIGNMENT
                   REQUIRED_RESOURCE_RELATIONSHIP
                   REQUIREMENT_ASSIGNMENT
                   REQUIREMENT_COLLECTION_RELATIONSHIP
                   REQUIREMENT_SOURCE
                   RESOURCE_AS_REALIZED
                   RESOURCE_AS_REALIZED_ASSIGNMENT
                   RESOURCE_EVENT
                   RESOURCE_ITEM
                   RESOURCE_ITEM_ASSIGNMENT
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_ITEM_RELATIONSHIP
                   RESOURCE_PROPERTY
                   RISK
                   RISK_PERCEPTION
                   RISK_TREATMENT
                   SECURITY_CLASSIFICATION
                   SECURITY_CLASSIFICATION_ASSIGNMENT
                   SELECTED_ITEM_ASSIGNMENT
                   STATE_ASSESSMENT
                   STATE_DEFINITION
                   STATE_DEFINITION_RELATIONSHIP
                   STATE_RELATIONSHIP
                   SUPPLIED_PART_RELATIONSHIP
                   TASK_ELEMENT
                   TASK_ELEMENT_RELATIONSHIP
                   TASK_ELEMENT_STATE_RELATIONSHIP
                   TASK_METHOD
                   TASK_METHOD_ASSIGNMENT
                   TASK_METHOD_RELATIONSHIP
                   TASK_METHOD_STATE_RELATIONSHIP
                   TASK_METHOD_VERSION
                   TASK_METHOD_VERSION_ASSIGNMENT
                   TASK_METHOD_VERSION_RELATIONSHIP
                   TASK_OBJECTIVE
                   TASK_OBJECTIVE_STATE_RELATIONSHIP
                   TRACING_RELATIONSHIP
                   TYPE_OF_PERSON
                   TYPE_OF_PERSON_ASSIGNMENT
                   VERIFICATION
                   VERIFICATION_RELATIONSHIP
                   VIEW_DEFINITION_CONTEXT
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_ORDER
                   WORK_OUTPUT
                   WORK_OUTPUT_ASSIGNMENT
                   WORK_REQUEST)))


(DEFTYPE-CLASS "DATE_OR_DATE_TIME_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_ASSIGNMENT
                   ACTIVITY_METHOD_REALIZATION
                   ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                   ACTIVITY_METHOD_RELATIONSHIP
                   ACTIVITY_PROPERTY
                   ACTIVITY_PROPERTY_REPRESENTATION
                   ACTIVITY_RELATIONSHIP
                   ADDRESS_ASSIGNMENT
                   AFFECTED_ITEMS_ASSIGNMENT
                   ALIAS_IDENTIFICATION
                   ALTERNATE_PART_RELATIONSHIP
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   ANALYSIS_ASSIGNMENT
                   ANALYSIS_DISCIPLINE_DEFINITION
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   APPLIED_INFORMATION_USAGE_RIGHT
                   APPROVAL
                   APPROVING_PERSON_ORGANIZATION
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   ASSIGNED_PROPERTY
                   BREAKDOWN
                   BREAKDOWN_ELEMENT
                   BREAKDOWN_ELEMENT_REALIZATION
                   BREAKDOWN_ELEMENT_USAGE
                   BREAKDOWN_ELEMENT_VERSION
                   CERTIFICATION
                   CERTIFICATION_ASSIGNMENT
                   CLASSIFICATION_ASSIGNMENT
                   CONDITION
                   CONDITION_ASSIGNMENT
                   CONDITION_EVALUATION
                   CONDITION_EVALUATION_ASSIGNMENT
                   CONTRACT
                   CONTRACT_ASSIGNMENT
                   CONTRACT_RELATIONSHIP
                   DATE_OR_DATE_TIME_ASSIGNMENT
                   DIGITAL_DOCUMENT_DEFINITION
                   DIGITAL_FILE
                   DIRECTED_ACTIVITY
                   DOCUMENT
                   DOCUMENT_ASSIGNMENT
                   DOCUMENT_DEFINITION
                   DOCUMENT_DEFINITION_RELATIONSHIP
                   DOCUMENT_VERSION
                   EFFECTIVITY
                   EFFECTIVITY_ASSIGNMENT
                   EVENT_ASSIGNMENT
                   EVIDENCE
                   EXPERIENCE_INSTANCE
                   HARDCOPY
                   HIERARCHICAL_INTERFACE_CONNECTION
                   IDENTIFICATION_ASSIGNMENT
                   INDEPENDENT_PROPERTY
                   INDEPENDENT_PROPERTY_RELATIONSHIP
                   INDEPENDENT_PROPERTY_REPRESENTATION
                   INFORMATION_USAGE_RIGHT
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_DEFINITION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_CONNECTOR_VERSION
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_DEFINITION_FOR
                   INTERFACE_SPECIFICATION_DEFINITION
                   INTERFACE_SPECIFICATION_VERSION
                   ISSUE
                   JUSTIFICATION
                   JUSTIFICATION_ASSIGNMENT
                   JUSTIFICATION_RELATIONSHIP
                   JUSTIFICATION_SUPPORT_ASSIGNMENT
                   LOCATION_ASSIGNMENT
                   LOCATION_REPRESENTATION
                   MANAGED_RESOURCE
                   MANAGED_RESOURCE_RELATIONSHIP
                   OBSERVATION
                   OBSERVATION_ASSIGNMENT
                   OBSERVED_ENVIRONMENT_VIEW
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   ORGANIZATION_ORGANIZATION_TYPE_RELATIONSHIP
                   ORGANIZATION_RELATIONSHIP
                   PART
                   PART_VERSION
                   PART_VIEW_DEFINITION
                   PERSON
                   PERSON_IN_ORGANIZATION
                   PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
                   PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
                   PHYSICAL_DOCUMENT_DEFINITION
                   POSITION_GROUP_ASSIGNMENT
                   POSITION_POSITION_TYPE_ASSIGNMENT
                   POSITION_TYPE_ASSIGNMENT
                   PRODUCT_AS_PLANNED
                   PRODUCT_AS_REALIZED
                   PRODUCT_CONCEPT
                   PRODUCT_CONFIGURATION
                   PRODUCT_DESIGN_TO_INDIVIDUAL
                   PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL
                   PRODUCT_GROUP
                   PRODUCT_GROUP_MEMBERSHIP
                   PRODUCT_GROUP_RELATIONSHIP
                   PRODUCT_PLANNED_TO_REALIZED
                   PRODUCT_RELATIONSHIP
                   PRODUCT_VERSION
                   PRODUCT_VERSION_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   PROJECT_ASSIGNMENT
                   PROPERTY_REPRESENTATION
                   QUALIFICATION_ASSIGNMENT
                   REPRESENTATION
                   REQUIRED_RESOURCE
                   REQUIRED_RESOURCE_ASSIGNMENT
                   REQUIREMENT
                   REQUIREMENT_ASSIGNMENT
                   REQUIREMENT_COLLECTION_RELATIONSHIP
                   REQUIREMENT_SOURCE
                   REQUIREMENT_VERSION
                   REQUIREMENT_VERSION_RELATIONSHIP
                   REQUIREMENT_VIEW_DEFINITION
                   RESOURCE_AS_REALIZED
                   RESOURCE_AS_REALIZED_ASSIGNMENT
                   RESOURCE_EVENT
                   RESOURCE_ITEM
                   RESOURCE_ITEM_ASSIGNMENT
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_PROPERTY
                   RESOURCE_PROPERTY_REPRESENTATION
                   RISK
                   RISK_ATTITUDE
                   RISK_CONSEQUENCE
                   RISK_EVALUATION
                   RISK_IMPACT_ASSIGNMENT
                   RISK_PERCEPTION
                   RISK_PERCEPTION_CONTEXT
                   RISK_PERCEPTION_RELATIONSHIP
                   RISK_PERCEPTION_SOURCE_ASSIGNMENT
                   RISK_RELATIONSHIP
                   RISK_TREATMENT
                   SCHEME_ENTRY
                   SECURITY_CLASSIFICATION
                   SECURITY_CLASSIFICATION_ASSIGNMENT
                   SELECTED_ITEM
                   SELECTED_ITEM_ASSIGNMENT
                   TASK_ELEMENT
                   TASK_ELEMENT_RELATIONSHIP
                   TASK_ELEMENT_STATE_RELATIONSHIP
                   TASK_IO
                   TASK_METHOD
                   TASK_METHOD_ASSIGNMENT
                   TASK_METHOD_RELATIONSHIP
                   TASK_METHOD_STATE_RELATIONSHIP
                   TASK_METHOD_VERSION
                   TASK_METHOD_VERSION_ASSIGNMENT
                   TASK_METHOD_VERSION_RELATIONSHIP
                   TASK_OBJECTIVE
                   TASK_OBJECTIVE_STATE_RELATIONSHIP
                   TRACING_RELATIONSHIP
                   TYPE_OF_PERSON_ASSIGNMENT
                   VERIFICATION
                   VIEW_DEFINITION_CONTEXT
                   WORK_ORDER
                   WORK_OUTPUT
                   WORK_REQUEST)))


(DEFTYPE-CLASS "ORGANIZATION_OR_PERSON_IN_ORGANIZATION_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ORGANIZATION PERSON_IN_ORGANIZATION)))


(DEFTYPE-CLASS "OBSERVATION_CONSEQUENCE_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY WORK_ORDER WORK_REQUEST)))


(DEFTYPE-CLASS "OBSERVATION_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_ASSIGNMENT
                   ACTIVITY_METHOD_REALIZATION
                   ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                   ACTIVITY_METHOD_RELATIONSHIP
                   ACTIVITY_PROPERTY
                   ACTIVITY_PROPERTY_REPRESENTATION
                   ACTIVITY_RELATIONSHIP
                   ACTIVITY_STATUS
                   ADDRESS
                   ADDRESS_ASSIGNMENT
                   AFFECTED_ITEMS_ASSIGNMENT
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   ANALYSIS_ASSIGNMENT
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   APPLIED_INFORMATION_USAGE_RIGHT
                   APPLIED_STATE_ASSIGNMENT
                   APPLIED_STATE_DEFINITION_ASSIGNMENT
                   APPROVAL
                   APPROVAL_ASSIGNMENT
                   APPROVAL_RELATIONSHIP
                   APPROVAL_STATUS
                   APPROVING_PERSON_ORGANIZATION
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   ASSIGNED_PROPERTY
                   ATTRIBUTE_CLASSIFICATION
                   ATTRIBUTE_TRANSLATION_ASSIGNMENT
                   BEHAVIOUR_DESCRIPTION_ASSOCIATION
                   BREAKDOWN_CONTEXT
                   BREAKDOWN_OF
                   CALENDAR_DATE
                   CERTIFICATION
                   CERTIFICATION_ASSIGNMENT
                   CHARACTERIZABLE_OBJECT
                   CLASS
                   CLASSIFICATION_ASSIGNMENT
                   CONDITION
                   CONDITION_ASSIGNMENT
                   CONDITION_EVALUATION
                   CONDITION_EVALUATION_ASSIGNMENT
                   CONDITION_EVALUATION_PARAMETER
                   CONDITION_PARAMETER
                   CONDITION_RELATIONSHIP
                   CONTRACT
                   CONTRACT_ASSIGNMENT
                   CONTRACT_RELATIONSHIP
                   DATE_OR_DATE_TIME_ASSIGNMENT
                   DATE_TIME
                   DECISION_PATH
                   DEFINED_STATE_RELATIONSHIP
                   DESCRIPTION_TEXT
                   DESCRIPTION_TEXT_ASSIGNMENT
                   DOCUMENT_ASSIGNMENT
                   DOCUMENT_DEFINITION_RELATIONSHIP
                   EFFECTIVITY
                   EFFECTIVITY_ASSIGNMENT
                   EFFECTIVITY_RELATIONSHIP
                   EVENT
                   EVENT_ASSIGNMENT
                   EVENT_RELATIONSHIP
                   EVIDENCE
                   EXPERIENCE_GAINED
                   EXPERIENCE_INSTANCE
                   EXPERIENCE_TYPE
                   EXPERIENCE_TYPE_RELATIONSHIP
                   EXPRESSION_ASSIGNMENT
                   EXTERNAL_CLASS_LIBRARY
                   EXTERNAL_SOURCE_IDENTIFICATION
                   FILE
                   FILE_RELATIONSHIP
                   GENERIC_EXPRESSION
                   GROUP
                   GROUP_RELATIONSHIP
                   IDENTIFICATION_ASSIGNMENT
                   IN_ZONE
                   INDEPENDENT_PROPERTY
                   INDEPENDENT_PROPERTY_RELATIONSHIP
                   INFORMATION_RIGHT
                   INFORMATION_USAGE_RIGHT
                   INFORMATION_USAGE_RIGHT_RELATIONSHIP
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_DEFINITION_FOR
                   ITEM_DESIGN_ASSOCIATION
                   ITEM_SHAPE
                   ITEM_USAGE_EFFECTIVITY
                   JUSTIFICATION
                   JUSTIFICATION_ASSIGNMENT
                   JUSTIFICATION_RELATIONSHIP
                   JUSTIFICATION_SUPPORT_ASSIGNMENT
                   LANGUAGE
                   LANGUAGE_INDICATION
                   LOCAL_TIME
                   LOCATION
                   LOCATION_ASSIGNMENT
                   LOCATION_RELATIONSHIP
                   LOCATION_REPRESENTATION
                   MANAGED_RESOURCE
                   MANAGED_RESOURCE_RELATIONSHIP
                   MARKET
                   NAME_ASSIGNMENT
                   OBSERVATION
                   OBSERVATION_CONSEQUENCE
                   OBSERVATION_RELATIONSHIP
                   ORGANIZATION
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   ORGANIZATION_ORGANIZATION_TYPE_RELATIONSHIP
                   ORGANIZATION_RELATIONSHIP
                   ORGANIZATION_TYPE
                   ORGANIZATIONAL_LOCATION_IDENTIFICATION
                   PERSON
                   PERSON_IN_ORGANIZATION
                   PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
                   PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
                   POSITION
                   POSITION_ASSIGNMENT
                   POSITION_GROUP
                   POSITION_GROUP_ASSIGNMENT
                   POSITION_GROUP_RELATIONSHIP
                   POSITION_GROUP_ROLE
                   POSITION_POSITION_TYPE_ASSIGNMENT
                   POSITION_RELATIONSHIP
                   POSITION_ROLE
                   POSITION_TYPE
                   POSITION_TYPE_ASSIGNMENT
                   POSITION_TYPE_ROLE
                   PROBABILITY
                   PRODUCT
                   PRODUCT_CONCEPT
                   PRODUCT_CONFIGURATION
                   PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP
                   PRODUCT_DESIGN_TO_INDIVIDUAL
                   PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL
                   PRODUCT_GROUP
                   PRODUCT_GROUP_MEMBERSHIP
                   PRODUCT_GROUP_RELATIONSHIP
                   PRODUCT_PLANNED_TO_REALIZED
                   PRODUCT_RELATIONSHIP
                   PRODUCT_VERSION
                   PRODUCT_VERSION_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   PROJECT_ASSIGNMENT
                   PROJECT_RELATIONSHIP
                   PROPERTY_DEFINITION_REPRESENTATION
                   QUALIFICATION_ASSIGNMENT
                   QUALIFICATION_TYPE
                   QUALIFICATION_TYPE_RELATIONSHIP
                   REGIONAL_COORDINATE
                   RELATED_CONDITION_PARAMETER
                   REPRESENTATION
                   REPRESENTATION_CONTEXT
                   REPRESENTATION_ITEM
                   REQUIRED_RESOURCE
                   REQUIRED_RESOURCE_ASSIGNMENT
                   REQUIRED_RESOURCE_RELATIONSHIP
                   REQUIREMENT_ASSIGNMENT
                   REQUIREMENT_SOURCE
                   RESOURCE_AS_REALIZED
                   RESOURCE_AS_REALIZED_ASSIGNMENT
                   RESOURCE_AS_REALIZED_RELATIONSHIP
                   RESOURCE_EVENT
                   RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP
                   RESOURCE_EVENT_RELATIONSHIP
                   RESOURCE_ITEM
                   RESOURCE_ITEM_ASSIGNMENT
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_ITEM_RELATIONSHIP
                   RESOURCE_PROPERTY
                   RESOURCE_PROPERTY_REPRESENTATION
                   RISK
                   RISK_ANALYSIS
                   RISK_ASSESSMENT
                   RISK_ATTITUDE
                   RISK_COMMUNICATION
                   RISK_CONSEQUENCE
                   RISK_CONTROL
                   RISK_ESTIMATION
                   RISK_EVALUATION
                   RISK_IDENTIFICATION
                   RISK_IMPACT_ASSIGNMENT
                   RISK_PERCEPTION
                   RISK_PERCEPTION_RELATIONSHIP
                   RISK_PERCEPTION_SOURCE_ASSIGNMENT
                   RISK_RELATIONSHIP
                   RISK_TREATMENT
                   RISK_VERSION
                   SECURITY_CLASSIFICATION
                   SECURITY_CLASSIFICATION_ASSIGNMENT
                   SELECTED_ITEM_ASSIGNMENT
                   SHAPE_ELEMENT_RELATIONSHIP
                   STATE
                   STATE_ASSERTION
                   STATE_ASSESSMENT
                   STATE_DEFINITION
                   STATE_DEFINITION_RELATIONSHIP
                   STATE_DEFINITION_ROLE
                   STATE_RELATIONSHIP
                   STATE_ROLE
                   TASK_ELEMENT_STATE_RELATIONSHIP
                   TASK_IO_HIERARCHY
                   TASK_METHOD_STATE_RELATIONSHIP
                   TASK_OBJECTIVE
                   TASK_OBJECTIVE_STATE_RELATIONSHIP
                   TIME_INTERVAL
                   TIME_INTERVAL_ASSIGNMENT
                   TIME_INTERVAL_RELATIONSHIP
                   TIME_INTERVAL_ROLE
                   TIME_OFFSET
                   TYPE_OF_PERSON
                   TYPE_OF_PERSON_ASSIGNMENT
                   TYPE_OF_PERSON_DEFINITION
                   TYPE_OF_PERSON_DEFINITION_RELATIONSHIP
                   TYPE_OF_PERSON_DEFINITION_REQUIRED_ATTRIBUTES_RELATIONSHIP
                   UNIT
                   VALUE_WITH_UNIT
                   VERIFICATION
                   VERIFICATION_RELATIONSHIP
                   VIEW_DEFINITION_CONTEXT
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_ORDER
                   WORK_OUTPUT
                   WORK_OUTPUT_ASSIGNMENT
                   WORK_OUTPUT_RELATIONSHIP
                   WORK_REQUEST
                   WORK_REQUEST_STATUS)))


(DEFTYPE-CLASS "OBSERVATION_RECORDER" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(PERSON
                   PERSON_IN_ORGANIZATION
                   PRODUCT_AS_REALIZED
                   TYPE_OF_PERSON_ASSIGNMENT)))


(DEFTYPE-CLASS "OBSERVED_CONTEXT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_PROPERTY
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   ANALYSIS_ASSIGNMENT
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   APPLIED_STATE_ASSIGNMENT
                   APPLIED_STATE_DEFINITION_ASSIGNMENT
                   APPROVAL
                   APPROVAL_ASSIGNMENT
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   ASSIGNED_PROPERTY
                   BEHAVIOUR_DESCRIPTION_ASSOCIATION
                   CERTIFICATION_ASSIGNMENT
                   CONDITION_ASSIGNMENT
                   CONDITION_EVALUATION_ASSIGNMENT
                   CONTRACT_ASSIGNMENT
                   DOCUMENT_ASSIGNMENT
                   EFFECTIVITY_ASSIGNMENT
                   EVENT_ASSIGNMENT
                   EVIDENCE
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_DEFINITION_FOR
                   ISSUE
                   JUSTIFICATION_ASSIGNMENT
                   MANAGED_RESOURCE
                   OBSERVATION_CONSEQUENCE
                   PRODUCT
                   PRODUCT_CONCEPT
                   PRODUCT_CONFIGURATION
                   PRODUCT_DESIGN_TO_INDIVIDUAL
                   PRODUCT_GROUP
                   PRODUCT_PLANNED_TO_REALIZED
                   PRODUCT_VERSION
                   PRODUCT_VERSION_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   PROJECT_ASSIGNMENT
                   PROPERTY_REPRESENTATION
                   RELATED_CONDITION_PARAMETER
                   REPRESENTATION
                   REPRESENTATION_ITEM
                   REQUIRED_RESOURCE
                   REQUIRED_RESOURCE_ASSIGNMENT
                   REQUIREMENT_ASSIGNMENT
                   RESOURCE_AS_REALIZED
                   RESOURCE_AS_REALIZED_ASSIGNMENT
                   RESOURCE_EVENT
                   RESOURCE_ITEM
                   RESOURCE_ITEM_ASSIGNMENT
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_PROPERTY
                   RISK
                   RISK_ANALYSIS
                   RISK_ASSESSMENT
                   RISK_ATTITUDE
                   RISK_CONSEQUENCE
                   RISK_CONTROL
                   RISK_ESTIMATION
                   RISK_EVALUATION
                   RISK_IMPACT_ASSIGNMENT
                   RISK_PERCEPTION
                   RISK_PERCEPTION_CONTEXT
                   RISK_PERCEPTION_SOURCE_ASSIGNMENT
                   RISK_TREATMENT
                   SCHEME
                   SCHEME_ENTRY
                   SCHEME_VERSION
                   SECURITY_CLASSIFICATION_ASSIGNMENT
                   STATE
                   STATE_ASSERTION
                   STATE_ASSESSMENT
                   STATE_DEFINITION
                   STATE_DEFINITION_RELATIONSHIP
                   STATE_RELATIONSHIP
                   STATE_ROLE
                   TASK_METHOD
                   TASK_METHOD_VERSION
                   TASK_OBJECTIVE
                   VERIFICATION
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_ORDER
                   WORK_OUTPUT
                   WORK_REQUEST)))


(DEFTYPE-CLASS "SAME_AS_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ADDRESS
                   APPROVAL
                   APPROVAL_STATUS
                   CALENDAR_DATE
                   CERTIFICATION
                   CONTRACT
                   DATE_TIME
                   DERIVED_UNIT_ELEMENT
                   EVENT
                   EXTERNAL_SOURCE
                   EXTERNAL_SOURCE_IDENTIFICATION
                   INDEPENDENT_PROPERTY
                   INFORMATION_RIGHT
                   INFORMATION_USAGE_RIGHT
                   LANGUAGE
                   LANGUAGE_INDICATION
                   LOCAL_TIME
                   ORGANIZATION
                   PERSON
                   PRODUCT
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   REPRESENTATION_CONTEXT
                   REQUIREMENT_SOURCE
                   SECURITY_CLASSIFICATION
                   TIME_INTERVAL
                   TIME_OFFSET
                   UNIT
                   VALUE_WITH_UNIT
                   VIEW_DEFINITION_CONTEXT)))


(DEFTYPE-CLASS "CLASSIFICATION_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_ASSIGNMENT
                   ACTIVITY_METHOD_REALIZATION
                   ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                   ACTIVITY_METHOD_RELATIONSHIP
                   ACTIVITY_PROPERTY
                   ACTIVITY_PROPERTY_REPRESENTATION
                   ACTIVITY_RELATIONSHIP
                   ACTIVITY_STATUS
                   ADDRESS
                   ADDRESS_ASSIGNMENT
                   AFFECTED_ITEMS_ASSIGNMENT
                   ALTERNATE_PART_RELATIONSHIP
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   ANALYSIS
                   ANALYSIS_DISCIPLINE_DEFINITION
                   ANALYSIS_VERSION
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   APPLIED_INFORMATION_USAGE_RIGHT
                   APPLIED_STATE_ASSIGNMENT
                   APPLIED_STATE_DEFINITION_ASSIGNMENT
                   APPROVAL
                   APPROVAL_ASSIGNMENT
                   APPROVAL_RELATIONSHIP
                   APPROVAL_STATUS
                   APPROVING_PERSON_ORGANIZATION
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   ASSIGNED_PROPERTY
                   ATTRIBUTE_TRANSLATION_ASSIGNMENT
                   BEHAVIOUR
                   BEHAVIOUR_VIEW_DEFINITION
                   BREAKDOWN
                   BREAKDOWN_CONTEXT
                   BREAKDOWN_ELEMENT
                   BREAKDOWN_ELEMENT_REALIZATION
                   BREAKDOWN_ELEMENT_USAGE
                   BREAKDOWN_ELEMENT_VERSION
                   BREAKDOWN_OF
                   CALENDAR_DATE
                   CERTIFICATION
                   CERTIFICATION_ASSIGNMENT
                   CHARACTERIZABLE_OBJECT
                   CLASS
                   CONDITION
                   CONDITION_ASSIGNMENT
                   CONDITION_EVALUATION
                   CONDITION_EVALUATION_ASSIGNMENT
                   CONDITION_EVALUATION_PARAMETER
                   CONDITION_PARAMETER
                   CONDITION_RELATIONSHIP
                   CONSTRAINED_GENERAL_PARAMETER_RELATIONSHIP
                   CONTEXT_DEPENDENT_UNIT
                   CONTRACT
                   CONTRACT_ASSIGNMENT
                   CONTRACT_RELATIONSHIP
                   CONVERSION_BASED_UNIT
                   DATE_OR_DATE_TIME_ASSIGNMENT
                   DATE_TIME
                   DEFINED_STATE_RELATIONSHIP
                   DERIVED_UNIT
                   DESCRIPTION_TEXT
                   DESCRIPTION_TEXT_ASSIGNMENT
                   DIGITAL_DOCUMENT_DEFINITION
                   DIGITAL_FILE
                   DIRECTED_ACTIVITY
                   DISPOSITION
                   DOCUMENT
                   DOCUMENT_ASSIGNMENT
                   DOCUMENT_LOCATION_IDENTIFICATION
                   DOCUMENT_VERSION
                   EFFECTIVITY
                   EFFECTIVITY_ASSIGNMENT
                   EFFECTIVITY_RELATIONSHIP
                   ENVIRONMENT_DEFINITION
                   ENVIRONMENT_DEFINITION_VERSION
                   ENVIRONMENT_PRODUCT_ASSIGNMENT
                   ENVIRONMENT_VIEW_DEFINITION_RELATIONSHIP
                   EVENT
                   EVENT_ASSIGNMENT
                   EVENT_RELATIONSHIP
                   EVIDENCE
                   EXPERIENCE_GAINED
                   EXPERIENCE_INSTANCE
                   EXPERIENCE_TYPE
                   EXPRESSION
                   EXPRESSION_ASSIGNMENT
                   EXTERNAL_CLASS_LIBRARY
                   EXTERNAL_ITEM_IDENTIFICATION
                   EXTERNAL_SOURCE_IDENTIFICATION
                   FILE
                   FILE_LOCATION_IDENTIFICATION
                   FILE_RELATIONSHIP
                   GENERAL_MODEL_PARAMETER
                   HARDCOPY
                   IDENTIFICATION_ASSIGNMENT
                   IN_ZONE
                   INDEPENDENT_PROPERTY
                   INDEPENDENT_PROPERTY_RELATIONSHIP
                   INDEPENDENT_PROPERTY_REPRESENTATION
                   INFORMATION_RIGHT
                   INFORMATION_USAGE_RIGHT
                   INFORMATION_USAGE_RIGHT_RELATIONSHIP
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR
                   INTERFACE_CONNECTOR_DEFINITION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_CONNECTOR_VERSION
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_DEFINITION_FOR
                   INTERFACE_SPECIFICATION
                   INTERFACE_SPECIFICATION_DEFINITION
                   INTERFACE_SPECIFICATION_VERSION
                   ISSUE
                   ISSUE_CONSEQUENCE
                   ITEM_DESIGN_ASSOCIATION
                   ITEM_SHAPE
                   ITEM_USAGE_EFFECTIVITY
                   JUSTIFICATION
                   JUSTIFICATION_ASSIGNMENT
                   JUSTIFICATION_RELATIONSHIP
                   JUSTIFICATION_SUPPORT_ASSIGNMENT
                   LANGUAGE
                   LANGUAGE_INDICATION
                   LOCAL_TIME
                   LOCATION
                   LOCATION_ASSIGNMENT
                   LOCATION_RELATIONSHIP
                   LOCATION_REPRESENTATION
                   MANAGED_RESOURCE
                   MANAGED_RESOURCE_RELATIONSHIP
                   MARKET
                   NUMERICAL_ITEM_WITH_UNIT
                   OBSERVATION
                   OBSERVATION_ASSIGNMENT
                   OBSERVATION_CONSEQUENCE
                   OBSERVATION_RELATIONSHIP
                   OBSERVED_ENVIRONMENT
                   OBSERVED_ENVIRONMENT_PRODUCT_ASSIGNMENT
                   OBSERVED_ENVIRONMENT_VERSION
                   OBSERVED_ENVIRONMENT_VIEW_DEFINITION_RELATIONSHIP
                   ORGANIZATION
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   ORGANIZATION_RELATIONSHIP
                   ORGANIZATION_TYPE
                   ORGANIZATIONAL_LOCATION_IDENTIFICATION
                   PARAMETER_VALUE_REPRESENTATION_ITEM
                   PART
                   PART_VERSION
                   PART_VIEW_DEFINITION
                   PARTIAL_DOCUMENT_ASSIGNMENT
                   PERSON
                   PERSON_IN_ORGANIZATION
                   PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
                   PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
                   PHYSICAL_DOCUMENT_DEFINITION
                   POSITION
                   POSITION_ASSIGNMENT
                   POSITION_GROUP
                   POSITION_GROUP_ASSIGNMENT
                   POSITION_GROUP_RELATIONSHIP
                   POSITION_POSITION_TYPE_ASSIGNMENT
                   POSITION_RELATIONSHIP
                   POSITION_TYPE
                   POSITION_TYPE_ASSIGNMENT
                   PROBABILITY_DISTRIBUTION
                   PRODUCT
                   PRODUCT_AS_PLANNED
                   PRODUCT_AS_REALIZED
                   PRODUCT_CONCEPT
                   PRODUCT_CONFIGURATION
                   PRODUCT_DESIGN_TO_INDIVIDUAL
                   PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL
                   PRODUCT_GROUP
                   PRODUCT_GROUP_RELATIONSHIP
                   PRODUCT_PLANNED_TO_REALIZED
                   PRODUCT_RELATIONSHIP
                   PRODUCT_VERSION
                   PRODUCT_VERSION_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   PROJECT_ASSIGNMENT
                   PROJECT_RELATIONSHIP
                   PROPERTY_REPRESENTATION
                   QUALIFICATION_ASSIGNMENT
                   QUALIFICATION_TYPE
                   QUALIFICATION_TYPE_RELATIONSHIP
                   REGIONAL_COORDINATE
                   RELATED_CONDITION_PARAMETER
                   REPRESENTATION
                   REPRESENTATION_CONTEXT
                   REPRESENTATION_ITEM
                   REPRESENTATION_RELATIONSHIP
                   REQUIRED_RESOURCE
                   REQUIRED_RESOURCE_ASSIGNMENT
                   REQUIRED_RESOURCE_RELATIONSHIP
                   REQUIREMENT
                   REQUIREMENT_ASSIGNMENT
                   REQUIREMENT_COLLECTION_RELATIONSHIP
                   REQUIREMENT_SOURCE
                   REQUIREMENT_VERSION
                   REQUIREMENT_VERSION_RELATIONSHIP
                   REQUIREMENT_VIEW_DEFINITION
                   RESOURCE_AS_REALIZED
                   RESOURCE_AS_REALIZED_ASSIGNMENT
                   RESOURCE_AS_REALIZED_RELATIONSHIP
                   RESOURCE_EVENT
                   RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP
                   RESOURCE_EVENT_RELATIONSHIP
                   RESOURCE_ITEM
                   RESOURCE_ITEM_ASSIGNMENT
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_ITEM_RELATIONSHIP
                   RESOURCE_PROPERTY
                   RESOURCE_PROPERTY_REPRESENTATION
                   RISK
                   RISK_CONSEQUENCE
                   RISK_IMPACT_ASSIGNMENT
                   RISK_PERCEPTION
                   RISK_PERCEPTION_RELATIONSHIP
                   RISK_RELATIONSHIP
                   SECURITY_CLASSIFICATION
                   SECURITY_CLASSIFICATION_ASSIGNMENT
                   SELECTED_ITEM
                   SELECTED_ITEM_ASSIGNMENT
                   STATE
                   STATE_ASSERTION
                   STATE_ASSESSMENT
                   STATE_BASED_BEHAVIOUR_MODEL
                   STATE_DEFINITION
                   STATE_DEFINITION_RELATIONSHIP
                   STATE_RELATIONSHIP
                   STRING_REPRESENTATION_ITEM
                   SUPPLIED_PART_RELATIONSHIP
                   TASK_ELEMENT_STATE_RELATIONSHIP
                   TASK_METHOD
                   TASK_METHOD_STATE_RELATIONSHIP
                   TASK_OBJECTIVE
                   TASK_OBJECTIVE_STATE_RELATIONSHIP
                   TEXT_BASED_REPRESENTATION
                   TIME_INTERVAL_RELATIONSHIP
                   TRACING_RELATIONSHIP
                   TYPE_OF_PERSON
                   TYPE_OF_PERSON_ASSIGNMENT
                   TYPE_OF_PERSON_DEFINITION
                   TYPE_OF_PERSON_DEFINITION_RELATIONSHIP
                   TYPE_OF_PERSON_DEFINITION_REQUIRED_ATTRIBUTES_RELATIONSHIP
                   UNCERTAINTY_WITH_UNIT
                   UNIT
                   VALUE_WITH_UNIT
                   VERIFICATION
                   VIEW_DEFINITION_CONTEXT
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_ORDER
                   WORK_OUTPUT
                   WORK_OUTPUT_ASSIGNMENT
                   WORK_OUTPUT_RELATIONSHIP
                   WORK_REQUEST
                   WORK_REQUEST_STATUS)))


(DEFTYPE-CLASS "ANY_NUMBER_VALUE" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'NUMBER-TYP))


(DEFTYPE-CLASS "ANY_STRING_VALUE" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'STRING-TYP))


(DEFTYPE-CLASS "LENGTH_MEASURE" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'REAL-TYP))


(DEFTYPE-CLASS "MEASURE_VALUE" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ANY_NUMBER_VALUE
                   ANY_STRING_VALUE
                   LENGTH_MEASURE
                   PLANE_ANGLE_MEASURE)))


(DEFTYPE-CLASS "PLANE_ANGLE_MEASURE" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'REAL-TYP))


(DEFTYPE-CLASS "ACTIVITY_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_PROPERTY
                   ANALYSIS
                   ANALYSIS_DISCIPLINE_DEFINITION
                   ANALYSIS_VERSION
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_STATE_ASSIGNMENT
                   APPLIED_STATE_DEFINITION_ASSIGNMENT
                   APPROVAL
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSIGNED_DOCUMENT_PROPERTY
                   ASSIGNED_PROPERTY
                   BEHAVIOUR_DESCRIPTION_ASSOCIATION
                   CERTIFICATION
                   CONTRACT
                   CONTRACT_RELATIONSHIP
                   DESCRIPTIVE_DOCUMENT_PROPERTY
                   DOCUMENT
                   DOCUMENT_DEFINITION
                   DOCUMENT_VERSION
                   EFFECTIVITY
                   ENVIRONMENT_DEFINITION_VIEW
                   EVENT
                   EVENT_ASSIGNMENT
                   FILE
                   INDEPENDENT_PROPERTY
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_CONNECTION
                   ISSUE
                   ITEM_USAGE_EFFECTIVITY
                   JUSTIFICATION
                   LESSONS_LEARNED
                   LOCATION
                   LOCATION_REPRESENTATION
                   MANAGED_RESOURCE
                   NUMERICAL_DOCUMENT_PROPERTY
                   OBSERVATION_CONSEQUENCE
                   OBSERVED_ENVIRONMENT_VIEW
                   ORGANIZATION
                   PERSON
                   PERSON_IN_ORGANIZATION
                   POSITION
                   POSITION_GROUP
                   PRODUCT
                   PRODUCT_CONCEPT
                   PRODUCT_CONFIGURATION
                   PRODUCT_GROUP
                   PRODUCT_VERSION
                   PRODUCT_VERSION_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   REQUIRED_RESOURCE
                   REQUIREMENT_ASSIGNMENT
                   REQUIREMENT_COLLECTION_RELATIONSHIP
                   REQUIREMENT_SOURCE
                   REQUIREMENT_VERSION_RELATIONSHIP
                   RESOURCE_AS_REALIZED
                   RESOURCE_EVENT
                   RESOURCE_ITEM
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_PROPERTY
                   RISK
                   RISK_ANALYSIS
                   RISK_ASSESSMENT
                   RISK_COMMUNICATION
                   RISK_CONSEQUENCE
                   RISK_CONTROL
                   RISK_CRITERIA_SELECT
                   RISK_ESTIMATION
                   RISK_EVALUATION
                   RISK_IDENTIFICATION
                   RISK_IMPACT
                   RISK_IMPACT_ASSIGNMENT
                   RISK_PERCEPTION
                   RISK_PERCEPTION_CONTEXT
                   RISK_PERCEPTION_RELATIONSHIP
                   RISK_PERCEPTION_SOURCE_ASSIGNMENT
                   RISK_PERCEPTION_SOURCE_ITEM
                   RISK_RELATIONSHIP
                   RISK_TREATMENT
                   SCHEME
                   SCHEME_ENTRY
                   SCHEME_ENTRY_ASSIGNMENT
                   SCHEME_VERSION
                   STATE
                   STATE_RELATIONSHIP
                   TASK_ELEMENT
                   TASK_IO
                   TASK_IO_HIERARCHY
                   TASK_METHOD
                   TASK_METHOD_VERSION
                   TRACING_RELATIONSHIP
                   VERIFICATION
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_ORDER
                   WORK_OUTPUT
                   WORK_REQUEST)))


(DEFTYPE-CLASS "ANALYSED_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                   ACTIVITY_METHOD_RELATIONSHIP
                   ACTIVITY_PROPERTY
                   ACTIVITY_RELATIONSHIP
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   ASSIGNED_PROPERTY
                   BEHAVIOUR_DESCRIPTION_ASSOCIATION
                   BEHAVIOUR_ITEM
                   BEHAVIOUR_MODEL
                   CONDITION
                   CONDITION_RELATIONSHIP
                   EVIDENCE
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_DEFINITION_FOR
                   ISSUE
                   LESSONS_LEARNED
                   MANAGED_RESOURCE_RELATIONSHIP
                   OBSERVATION
                   OBSERVATION_CONSEQUENCE
                   OBSERVATION_RELATIONSHIP
                   ORGANIZATION
                   ORGANIZATION_RELATIONSHIP
                   PRODUCT
                   PRODUCT_CONCEPT
                   PRODUCT_DESIGN_TO_INDIVIDUAL
                   PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL
                   PRODUCT_GROUP_RELATIONSHIP
                   PRODUCT_PLANNED_TO_REALIZED
                   PRODUCT_RELATIONSHIP
                   PRODUCT_VERSION
                   PRODUCT_VERSION_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   PROJECT_RELATIONSHIP
                   REQUIREMENT_ASSIGNMENT
                   RESOURCE_EVENT_RELATIONSHIP
                   RESOURCE_ITEM_RELATIONSHIP
                   RESOURCE_PROPERTY
                   RISK
                   RISK_ANALYSIS
                   RISK_ASSESSMENT
                   RISK_CONSEQUENCE
                   RISK_CONTROL
                   RISK_ESTIMATION
                   RISK_EVALUATION
                   RISK_PERCEPTION
                   RISK_PERCEPTION_RELATIONSHIP
                   RISK_RELATIONSHIP
                   RISK_TREATMENT
                   STATE
                   STATE_ASSESSMENT
                   STATE_DEFINITION
                   STATE_ROLE
                   TASK_IO
                   TASK_METHOD
                   VERIFICATION
                   VERIFICATION_RELATIONSHIP
                   VIEW_DEFINITION_CONTEXT
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_OUTPUT_ASSIGNMENT
                   WORK_OUTPUT_RELATIONSHIP)))


(DEFTYPE-CLASS "CONTRACT_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_REALIZATION
                   ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                   ACTIVITY_METHOD_RELATIONSHIP
                   ANALYSIS_VERSION
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   BREAKDOWN
                   BREAKDOWN_ELEMENT
                   BREAKDOWN_VERSION
                   DOCUMENT
                   DOCUMENT_VERSION
                   EXTERNAL_CLASS
                   EXTERNAL_CLASS_LIBRARY
                   INFORMATION_USAGE_RIGHT
                   INTERFACE_CONNECTOR_VERSION
                   INTERFACE_SPECIFICATION_VERSION
                   ISSUE
                   JUSTIFICATION
                   MANAGED_RESOURCE
                   ORGANIZATION
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ITEM
                   PART
                   PART_VERSION
                   PERSON_IN_ORGANIZATION
                   PRODUCT_AS_INDIVIDUAL
                   PRODUCT_AS_PLANNED
                   PRODUCT_AS_REALIZED
                   PRODUCT_CONFIGURATION
                   PRODUCT_GROUP
                   PRODUCT_GROUP_RELATIONSHIP
                   PRODUCT_VERSION
                   PROJECT
                   REQUIREMENT
                   REQUIREMENT_ASSIGNMENT
                   REQUIREMENT_COLLECTION_RELATIONSHIP
                   REQUIREMENT_SOURCE
                   REQUIREMENT_VERSION
                   REQUIREMENT_VERSION_RELATIONSHIP
                   REQUIREMENT_VIEW_DEFINITION
                   RESOURCE_EVENT
                   RESOURCE_ITEM
                   RESOURCE_ITEM_REALIZATION
                   RISK_ANALYSIS
                   RISK_CONTROL
                   RISK_PERCEPTION_SOURCE_ASSIGNMENT
                   RISK_TREATMENT
                   SECURITY_CLASSIFICATION
                   TASK_ELEMENT
                   TASK_ELEMENT_RELATIONSHIP
                   TASK_IO
                   TASK_METHOD
                   TASK_METHOD_ASSIGNMENT
                   TASK_METHOD_RELATIONSHIP
                   TASK_METHOD_VERSION
                   TASK_METHOD_VERSION_ASSIGNMENT
                   TASK_METHOD_VERSION_RELATIONSHIP
                   TASK_OBJECTIVE
                   TRACING_RELATIONSHIP
                   VERIFICATION
                   WORK_ORDER
                   WORK_OUTPUT)))


(DEFTYPE-CLASS "ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_ASSIGNMENT
                   ACTIVITY_METHOD_REALIZATION
                   ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                   ACTIVITY_METHOD_RELATIONSHIP
                   ACTIVITY_PROPERTY
                   ACTIVITY_PROPERTY_REPRESENTATION
                   ACTIVITY_RELATIONSHIP
                   ADDRESS
                   ADDRESS_ASSIGNMENT
                   AFFECTED_ITEMS_ASSIGNMENT
                   ALIAS_IDENTIFICATION
                   ALTERNATE_PART_RELATIONSHIP
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   ANALYSIS
                   ANALYSIS_DISCIPLINE_DEFINITION
                   ANALYSIS_VERSION
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   APPLIED_INDEPENDENT_ACTIVITY_PROPERTY
                   APPROVAL
                   APPROVAL_STATUS
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   ASSIGNED_PROPERTY
                   BEHAVIOUR_VERSION
                   BREAKDOWN
                   BREAKDOWN_ELEMENT
                   BREAKDOWN_ELEMENT_REALIZATION
                   BREAKDOWN_ELEMENT_USAGE
                   BREAKDOWN_VERSION
                   CERTIFICATION
                   CERTIFICATION_ASSIGNMENT
                   CLASS
                   CLASSIFICATION_ASSIGNMENT
                   CONDITION
                   CONDITION_ASSIGNMENT
                   CONDITION_EVALUATION
                   CONDITION_EVALUATION_ASSIGNMENT
                   CONTRACT
                   CONTRACT_ASSIGNMENT
                   CONTRACT_RELATIONSHIP
                   DATE_OR_DATE_TIME_ASSIGNMENT
                   DIGITAL_DOCUMENT_DEFINITION
                   DIGITAL_FILE
                   DIRECTED_ACTIVITY
                   DOCUMENT
                   DOCUMENT_ASSIGNMENT
                   DOCUMENT_DEFINITION
                   DOCUMENT_VERSION
                   EFFECTIVITY
                   EFFECTIVITY_ASSIGNMENT
                   ENVIRONMENT_DEFINITION_VIEW
                   EVENT
                   EVENT_ASSIGNMENT
                   EVIDENCE
                   HARDCOPY
                   IDENTIFICATION_ASSIGNMENT
                   INDEPENDENT_PROPERTY
                   INDEPENDENT_PROPERTY_RELATIONSHIP
                   INDEPENDENT_PROPERTY_REPRESENTATION
                   INFORMATION_USAGE_RIGHT
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_DEFINITION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_CONNECTOR_VERSION
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_DEFINITION_FOR
                   INTERFACE_SPECIFICATION
                   INTERFACE_SPECIFICATION_DEFINITION
                   INTERFACE_SPECIFICATION_VERSION
                   ISSUE_CONSEQUENCE
                   JUSTIFICATION
                   JUSTIFICATION_ASSIGNMENT
                   JUSTIFICATION_RELATIONSHIP
                   JUSTIFICATION_SUPPORT_ASSIGNMENT
                   LOCATION_ASSIGNMENT
                   MANAGED_RESOURCE
                   MANAGED_RESOURCE_RELATIONSHIP
                   OBSERVATION
                   OBSERVATION_ASSIGNMENT
                   OBSERVED_ENVIRONMENT_VIEW
                   ORGANIZATION
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   PART
                   PART_VERSION
                   PART_VIEW_DEFINITION
                   PERSON
                   PERSON_IN_ORGANIZATION
                   PHYSICAL_DOCUMENT_DEFINITION
                   POSITION_ASSIGNMENT
                   POSITION_GROUP_ASSIGNMENT
                   POSITION_POSITION_TYPE_ASSIGNMENT
                   POSITION_TYPE
                   POSITION_TYPE_ASSIGNMENT
                   PRODUCT
                   PRODUCT_AS_INDIVIDUAL
                   PRODUCT_AS_INDIVIDUAL_VERSION
                   PRODUCT_AS_INDIVIDUAL_VIEW
                   PRODUCT_AS_PLANNED
                   PRODUCT_AS_REALIZED
                   PRODUCT_CONFIGURATION
                   PRODUCT_GROUP
                   PRODUCT_GROUP_MEMBERSHIP
                   PRODUCT_GROUP_RELATIONSHIP
                   PRODUCT_RELATIONSHIP
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   PROJECT_ASSIGNMENT
                   PROPERTY_REPRESENTATION
                   QUALIFICATION_ASSIGNMENT
                   QUALIFICATION_TYPE
                   REPRESENTATION
                   REQUIRED_RESOURCE
                   REQUIRED_RESOURCE_ASSIGNMENT
                   REQUIREMENT
                   REQUIREMENT_ASSIGNMENT
                   REQUIREMENT_COLLECTION_RELATIONSHIP
                   REQUIREMENT_SOURCE
                   REQUIREMENT_VERSION
                   REQUIREMENT_VERSION_RELATIONSHIP
                   REQUIREMENT_VIEW_DEFINITION
                   RESOURCE_AS_REALIZED
                   RESOURCE_AS_REALIZED_ASSIGNMENT
                   RESOURCE_EVENT
                   RESOURCE_ITEM
                   RESOURCE_ITEM_ASSIGNMENT
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_PROPERTY
                   RESOURCE_PROPERTY_REPRESENTATION
                   RISK
                   RISK_ANALYSIS
                   RISK_ASSESSMENT
                   RISK_ATTITUDE
                   RISK_COMMUNICATION
                   RISK_CONSEQUENCE
                   RISK_CONTROL
                   RISK_ESTIMATION
                   RISK_EVALUATION
                   RISK_IDENTIFICATION
                   RISK_IMPACT_ASSIGNMENT
                   RISK_PERCEPTION
                   RISK_PERCEPTION_CONTEXT
                   RISK_PERCEPTION_RELATIONSHIP
                   RISK_PERCEPTION_SOURCE_ASSIGNMENT
                   RISK_RELATIONSHIP
                   RISK_TREATMENT
                   SCHEME
                   SCHEME_ENTRY
                   SECURITY_CLASSIFICATION
                   SECURITY_CLASSIFICATION_ASSIGNMENT
                   SELECTED_ITEM
                   SELECTED_ITEM_ASSIGNMENT
                   SHAPE_ELEMENT_RELATIONSHIP
                   SUPPLIED_PART_RELATIONSHIP
                   SYSTEM
                   SYSTEM_VERSION
                   SYSTEM_VIEW_DEFINITION
                   TASK_ELEMENT
                   TASK_ELEMENT_RELATIONSHIP
                   TASK_ELEMENT_STATE_RELATIONSHIP
                   TASK_IO
                   TASK_METHOD
                   TASK_METHOD_ASSIGNMENT
                   TASK_METHOD_RELATIONSHIP
                   TASK_METHOD_STATE_RELATIONSHIP
                   TASK_METHOD_VERSION
                   TASK_METHOD_VERSION_ASSIGNMENT
                   TASK_METHOD_VERSION_RELATIONSHIP
                   TASK_OBJECTIVE
                   TASK_OBJECTIVE_STATE_RELATIONSHIP
                   TRACING_RELATIONSHIP
                   TYPE_OF_PERSON_ASSIGNMENT
                   VERIFICATION
                   VIEW_DEFINITION_CONTEXT
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_ORDER
                   WORK_OUTPUT
                   WORK_REQUEST)))


(DEFTYPE-CLASS "SECURITY_CLASSIFICATION_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_ASSIGNMENT
                   ACTIVITY_METHOD_REALIZATION
                   ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                   ACTIVITY_METHOD_RELATIONSHIP
                   ACTIVITY_PROPERTY
                   AFFECTED_ITEMS_ASSIGNMENT
                   ALTERNATE_PART_RELATIONSHIP
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   ANALYSIS_VERSION
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   ASSIGNED_PROPERTY
                   BREAKDOWN
                   BREAKDOWN_ELEMENT_DEFINITION
                   BREAKDOWN_ELEMENT_REALIZATION
                   BREAKDOWN_ELEMENT_USAGE
                   BREAKDOWN_ELEMENT_VERSION
                   DIGITAL_DOCUMENT_DEFINITION
                   DIGITAL_FILE
                   DIRECTED_ACTIVITY
                   DOCUMENT
                   DOCUMENT_ASSIGNMENT
                   DOCUMENT_VERSION
                   EVENT
                   EVIDENCE
                   HARDCOPY
                   HIERARCHICAL_INTERFACE_CONNECTION
                   IN_ZONE
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR
                   INTERFACE_CONNECTOR_DEFINITION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_DEFINITION_FOR
                   INTERFACE_SPECIFICATION_DEFINITION
                   INTERFACE_SPECIFICATION_VERSION
                   MANAGED_RESOURCE
                   OBSERVATION
                   OBSERVATION_ASSIGNMENT
                   OBSERVATION_CONSEQUENCE
                   OBSERVATION_RELATIONSHIP
                   PART
                   PART_VERSION
                   PART_VIEW_DEFINITION
                   PHYSICAL_DOCUMENT_DEFINITION
                   PRODUCT
                   PRODUCT_AS_INDIVIDUAL
                   PRODUCT_AS_INDIVIDUAL_VERSION
                   PRODUCT_AS_INDIVIDUAL_VIEW
                   PRODUCT_AS_PLANNED
                   PRODUCT_AS_REALIZED
                   PRODUCT_CONFIGURATION
                   PRODUCT_DESIGN_TO_INDIVIDUAL
                   PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL
                   PRODUCT_GROUP
                   PRODUCT_GROUP_MEMBERSHIP
                   PRODUCT_GROUP_RELATIONSHIP
                   PRODUCT_RELATIONSHIP
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROJECT_RELATIONSHIP
                   PROMISSORY_USAGE
                   REQUIREMENT
                   REQUIREMENT_ASSIGNMENT
                   REQUIREMENT_COLLECTION_RELATIONSHIP
                   REQUIREMENT_SOURCE
                   REQUIREMENT_VERSION
                   REQUIREMENT_VERSION_RELATIONSHIP
                   REQUIREMENT_VIEW_DEFINITION
                   RESOURCE_ITEM
                   RESOURCE_ITEM_REALIZATION
                   RISK_COMMUNICATION
                   RISK_IMPACT
                   RISK_TREATMENT
                   TASK_ELEMENT
                   TASK_ELEMENT_RELATIONSHIP
                   TASK_ELEMENT_STATE_RELATIONSHIP
                   TASK_METHOD
                   TASK_METHOD_ASSIGNMENT
                   TASK_METHOD_RELATIONSHIP
                   TASK_METHOD_VERSION
                   TASK_METHOD_VERSION_ASSIGNMENT
                   TASK_METHOD_VERSION_RELATIONSHIP
                   TASK_OBJECTIVE
                   TASK_OBJECTIVE_STATE_RELATIONSHIP
                   TRACING_RELATIONSHIP
                   VERIFICATION
                   WORK_ORDER
                   WORK_OUTPUT
                   WORK_OUTPUT_ASSIGNMENT
                   WORK_OUTPUT_RELATIONSHIP
                   WORK_REQUEST
                   WORK_REQUEST_STATUS)))


(DEFTYPE-CLASS "ASSUMED_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP :SELECT-LIST '(ACTIVITY)))


(DEFTYPE-CLASS "ASSUMPTION_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP :SELECT-LIST '(ACTIVITY)))


(DEFTYPE-CLASS "JUSTIFICATION_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_ASSIGNMENT
                   ACTIVITY_METHOD_REALIZATION
                   ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                   ACTIVITY_METHOD_RELATIONSHIP
                   ACTIVITY_PROPERTY
                   AFFECTED_ITEMS_ASSIGNMENT
                   ANALYSIS_ASSIGNMENT
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   APPLIED_INFORMATION_USAGE_RIGHT
                   APPLIED_STATE_DEFINITION_ASSIGNMENT
                   APPROVAL
                   APPROVAL_ASSIGNMENT
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   ASSIGNED_PROPERTY
                   ASSUMPTION
                   ASSUMPTION_ASSIGNMENT
                   ASSUMPTION_RELATIONSHIP
                   BEHAVIOUR_DESCRIPTION_ASSOCIATION
                   BREAKDOWN
                   BREAKDOWN_OF
                   CERTIFICATION
                   CLASSIFICATION_ASSIGNMENT
                   CONDITION
                   CONDITION_ASSIGNMENT
                   CONTRACT
                   CONTRACT_RELATIONSHIP
                   DESCRIPTION_TEXT
                   DESCRIPTIVE_DOCUMENT_PROPERTY
                   DIRECTED_ACTIVITY
                   DOCUMENT_ASSIGNMENT
                   DOCUMENT_DEFINITION
                   DOCUMENT_DEFINITION_RELATIONSHIP
                   EFFECTIVITY
                   EVIDENCE
                   FILE_RELATIONSHIP
                   INDEPENDENT_PROPERTY
                   INDEPENDENT_PROPERTY_RELATIONSHIP
                   INFORMATION_USAGE_RIGHT
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_CONNECTION
                   ISSUE
                   LOCATION_ASSIGNMENT
                   MANAGED_RESOURCE_RELATIONSHIP
                   NUMERICAL_DOCUMENT_PROPERTY
                   OBSERVATION
                   OBSERVATION_ASSIGNMENT
                   PRODUCT
                   PRODUCT_VERSION
                   PRODUCT_VERSION_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   PROJECT_ASSIGNMENT
                   PROPERTY_VALUE_REPRESENTATION
                   QUALIFICATION_TYPE
                   REQUIRED_RESOURCE
                   REQUIRED_RESOURCE_ASSIGNMENT
                   REQUIRED_RESOURCE_RELATIONSHIP
                   REQUIREMENT_ASSIGNMENT
                   RESOURCE_AS_REALIZED
                   RESOURCE_EVENT
                   RESOURCE_ITEM
                   RESOURCE_ITEM_ASSIGNMENT
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_ITEM_RELATIONSHIP
                   RESOURCE_PROPERTY
                   RISK
                   RISK_TREATMENT
                   SECURITY_CLASSIFICATION
                   STATE_ASSERTION
                   STATE_ASSESSMENT
                   TASK_ELEMENT
                   TASK_ELEMENT_RELATIONSHIP
                   TASK_ELEMENT_STATE_RELATIONSHIP
                   TASK_IO
                   TASK_IO_HIERARCHY
                   TASK_METHOD
                   TASK_METHOD_ASSIGNMENT
                   TASK_METHOD_RELATIONSHIP
                   TASK_METHOD_STATE_RELATIONSHIP
                   TASK_METHOD_VERSION
                   TASK_METHOD_VERSION_ASSIGNMENT
                   TASK_METHOD_VERSION_RELATIONSHIP
                   TASK_OBJECTIVE
                   TASK_OBJECTIVE_STATE_RELATIONSHIP
                   VERIFICATION
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_ORDER
                   WORK_OUTPUT_ASSIGNMENT
                   WORK_REQUEST)))


(DEFTYPE-CLASS "JUSTIFICATION_SUPPORT_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_ASSIGNMENT
                   ACTIVITY_PROPERTY
                   ANALYSIS_ASSIGNMENT
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   APPLIED_STATE_ASSIGNMENT
                   APPLIED_STATE_DEFINITION_ASSIGNMENT
                   APPROVAL
                   ASSIGNED_PROPERTY
                   ASSUMPTION
                   ASSUMPTION_ASSIGNMENT
                   ASSUMPTION_RELATIONSHIP
                   CERTIFICATION
                   CONTRACT
                   CONTRACT_RELATIONSHIP
                   DESCRIPTIVE_DOCUMENT_PROPERTY
                   DOCUMENT
                   DOCUMENT_DEFINITION
                   DOCUMENT_DEFINITION_RELATIONSHIP
                   DOCUMENT_VERSION
                   EFFECTIVITY
                   EVENT
                   EVIDENCE
                   FILE_RELATIONSHIP
                   INDEPENDENT_PROPERTY
                   INDEPENDENT_PROPERTY_RELATIONSHIP
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_CONNECTION
                   LOCATION
                   LOCATION_ASSIGNMENT
                   NUMERICAL_DOCUMENT_PROPERTY
                   OBSERVATION
                   OBSERVATION_ASSIGNMENT
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   PRODUCT
                   PRODUCT_VERSION
                   PRODUCT_VERSION_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   RESOURCE_PROPERTY
                   RISK_ANALYSIS
                   RISK_CONSEQUENCE
                   STATE
                   STATE_DEFINITION
                   STATE_DEFINITION_RELATIONSHIP
                   STATE_RELATIONSHIP
                   VERIFICATION
                   VIEW_DEFINITION_CONTEXT
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_ORDER
                   WORK_OUTPUT
                   WORK_REQUEST)))


(DEFTYPE-CLASS "EVIDENCE_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY_ACTUAL
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_ASSIGNMENT
                   ACTIVITY_METHOD_RELATIONSHIP
                   ACTIVITY_RELATIONSHIP
                   ACTIVITY_STATUS
                   AFFECTED_ITEMS_ASSIGNMENT
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   ANALYSIS_ASSIGNMENT
                   ANALYSIS_VERSION
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   APPLIED_INDEPENDENT_PROPERTY
                   APPLIED_INFORMATION_USAGE_RIGHT
                   APPLIED_STATE_ASSIGNMENT
                   APPROVAL_ASSIGNMENT
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   ASSIGNED_PROPERTY
                   BEHAVIOUR_DESCRIPTION_ASSOCIATION
                   BEHAVIOUR_MODEL
                   BREAKDOWN_OF
                   CERTIFICATION_ASSIGNMENT
                   CLASSIFICATION_ASSIGNMENT
                   CONDITION_ASSIGNMENT
                   CONDITION_EVALUATION_ASSIGNMENT
                   CONDITION_EVALUATION_PARAMETER
                   CONTRACT_ASSIGNMENT
                   DATE_OR_DATE_TIME_ASSIGNMENT
                   DEFINED_STATE_RELATIONSHIP
                   DESCRIPTION_TEXT_ASSIGNMENT
                   DIRECTED_ACTIVITY
                   EFFECTIVITY_ASSIGNMENT
                   EVENT_ASSIGNMENT
                   EXPRESSION_ASSIGNMENT
                   INTERFACE_CONNECTOR_DEFINITION
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_DEFINITION_FOR
                   ISSUE_CONSEQUENCE
                   JUSTIFICATION_ASSIGNMENT
                   JUSTIFICATION_RELATIONSHIP
                   JUSTIFICATION_SUPPORT_ASSIGNMENT
                   LESSONS_LEARNED
                   LOCATION_ASSIGNMENT
                   OBSERVATION
                   OBSERVATION_CONSEQUENCE
                   OBSERVATION_RELATIONSHIP
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   PERSON
                   PERSON_IN_ORGANIZATION
                   PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
                   PRODUCT
                   PRODUCT_DESIGN_TO_INDIVIDUAL
                   PRODUCT_VERSION
                   PRODUCT_VERSION_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   PROJECT_ASSIGNMENT
                   REPRESENTATION
                   REPRESENTATION_CONTEXT
                   REPRESENTATION_ITEM
                   REQUIRED_RESOURCE_ASSIGNMENT
                   RESOURCE_AS_REALIZED_ASSIGNMENT
                   RESOURCE_AS_REALIZED_RELATIONSHIP
                   RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP
                   RESOURCE_EVENT_RELATIONSHIP
                   RESOURCE_ITEM_ASSIGNMENT
                   RISK_ANALYSIS
                   RISK_COMMUNICATION
                   RISK_CONSEQUENCE
                   RISK_ESTIMATION
                   RISK_EVALUATION
                   RISK_IMPACT_ASSIGNMENT
                   RISK_PERCEPTION
                   RISK_PERCEPTION_SOURCE_ASSIGNMENT
                   RISK_TREATMENT
                   SECURITY_CLASSIFICATION_ASSIGNMENT
                   STATE
                   STATE_ASSERTION
                   STATE_ASSESSMENT
                   STATE_RELATIONSHIP
                   TASK_IO_HIERARCHY
                   TASK_OBJECTIVE_STATE_RELATIONSHIP
                   TIME_INTERVAL_ASSIGNMENT
                   TYPE_OF_PERSON_ASSIGNMENT
                   VALIDATION
                   VERIFICATION
                   VIEW_DEFINITION_CONTEXT
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_ORDER
                   WORK_OUTPUT_ASSIGNMENT
                   WORK_REQUEST)))


(DEFTYPE-CLASS "EVIDENCE_SUPPORT_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP :SELECT-LIST '(VALIDATION VERIFICATION)))


(DEFTYPE-CLASS "VALIDATION_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY_METHOD PRODUCT_VERSION)))


(DEFTYPE-CLASS "BREAKDOWN_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(BREAKDOWN_ELEMENT_DEFINITION
                   BREAKDOWN_ELEMENT_USAGE)))


(DEFTYPE-CLASS "PRODUCT_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(INTERFACE_CONNECTOR_OCCURRENCE
                   PRODUCT_GROUP
                   PRODUCT_VIEW_DEFINITION
                   VIEW_DEFINITION_USAGE)))


(DEFTYPE-CLASS "GROUPABLE_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   APPROVAL
                   BREAKDOWN_OF
                   CERTIFICATION
                   CONDITION
                   CONTRACT
                   CONTRACT_RELATIONSHIP
                   EFFECTIVITY
                   EVENT
                   EXPERIENCE_TYPE
                   FILE
                   GROUP
                   GROUP_RELATIONSHIP
                   INTERFACE_CONNECTION
                   INTERFACE_DEFINITION_FOR
                   ISSUE
                   JUSTIFICATION
                   LOCATION
                   MANAGED_RESOURCE
                   OBSERVATION
                   PRODUCT
                   PROJECT
                   REQUIRED_RESOURCE
                   RESOURCE_ITEM
                   RESOURCE_ITEM_REALIZATION
                   RISK
                   TASK_IO
                   VERIFICATION
                   WORK_ORDER
                   WORK_OUTPUT
                   WORK_REQUEST)))


(DEFTYPE-CLASS "BEHAVIOUR_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(BEHAVIOUR_VIEW_DEFINITION STATE_DEFINITION)))


(DEFTYPE-CLASS "BEHAVIOUR_MODEL" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY_METHOD
                   FUNCTION_BASED_BEHAVIOUR_MODEL
                   STATE_BASED_BEHAVIOUR_MODEL
                   STATE_DEFINITION)))


(DEFTYPE-CLASS "EXPRESSION_ASSIGNMENT_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP :SELECT-LIST '(CONDITION)))


(DEFTYPE-CLASS "REQUIRED_RESOURCE_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ANALYSIS_ASSIGNMENT
                   APPLIED_ACTIVITY_ASSIGNMENT
                   CERTIFICATION_ASSIGNMENT
                   CONDITION_EVALUATION_ASSIGNMENT
                   CONTRACT_ASSIGNMENT
                   EVENT
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_DEFINITION_FOR
                   ISSUE
                   JUSTIFICATION
                   MANAGED_RESOURCE
                   ORGANIZATION
                   PERSON_IN_ORGANIZATION
                   POSITION
                   POSITION_TYPE
                   PRODUCT
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   RISK_ANALYSIS
                   RISK_TREATMENT
                   SCHEME
                   SCHEME_ENTRY
                   SCHEME_VERSION
                   STATE_DEFINITION
                   TASK_ELEMENT
                   TASK_METHOD
                   TASK_METHOD_ASSIGNMENT
                   TASK_METHOD_VERSION
                   TASK_METHOD_VERSION_ASSIGNMENT
                   TASK_STEP
                   TYPE_OF_PERSON
                   VERIFICATION
                   WORK_ORDER)))


(DEFTYPE-CLASS "RESOURCE_REQUIREMENT_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP :SELECT-LIST '(REQUIREMENT_VERSION)))


(DEFTYPE-CLASS "CHARACTERIZED_RESOURCE_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(MANAGED_RESOURCE
                   REQUIRED_RESOURCE
                   RESOURCE_AS_REALIZED
                   RESOURCE_ITEM
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_ITEM_RELATIONSHIP)))


(DEFTYPE-CLASS "LIST_OF_TEXT_BASED_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'LIST-TYP
                 :L-BOUND
                 1
                 :U-BOUND
                 :?
                 :BASE-TYPE
                 'TEXTUAL_EXPRESSION_REPRESENTATION_ITEM
                 :UNIQUE
                 NIL))


(DEFTYPE-CLASS "LIST_OR_SET_OF_TEXT_BASED_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(LIST_OF_TEXT_BASED_ITEM SET_OF_TEXT_BASED_ITEM)))


(DEFTYPE-CLASS "SET_OF_TEXT_BASED_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SET-TYP
                 :L-BOUND
                 1
                 :U-BOUND
                 :?
                 :BASE-TYPE
                 'TEXTUAL_EXPRESSION_REPRESENTATION_ITEM))


(DEFTYPE-CLASS "TEXT_BASED_ITEM_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(INCLUDED_TEXT_BASED_REPRESENTATION
                   TEXTUAL_EXPRESSION_COMPOSITION
                   TEXTUAL_EXPRESSION_REPRESENTATION_ITEM)))


(DEFTYPE-CLASS "ALIAS_IDENTIFICATION_ITEM" :AP233
  :TYPE-DESCRIPTOR
  'IDENTIFICATION_ITEM)


(DEFTYPE-CLASS "CONDITION_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_REALIZATION
                   ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                   ACTIVITY_METHOD_RELATIONSHIP
                   ACTIVITY_PROPERTY
                   ANALYSIS_ASSIGNMENT
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   APPROVAL
                   APPROVAL_ASSIGNMENT
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSIGNED_PROPERTY
                   CERTIFICATION_ASSIGNMENT
                   CONTRACT_ASSIGNMENT
                   DATE_OR_DATE_TIME_ASSIGNMENT
                   DOCUMENT_ASSIGNMENT
                   EFFECTIVITY
                   EVENT_ASSIGNMENT
                   EVIDENCE
                   EXPRESSION_ASSIGNMENT
                   HIERARCHICAL_INTERFACE_CONNECTION
                   INTERFACE_CONNECTION
                   INTERFACE_DEFINITION_CONNECTION
                   ISSUE
                   JUSTIFICATION_ASSIGNMENT
                   LESSONS_LEARNED
                   LOCATION_ASSIGNMENT
                   MANAGED_RESOURCE
                   MANAGED_RESOURCE_RELATIONSHIP
                   PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP
                   PRODUCT_GROUP
                   PRODUCT_GROUP_MEMBERSHIP
                   PRODUCT_GROUP_RELATIONSHIP
                   PROJECT_ASSIGNMENT
                   QUALIFICATION_ASSIGNMENT
                   REQUIRED_RESOURCE
                   REQUIRED_RESOURCE_ASSIGNMENT
                   REQUIRED_RESOURCE_RELATIONSHIP
                   REQUIREMENT_ASSIGNMENT
                   RESOURCE_EVENT
                   RESOURCE_EVENT_RELATIONSHIP
                   RESOURCE_ITEM
                   RESOURCE_ITEM_ASSIGNMENT
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_ITEM_RELATIONSHIP
                   RESOURCE_PROPERTY
                   RISK
                   RISK_IMPACT_ASSIGNMENT
                   RISK_TREATMENT
                   SECURITY_CLASSIFICATION_ASSIGNMENT
                   STATE_DEFINITION
                   STATE_DEFINITION_RELATIONSHIP
                   STATE_TRANSITION_DEFINITION
                   TASK_ELEMENT_RELATIONSHIP
                   TASK_METHOD_ASSIGNMENT
                   TASK_METHOD_RELATIONSHIP
                   TASK_METHOD_VERSION_ASSIGNMENT
                   TASK_METHOD_VERSION_RELATIONSHIP
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_ORDER
                   WORK_REQUEST)))


(DEFTYPE-CLASS "CONDITION_PARAMETER_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_RELATIONSHIP
                   ACTIVITY_PROPERTY
                   ACTIVITY_PROPERTY_REPRESENTATION
                   ANALYSIS
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   APPROVAL
                   APPROVAL_ASSIGNMENT
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSIGNED_PROPERTY
                   CALENDAR_DATE
                   CERTIFICATION_ASSIGNMENT
                   CLASSIFICATION_ASSIGNMENT
                   CONDITION_RELATIONSHIP
                   CONTRACT_ASSIGNMENT
                   DATE_OR_DATE_TIME_ASSIGNMENT
                   DATE_TIME
                   DOCUMENT_ASSIGNMENT
                   EXPRESSION
                   HIERARCHICAL_INTERFACE_CONNECTION
                   IDENTIFICATION_ASSIGNMENT
                   INDEPENDENT_PROPERTY
                   INDEPENDENT_PROPERTY_REPRESENTATION
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_CONNECTION
                   MANAGED_RESOURCE
                   OBSERVATION
                   ORGANIZATION
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   ORGANIZATION_TYPE
                   PARAMETER_VALUE_SELECT
                   PRODUCT
                   PRODUCT_AS_INDIVIDUAL
                   PRODUCT_CONCEPT
                   PRODUCT_CONFIGURATION
                   PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROPERTY_REPRESENTATION
                   REPRESENTATION
                   REQUIRED_RESOURCE
                   REQUIRED_RESOURCE_ASSIGNMENT
                   REQUIRED_RESOURCE_RELATIONSHIP
                   RESOURCE_AS_REALIZED
                   RESOURCE_AS_REALIZED_RELATIONSHIP
                   RESOURCE_EVENT
                   RESOURCE_ITEM
                   RESOURCE_ITEM_ASSIGNMENT
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_ITEM_RELATIONSHIP
                   RESOURCE_PROPERTY
                   RESOURCE_PROPERTY_REPRESENTATION
                   STATE
                   STATE_ASSESSMENT
                   STATE_DEFINITION
                   STATE_TRANSITION_DEFINITION
                   TASK_ELEMENT_RELATIONSHIP
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_OUTPUT
                   WORK_REQUEST)))


(DEFTYPE-CLASS "STATE_BASED_BEHAVIOUR_ELEMENT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(STATE_DEFINITION STATE_DEFINITION_RELATIONSHIP)))


(DEFTYPE-CLASS "ASSIGNED_NAME_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ANALYSIS
                   BREAKDOWN_ELEMENT_REALIZATION
                   EVENT
                   EXTERNAL_CLASS_LIBRARY
                   GROUP
                   GROUP_RELATIONSHIP
                   ISSUE
                   OBSERVATION
                   PRODUCT
                   PRODUCT_VIEW_DEFINITION
                   RISK)))


(DEFTYPE-CLASS "PARAMETER_VALUE_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(GENERIC_EXPRESSION
                   PRODUCT_VIEW_DEFINITION
                   REPRESENTATION
                   REPRESENTATION_ITEM
                   RISK_ANALYSIS
                   STATE_DEFINITION
                   STATE_RELATIONSHIP
                   VALUE_WITH_UNIT)))


(DEFTYPE-CLASS "PROPERTY_ASSIGNMENT_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_HAPPENING
                   ACTIVITY_METHOD
                   ACTIVITY_PROPERTY
                   ADDRESS
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   ANALYSIS_ASSIGNMENT
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSIGNED_PROPERTY
                   BEHAVIOUR_VIEW_DEFINITION
                   BREAKDOWN_ELEMENT_REALIZATION
                   BREAKDOWN_ELEMENT_USAGE
                   CONDITION_EVALUATION
                   CONDITION_EVALUATION_PARAMETER
                   CONDITION_PARAMETER
                   DOCUMENT_ASSIGNMENT
                   DOCUMENT_DEFINITION
                   ENVIRONMENT_DEFINITION_VIEW
                   EVENT
                   EVIDENCE
                   EXPERIENCE_INSTANCE
                   FILE
                   GENERIC_EXPRESSION
                   HIERARCHICAL_INTERFACE_CONNECTION
                   IN_ZONE
                   INDEPENDENT_PROPERTY
                   INDEPENDENT_PROPERTY_RELATIONSHIP
                   INFORMATION_USAGE_RIGHT
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_CONNECTION
                   LOCATION_ASSIGNMENT
                   OBSERVATION
                   OBSERVATION_CONSEQUENCE
                   OBSERVED_ENVIRONMENT_VIEW
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   PART_VIEW_DEFINITION
                   PERSON
                   PERSON_IN_ORGANIZATION
                   PRODUCT
                   PRODUCT_CONCEPT
                   PRODUCT_CONFIGURATION
                   PRODUCT_GROUP
                   PRODUCT_GROUP_MEMBERSHIP
                   PRODUCT_VERSION
                   PRODUCT_VERSION_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   PROPERTY_DEFINITION_REPRESENTATION
                   RELATED_CONDITION_PARAMETER
                   REPRESENTATION
                   REPRESENTATION_CONTEXT
                   REPRESENTATION_ITEM
                   REQUIRED_RESOURCE
                   REQUIREMENT_SOURCE
                   RESOURCE_AS_REALIZED
                   RESOURCE_EVENT
                   RESOURCE_PROPERTY
                   RISK
                   RISK_ANALYSIS
                   RISK_ASSESSMENT
                   RISK_CONSEQUENCE
                   RISK_CONTROL
                   RISK_ESTIMATION
                   RISK_EVALUATION
                   RISK_IMPACT_ASSIGNMENT
                   RISK_PERCEPTION
                   RISK_PERCEPTION_CONTEXT
                   RISK_PERCEPTION_SOURCE_ASSIGNMENT
                   RISK_RELATIONSHIP
                   RISK_TREATMENT
                   SECURITY_CLASSIFICATION
                   STATE_ASSERTION
                   STATE_ASSESSMENT
                   TASK_IO_HIERARCHY
                   TASK_METHOD_STATE_RELATIONSHIP
                   TASK_OBJECTIVE
                   TASK_OBJECTIVE_STATE_RELATIONSHIP
                   TYPE_OF_PERSON_DEFINITION
                   VERIFICATION
                   VERIFICATION_RELATIONSHIP
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_ORDER
                   WORK_REQUEST)))


(DEFTYPE-CLASS "REPRESENTED_DEFINITION" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ASSIGNED_PROPERTY INDEPENDENT_PROPERTY)))


(DEFTYPE-CLASS "DATE_OR_DATE_TIME_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP :SELECT-LIST '(CALENDAR_DATE DATE_TIME)))


(DEFTYPE-CLASS "DAY_IN_MONTH_NUMBER" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'INTEGER-TYP))


(DEFTYPE-CLASS "HOUR_IN_DAY" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'INTEGER-TYP))


(DEFTYPE-CLASS "MINUTE_IN_HOUR" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'INTEGER-TYP))


(DEFTYPE-CLASS "MONTH_IN_YEAR_NUMBER" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'INTEGER-TYP))


(DEFTYPE-CLASS "OFFSET_ORIENTATION" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'ENUM-TYP :ENUMERATION-LIST '(AHEAD EXACT BEHIND)))


(DEFTYPE-CLASS "SECOND_IN_MINUTE" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'REAL-TYP))


(DEFTYPE-CLASS "YEAR_NUMBER" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'INTEGER-TYP))


(DEFTYPE-CLASS "CERTIFICATION_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   ANALYSIS_DISCIPLINE_DEFINITION
                   ANALYSIS_VERSION
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   APPROVING_PERSON_ORGANIZATION
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   ASSIGNED_PROPERTY
                   BEHAVIOUR_MODEL
                   BREAKDOWN
                   DOCUMENT
                   DOCUMENT_VERSION
                   EVIDENCE
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_VERSION
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_SPECIFICATION_VERSION
                   JUSTIFICATION
                   LESSONS_LEARNED
                   PART
                   PART_VERSION
                   PRODUCT
                   PRODUCT_AS_INDIVIDUAL
                   PRODUCT_AS_PLANNED
                   PRODUCT_AS_REALIZED
                   PRODUCT_CONFIGURATION
                   PRODUCT_GROUP
                   PRODUCT_GROUP_RELATIONSHIP
                   PRODUCT_VERSION
                   PRODUCT_VERSION_RELATIONSHIP
                   PROJECT
                   QUALIFICATION_ASSIGNMENT
                   RESOURCE_ITEM
                   RESOURCE_ITEM_REALIZATION
                   STATE_DEFINITION
                   TASK_ELEMENT
                   TASK_IO
                   TASK_METHOD
                   TASK_METHOD_VERSION
                   TASK_OBJECTIVE
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_OUTPUT)))


(DEFTYPE-CLASS "STRING_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_ASSIGNMENT
                   ACTIVITY_METHOD_REALIZATION
                   ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                   ACTIVITY_METHOD_RELATIONSHIP
                   ACTIVITY_PROPERTY
                   ACTIVITY_RELATIONSHIP
                   ALTERNATE_PART_RELATIONSHIP
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   APPROVAL
                   APPROVAL_RELATIONSHIP
                   APPROVAL_STATUS
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   ASSIGNED_PROPERTY
                   BREAKDOWN
                   BREAKDOWN_ELEMENT
                   BREAKDOWN_ELEMENT_REALIZATION
                   BREAKDOWN_ELEMENT_USAGE
                   BREAKDOWN_ELEMENT_VERSION
                   CERTIFICATION
                   CONDITION
                   CONDITION_EVALUATION
                   CONDITION_EVALUATION_PARAMETER
                   CONDITION_PARAMETER
                   CONDITION_RELATIONSHIP
                   CONTRACT
                   CONTRACT_RELATIONSHIP
                   DATE_OR_DATE_TIME_ASSIGNMENT
                   DIGITAL_DOCUMENT_DEFINITION
                   DOCUMENT
                   DOCUMENT_ASSIGNMENT
                   DOCUMENT_DEFINITION_RELATIONSHIP
                   DOCUMENT_VERSION
                   EVENT
                   EVIDENCE
                   EXPERIENCE_GAINED
                   EXPERIENCE_TYPE
                   EXTERNAL_ITEM_IDENTIFICATION
                   EXTERNAL_SOURCE_IDENTIFICATION
                   FILE_RELATIONSHIP
                   GLOBAL_LOCATION_REPRESENTATION
                   IDENTIFICATION_ASSIGNMENT
                   INDEPENDENT_PROPERTY
                   INDEPENDENT_PROPERTY_RELATIONSHIP
                   INFORMATION_RIGHT
                   INFORMATION_USAGE_RIGHT
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR
                   INTERFACE_CONNECTOR_DEFINITION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_CONNECTOR_VERSION
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_DEFINITION_FOR
                   JUSTIFICATION
                   JUSTIFICATION_ASSIGNMENT
                   JUSTIFICATION_RELATIONSHIP
                   JUSTIFICATION_SUPPORT_ASSIGNMENT
                   LOCATION
                   LOCATION_ASSIGNMENT
                   LOCATION_RELATIONSHIP
                   MANAGED_RESOURCE
                   MANAGED_RESOURCE_RELATIONSHIP
                   OBSERVATION
                   OBSERVATION_ASSIGNMENT
                   OBSERVATION_CONSEQUENCE
                   OBSERVATION_RELATIONSHIP
                   ORGANIZATION_RELATIONSHIP
                   ORGANIZATION_TYPE
                   ORGANIZATIONAL_LOCATION_IDENTIFICATION
                   PART
                   PART_VERSION
                   PART_VIEW_DEFINITION
                   PERSON_IN_ORGANIZATION
                   PHYSICAL_DOCUMENT_DEFINITION
                   POSITION
                   POSITION_GROUP
                   POSITION_RELATIONSHIP
                   POSITION_ROLE
                   POSITION_TYPE
                   PRODUCT
                   PRODUCT_AS_INDIVIDUAL
                   PRODUCT_AS_INDIVIDUAL_VERSION
                   PRODUCT_AS_INDIVIDUAL_VIEW
                   PRODUCT_BASED_LOCATION_IDENTIFICATION
                   PRODUCT_CONFIGURATION
                   PRODUCT_GROUP
                   PRODUCT_GROUP_RELATIONSHIP
                   PRODUCT_RELATIONSHIP
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   PROJECT_ASSIGNMENT
                   PROJECT_RELATIONSHIP
                   QUALIFICATION_TYPE
                   REGIONAL_COORDINATE
                   REGIONAL_GRID_LOCATION_REPRESENTATION
                   RELATED_CONDITION_PARAMETER
                   REPRESENTATION_ITEM
                   REQUIRED_RESOURCE
                   REQUIRED_RESOURCE_RELATIONSHIP
                   REQUIREMENT
                   REQUIREMENT_ASSIGNMENT
                   REQUIREMENT_COLLECTION_RELATIONSHIP
                   REQUIREMENT_SOURCE
                   REQUIREMENT_VERSION
                   REQUIREMENT_VERSION_RELATIONSHIP
                   REQUIREMENT_VIEW_DEFINITION
                   RESOURCE_AS_REALIZED
                   RESOURCE_AS_REALIZED_RELATIONSHIP
                   RESOURCE_EVENT
                   RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP
                   RESOURCE_EVENT_RELATIONSHIP
                   RESOURCE_ITEM
                   RESOURCE_ITEM_ASSIGNMENT
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_ITEM_RELATIONSHIP
                   RESOURCE_PROPERTY
                   TASK_ELEMENT
                   TASK_ELEMENT_RELATIONSHIP
                   TASK_METHOD
                   TASK_METHOD_ASSIGNMENT
                   TASK_METHOD_RELATIONSHIP
                   TASK_METHOD_VERSION
                   TASK_METHOD_VERSION_ASSIGNMENT
                   TASK_METHOD_VERSION_RELATIONSHIP
                   TASK_OBJECTIVE
                   TRACING_RELATIONSHIP
                   TYPE_OF_PERSON
                   TYPE_OF_PERSON_ASSIGNMENT
                   TYPE_OF_PERSON_DEFINITION
                   TYPE_OF_PERSON_DEFINITION_RELATIONSHIP
                   VERIFICATION
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_ORDER
                   WORK_OUTPUT
                   WORK_OUTPUT_RELATIONSHIP
                   WORK_REQUEST)))


(DEFTYPE-CLASS "PROJECT_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_REALIZATION
                   ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                   ACTIVITY_METHOD_RELATIONSHIP
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   BREAKDOWN
                   INDEPENDENT_PROPERTY
                   INTERFACE_CONNECTION
                   INTERFACE_DEFINITION_CONNECTION
                   LESSONS_LEARNED
                   ORGANIZATION
                   PERSON_IN_ORGANIZATION
                   PRODUCT
                   PRODUCT_CONCEPT
                   PRODUCT_CONFIGURATION
                   PRODUCT_GROUP
                   PRODUCT_GROUP_MEMBERSHIP
                   PRODUCT_GROUP_RELATIONSHIP
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   REPRESENTATION
                   RISK_ANALYSIS
                   RISK_COMMUNICATION
                   RISK_CONTROL
                   RISK_EVALUATION
                   RISK_IDENTIFICATION
                   RISK_IMPACT_ASSIGNMENT
                   RISK_PERCEPTION_CONTEXT
                   RISK_PERCEPTION_SOURCE_ASSIGNMENT
                   RISK_RELATIONSHIP
                   TASK_ELEMENT
                   TASK_IO
                   TASK_METHOD
                   TASK_METHOD_ASSIGNMENT
                   TASK_METHOD_VERSION
                   TASK_METHOD_VERSION_ASSIGNMENT
                   TASK_OBJECTIVE
                   VIEW_DEFINITION_RELATIONSHIP)))


(DEFTYPE-CLASS "AFFECTED_ITEM_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_PROPERTY
                   ANALYSIS_ASSIGNMENT
                   APPROVAL_ASSIGNMENT
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSIGNED_PROPERTY
                   BEHAVIOUR_DESCRIPTION_ASSOCIATION
                   CERTIFICATION_ASSIGNMENT
                   CONTRACT
                   CONTRACT_RELATIONSHIP
                   DOCUMENT
                   DOCUMENT_ASSIGNMENT
                   DOCUMENT_DEFINITION
                   DOCUMENT_VERSION
                   EVENT_ASSIGNMENT
                   FILE
                   GROUP
                   INFORMATION_USAGE_RIGHT
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_CONNECTION
                   ISSUE
                   JUSTIFICATION_ASSIGNMENT
                   LESSONS_LEARNED
                   ORGANIZATION
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   PERSON
                   PERSON_IN_ORGANIZATION
                   PRODUCT
                   PRODUCT_CONFIGURATION
                   PRODUCT_GROUP
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROJECT_ASSIGNMENT
                   RESOURCE_ITEM
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_PROPERTY
                   RISK
                   RISK_PERCEPTION_SOURCE_ASSIGNMENT
                   STATE
                   STATE_DEFINITION
                   VERIFICATION
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_REQUEST)))


(DEFTYPE-CLASS "VERSION_OR_DEFINITION" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(PRODUCT_VERSION PRODUCT_VIEW_DEFINITION)))


(DEFTYPE-CLASS "POSITION_CONTEXT_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ORGANIZATION POSITION_GROUP PROJECT)))


(DEFTYPE-CLASS "POSITION_GROUP_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ANALYSIS_DISCIPLINE_DEFINITION
                   APPROVING_PERSON_ORGANIZATION
                   DOCUMENT_DEFINITION
                   EVENT
                   EVIDENCE
                   INTERFACE_DEFINITION_CONNECTION
                   ISSUE_CONSEQUENCE
                   LOCATION
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   PRODUCT
                   PRODUCT_CONCEPT
                   PRODUCT_CONFIGURATION
                   PRODUCT_GROUP
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   REQUIRED_RESOURCE
                   RESOURCE_EVENT
                   RISK_IMPACT_ASSIGNMENT
                   RISK_PERCEPTION_SOURCE_ASSIGNMENT
                   STATE
                   VERIFICATION
                   WORK_ORDER
                   WORK_OUTPUT_ASSIGNMENT
                   WORK_REQUEST)))


(DEFTYPE-CLASS "POSITION_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ANALYSIS_DISCIPLINE_DEFINITION
                   APPROVING_PERSON_ORGANIZATION
                   DOCUMENT_DEFINITION
                   EVENT
                   EVIDENCE
                   INTERFACE_DEFINITION_CONNECTION
                   ISSUE_CONSEQUENCE
                   LOCATION
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   PRODUCT
                   PRODUCT_CONCEPT
                   PRODUCT_CONFIGURATION
                   PRODUCT_GROUP
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   REQUIRED_RESOURCE
                   RESOURCE_EVENT
                   RISK_IMPACT_ASSIGNMENT
                   RISK_PERCEPTION_SOURCE_ASSIGNMENT
                   STATE
                   VERIFICATION
                   WORK_ORDER
                   WORK_OUTPUT_ASSIGNMENT
                   WORK_REQUEST)))


(DEFTYPE-CLASS "POSITION_PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_SELECT"
               :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ORGANIZATION PERSON PERSON_IN_ORGANIZATION)))


(DEFTYPE-CLASS "POSITION_TYPE_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ANALYSIS_DISCIPLINE_DEFINITION
                   APPROVING_PERSON_ORGANIZATION
                   DOCUMENT_DEFINITION
                   EVENT
                   EVIDENCE
                   INTERFACE_DEFINITION_CONNECTION
                   ISSUE_CONSEQUENCE
                   LOCATION
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   PRODUCT
                   PRODUCT_CONCEPT
                   PRODUCT_CONFIGURATION
                   PRODUCT_GROUP
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   REQUIRED_RESOURCE
                   RESOURCE_EVENT
                   RISK_IMPACT_ASSIGNMENT
                   RISK_PERCEPTION_SOURCE_ASSIGNMENT
                   STATE
                   VERIFICATION
                   WORK_ORDER
                   WORK_OUTPUT_ASSIGNMENT
                   WORK_REQUEST)))


(DEFTYPE-CLASS "DEFINED_ATTRIBUTES" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(EXPERIENCE_TYPE
                   ORGANIZATION
                   PERSON_IN_ORGANIZATION
                   POSITION_GROUP
                   POSITION_GROUP_ROLE
                   POSITION_ROLE
                   POSITION_TYPE_ROLE
                   QUALIFICATION_TYPE
                   TYPE_OF_PERSON_ASSIGNMENT
                   WORK_OUTPUT_ASSIGNMENT)))


(DEFTYPE-CLASS "TYPE_OF_PERSON_ITEM_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_ASSIGNMENT
                   ANALYSIS_ASSIGNMENT
                   BEHAVIOUR_DESCRIPTION_ASSOCIATION
                   BEHAVIOUR_MODEL
                   DOCUMENT_ASSIGNMENT
                   EVIDENCE
                   EXPERIENCE_GAINED
                   EXPERIENCE_INSTANCE
                   EXPERIENCE_TYPE
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_DEFINITION_FOR
                   OBSERVATION_CONSEQUENCE
                   PERSON
                   PERSON_IN_ORGANIZATION
                   POSITION
                   POSITION_GROUP
                   POSITION_TYPE
                   PRODUCT
                   PRODUCT_VERSION
                   PROJECT
                   PROJECT_ASSIGNMENT
                   REQUIRED_RESOURCE_ASSIGNMENT
                   RESOURCE_ITEM_ASSIGNMENT
                   RISK_ANALYSIS
                   RISK_IMPACT_ASSIGNMENT
                   RISK_TREATMENT
                   VERIFICATION
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_ORDER
                   WORK_OUTPUT_ASSIGNMENT
                   WORK_REQUEST)))


(DEFTYPE-CLASS "PRODUCT_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(PRODUCT
                   PRODUCT_AS_INDIVIDUAL
                   PRODUCT_CONCEPT
                   PRODUCT_GROUP
                   PRODUCT_VERSION)))


(DEFTYPE-CLASS "EFFECTIVITY_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_ASSIGNMENT
                   ACTIVITY_PROPERTY
                   ACTIVITY_PROPERTY_REPRESENTATION
                   ADDRESS_ASSIGNMENT
                   ALTERNATE_PART_RELATIONSHIP
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   ANALYSIS_ASSIGNMENT
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   APPLIED_INFORMATION_USAGE_RIGHT
                   APPLIED_STATE_ASSIGNMENT
                   APPLIED_STATE_DEFINITION_ASSIGNMENT
                   APPROVAL_ASSIGNMENT
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   ASSIGNED_PROPERTY
                   ATTRIBUTE_TRANSLATION_ASSIGNMENT
                   BREAKDOWN
                   BREAKDOWN_ELEMENT
                   BREAKDOWN_ELEMENT_DEFINITION
                   BREAKDOWN_ELEMENT_REALIZATION
                   BREAKDOWN_ELEMENT_USAGE
                   BREAKDOWN_ELEMENT_VERSION
                   BREAKDOWN_OF
                   BREAKDOWN_VERSION
                   CERTIFICATION_ASSIGNMENT
                   CLASSIFICATION_ASSIGNMENT
                   CONDITION_ASSIGNMENT
                   CONDITION_RELATIONSHIP
                   CONSTRAINED_GENERAL_PARAMETER_RELATIONSHIP
                   CONTRACT_ASSIGNMENT
                   DATE_OR_DATE_TIME_ASSIGNMENT
                   DOCUMENT
                   DOCUMENT_ASSIGNMENT
                   DOCUMENT_DEFINITION
                   DOCUMENT_DEFINITION_RELATIONSHIP
                   DOCUMENT_LOCATION_IDENTIFICATION
                   DOCUMENT_VERSION
                   EFFECTIVITY_ASSIGNMENT
                   EVENT
                   EVENT_ASSIGNMENT
                   EVIDENCE
                   EXTERNAL_SOURCE_IDENTIFICATION
                   FILE
                   FILE_RELATIONSHIP
                   IDENTIFICATION_ASSIGNMENT
                   INDEPENDENT_PROPERTY_REPRESENTATION
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_FOR
                   ISSUE
                   ISSUE_CONSEQUENCE
                   JUSTIFICATION
                   JUSTIFICATION_ASSIGNMENT
                   JUSTIFICATION_RELATIONSHIP
                   JUSTIFICATION_SUPPORT_ASSIGNMENT
                   LOCATION_ASSIGNMENT
                   MAKE_FROM_RELATIONSHIP
                   MANAGED_RESOURCE_RELATIONSHIP
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   ORGANIZATION_RELATIONSHIP
                   PART
                   PART_VERSION
                   PART_VIEW_DEFINITION
                   PERSON_IN_ORGANIZATION
                   PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
                   POSITION_ASSIGNMENT
                   POSITION_GROUP_ASSIGNMENT
                   POSITION_POSITION_TYPE_ASSIGNMENT
                   POSITION_TYPE_ASSIGNMENT
                   PRODUCT
                   PRODUCT_AS_INDIVIDUAL
                   PRODUCT_AS_INDIVIDUAL_VERSION
                   PRODUCT_AS_INDIVIDUAL_VIEW
                   PRODUCT_CONFIGURATION
                   PRODUCT_DESIGN_TO_INDIVIDUAL
                   PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL
                   PRODUCT_GROUP
                   PRODUCT_GROUP_MEMBERSHIP
                   PRODUCT_GROUP_RELATIONSHIP
                   PRODUCT_PLANNED_TO_REALIZED
                   PRODUCT_RELATIONSHIP
                   PRODUCT_VERSION
                   PRODUCT_VERSION_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   PROJECT_ASSIGNMENT
                   REQUIRED_RESOURCE_ASSIGNMENT
                   REQUIRED_RESOURCE_RELATIONSHIP
                   REQUIREMENT
                   REQUIREMENT_ASSIGNMENT
                   REQUIREMENT_COLLECTION_RELATIONSHIP
                   REQUIREMENT_SOURCE
                   REQUIREMENT_VERSION
                   REQUIREMENT_VERSION_RELATIONSHIP
                   REQUIREMENT_VIEW_DEFINITION
                   RESOURCE_ITEM_ASSIGNMENT
                   RESOURCE_ITEM_RELATIONSHIP
                   RESOURCE_PROPERTY
                   RESOURCE_PROPERTY_REPRESENTATION
                   RISK_PERCEPTION_SOURCE_ASSIGNMENT
                   RISK_TREATMENT
                   SECURITY_CLASSIFICATION_ASSIGNMENT
                   SELECTED_ITEM_ASSIGNMENT
                   STATE_DEFINITION_RELATIONSHIP
                   TYPE_OF_PERSON_ASSIGNMENT
                   TYPE_OF_PERSON_DEFINITION_RELATIONSHIP
                   VERIFICATION
                   VIEW_DEFINITION_RELATIONSHIP
                   VIEW_DEFINITION_USAGE
                   WORK_ORDER
                   WORK_OUTPUT_ASSIGNMENT
                   WORK_OUTPUT_RELATIONSHIP)))


(DEFTYPE-CLASS "SELECTED_ITEM_CONTEXT_ITEMS" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(BREAKDOWN
                   CONTRACT
                   CONTRACT_RELATIONSHIP
                   PART
                   PART_VERSION
                   PRODUCT_AS_INDIVIDUAL
                   PRODUCT_AS_INDIVIDUAL_VERSION
                   PRODUCT_CONCEPT
                   PRODUCT_CONFIGURATION
                   PROJECT)))


(DEFTYPE-CLASS "SELECTED_ITEM_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_DEFINITION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_CONNECTION
                   PRODUCT
                   PRODUCT_VERSION)))


(DEFTYPE-CLASS "STATE_DEFINITION_OF_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ALTERNATE_PART_RELATIONSHIP
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   ANALYSIS_ASSIGNMENT
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   ASSUMPTION
                   BEHAVIOUR_DESCRIPTION_ASSOCIATION
                   BREAKDOWN
                   BREAKDOWN_ELEMENT
                   BREAKDOWN_ELEMENT_DEFINITION
                   BREAKDOWN_ELEMENT_REALIZATION
                   BREAKDOWN_ELEMENT_USAGE
                   BREAKDOWN_ELEMENT_VERSION
                   CERTIFICATION
                   CONTRACT
                   CONTRACT_RELATIONSHIP
                   DIGITAL_DOCUMENT_DEFINITION
                   DIGITAL_FILE
                   DOCUMENT
                   DOCUMENT_VERSION
                   ENVIRONMENT_DEFINITION_VIEW
                   EVENT
                   FILE
                   FILE_LOCATION_IDENTIFICATION
                   HARDCOPY
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_DEFINITION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_CONNECTOR_VERSION
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_SPECIFICATION
                   INTERFACE_SPECIFICATION_DEFINITION
                   INTERFACE_SPECIFICATION_VERSION
                   ISSUE_REFERENCE
                   LESSONS_LEARNED
                   LOCATION
                   MANAGED_RESOURCE
                   OBSERVATION_CONSEQUENCE
                   ORGANIZATION
                   PART
                   PART_VERSION
                   PART_VIEW_DEFINITION
                   PERSON_IN_ORGANIZATION
                   PHYSICAL_DOCUMENT_DEFINITION
                   PRODUCT
                   PRODUCT_AS_INDIVIDUAL
                   PRODUCT_AS_INDIVIDUAL_VIEW
                   PRODUCT_AS_PLANNED
                   PRODUCT_AS_REALIZED
                   PRODUCT_CONCEPT
                   PRODUCT_CONFIGURATION
                   PRODUCT_GROUP
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   RESOURCE_AS_REALIZED
                   RESOURCE_AS_REALIZED_ASSIGNMENT
                   RESOURCE_AS_REALIZED_BY_RESOURCE_ITEM
                   RESOURCE_AS_REALIZED_RELATIONSHIP
                   RESOURCE_EVENT
                   RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP
                   RESOURCE_EVENT_RELATIONSHIP
                   RESOURCE_GROUP_RELATIONSHIP
                   RESOURCE_ITEM
                   RESOURCE_ITEM_ASSIGNMENT
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_ITEM_RELATIONSHIP
                   RISK
                   RISK_ATTITUDE
                   RISK_CONTROL
                   RISK_IMPACT
                   RISK_IMPACT_ASSIGNMENT
                   RISK_PERCEPTION_CONTEXT
                   RISK_TREATMENT
                   SCHEME
                   SCHEME_VERSION
                   SECURITY_CLASSIFICATION
                   STATE
                   TASK_IO_HIERARCHY
                   VERIFICATION
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_ORDER
                   WORK_REQUEST)))


(DEFTYPE-CLASS "STATE_OF_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ALTERNATE_PART_RELATIONSHIP
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   ANALYSIS_ASSIGNMENT
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_STATE_DEFINITION_ASSIGNMENT
                   APPROVAL
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   ASSUMPTION
                   BEHAVIOUR_DESCRIPTION_ASSOCIATION
                   BREAKDOWN
                   BREAKDOWN_ELEMENT
                   BREAKDOWN_ELEMENT_DEFINITION
                   BREAKDOWN_ELEMENT_REALIZATION
                   BREAKDOWN_ELEMENT_USAGE
                   BREAKDOWN_ELEMENT_VERSION
                   BREAKDOWN_VERSION
                   CERTIFICATION
                   CONTRACT
                   CONTRACT_RELATIONSHIP
                   DIGITAL_DOCUMENT_DEFINITION
                   DIGITAL_FILE
                   DOCUMENT
                   DOCUMENT_VERSION
                   ENVIRONMENT_DEFINITION_VIEW
                   EVENT
                   EVIDENCE
                   FILE
                   FILE_LOCATION_IDENTIFICATION
                   INFORMATION_USAGE_RIGHT
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_DEFINITION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_CONNECTOR_VERSION
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_SPECIFICATION
                   INTERFACE_SPECIFICATION_DEFINITION
                   INTERFACE_SPECIFICATION_VERSION
                   JUSTIFICATION
                   LOCATION
                   MANAGED_RESOURCE
                   OBSERVATION
                   OBSERVATION_CONSEQUENCE
                   OBSERVED_ENVIRONMENT_VIEW
                   ORGANIZATION
                   PART
                   PART_VERSION
                   PART_VIEW_DEFINITION
                   PERSON_IN_ORGANIZATION
                   PHYSICAL_DOCUMENT_DEFINITION
                   PRODUCT
                   PRODUCT_AS_INDIVIDUAL
                   PRODUCT_AS_INDIVIDUAL_VIEW
                   PRODUCT_AS_PLANNED
                   PRODUCT_AS_REALIZED
                   PRODUCT_CONCEPT
                   PRODUCT_CONFIGURATION
                   PRODUCT_GROUP
                   PRODUCT_VERSION
                   PROJECT
                   RESOURCE_AS_REALIZED
                   RESOURCE_AS_REALIZED_ASSIGNMENT
                   RESOURCE_AS_REALIZED_BY_RESOURCE_ITEM
                   RESOURCE_AS_REALIZED_RELATIONSHIP
                   RESOURCE_EVENT
                   RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP
                   RESOURCE_EVENT_RELATIONSHIP
                   RESOURCE_GROUP_RELATIONSHIP
                   RESOURCE_ITEM
                   RESOURCE_ITEM_ASSIGNMENT
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_ITEM_RELATIONSHIP
                   RISK_ANALYSIS
                   RISK_ATTITUDE
                   RISK_COMMUNICATION
                   RISK_CONTROL
                   RISK_EVALUATION
                   RISK_IMPACT
                   RISK_IMPACT_ASSIGNMENT
                   RISK_PERCEPTION
                   RISK_TREATMENT
                   SCHEME
                   SCHEME_VERSION
                   SECURITY_CLASSIFICATION
                   STATE
                   STATE_ASSESSMENT
                   STATE_DEFINITION
                   STATE_DEFINITION_RELATIONSHIP
                   STATE_RELATIONSHIP
                   STATE_ROLE
                   TASK_METHOD_VERSION
                   TASK_OBJECTIVE
                   TYPE_OF_PERSON
                   VERIFICATION
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_ORDER
                   WORK_REQUEST)))


(DEFTYPE-CLASS "RESOURCE_ASSIGNMENT_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY_METHOD
                   ANALYSIS_ASSIGNMENT
                   CONTRACT
                   CONTRACT_RELATIONSHIP
                   ENVIRONMENT_DEFINITION_VIEW
                   EVENT
                   EVIDENCE
                   INTERFACE_CONNECTOR_OCCURRENCE
                   LOCATION
                   MANAGED_RESOURCE
                   OBSERVED_ENVIRONMENT_VIEW
                   PART
                   PART_VERSION
                   PART_VIEW_DEFINITION
                   PERSON_IN_ORGANIZATION
                   POSITION_GROUP_ASSIGNMENT
                   PRODUCT
                   PRODUCT_AS_INDIVIDUAL
                   PRODUCT_AS_INDIVIDUAL_VERSION
                   PRODUCT_AS_INDIVIDUAL_VIEW
                   PRODUCT_GROUP
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   RISK_ACCEPTANCE
                   RISK_ANALYSIS
                   RISK_ASSESSMENT
                   RISK_COMMUNICATION
                   RISK_CONTROL
                   RISK_ESTIMATION
                   RISK_EVALUATION
                   RISK_IDENTIFICATION
                   RISK_PERCEPTION_SOURCE_ASSIGNMENT
                   RISK_TREATMENT
                   WORK_ORDER)))


(DEFTYPE-CLASS "RESOURCE_ITEM_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(DOCUMENT
                   DOCUMENT_DEFINITION
                   DOCUMENT_VERSION
                   FILE
                   LOCATION
                   ORGANIZATION
                   ORGANIZATION_TYPE
                   PART
                   PART_VERSION
                   PART_VIEW_DEFINITION
                   PERSON
                   PERSON_IN_ORGANIZATION
                   POSITION
                   POSITION_TYPE
                   PRODUCT
                   PRODUCT_AS_INDIVIDUAL
                   PRODUCT_AS_INDIVIDUAL_VERSION
                   PRODUCT_AS_INDIVIDUAL_VIEW
                   PRODUCT_GROUP
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   TYPE_OF_PERSON
                   WORK_ORDER)))


(DEFTYPE-CLASS "LESSONS_LEARNED_SELECT" :AP233
  :TYPE-DESCRIPTOR
  'DOCUMENTED_ELEMENT_SELECT)


(DEFTYPE-CLASS "RISK_ACTIVITY" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(RISK_ACCEPTANCE
                   RISK_ANALYSIS
                   RISK_ASSESSMENT
                   RISK_COMMUNICATION
                   RISK_CONTROL
                   RISK_ESTIMATION
                   RISK_EVALUATION
                   RISK_IDENTIFICATION
                   RISK_TREATMENT)))


(DEFTYPE-CLASS "RISK_COMMUNICATION_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ASSIGNED_PROPERTY
                   EVENT_ASSIGNMENT
                   LESSONS_LEARNED
                   RISK
                   RISK_ASSESSMENT
                   RISK_CONSEQUENCE
                   RISK_CONTROL
                   RISK_ESTIMATION
                   RISK_EVALUATION
                   RISK_IDENTIFICATION
                   RISK_IMPACT_ASSIGNMENT
                   RISK_PERCEPTION
                   RISK_PERCEPTION_CONTEXT
                   RISK_PERCEPTION_RELATIONSHIP
                   RISK_PERCEPTION_SOURCE_ASSIGNMENT
                   RISK_TREATMENT)))


(DEFTYPE-CLASS "RISK_CRITERIA_SELECT" :AP233
  :TYPE-DESCRIPTOR
  'ACTIVITY_ITEM)


(DEFTYPE-CLASS "RISK_ESTIMATION_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ASSIGNED_PROPERTY
                   EVENT_ASSIGNMENT
                   RISK_CONSEQUENCE
                   RISK_IMPACT_ASSIGNMENT)))


(DEFTYPE-CLASS "RISK_IMPACT_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                   ACTIVITY_PROPERTY
                   ACTIVITY_RELATIONSHIP
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_STATE_ASSIGNMENT
                   APPROVAL
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   BREAKDOWN_CONTEXT
                   BREAKDOWN_OF
                   CONDITION
                   DEFINED_STATE_RELATIONSHIP
                   EVENT
                   EVENT_RELATIONSHIP
                   EVIDENCE
                   INDEPENDENT_PROPERTY
                   INDEPENDENT_PROPERTY_RELATIONSHIP
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_CONNECTION
                   ISSUE
                   ISSUE_CONSEQUENCE
                   MANAGED_RESOURCE
                   MANAGED_RESOURCE_RELATIONSHIP
                   MARKET
                   ORGANIZATION
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   PERSON
                   PERSON_IN_ORGANIZATION
                   PRODUCT
                   PRODUCT_VERSION
                   PRODUCT_VERSION_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   PROJECT_ASSIGNMENT
                   REPRESENTATION
                   REPRESENTATION_ITEM
                   REQUIRED_RESOURCE
                   REQUIRED_RESOURCE_ASSIGNMENT
                   REQUIREMENT_ASSIGNMENT
                   REQUIREMENT_SOURCE
                   RESOURCE_EVENT
                   RESOURCE_ITEM
                   RESOURCE_ITEM_ASSIGNMENT
                   RESOURCE_ITEM_RELATIONSHIP
                   RESOURCE_PROPERTY
                   STATE
                   STATE_ASSERTION
                   STATE_ASSESSMENT
                   STATE_DEFINITION_RELATIONSHIP
                   STATE_RELATIONSHIP
                   TASK_METHOD_STATE_RELATIONSHIP
                   TASK_OBJECTIVE
                   TASK_OBJECTIVE_STATE_RELATIONSHIP
                   VERIFICATION
                   VERIFICATION_RELATIONSHIP
                   VIEW_DEFINITION_RELATIONSHIP)))


(DEFTYPE-CLASS "RISK_PERCEPTION_SOURCE_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_PROPERTY
                   ACTIVITY_RELATIONSHIP
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   APPLIED_STATE_ASSIGNMENT
                   APPROVAL
                   APPROVING_PERSON_ORGANIZATION
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   ASSIGNED_PROPERTY
                   BREAKDOWN_CONTEXT
                   BREAKDOWN_OF
                   CERTIFICATION_ASSIGNMENT
                   CONDITION
                   CONDITION_EVALUATION_PARAMETER
                   CONTRACT
                   CONTRACT_ASSIGNMENT
                   CONTRACT_RELATIONSHIP
                   DEFINED_STATE_RELATIONSHIP
                   DOCUMENT_ASSIGNMENT
                   EFFECTIVITY_ASSIGNMENT
                   EVENT
                   EVENT_ASSIGNMENT
                   EVENT_RELATIONSHIP
                   EVIDENCE
                   EXPERIENCE_GAINED
                   EXPERIENCE_INSTANCE
                   EXPRESSION_ASSIGNMENT
                   FILE
                   GENERIC_EXPRESSION
                   INDEPENDENT_PROPERTY
                   INDEPENDENT_PROPERTY_RELATIONSHIP
                   INFORMATION_RIGHT
                   INFORMATION_USAGE_RIGHT
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_DEFINITION_FOR
                   JUSTIFICATION
                   JUSTIFICATION_ASSIGNMENT
                   JUSTIFICATION_RELATIONSHIP
                   JUSTIFICATION_SUPPORT_ASSIGNMENT
                   MANAGED_RESOURCE
                   MANAGED_RESOURCE_RELATIONSHIP
                   MARKET
                   OBSERVATION
                   OBSERVATION_CONSEQUENCE
                   OBSERVATION_RELATIONSHIP
                   ORGANIZATION
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   PERSON
                   PERSON_IN_ORGANIZATION
                   PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
                   PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
                   POSITION
                   POSITION_ASSIGNMENT
                   POSITION_GROUP
                   POSITION_GROUP_ASSIGNMENT
                   POSITION_GROUP_RELATIONSHIP
                   POSITION_POSITION_TYPE_ASSIGNMENT
                   POSITION_RELATIONSHIP
                   POSITION_ROLE
                   POSITION_TYPE
                   POSITION_TYPE_ASSIGNMENT
                   POSITION_TYPE_ROLE
                   PRODUCT
                   PRODUCT_CONCEPT
                   PRODUCT_DESIGN_TO_INDIVIDUAL
                   PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL
                   PRODUCT_GROUP
                   PRODUCT_GROUP_RELATIONSHIP
                   PRODUCT_PLANNED_TO_REALIZED
                   PRODUCT_VERSION
                   PRODUCT_VERSION_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   PROJECT_ASSIGNMENT
                   PROJECT_RELATIONSHIP
                   QUALIFICATION_ASSIGNMENT
                   QUALIFICATION_TYPE
                   REPRESENTATION
                   REPRESENTATION_ITEM
                   REQUIRED_RESOURCE
                   REQUIRED_RESOURCE_ASSIGNMENT
                   REQUIREMENT_ASSIGNMENT
                   REQUIREMENT_SOURCE
                   RESOURCE_AS_REALIZED
                   RESOURCE_EVENT
                   RESOURCE_ITEM
                   RESOURCE_ITEM_ASSIGNMENT
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_ITEM_RELATIONSHIP
                   RESOURCE_PROPERTY
                   SELECTED_ITEM
                   SELECTED_ITEM_ASSIGNMENT
                   STATE
                   STATE_ASSERTION
                   STATE_ASSESSMENT
                   STATE_DEFINITION
                   STATE_DEFINITION_RELATIONSHIP
                   STATE_RELATIONSHIP
                   TASK_METHOD_STATE_RELATIONSHIP
                   TASK_OBJECTIVE
                   TASK_OBJECTIVE_STATE_RELATIONSHIP
                   TYPE_OF_PERSON
                   TYPE_OF_PERSON_ASSIGNMENT
                   TYPE_OF_PERSON_DEFINITION
                   TYPE_OF_PERSON_DEFINITION_RELATIONSHIP
                   TYPE_OF_PERSON_DEFINITION_REQUIRED_ATTRIBUTES_RELATIONSHIP
                   VERIFICATION
                   VERIFICATION_RELATIONSHIP
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_ORDER
                   WORK_OUTPUT
                   WORK_OUTPUT_ASSIGNMENT)))


(DEFTYPE-CLASS "RISK_TREATMENT_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ASSIGNED_PROPERTY
                   RISK_CONSEQUENCE
                   RISK_IMPACT
                   RISK_PERCEPTION
                   RISK_PERCEPTION_RELATIONSHIP
                   RISK_RELATIONSHIP)))


(DEFTYPE-CLASS "ASSIGNED_DOCUMENT_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(DOCUMENT DOCUMENT_DEFINITION DOCUMENT_VERSION FILE)))


(DEFTYPE-CLASS "DOCUMENTED_ELEMENT_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_REALIZATION
                   ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                   ACTIVITY_METHOD_RELATIONSHIP
                   ACTIVITY_PROPERTY
                   ACTIVITY_PROPERTY_REPRESENTATION
                   ACTIVITY_RELATIONSHIP
                   ADDRESS_ASSIGNMENT
                   ALIAS_IDENTIFICATION
                   ALTERNATE_PART_RELATIONSHIP
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   ANALYSIS
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   APPLIED_INFORMATION_USAGE_RIGHT
                   APPROVAL
                   APPROVAL_ASSIGNMENT
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   ASSIGNED_PROPERTY
                   BEHAVIOUR_VERSION
                   BREAKDOWN
                   BREAKDOWN_CONTEXT
                   BREAKDOWN_ELEMENT
                   BREAKDOWN_ELEMENT_REALIZATION
                   BREAKDOWN_ELEMENT_USAGE
                   BREAKDOWN_ELEMENT_VERSION
                   CERTIFICATION
                   CERTIFICATION_ASSIGNMENT
                   CLASS
                   CLASSIFICATION_ASSIGNMENT
                   CONDITION
                   CONDITION_ASSIGNMENT
                   CONDITION_EVALUATION
                   CONDITION_PARAMETER
                   CONTRACT
                   CONTRACT_ASSIGNMENT
                   CONTRACT_RELATIONSHIP
                   DATE_OR_DATE_TIME_ASSIGNMENT
                   DIGITAL_DOCUMENT_DEFINITION
                   DIGITAL_FILE
                   DOCUMENT
                   DOCUMENT_ASSIGNMENT
                   DOCUMENT_DEFINITION
                   DOCUMENT_DEFINITION_RELATIONSHIP
                   DOCUMENT_VERSION
                   EFFECTIVITY
                   EFFECTIVITY_ASSIGNMENT
                   ENVIRONMENT_DEFINITION_VIEW
                   EVENT_ASSIGNMENT
                   EVIDENCE
                   EXPERIENCE_INSTANCE
                   EXPERIENCE_TYPE
                   EXTERNAL_ITEM_IDENTIFICATION
                   GROUP
                   GROUP_RELATIONSHIP
                   HARDCOPY
                   IDENTIFICATION_ASSIGNMENT
                   INDEPENDENT_PROPERTY
                   INDEPENDENT_PROPERTY_RELATIONSHIP
                   INDEPENDENT_PROPERTY_REPRESENTATION
                   INFORMATION_RIGHT
                   INFORMATION_USAGE_RIGHT
                   INFORMATION_USAGE_RIGHT_RELATIONSHIP
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_DEFINITION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_CONNECTOR_VERSION
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_SPECIFICATION
                   INTERFACE_SPECIFICATION_VERSION
                   JUSTIFICATION
                   JUSTIFICATION_ASSIGNMENT
                   JUSTIFICATION_RELATIONSHIP
                   JUSTIFICATION_SUPPORT_ASSIGNMENT
                   LOCATION
                   LOCATION_ASSIGNMENT
                   LOCATION_RELATIONSHIP
                   LOCATION_REPRESENTATION
                   MANAGED_RESOURCE
                   MARKET
                   OBSERVATION
                   OBSERVATION_CONSEQUENCE
                   OBSERVED_ENVIRONMENT_VIEW
                   ORGANIZATION
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   ORGANIZATION_RELATIONSHIP
                   ORGANIZATION_TYPE
                   ORGANIZATIONAL_LOCATION_IDENTIFICATION
                   PART
                   PART_VERSION
                   PART_VIEW_DEFINITION
                   PERSON
                   PERSON_IN_ORGANIZATION
                   PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
                   PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
                   PHYSICAL_DOCUMENT_DEFINITION
                   POSITION
                   POSITION_GROUP
                   POSITION_TYPE
                   POSITION_TYPE_ASSIGNMENT
                   POSITION_TYPE_ROLE
                   PROBABILITY_DISTRIBUTION
                   PRODUCT
                   PRODUCT_AS_PLANNED
                   PRODUCT_AS_REALIZED
                   PRODUCT_CONCEPT
                   PRODUCT_CONFIGURATION
                   PRODUCT_DESIGN_TO_INDIVIDUAL
                   PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL
                   PRODUCT_GROUP
                   PRODUCT_GROUP_MEMBERSHIP
                   PRODUCT_GROUP_RELATIONSHIP
                   PRODUCT_PLANNED_TO_REALIZED
                   PRODUCT_RELATIONSHIP
                   PRODUCT_VERSION
                   PRODUCT_VERSION_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   PROJECT_ASSIGNMENT
                   PROPERTY_REPRESENTATION
                   QUALIFICATION_ASSIGNMENT
                   QUALIFICATION_TYPE
                   REGIONAL_GRID_LOCATION_REPRESENTATION
                   REPRESENTATION
                   REPRESENTATION_ITEM
                   REQUIRED_RESOURCE
                   REQUIRED_RESOURCE_ASSIGNMENT
                   REQUIRED_RESOURCE_RELATIONSHIP
                   REQUIREMENT
                   REQUIREMENT_ASSIGNMENT
                   REQUIREMENT_SOURCE
                   REQUIREMENT_VERSION
                   RESOURCE_AS_REALIZED
                   RESOURCE_EVENT
                   RESOURCE_ITEM
                   RESOURCE_ITEM_ASSIGNMENT
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_ITEM_RELATIONSHIP
                   RESOURCE_PROPERTY
                   RESOURCE_PROPERTY_REPRESENTATION
                   RISK
                   RISK_ANALYSIS
                   RISK_IMPACT_ASSIGNMENT
                   RISK_PERCEPTION_SOURCE_ASSIGNMENT
                   RISK_TREATMENT
                   SCHEME_ENTRY
                   SECURITY_CLASSIFICATION
                   SECURITY_CLASSIFICATION_ASSIGNMENT
                   SELECTED_ITEM
                   SHAPE_ELEMENT
                   SHAPE_ELEMENT_RELATIONSHIP
                   STATE
                   STATE_ASSERTION
                   STATE_ASSESSMENT
                   STATE_DEFINITION
                   TASK_ELEMENT
                   TASK_ELEMENT_RELATIONSHIP
                   TASK_ELEMENT_STATE_RELATIONSHIP
                   TASK_IO
                   TASK_METHOD
                   TASK_METHOD_ASSIGNMENT
                   TASK_METHOD_RELATIONSHIP
                   TASK_METHOD_STATE_RELATIONSHIP
                   TASK_METHOD_VERSION
                   TASK_METHOD_VERSION_ASSIGNMENT
                   TASK_METHOD_VERSION_RELATIONSHIP
                   TASK_OBJECTIVE
                   TASK_OBJECTIVE_STATE_RELATIONSHIP
                   TYPE_OF_PERSON
                   TYPE_OF_PERSON_DEFINITION
                   VERIFICATION
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_ORDER
                   WORK_OUTPUT
                   WORK_REQUEST)))


(DEFTYPE-CLASS "EVENT_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_RELATIONSHIP
                   ACTIVITY_PROPERTY
                   ACTIVITY_RELATIONSHIP
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   APPLIED_STATE_ASSIGNMENT
                   APPROVAL
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   CERTIFICATION
                   CONDITION
                   CONDITION_EVALUATION_PARAMETER
                   CONTRACT
                   CONTRACT_ASSIGNMENT
                   CONTRACT_RELATIONSHIP
                   EVIDENCE
                   GROUP
                   INDEPENDENT_PROPERTY
                   INDEPENDENT_PROPERTY_RELATIONSHIP
                   ISSUE
                   JUSTIFICATION
                   MANAGED_RESOURCE
                   MARKET
                   OBSERVATION
                   PRODUCT
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   PROJECT_ASSIGNMENT
                   REPRESENTATION
                   REPRESENTATION_ITEM
                   REQUIRED_RESOURCE
                   REQUIRED_RESOURCE_ASSIGNMENT
                   RESOURCE_EVENT
                   RESOURCE_PROPERTY
                   RISK
                   RISK_IMPACT_ASSIGNMENT
                   RISK_PERCEPTION
                   STATE
                   STATE_DEFINITION
                   STATE_DEFINITION_RELATIONSHIP
                   STATE_RELATIONSHIP
                   TASK_METHOD_STATE_RELATIONSHIP
                   TASK_OBJECTIVE
                   TASK_OBJECTIVE_STATE_RELATIONSHIP
                   VERIFICATION
                   VERIFICATION_RELATIONSHIP
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_REQUEST)))


(DEFTYPE-CLASS "DATE_OR_EVENT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(CALENDAR_DATE DATE_TIME EVENT)))


(DEFTYPE-CLASS "DESCRIPTIVE_OR_NUMERICAL" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(DESCRIPTIVE_DOCUMENT_PROPERTY
                   NUMERICAL_DOCUMENT_PROPERTY)))


(DEFTYPE-CLASS "DOCUMENT_PROPERTY_ITEM" :AP233
  :TYPE-DESCRIPTOR
  'PROPERTY_ASSIGNMENT_SELECT)


(DEFTYPE-CLASS "EXTERNAL_IDENTIFICATION_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(DOCUMENT_DEFINITION
                   FILE
                   ORGANIZATION
                   PERSON_IN_ORGANIZATION
                   PRODUCT
                   PROJECT
                   REQUIRED_RESOURCE
                   WORK_OUTPUT)))


(DEFTYPE-CLASS "INFORMATION_USAGE_RIGHT_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY_METHOD
                   ACTIVITY_PROPERTY
                   ALTERNATE_PART_RELATIONSHIP
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   ANALYSIS_ASSIGNMENT
                   ANALYSIS_DISCIPLINE_DEFINITION
                   APPLIED_INFORMATION_USAGE_RIGHT
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   ASSIGNED_PROPERTY
                   BREAKDOWN
                   BREAKDOWN_ELEMENT
                   BREAKDOWN_ELEMENT_REALIZATION
                   BREAKDOWN_ELEMENT_USAGE
                   BREAKDOWN_VERSION
                   CERTIFICATION
                   CERTIFICATION_ASSIGNMENT
                   CHARACTERIZABLE_OBJECT
                   CONTRACT
                   CONTRACT_RELATIONSHIP
                   DIGITAL_DOCUMENT_DEFINITION
                   DIGITAL_FILE
                   DOCUMENT
                   DOCUMENT_VERSION
                   EVIDENCE
                   EXTERNAL_ITEM_IDENTIFICATION
                   GROUP
                   GROUP_RELATIONSHIP
                   HARDCOPY
                   IN_ZONE
                   INFORMATION_RIGHT
                   INFORMATION_USAGE_RIGHT
                   INFORMATION_USAGE_RIGHT_RELATIONSHIP
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR
                   INTERFACE_CONNECTOR_DEFINITION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_CONNECTOR_VERSION
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_DEFINITION_FOR
                   INTERFACE_SPECIFICATION
                   INTERFACE_SPECIFICATION_DEFINITION
                   INTERFACE_SPECIFICATION_VERSION
                   ISSUE
                   ISSUE_CONSEQUENCE
                   JUSTIFICATION
                   MANAGED_RESOURCE
                   ORGANIZATION
                   PART
                   PART_VERSION
                   PART_VIEW_DEFINITION
                   PERSON_IN_ORGANIZATION
                   PHYSICAL_DOCUMENT_DEFINITION
                   PRODUCT
                   PRODUCT_AS_INDIVIDUAL
                   PRODUCT_AS_INDIVIDUAL_VIEW
                   PRODUCT_AS_PLANNED
                   PRODUCT_AS_REALIZED
                   PRODUCT_CONFIGURATION
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   REPRESENTATION_ITEM
                   REQUIRED_RESOURCE
                   REQUIREMENT
                   REQUIREMENT_ASSIGNMENT
                   REQUIREMENT_VERSION
                   REQUIREMENT_VIEW_DEFINITION
                   RESOURCE_ITEM
                   RESOURCE_ITEM_REALIZATION
                   RISK
                   RISK_TREATMENT
                   SECURITY_CLASSIFICATION
                   SECURITY_CLASSIFICATION_ASSIGNMENT
                   SUPPLIED_PART_RELATIONSHIP
                   TASK_ELEMENT
                   TASK_IO
                   TASK_METHOD
                   TASK_METHOD_VERSION
                   TASK_OBJECTIVE
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_ORDER
                   WORK_OUTPUT)))


(DEFTYPE-CLASS "REPRESENTATION_PROXY_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(COLLECTION_VERSION
                   DOCUMENT_VERSION
                   STATE_DEFINITION)))


(DEFTYPE-CLASS "REQUIREMENT_ASSIGNMENT_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY_METHOD
                   ACTIVITY_PROPERTY
                   ALTERNATE_PART_RELATIONSHIP
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   ANALYSIS_DISCIPLINE_DEFINITION
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   APPLIED_STATE_ASSIGNMENT
                   APPLIED_STATE_DEFINITION_ASSIGNMENT
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   BREAKDOWN
                   BREAKDOWN_ELEMENT
                   BREAKDOWN_ELEMENT_REALIZATION
                   BREAKDOWN_ELEMENT_USAGE
                   BREAKDOWN_ELEMENT_VERSION
                   BREAKDOWN_VERSION
                   DOCUMENT_VERSION
                   IN_ZONE
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_FOR
                   INTERFACE_SPECIFICATION
                   PART_VERSION
                   PRODUCT
                   PRODUCT_AS_INDIVIDUAL_VERSION
                   PRODUCT_AS_PLANNED
                   PRODUCT_AS_REALIZED
                   PRODUCT_CONFIGURATION
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   REQUIRED_RESOURCE_BY_REFERENCE
                   STATE
                   STATE_DEFINITION
                   VERIFICATION
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_OUTPUT)))


(DEFTYPE-CLASS "REQUIREMENT_SATISFACTION_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(REQUIREMENT_ASSIGNMENT_ITEM)))


(DEFTYPE-CLASS "REQUIREMENT_SOURCE_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY_METHOD
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   ANALYSIS_DISCIPLINE_DEFINITION
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   APPLIED_STATE_ASSIGNMENT
                   APPLIED_STATE_DEFINITION_ASSIGNMENT
                   APPROVAL_ASSIGNMENT
                   APPROVING_PERSON_ORGANIZATION
                   ASSEMBLY_COMPONENT_RELATIONSHIP
                   CERTIFICATION_ASSIGNMENT
                   CHARACTERIZABLE_OBJECT
                   CONTRACT_ASSIGNMENT
                   DIRECTED_ACTIVITY
                   DOCUMENT_VERSION
                   IN_ZONE
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_FOR
                   ISSUE
                   LESSONS_LEARNED
                   OBSERVATION
                   ORGANIZATION
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   PART_VERSION
                   PERSON_IN_ORGANIZATION
                   PRODUCT
                   PRODUCT_AS_INDIVIDUAL_VERSION
                   PRODUCT_CONCEPT
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROJECT_ASSIGNMENT
                   RESOURCE_EVENT
                   RISK_ANALYSIS
                   RISK_TREATMENT
                   SHAPE_ELEMENT
                   STATE
                   STATE_DEFINITION
                   VERIFICATION
                   VIEW_DEFINITION_RELATIONSHIP)))


(DEFTYPE-CLASS "TASK_ITEM" :AP233
  :TYPE-DESCRIPTOR
  'ACTIVITY_METHOD_ITEM)


(DEFTYPE-CLASS "CONNECTION_DEFINITION_ITEMS" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(INTERFACE_CONNECTOR_DEFINITION
                   PRODUCT_VIEW_DEFINITION)))


(DEFTYPE-CLASS "CONNECTION_ITEMS" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ASSEMBLY_COMPONENT_RELATIONSHIP
                   CONNECTION_DEFINITION_ITEMS
                   INTERFACE_CONNECTOR_OCCURRENCE
                   VIEW_DEFINITION_RELATIONSHIP)))


(DEFTYPE-CLASS "CONNECTOR_ON_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ASSEMBLY_COMPONENT_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   VIEW_DEFINITION_RELATIONSHIP)))


(DEFTYPE-CLASS "INTERFACE_DEFINITION_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(INTERFACE_CONNECTOR_OCCURRENCE
                   PRODUCT_VIEW_DEFINITION)))


(DEFTYPE-CLASS "ITEM_USAGE_RELATIONSHIP_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ASSEMBLY_COMPONENT_RELATIONSHIP
                   VIEW_DEFINITION_USAGE)))


(DEFTYPE-CLASS "CHARACTERIZED_ACTIVITY_DEFINITION" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_RELATIONSHIP
                   CONDITION
                   CONDITION_EVALUATION
                   CONDITION_RELATIONSHIP
                   REQUIRED_RESOURCE_ASSIGNMENT
                   RESOURCE_AS_REALIZED_ASSIGNMENT
                   RESOURCE_EVENT
                   RESOURCE_ITEM_ASSIGNMENT
                   TASK_OBJECTIVE
                   WORK_OUTPUT)))


(DEFTYPE-CLASS "TIME_INTERVAL_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD_ASSIGNMENT
                   AFFECTED_ITEMS_ASSIGNMENT
                   DIRECTED_ACTIVITY
                   OBSERVATION
                   OBSERVATION_ASSIGNMENT
                   WORK_ORDER
                   WORK_OUTPUT
                   WORK_REQUEST)))


(DEFTYPE-CLASS "ENVIRONMENT_PRODUCT_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(PRODUCT
                   PRODUCT_CONCEPT
                   PRODUCT_GROUP
                   PRODUCT_VERSION)))


(DEFTYPE-CLASS "LOCATION_ASSIGNMENT_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD_ASSIGNMENT
                   ANALYSIS_ASSIGNMENT
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   DOCUMENT
                   DOCUMENT_DEFINITION
                   DOCUMENT_VERSION
                   ENVIRONMENT_DEFINITION_VIEW
                   EVENT
                   FILE
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_CONNECTION
                   MANAGED_RESOURCE
                   OBSERVED_ENVIRONMENT_VIEW
                   ORGANIZATION
                   ORGANIZATION_TYPE
                   PERSON
                   PERSON_IN_ORGANIZATION
                   POSITION
                   POSITION_TYPE
                   PRODUCT
                   PRODUCT_GROUP
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   REQUIRED_RESOURCE
                   REQUIRED_RESOURCE_ASSIGNMENT
                   RESOURCE_ITEM
                   RESOURCE_ITEM_ASSIGNMENT
                   RESOURCE_ITEM_REALIZATION
                   RISK_TREATMENT
                   TASK_ELEMENT
                   TASK_METHOD
                   TASK_METHOD_ASSIGNMENT
                   TASK_METHOD_VERSION
                   TASK_METHOD_VERSION_ASSIGNMENT
                   TYPE_OF_PERSON)))


(DEFTYPE-CLASS "PRODUCT_BASED_LOCATION_REPRESENTATION" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                   BREAKDOWN_OF
                   CONDITION_EVALUATION_PARAMETER
                   CONSTRAINED_GENERAL_PARAMETER_RELATIONSHIP
                   EVENT
                   EVIDENCE
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_CONNECTION
                   JUSTIFICATION
                   LANGUAGE_INDICATION
                   LESSONS_LEARNED
                   MANAGED_RESOURCE
                   MARKET
                   OBSERVATION
                   ORGANIZATION
                   ORGANIZATION_TYPE
                   PERSON_IN_ORGANIZATION
                   PRODUCT
                   PRODUCT_CONCEPT
                   PRODUCT_VERSION
                   PROJECT
                   REPRESENTATION
                   REQUIRED_RESOURCE
                   RESOURCE_EVENT
                   RESOURCE_ITEM
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_PROPERTY
                   RISK
                   RISK_ASSESSMENT
                   RISK_ATTITUDE
                   RISK_CONSEQUENCE
                   RISK_ESTIMATION
                   RISK_TREATMENT
                   STATE
                   STATE_DEFINITION
                   STATE_RELATIONSHIP
                   TASK_IO
                   VERIFICATION
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_OUTPUT
                   WORK_REQUEST)))


(DEFTYPE-CLASS "OBSERVED_ENVIRONMENT_PRODUCT_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(PRODUCT
                   PRODUCT_CONCEPT
                   PRODUCT_GROUP
                   PRODUCT_VERSION)))


(DEFTYPE-CLASS "IN_ZONE_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY_METHOD
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   HIERARCHICAL_INTERFACE_CONNECTION
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_CONNECTION
                   PRODUCT_VIEW_DEFINITION)))


(DEFTYPE-CLASS "DEFINED_ACTIVITIES" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY_ACTUAL
                   BEHAVIOUR_DESCRIPTION_ASSOCIATION
                   EVENT_ASSIGNMENT
                   ISSUE
                   LESSONS_LEARNED
                   OBSERVATION_CONSEQUENCE
                   PRODUCT
                   PROJECT
                   RESOURCE_AS_REALIZED
                   RISK_ANALYSIS
                   WORK_OUTPUT)))


(DEFTYPE-CLASS "DEFINED_METHODS" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ANALYSIS_ASSIGNMENT
                   BEHAVIOUR_MODEL
                   EVENT
                   ISSUE
                   LESSONS_LEARNED
                   OBSERVATION_CONSEQUENCE
                   PRODUCT
                   PRODUCT_GROUP
                   REQUIRED_RESOURCE
                   RISK_ANALYSIS
                   RISK_ASSESSMENT
                   WORK_OUTPUT_ASSIGNMENT)))


(DEFTYPE-CLASS "PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_SELECT"
               :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ORGANIZATION
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   PERSON
                   PERSON_IN_ORGANIZATION
                   PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
                   PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
                   TYPE_OF_PERSON
                   TYPE_OF_PERSON_DEFINITION_RELATIONSHIP)))


(DEFTYPE-CLASS "RESOURCE_AS_REALIZED_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY_ACTUAL
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_ASSIGNMENT
                   ACTIVITY_METHOD_REALIZATION
                   ACTIVITY_METHOD_RELATIONSHIP
                   AFFECTED_ITEMS_ASSIGNMENT
                   ANALYSIS_ASSIGNMENT
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   BEHAVIOUR_DESCRIPTION_ASSOCIATION
                   CERTIFICATION
                   CERTIFICATION_ASSIGNMENT
                   COMPOSITION_OF_STATE_DEFINITION
                   CONDITION_EVALUATION_ASSIGNMENT
                   CONTRACT
                   CONTRACT_ASSIGNMENT
                   CONTRACT_RELATIONSHIP
                   DIRECTED_ACTIVITY
                   EVENT
                   EVENT_ASSIGNMENT
                   EVIDENCE
                   INTERFACE_CONNECTION
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_DEFINITION_FOR
                   LESSONS_LEARNED
                   OBSERVATION
                   OBSERVATION_ASSIGNMENT
                   OBSERVATION_CONSEQUENCE
                   PRODUCT
                   PRODUCT_VERSION
                   PRODUCT_VERSION_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   PROJECT
                   PROJECT_ASSIGNMENT
                   REPRESENTATION
                   REPRESENTATION_ITEM
                   REQUIREMENT_ASSIGNMENT
                   RESOURCE_EVENT
                   RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP
                   RESOURCE_EVENT_RELATIONSHIP
                   RISK
                   RISK_ANALYSIS
                   RISK_ASSESSMENT
                   RISK_COMMUNICATION
                   RISK_CONTROL
                   RISK_ESTIMATION
                   RISK_EVALUATION
                   RISK_IMPACT
                   RISK_IMPACT_ASSIGNMENT
                   RISK_PERCEPTION
                   RISK_PERCEPTION_CONTEXT
                   RISK_TREATMENT
                   SECURITY_CLASSIFICATION_ASSIGNMENT
                   STATE
                   STATE_ASSESSMENT
                   STATE_DEFINITION
                   STATE_DEFINITION_RELATIONSHIP
                   STATE_RELATIONSHIP
                   STATE_ROLE
                   TASK_IO_HIERARCHY
                   TASK_OBJECTIVE
                   VERIFICATION
                   WORK_OUTPUT_ASSIGNMENT)))


(DEFTYPE-CLASS "RESOURCE_AS_REALIZED_RELATIONSHIP_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(REQUIRED_RESOURCE RESOURCE_EVENT)))


(DEFTYPE-CLASS "QUALIFICATIONS_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ORGANIZATION PERSON PERSON_IN_ORGANIZATION)))


(DEFTYPE-CLASS "ACTIVITY_REALIZATION_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY_METHOD
                   SCHEME
                   SCHEME_VERSION
                   TASK_ELEMENT
                   TASK_METHOD
                   TASK_METHOD_VERSION)))


(DEFTYPE-CLASS "CLASSIFIED_ATTRIBUTE_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ACTIVITY_METHOD_ASSIGNMENT
                   ACTIVITY_PROPERTY
                   ACTIVITY_PROPERTY_REPRESENTATION
                   ACTIVITY_RELATIONSHIP
                   ADDRESS_ASSIGNMENT
                   AFFECTED_ITEMS_ASSIGNMENT
                   ALTERNATE_PART_RELATIONSHIP
                   ALTERNATE_PRODUCT_RELATIONSHIP
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPROVAL
                   APPROVAL_ASSIGNMENT
                   APPROVAL_RELATIONSHIP
                   APPROVAL_STATUS
                   APPROVING_PERSON_ORGANIZATION
                   ASSIGNED_PROPERTY
                   BREAKDOWN_CONTEXT
                   BREAKDOWN_ELEMENT_REALIZATION
                   BREAKDOWN_ELEMENT_USAGE
                   CERTIFICATION
                   CERTIFICATION_ASSIGNMENT
                   CONDITION
                   CONDITION_EVALUATION
                   CONDITION_EVALUATION_PARAMETER
                   CONDITION_PARAMETER
                   CONDITION_RELATIONSHIP
                   CONTEXT_DEPENDENT_UNIT
                   CONTRACT
                   CONTRACT_RELATIONSHIP
                   DATE_OR_DATE_TIME_ASSIGNMENT
                   DESCRIPTION_TEXT
                   DESCRIPTIVE_DOCUMENT_PROPERTY
                   DIGITAL_FILE
                   DOCUMENT_ASSIGNMENT
                   DOCUMENT_DEFINITION_RELATIONSHIP
                   DOCUMENT_LOCATION_IDENTIFICATION
                   DOCUMENT_PROPERTY_REPRESENTATION
                   EFFECTIVITY
                   EFFECTIVITY_ASSIGNMENT
                   EVENT_ASSIGNMENT
                   EVENT_RELATIONSHIP
                   EXTERNAL_ITEM_IDENTIFICATION
                   EXTERNAL_SOURCE_IDENTIFICATION
                   FILE_LOCATION_IDENTIFICATION
                   FILE_RELATIONSHIP
                   GLOBAL_LOCATION_REPRESENTATION
                   GROUP
                   GROUP_RELATIONSHIP
                   HARDCOPY
                   IDENTIFICATION_ASSIGNMENT
                   INDEPENDENT_PROPERTY
                   INDEPENDENT_PROPERTY_RELATIONSHIP
                   INDEPENDENT_PROPERTY_REPRESENTATION
                   INFORMATION_RIGHT
                   INFORMATION_USAGE_RIGHT
                   INFORMATION_USAGE_RIGHT_RELATIONSHIP
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_DEFINITION
                   INTERFACE_DEFINITION_CONNECTION
                   INTERFACE_SPECIFICATION_DEFINITION
                   ISSUE
                   JUSTIFICATION
                   JUSTIFICATION_ASSIGNMENT
                   JUSTIFICATION_SUPPORT_ASSIGNMENT
                   LANGUAGE
                   LOCATION
                   LOCATION_RELATIONSHIP
                   MANAGED_RESOURCE
                   MANAGED_RESOURCE_RELATIONSHIP
                   MARKET
                   NUMERICAL_DOCUMENT_PROPERTY
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   ORGANIZATION_RELATIONSHIP
                   ORGANIZATIONAL_LOCATION_IDENTIFICATION
                   PART_VIEW_DEFINITION
                   PARTIAL_DOCUMENT_ASSIGNMENT
                   PERSON_IN_ORGANIZATION
                   PRODUCT
                   PRODUCT_BASED_LOCATION_IDENTIFICATION
                   PRODUCT_CONCEPT
                   PRODUCT_RELATIONSHIP
                   PRODUCT_VERSION
                   PRODUCT_VERSION_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   PROJECT_ASSIGNMENT
                   PROJECT_RELATIONSHIP
                   PROPERTY_REPRESENTATION
                   REGIONAL_COORDINATE
                   REGIONAL_GRID_LOCATION_REPRESENTATION
                   RELATED_CONDITION_PARAMETER
                   REPRESENTATION
                   REPRESENTATION_CONTEXT
                   REPRESENTATION_ITEM
                   REQUIRED_RESOURCE
                   REQUIRED_RESOURCE_RELATIONSHIP
                   REQUIREMENT_VERSION_RELATIONSHIP
                   REQUIREMENT_VIEW_DEFINITION
                   RESOURCE_AS_REALIZED
                   RESOURCE_AS_REALIZED_RELATIONSHIP
                   RESOURCE_EVENT
                   RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP
                   RESOURCE_EVENT_RELATIONSHIP
                   RESOURCE_ITEM
                   RESOURCE_ITEM_ASSIGNMENT
                   RESOURCE_ITEM_REALIZATION
                   RESOURCE_ITEM_RELATIONSHIP
                   RESOURCE_PROPERTY
                   RESOURCE_PROPERTY_REPRESENTATION
                   RISK
                   SECURITY_CLASSIFICATION
                   TIME_INTERVAL_RELATIONSHIP
                   UNCERTAINTY_WITH_UNIT
                   UNIT
                   VALUE_WITH_UNIT
                   VIEW_DEFINITION_CONTEXT
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_ORDER
                   WORK_OUTPUT
                   WORK_OUTPUT_RELATIONSHIP
                   WORK_REQUEST
                   WORK_REQUEST_STATUS)))


(DEFTYPE-CLASS "CONDITION_EVALUATION_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY_METHOD
                   ACTIVITY_PROPERTY
                   ANALYSIS_ASSIGNMENT
                   APPROVAL
                   APPROVAL_ASSIGNMENT
                   ASSIGNED_PROPERTY
                   BEHAVIOUR_DESCRIPTION_ASSOCIATION
                   DOCUMENT_ASSIGNMENT
                   HIERARCHICAL_INTERFACE_CONNECTION
                   INTERFACE_CONNECTION
                   INTERFACE_DEFINITION_CONNECTION
                   JUSTIFICATION
                   PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP
                   REQUIRED_RESOURCE
                   RESOURCE_EVENT
                   RISK_ANALYSIS
                   RISK_IMPACT_ASSIGNMENT
                   STATE_DEFINITION
                   TASK_IO
                   VERIFICATION
                   VIEW_DEFINITION_RELATIONSHIP)))


(DEFTYPE-CLASS "CONDITION_EVALUATION_PARAMETER_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_PROPERTY
                   APPROVAL
                   APPROVAL_ASSIGNMENT
                   ASSIGNED_PROPERTY
                   CALENDAR_DATE
                   CERTIFICATION_ASSIGNMENT
                   CLASSIFICATION_ASSIGNMENT
                   CONTRACT_ASSIGNMENT
                   DATE_OR_DATE_TIME_ASSIGNMENT
                   DATE_TIME
                   DOCUMENT_ASSIGNMENT
                   HIERARCHICAL_INTERFACE_CONNECTION
                   IDENTIFICATION_ASSIGNMENT
                   INDEPENDENT_PROPERTY_REPRESENTATION
                   INTERFACE_CONNECTION
                   INTERFACE_CONNECTOR_OCCURRENCE
                   INTERFACE_DEFINITION_CONNECTION
                   ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                   PRODUCT
                   PRODUCT_AS_INDIVIDUAL
                   PRODUCT_CONCEPT
                   PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROPERTY_REPRESENTATION
                   REPRESENTATION
                   REQUIREMENT_SOURCE
                   STATE
                   STATE_DEFINITION
                   TASK_IO
                   VIEW_DEFINITION_RELATIONSHIP
                   WORK_OUTPUT)))


(DEFTYPE-CLASS "SCHEME_ENTRY_ITEM_SELECT" :AP233
  :TYPE-DESCRIPTOR
  'ACTIVITY_METHOD_ITEM)


(DEFTYPE-CLASS "SCHEME_SUBJECT_SELECT" :AP233
  :TYPE-DESCRIPTOR
  'ACTIVITY_METHOD_ITEM)


(DEFTYPE-CLASS "SCHEME_VERSION_SELECT" :AP233
  :TYPE-DESCRIPTOR
  'ACTIVITY_METHOD_ITEM)


(DEFTYPE-CLASS "CONSTRAINT_CONTEXT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(TASK_ELEMENT TASK_METHOD_VERSION)))


(DEFTYPE-CLASS "METHOD_OR_METHOD_VERSION" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(TASK_METHOD TASK_METHOD_VERSION)))


(DEFTYPE-CLASS "STATE_OR_STATE_DEFINITION_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(APPLIED_STATE_ASSIGNMENT
                   APPLIED_STATE_DEFINITION_ASSIGNMENT
                   STATE
                   STATE_DEFINITION)))


(DEFTYPE-CLASS "WORK_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY
                   ACTIVITY_METHOD
                   ANALYSIS_ASSIGNMENT
                   APPLIED_ACTIVITY_ASSIGNMENT
                   APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                   EVENT
                   PROJECT
                   SCHEME
                   SCHEME_ENTRY
                   SCHEME_VERSION
                   TASK_ELEMENT
                   TASK_METHOD
                   TASK_METHOD_VERSION
                   VERIFICATION)))


(DEFTYPE-CLASS "WORK_OUTPUT_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ACTIVITY_METHOD
                   ANALYSIS_ASSIGNMENT
                   BEHAVIOUR_DESCRIPTION_ASSOCIATION
                   BREAKDOWN
                   BREAKDOWN_VERSION
                   CONTRACT
                   CONTRACT_RELATIONSHIP
                   DOCUMENT
                   DOCUMENT_DEFINITION
                   DOCUMENT_VERSION
                   EVIDENCE
                   FILE
                   LOCATION
                   MANAGED_RESOURCE
                   ORGANIZATION
                   ORGANIZATION_TYPE
                   PART
                   PART_VERSION
                   PART_VIEW_DEFINITION
                   PERSON
                   PERSON_IN_ORGANIZATION
                   POSITION
                   POSITION_TYPE
                   PRODUCT
                   PRODUCT_AS_INDIVIDUAL
                   PRODUCT_AS_INDIVIDUAL_VERSION
                   PRODUCT_AS_INDIVIDUAL_VIEW
                   PRODUCT_GROUP
                   PRODUCT_VERSION
                   PRODUCT_VIEW_DEFINITION
                   PROJECT_ASSIGNMENT
                   REQUIRED_RESOURCE
                   RESOURCE_AS_REALIZED
                   RESOURCE_ITEM
                   RESOURCE_ITEM_REALIZATION
                   RISK_ANALYSIS
                   RISK_ASSESSMENT
                   RISK_EVALUATION
                   RISK_TREATMENT
                   STATE_DEFINITION
                   TASK_IO
                   TYPE_OF_PERSON)))


(DEFTYPE-CLASS "TEMPLATE_DEFINITION_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP :SELECT-LIST '(GEOMETRIC_MODEL)))


(DEFTYPE-CLASS "DESCRIBED_ELEMENT_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(VIEW_DEFINITION_USAGE
                   PRODUCT_OCCURRENCE_DEFINITION_RELATIONSHIP)))


(DEFTYPE-CLASS "GEOMETRIC_ITEM_SPECIFIC_USAGE_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(SHAPE_ELEMENT SHAPE_ELEMENT_RELATIONSHIP)))


(DEFTYPE-CLASS "SHAPE_DEPENDENT_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP :SELECT-LIST '(ITEM_SHAPE SHAPE_ELEMENT)))


(DEFTYPE-CLASS "SHAPE_MODEL" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(EXTERNAL_GEOMETRIC_MODEL GEOMETRIC_MODEL)))


(DEFTYPE-CLASS "SHAPE_SELECT" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(ITEM_SHAPE
                   SHAPE_ELEMENT
                   SHAPE_ELEMENT_RELATIONSHIP)))


(DEFTYPE-CLASS "SHAPEABLE_ITEM" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(CHARACTERIZABLE_OBJECT
                   PRODUCT_OCCURRENCE_DEFINITION_RELATIONSHIP
                   PRODUCT_VIEW_DEFINITION
                   VIEW_DEFINITION_USAGE)))


(DEFTYPE-CLASS "CARTESIAN_TRANSFORMATION" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(CARTESIAN_TRANSFORMATION_2D
                   CARTESIAN_TRANSFORMATION_3D)))


(DEFTYPE-CLASS "VALUE_QUALIFIER" :AP233
  :TYPE-DESCRIPTOR
  (MAKE-INSTANCE 'SELECT-TYP
                 :SELECT-LIST
                 '(PRECISION_QUALIFIER
                   TYPE_QUALIFIER
                   UNCERTAINTY_QUALIFIER)))




;;;=================
;;; EntityTypes
;;;=================
(DEFENTITY-CLASS "RESOURCE_GROUP_RELATIONSHIP" :AP233
  (("quantity"
    :RANGE
    VALUE_WITH_UNIT
    :SOURCE
    RESOURCE_GROUP_RELATIONSHIP
    :OPTIONAL
    T)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RESOURCE_GROUP_RELATIONSHIP))
      '(RESOURCE_ITEM_RELATIONSHIP))


(DEFENTITY-CLASS "APPLIED_ACTIVITY_METHOD_ASSIGNMENT" :AP233
  (("assigned_activity_method"
    :RANGE
    ACTIVITY_METHOD
    :SOURCE
    APPLIED_ACTIVITY_METHOD_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'ACTIVITY_METHOD_ITEM)
    :SOURCE
    APPLIED_ACTIVITY_METHOD_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    APPLIED_ACTIVITY_METHOD_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ACTIVITY_METHOD" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_METHOD
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_METHOD
    :OPTIONAL
    T)
   ("consequence"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_METHOD
    :OPTIONAL
    T)
   ("purpose"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_METHOD
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "COLLECTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'COLLECTION)) '(PRODUCT))


(DEFENTITY-CLASS "COLLECTION_ASSIGNMENT" :AP233
  (("collection"
    :RANGE
    COLLECTION_VIEW_DEFINITION
    :SOURCE
    COLLECTION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("is_assigned_to"
    :RANGE
    COLLECTION_ASSIGNMENT_SELECT
    :SOURCE
    COLLECTION_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "COLLECTION_MEMBERSHIP" :AP233
  (("member"
    :RANGE
    COLLECTION_MEMBER_SELECT
    :SOURCE
    COLLECTION_MEMBERSHIP
    :OPTIONAL
    NIL)
   ("of_collection"
    :RANGE
    COLLECTION_VIEW_DEFINITION
    :SOURCE
    COLLECTION_MEMBERSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "COLLECTION_RELATIONSHIP" :AP233
  (("related_collection"
    :RANGE
    COLLECTION
    :SOURCE
    COLLECTION_RELATIONSHIP
    :DERIVED
    (%RELATED_PRODUCT INSTANCE NIL))
   ("relating_collection"
    :RANGE
    COLLECTION
    :SOURCE
    COLLECTION_RELATIONSHIP
    :DERIVED
    (%RELATING_PRODUCT INSTANCE NIL))
   ("relating_product"
    :RANGE
    COLLECTION
    :SOURCE
    PRODUCT_RELATIONSHIP
    :REDEFINITION-OF
    (PRODUCT_RELATIONSHIP "relating_product")
    :OPTIONAL
    NIL)
   ("related_product"
    :RANGE
    COLLECTION
    :SOURCE
    PRODUCT_RELATIONSHIP
    :REDEFINITION-OF
    (PRODUCT_RELATIONSHIP "related_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'COLLECTION_RELATIONSHIP))
      '(PRODUCT_RELATIONSHIP))


(DEFENTITY-CLASS "COLLECTION_VERSION" :AP233
  (("of_collection"
    :RANGE
    COLLECTION
    :SOURCE
    COLLECTION_VERSION
    :DERIVED
    (%OF_PRODUCT INSTANCE NIL))
   ("of_product"
    :RANGE
    COLLECTION
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'COLLECTION_VERSION)) '(PRODUCT_VERSION))


(DEFENTITY-CLASS "COLLECTION_VERSION_RELATIONSHIP" :AP233
  (("relating_version"
    :RANGE
    COLLECTION_VERSION
    :SOURCE
    PRODUCT_VERSION_RELATIONSHIP
    :REDEFINITION-OF
    (PRODUCT_VERSION_RELATIONSHIP "relating_version")
    :OPTIONAL
    NIL)
   ("related_version"
    :RANGE
    COLLECTION_VERSION
    :SOURCE
    PRODUCT_VERSION_RELATIONSHIP
    :REDEFINITION-OF
    (PRODUCT_VERSION_RELATIONSHIP "related_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'COLLECTION_VERSION_RELATIONSHIP))
      '(PRODUCT_VERSION_RELATIONSHIP))


(DEFENTITY-CLASS "COLLECTION_VERSION_SEQUENCE_RELATIONSHIP" :AP233
  (("predecessor"
    :RANGE
    COLLECTION_VERSION
    :SOURCE
    COLLECTION_VERSION_SEQUENCE_RELATIONSHIP
    :DERIVED
    (%RELATING_VERSION INSTANCE NIL))
   ("successor"
    :RANGE
    COLLECTION_VERSION
    :SOURCE
    COLLECTION_VERSION_SEQUENCE_RELATIONSHIP
    :DERIVED
    (%RELATED_VERSION INSTANCE NIL))))

(SETF (SUBTYPE-OF (FIND-CLASS 'COLLECTION_VERSION_SEQUENCE_RELATIONSHIP))
      '(COLLECTION_VERSION_RELATIONSHIP))


(DEFENTITY-CLASS "COLLECTION_VIEW_DEFINITION" :AP233
  (("defined_version"
    :RANGE
    COLLECTION_VERSION
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :REDEFINITION-OF
    (PRODUCT_VIEW_DEFINITION "defined_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'COLLECTION_VIEW_DEFINITION))
      '(PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "IDENTIFICATION_ASSIGNMENT" :AP233
  (("identifier"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    IDENTIFICATION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    IDENTIFICATION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    IDENTIFICATION_ASSIGNMENT
    :OPTIONAL
    T)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'IDENTIFICATION_ITEM)
    :SOURCE
    IDENTIFICATION_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PRODUCT_RELATIONSHIP" :AP233
  (("relation_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating_product"
    :RANGE
    PRODUCT
    :SOURCE
    PRODUCT_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_product"
    :RANGE
    PRODUCT
    :SOURCE
    PRODUCT_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PRODUCT_VERSION_RELATIONSHIP" :AP233
  (("relation_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_VERSION_RELATIONSHIP
    :OPTIONAL
    T)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_VERSION_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating_version"
    :RANGE
    PRODUCT_VERSION
    :SOURCE
    PRODUCT_VERSION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_version"
    :RANGE
    PRODUCT_VERSION
    :SOURCE
    PRODUCT_VERSION_RELATIONSHIP
    :OPTIONAL
    NIL)))

(DEFDOMAIN-RULES "PRODUCT_VERSION_RELATIONSHIP"
  ("WR1"
   (EXPRESS-INSTANCE-NOT-EQUAL (%RELATING_VERSION INSTANCE NIL)
                               (%RELATED_VERSION INSTANCE NIL)))
  ("WR2"
   (EXPRESS-OR (BI-EXISTS (%RELATION_TYPE INSTANCE NIL))
               (EXPRESS-NOT-EQUAL (BI-TYPEOF INSTANCE)
                                  (BI-TYPEOF INSTANCE)))))


(DEFENTITY-CLASS "SUPPLIED_PART_RELATIONSHIP" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'SUPPLIED_PART_RELATIONSHIP))
      '(PRODUCT_VERSION_RELATIONSHIP))

(DEFDOMAIN-RULES "SUPPLIED_PART_RELATIONSHIP"
  ("WR1"
   (IN (%RELATION_TYPE INSTANCE NIL)
       (MAKE-INSTANCE 'EXPRESS-BAG
                      :VALUE
                      (LIST "supplied item" "supplied document")
                      :TYPE-DESCRIPTOR
                      (MAKE-INSTANCE 'BAG-TYP
                                     :L-BOUND
                                     0
                                     :U-BOUND
                                     :?
                                     :BASE-TYPE
                                     T)))))


(DEFENTITY-CLASS "PRODUCT_VIEW_DEFINITION" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :OPTIONAL
    T)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :OPTIONAL
    T)
   ("additional_characterization"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :OPTIONAL
    T)
   ("initial_context"
    :RANGE
    VIEW_DEFINITION_CONTEXT
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :OPTIONAL
    NIL)
   ("additional_contexts"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   0
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'VIEW_DEFINITION_CONTEXT)
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :OPTIONAL
    NIL)
   ("defined_version"
    :RANGE
    PRODUCT_VERSION
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :OPTIONAL
    NIL)))

(DEFDOMAIN-RULES "PRODUCT_VIEW_DEFINITION"
  ("WR1"
   (EXPRESS-NOT (IN (%INITIAL_CONTEXT INSTANCE NIL)
                    (%ADDITIONAL_CONTEXTS INSTANCE NIL))))
  ("WR2"
   (EXPRESS-OR (BI-EXISTS (%ID INSTANCE NIL))
               (EXPRESS-NOT-EQUAL (BI-TYPEOF INSTANCE)
                                  (BI-TYPEOF INSTANCE)))))


(DEFENTITY-CLASS "VIEW_DEFINITION_CONTEXT" :AP233
  (("application_domain"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    VIEW_DEFINITION_CONTEXT
    :OPTIONAL
    NIL)
   ("life_cycle_stage"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    VIEW_DEFINITION_CONTEXT
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    VIEW_DEFINITION_CONTEXT
    :OPTIONAL
    T)))

(DEFDOMAIN-RULES "VIEW_DEFINITION_CONTEXT"
  ("WR1"
   (EXPRESS-OR (EXPRESS-> (BI-SIZEOF (BI-USEDIN INSTANCE
                                                (EXPRESS-PLUS "AP233_SYSTEMS_ENGINEERING_ARM_LF."
                                                              "PRODUCT_VIEW_DEFINITION.INITIAL_CONTEXT")))
                          0)
               (EXPRESS-> (BI-SIZEOF (BI-USEDIN INSTANCE
                                                (EXPRESS-PLUS "AP233_SYSTEMS_ENGINEERING_ARM_LF."
                                                              "PRODUCT_VIEW_DEFINITION.ADDITIONAL_CONTEXTS")))
                          0))))


(DEFENTITY-CLASS "DISPOSITION" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    DISPOSITION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'DISPOSITION)) '(APPROVAL))


(DEFENTITY-CLASS "APPROVAL" :AP233
  (("status" :RANGE APPROVAL_STATUS :SOURCE APPROVAL :OPTIONAL NIL)
   ("purpose"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    APPROVAL
    :OPTIONAL
    NIL)
   ("planned_date"
    :RANGE
    DATE_OR_DATE_TIME_SELECT
    :SOURCE
    APPROVAL
    :OPTIONAL
    T)
   ("actual_date"
    :RANGE
    DATE_OR_DATE_TIME_SELECT
    :SOURCE
    APPROVAL
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "APPROVAL_ASSIGNMENT" :AP233
  (("assigned_approval"
    :RANGE
    APPROVAL
    :SOURCE
    APPROVAL_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'APPROVAL_ITEM)
    :SOURCE
    APPROVAL_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    APPROVAL_ASSIGNMENT
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "APPROVAL_RELATIONSHIP" :AP233
  (("relation_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    APPROVAL_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    APPROVAL_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating_approval"
    :RANGE
    APPROVAL
    :SOURCE
    APPROVAL_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_approval"
    :RANGE
    APPROVAL
    :SOURCE
    APPROVAL_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "APPROVAL_STATUS" :AP233
  (("status_name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    APPROVAL_STATUS
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "APPROVING_PERSON_ORGANIZATION" :AP233
  (("person_organization"
    :RANGE
    ORGANIZATION_OR_PERSON_IN_ORGANIZATION_SELECT
    :SOURCE
    APPROVING_PERSON_ORGANIZATION
    :OPTIONAL
    NIL)
   ("approval_date"
    :RANGE
    DATE_OR_DATE_TIME_SELECT
    :SOURCE
    APPROVING_PERSON_ORGANIZATION
    :OPTIONAL
    T)
   ("authorized_approval"
    :RANGE
    APPROVAL
    :SOURCE
    APPROVING_PERSON_ORGANIZATION
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    APPROVING_PERSON_ORGANIZATION
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "DATE_OR_DATE_TIME_ASSIGNMENT" :AP233
  (("assigned_date"
    :RANGE
    DATE_OR_DATE_TIME_SELECT
    :SOURCE
    DATE_OR_DATE_TIME_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    DATE_OR_DATE_TIME_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'DATE_OR_DATE_TIME_ITEM)
    :SOURCE
    DATE_OR_DATE_TIME_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ADDRESS" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ADDRESS
    :OPTIONAL
    T)
   ("street_number"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ADDRESS
    :OPTIONAL
    T)
   ("street"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ADDRESS
    :OPTIONAL
    T)
   ("postal_box"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ADDRESS
    :OPTIONAL
    T)
   ("town"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ADDRESS
    :OPTIONAL
    T)
   ("region"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ADDRESS
    :OPTIONAL
    T)
   ("postal_code"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ADDRESS
    :OPTIONAL
    T)
   ("country"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ADDRESS
    :OPTIONAL
    T)
   ("internal_location"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ADDRESS
    :OPTIONAL
    T)
   ("facsimile_number"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ADDRESS
    :OPTIONAL
    T)
   ("telephone_number"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ADDRESS
    :OPTIONAL
    T)
   ("electronic_mail_address"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ADDRESS
    :OPTIONAL
    T)
   ("telex_number"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ADDRESS
    :OPTIONAL
    T)
   ("url"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ADDRESS
    :OPTIONAL
    T)))

(DEFDOMAIN-RULES "ADDRESS"
  ("WR1"
   (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (BI-EXISTS (%STREET_NUMBER
                                                                                                                                                   INSTANCE
                                                                                                                                                   NIL))
                                                                                                                                       (BI-EXISTS (%STREET
                                                                                                                                                   INSTANCE
                                                                                                                                                   NIL)))
                                                                                                                           (BI-EXISTS (%POSTAL_BOX
                                                                                                                                       INSTANCE
                                                                                                                                       NIL)))
                                                                                                               (BI-EXISTS (%TOWN
                                                                                                                           INSTANCE
                                                                                                                           NIL)))
                                                                                                   (BI-EXISTS (%REGION
                                                                                                               INSTANCE
                                                                                                               NIL)))
                                                                                       (BI-EXISTS (%POSTAL_CODE
                                                                                                   INSTANCE
                                                                                                   NIL)))
                                                                           (BI-EXISTS (%COUNTRY
                                                                                       INSTANCE
                                                                                       NIL)))
                                                               (BI-EXISTS (%INTERNAL_LOCATION
                                                                           INSTANCE
                                                                           NIL)))
                                                   (BI-EXISTS (%FACSIMILE_NUMBER
                                                               INSTANCE
                                                               NIL)))
                                       (BI-EXISTS (%TELEPHONE_NUMBER
                                                   INSTANCE
                                                   NIL)))
                           (BI-EXISTS (%ELECTRONIC_MAIL_ADDRESS
                                       INSTANCE
                                       NIL)))
               (BI-EXISTS (%TELEX_NUMBER INSTANCE NIL)))))


(DEFENTITY-CLASS "ADDRESS_ASSIGNMENT" :AP233
  (("address_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ADDRESS_ASSIGNMENT
    :OPTIONAL
    T)
   ("assigned_address"
    :RANGE
    ADDRESS
    :SOURCE
    ADDRESS_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("located_person_organizations"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'ORGANIZATION_OR_PERSON_IN_ORGANIZATION_SELECT)
    :SOURCE
    ADDRESS_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ORGANIZATION" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ORGANIZATION
    :OPTIONAL
    T)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ORGANIZATION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ORGANIZATION_RELATIONSHIP" :AP233
  (("relation_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ORGANIZATION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ORGANIZATION_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating_organization"
    :RANGE
    ORGANIZATION
    :SOURCE
    ORGANIZATION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_organization"
    :RANGE
    ORGANIZATION
    :SOURCE
    ORGANIZATION_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PERSON" :AP233
  (("last_name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PERSON
    :OPTIONAL
    NIL)
   ("first_name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PERSON
    :OPTIONAL
    T)
   ("middle_names"
    :RANGE
    (MAKE-INSTANCE 'LIST-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   (MAKE-INSTANCE 'STRING-TYP)
                   :UNIQUE
                   NIL)
    :SOURCE
    PERSON
    :OPTIONAL
    T)
   ("prefix_titles"
    :RANGE
    (MAKE-INSTANCE 'LIST-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   (MAKE-INSTANCE 'STRING-TYP)
                   :UNIQUE
                   NIL)
    :SOURCE
    PERSON
    :OPTIONAL
    T)
   ("suffix_titles"
    :RANGE
    (MAKE-INSTANCE 'LIST-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   (MAKE-INSTANCE 'STRING-TYP)
                   :UNIQUE
                   NIL)
    :SOURCE
    PERSON
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "PERSON_IN_ORGANIZATION" :AP233
  (("concerned_person"
    :RANGE
    PERSON
    :SOURCE
    PERSON_IN_ORGANIZATION
    :OPTIONAL
    NIL)
   ("containing_organization"
    :RANGE
    ORGANIZATION
    :SOURCE
    PERSON_IN_ORGANIZATION
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PERSON_IN_ORGANIZATION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "IDENTIFICATION_RELATIONSHIP" :AP233
  (("relating_identification_assignment"
    :RANGE
    IDENTIFICATION_ASSIGNMENT
    :SOURCE
    IDENTIFICATION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_identification_assignment"
    :RANGE
    IDENTIFICATION_ASSIGNMENT
    :SOURCE
    IDENTIFICATION_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ISSUE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'ISSUE)) '(OBSERVATION))


(DEFENTITY-CLASS "ISSUE_CONSEQUENCE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'ISSUE_CONSEQUENCE))
      '(OBSERVATION_CONSEQUENCE))


(DEFENTITY-CLASS "ISSUE_REFERENCE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'ISSUE_REFERENCE))
      '(OBSERVATION_ASSIGNMENT))


(DEFENTITY-CLASS "OBSERVATION" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    OBSERVATION
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    OBSERVATION
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    OBSERVATION
    :OPTIONAL
    NIL)
   ("in_context"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   0
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'OBSERVED_CONTEXT)
    :SOURCE
    OBSERVATION
    :OPTIONAL
    NIL)
   ("observed_by"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   0
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'OBSERVATION_RECORDER)
    :SOURCE
    OBSERVATION
    :OPTIONAL
    NIL)
   ("observed_during"
    :RANGE
    ACTIVITY_ACTUAL
    :SOURCE
    OBSERVATION
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "OBSERVATION_ASSIGNMENT" :AP233
  (("assigned_observation"
    :RANGE
    OBSERVATION
    :SOURCE
    OBSERVATION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("item"
    :RANGE
    OBSERVATION_ITEM
    :SOURCE
    OBSERVATION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    OBSERVATION_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "OBSERVATION_CONSEQUENCE" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    OBSERVATION_CONSEQUENCE
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    OBSERVATION_CONSEQUENCE
    :OPTIONAL
    NIL)
   ("inferred_from"
    :RANGE
    OBSERVATION
    :SOURCE
    OBSERVATION_CONSEQUENCE
    :OPTIONAL
    NIL)
   ("requests"
    :RANGE
    OBSERVATION_CONSEQUENCE_ITEM
    :SOURCE
    OBSERVATION_CONSEQUENCE
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    OBSERVATION_CONSEQUENCE
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "OBSERVATION_RELATIONSHIP" :AP233
  (("relating"
    :RANGE
    OBSERVATION
    :SOURCE
    OBSERVATION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    OBSERVATION
    :SOURCE
    OBSERVATION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    OBSERVATION_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "SAME_AS_EXTERNAL_ITEM" :AP233
  (("external_item_id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    SAME_AS_EXTERNAL_ITEM
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    SAME_AS_EXTERNAL_ITEM
    :OPTIONAL
    T)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    SAME_AS_EXTERNAL_ITEM
    :OPTIONAL
    NIL)
   ("external_source"
    :RANGE
    EXTERNAL_SOURCE
    :SOURCE
    SAME_AS_EXTERNAL_ITEM
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   0
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'SAME_AS_ITEM)
    :SOURCE
    SAME_AS_EXTERNAL_ITEM
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "DISTRIBUTION_BY_VALUE" :AP233
  (("defined_function"
    :RANGE
    VALUE_FUNCTION
    :SOURCE
    DISTRIBUTION_BY_VALUE
    :OPTIONAL
    NIL)
   ("distribution_function"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    DISTRIBUTION_BY_VALUE
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'DISTRIBUTION_BY_VALUE))
      '(PROBABILITY_DISTRIBUTION))


(DEFENTITY-CLASS "FUNCTION_VALUE_PAIR" :AP233
  (("function_value"
    :RANGE
    PROBABILITY_FUNCTION_VALUE
    :SOURCE
    FUNCTION_VALUE_PAIR
    :OPTIONAL
    NIL)
   ("variable_value"
    :RANGE
    RANDOM_VARIABLE
    :SOURCE
    FUNCTION_VALUE_PAIR
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PARAMETERIZED_DISTRIBUTION" :AP233
  (("has_parameters"
    :RANGE
    (MAKE-INSTANCE 'LIST-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'PROBABILITY_DISTRIBUTION_PARAMETER
                   :UNIQUE
                   NIL)
    :SOURCE
    PARAMETERIZED_DISTRIBUTION
    :OPTIONAL
    NIL)
   ("parameterization_name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PARAMETERIZED_DISTRIBUTION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PARAMETERIZED_DISTRIBUTION))
      '(PROBABILITY_DISTRIBUTION))


(DEFENTITY-CLASS "PROBABILITY_DISTRIBUTION" :AP233
  (("distribution_name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PROBABILITY_DISTRIBUTION
    :OPTIONAL
    T)
   ("is_continuous"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PROBABILITY_DISTRIBUTION
    :OPTIONAL
    NIL)
   ("mean"
    :RANGE
    (MAKE-INSTANCE 'REAL-TYP)
    :SOURCE
    PROBABILITY_DISTRIBUTION
    :OPTIONAL
    NIL)
   ("variance"
    :RANGE
    (MAKE-INSTANCE 'REAL-TYP)
    :SOURCE
    PROBABILITY_DISTRIBUTION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PROBABILITY_DISTRIBUTION))
      '(PROBABILITY_GENERATOR))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'PROBABILITY_DISTRIBUTION)) T)


(DEFENTITY-CLASS "PROBABILITY_DISTRIBUTION_PARAMETER" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'PROBABILITY_DISTRIBUTION_PARAMETER))
      '(NUMERICAL_ITEM_WITH_GLOBAL_UNIT))


(DEFENTITY-CLASS "PROBABILITY_FUNCTION_VALUE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'PROBABILITY_FUNCTION_VALUE))
      '(NUMERICAL_ITEM_WITH_GLOBAL_UNIT))


(DEFENTITY-CLASS "RANDOM_VARIABLE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'RANDOM_VARIABLE))
      '(NUMERICAL_ITEM_WITH_GLOBAL_UNIT))


(DEFENTITY-CLASS "VALUE_FUNCTION" :AP233
  (("function_element"
    :RANGE
    (MAKE-INSTANCE 'LIST-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'FUNCTION_VALUE_PAIR
                   :UNIQUE
                   NIL)
    :SOURCE
    VALUE_FUNCTION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "CLASSIFICATION_ASSIGNMENT" :AP233
  (("assigned_class"
    :RANGE
    CLASS
    :SOURCE
    CLASSIFICATION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'CLASSIFICATION_ITEM)
    :SOURCE
    CLASSIFICATION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CLASSIFICATION_ASSIGNMENT
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "CLASS" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CLASS
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CLASS
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CLASS
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "CLASS_BY_EXTENSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'CLASS_BY_EXTENSION)) '(CLASS))


(DEFENTITY-CLASS "CLASS_BY_INTENSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'CLASS_BY_INTENSION)) '(CLASS))


(DEFENTITY-CLASS "MEASURE_ITEM" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'MEASURE_ITEM)) '(REPRESENTATION_ITEM))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'MEASURE_ITEM)) T)

(DEFDOMAIN-RULES "MEASURE_ITEM"
  ("WR1"
   (EXPRESS-> (BI-SIZEOF (BI-USEDIN INSTANCE
                                    "AP233_SYSTEMS_ENGINEERING_ARM_LF.REPRESENTATION.ITEMS"))
              0)))


(DEFENTITY-CLASS "NUMERICAL_ITEM_WITH_GLOBAL_UNIT" :AP233
  (("value_component"
    :RANGE
    MEASURE_VALUE
    :SOURCE
    NUMERICAL_ITEM_WITH_GLOBAL_UNIT
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'NUMERICAL_ITEM_WITH_GLOBAL_UNIT))
      '(MEASURE_ITEM))

(DEFDOMAIN-RULES "NUMERICAL_ITEM_WITH_GLOBAL_UNIT"
  ("WR1"
   (EXPRESS-> (BI-SIZEOF (QUERY (QUERY (BI-USEDIN INSTANCE
                                                  "AP233_SYSTEMS_ENGINEERING_ARM_LF.REPRESENTATION.ITEMS")
                                       #'(LAMBDA (R)
                                           (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.PROPERTY_VALUE_REPRESENTATION"
                                               (BI-TYPEOF R))))
                                #'(LAMBDA (PVR)
                                    (BI-EXISTS (%UNITS
                                                (%CONTEXT_OF_ITEMS
                                                 PVR
                                                 NIL)
                                                NIL)))))
              0)))


(DEFENTITY-CLASS "NUMERICAL_ITEM_WITH_UNIT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'NUMERICAL_ITEM_WITH_UNIT))
      '(MEASURE_ITEM VALUE_WITH_UNIT))


(DEFENTITY-CLASS "PROPERTY_VALUE_REPRESENTATION" :AP233
  (("context_of_items"
    :RANGE
    NUMERICAL_REPRESENTATION_CONTEXT
    :SOURCE
    REPRESENTATION
    :REDEFINITION-OF
    (REPRESENTATION "context_of_items")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PROPERTY_VALUE_REPRESENTATION))
      '(REPRESENTATION))


(DEFENTITY-CLASS "NUMERICAL_REPRESENTATION_CONTEXT" :AP233
  (("units"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP :L-BOUND 1 :U-BOUND :? :BASE-TYPE 'UNIT)
    :SOURCE
    NUMERICAL_REPRESENTATION_CONTEXT
    :OPTIONAL
    T)
   ("accuracies"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'UNCERTAINTY_WITH_UNIT)
    :SOURCE
    NUMERICAL_REPRESENTATION_CONTEXT
    :OPTIONAL
    T)))

(SETF (SUBTYPE-OF (FIND-CLASS 'NUMERICAL_REPRESENTATION_CONTEXT))
      '(REPRESENTATION_CONTEXT))


(DEFENTITY-CLASS "REPRESENTATION" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REPRESENTATION
    :OPTIONAL
    T)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REPRESENTATION
    :OPTIONAL
    T)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REPRESENTATION
    :OPTIONAL
    T)
   ("context_of_items"
    :RANGE
    REPRESENTATION_CONTEXT
    :SOURCE
    REPRESENTATION
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'REPRESENTATION_ITEM)
    :SOURCE
    REPRESENTATION
    :OPTIONAL
    NIL)))

(DEFDOMAIN-RULES "REPRESENTATION"
  ("WR1"
   (EXPRESS-OR (BI-EXISTS (%NAME INSTANCE NIL))
               (EXPRESS-NOT-EQUAL (BI-TYPEOF INSTANCE)
                                  (BI-TYPEOF INSTANCE)))))


(DEFENTITY-CLASS "REPRESENTATION_CONTEXT" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REPRESENTATION_CONTEXT
    :OPTIONAL
    NIL)
   ("kind"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REPRESENTATION_CONTEXT
    :OPTIONAL
    NIL)
   ("representations_in_context"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'REPRESENTATION)
    :SOURCE
    REPRESENTATION_CONTEXT
    :INVERSE
    (REPRESENTATION CONTEXT_OF_ITEMS))))


(DEFENTITY-CLASS "REPRESENTATION_ITEM" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REPRESENTATION_ITEM
    :OPTIONAL
    T)))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'REPRESENTATION_ITEM)) T)


(DEFENTITY-CLASS "REPRESENTATION_RELATIONSHIP" :AP233
  (("relation_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REPRESENTATION_RELATIONSHIP
    :OPTIONAL
    T)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REPRESENTATION_RELATIONSHIP
    :OPTIONAL
    T)
   ("rep_1"
    :RANGE
    REPRESENTATION
    :SOURCE
    REPRESENTATION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("rep_2"
    :RANGE
    REPRESENTATION
    :SOURCE
    REPRESENTATION_RELATIONSHIP
    :OPTIONAL
    NIL)))

(DEFDOMAIN-RULES "REPRESENTATION_RELATIONSHIP"
  ("WR1"
   (EXPRESS-OR (BI-EXISTS (%RELATION_TYPE INSTANCE NIL))
               (EXPRESS-NOT-EQUAL (BI-TYPEOF INSTANCE)
                                  (BI-TYPEOF INSTANCE))))
  ("WR2"
   (EXPRESS-OR (BI-EXISTS (%DESCRIPTION INSTANCE NIL))
               (EXPRESS-NOT-EQUAL (BI-TYPEOF INSTANCE)
                                  (BI-TYPEOF INSTANCE)))))


(DEFENTITY-CLASS "STRING_REPRESENTATION_ITEM" :AP233
  (("string_value"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    STRING_REPRESENTATION_ITEM
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'STRING_REPRESENTATION_ITEM))
      '(REPRESENTATION_ITEM))


(DEFENTITY-CLASS "AMOUNT_OF_SUBSTANCE_UNIT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'AMOUNT_OF_SUBSTANCE_UNIT)) '(UNIT))


(DEFENTITY-CLASS "CONTEXT_DEPENDENT_UNIT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'CONTEXT_DEPENDENT_UNIT)) '(UNIT))

(DEFDOMAIN-RULES "CONTEXT_DEPENDENT_UNIT"
  ("WR1" (BI-EXISTS (%NAME INSTANCE NIL))))


(DEFENTITY-CLASS "CONVERSION_BASED_UNIT" :AP233
  (("conversion_factor"
    :RANGE
    VALUE_WITH_UNIT
    :SOURCE
    CONVERSION_BASED_UNIT
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'CONVERSION_BASED_UNIT)) '(UNIT))

(DEFDOMAIN-RULES "CONVERSION_BASED_UNIT"
  ("WR1" (BI-EXISTS (%NAME INSTANCE NIL))))


(DEFENTITY-CLASS "DERIVED_UNIT" :AP233
  (("elements"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'DERIVED_UNIT_ELEMENT)
    :SOURCE
    DERIVED_UNIT
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'DERIVED_UNIT)) '(UNIT))


(DEFENTITY-CLASS "DERIVED_UNIT_ELEMENT" :AP233
  (("base_unit" :RANGE UNIT :SOURCE DERIVED_UNIT_ELEMENT :OPTIONAL NIL)
   ("exponent"
    :RANGE
    (MAKE-INSTANCE 'REAL-TYP)
    :SOURCE
    DERIVED_UNIT_ELEMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "DURATION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'DURATION)) '(VALUE_WITH_UNIT))

(DEFDOMAIN-RULES "DURATION"
  ("WR1"
   (IN (EXPRESS-PLUS "AP233_SYSTEMS_ENGINEERING_ARM_LF." "TIME_UNIT")
       (BI-TYPEOF (%UNIT INSTANCE NIL)))))


(DEFENTITY-CLASS "ELECTRIC_CURRENT_UNIT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'ELECTRIC_CURRENT_UNIT)) '(UNIT))


(DEFENTITY-CLASS "LENGTH_UNIT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'LENGTH_UNIT)) '(UNIT))


(DEFENTITY-CLASS "LUMINOUS_INTENSITY_UNIT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'LUMINOUS_INTENSITY_UNIT)) '(UNIT))


(DEFENTITY-CLASS "MASS_UNIT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'MASS_UNIT)) '(UNIT))


(DEFENTITY-CLASS "PLANE_ANGLE_UNIT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'PLANE_ANGLE_UNIT)) '(UNIT))


(DEFENTITY-CLASS "RATIO_UNIT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'RATIO_UNIT)) '(UNIT))


(DEFENTITY-CLASS "SOLID_ANGLE_UNIT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'SOLID_ANGLE_UNIT)) '(UNIT))


(DEFENTITY-CLASS "THERMODYNAMIC_TEMPERATURE_UNIT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'THERMODYNAMIC_TEMPERATURE_UNIT)) '(UNIT))


(DEFENTITY-CLASS "TIME_UNIT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'TIME_UNIT)) '(UNIT))


(DEFENTITY-CLASS "UNCERTAINTY_WITH_UNIT" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    UNCERTAINTY_WITH_UNIT
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    UNCERTAINTY_WITH_UNIT
    :OPTIONAL
    T)))

(SETF (SUBTYPE-OF (FIND-CLASS 'UNCERTAINTY_WITH_UNIT))
      '(VALUE_WITH_UNIT))


(DEFENTITY-CLASS "UNIT" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    UNIT
    :OPTIONAL
    NIL)
   ("si_unit"
    :RANGE
    (MAKE-INSTANCE 'BOOLEAN-TYP)
    :SOURCE
    UNIT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "VALUE_WITH_UNIT" :AP233
  (("unit" :RANGE UNIT :SOURCE VALUE_WITH_UNIT :OPTIONAL NIL)
   ("value_component"
    :RANGE
    MEASURE_VALUE
    :SOURCE
    VALUE_WITH_UNIT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PROBABILITY" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'PROBABILITY)) '(REPRESENTATION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'PROBABILITY)) T)


(DEFENTITY-CLASS "PROBABILITY_BY_NAME" :AP233
  (("has_value"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   1
                   :BASE-TYPE
                   'PROBABILITY_NAMED_VALUE)
    :SOURCE
    PROBABILITY_BY_NAME
    :DERIVED
    (%ITEMS INSTANCE NIL))
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   1
                   :BASE-TYPE
                   'PROBABILITY_NAMED_VALUE)
    :SOURCE
    REPRESENTATION
    :REDEFINITION-OF
    (REPRESENTATION "items")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PROBABILITY_BY_NAME)) '(PROBABILITY))


(DEFENTITY-CLASS "PROBABILITY_DERIVATION_PARAMETER" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'PROBABILITY_DERIVATION_PARAMETER))
      '(NUMERICAL_ITEM_WITH_GLOBAL_UNIT))


(DEFENTITY-CLASS "PROBABILITY_DERIVED" :AP233
  (("derives_from"
    :RANGE
    PROBABILITY_GENERATOR
    :SOURCE
    PROBABILITY_DERIVED
    :OPTIONAL
    NIL)
   ("has_parameter"
    :RANGE
    (MAKE-INSTANCE 'LIST-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'PROBABILITY_DERIVATION_PARAMETER
                   :UNIQUE
                   NIL)
    :SOURCE
    PROBABILITY_DERIVED
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PROBABILITY_DERIVED))
      '(PROBABILITY_NUMERIC))


(DEFENTITY-CLASS "PROBABILITY_GENERATOR" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'PROBABILITY_GENERATOR))
      '(REPRESENTATION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'PROBABILITY_GENERATOR)) T)


(DEFENTITY-CLASS "PROBABILITY_NAMED_VALUE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'PROBABILITY_NAMED_VALUE))
      '(REPRESENTATION_ITEM))


(DEFENTITY-CLASS "PROBABILITY_NUMERIC" :AP233
  (("has_value"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   1
                   :BASE-TYPE
                   'PROBABILITY_NUMERIC_VALUE)
    :SOURCE
    PROBABILITY_NUMERIC
    :DERIVED
    (%ITEMS INSTANCE NIL))
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   1
                   :BASE-TYPE
                   'PROBABILITY_NUMERIC_VALUE)
    :SOURCE
    REPRESENTATION
    :REDEFINITION-OF
    (REPRESENTATION "items")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PROBABILITY_NUMERIC)) '(PROBABILITY))


(DEFENTITY-CLASS "PROBABILITY_NUMERIC_VALUE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'PROBABILITY_NUMERIC_VALUE))
      '(NUMERICAL_ITEM_WITH_GLOBAL_UNIT))


(DEFENTITY-CLASS "ACTIVITY_ACTUAL" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'ACTIVITY_ACTUAL)) '(ACTIVITY))


(DEFENTITY-CLASS "ACTIVITY_HAPPENING" :AP233
  (("actual"
    :RANGE
    ACTIVITY_ACTUAL
    :SOURCE
    ACTIVITY_HAPPENING
    :DERIVED
    (%RELATING_ACTIVITY INSTANCE NIL))
   ("predicted"
    :RANGE
    ACTIVITY
    :SOURCE
    ACTIVITY_HAPPENING
    :DERIVED
    (%RELATED_ACTIVITY INSTANCE NIL))
   ("relating_activity"
    :RANGE
    ACTIVITY_ACTUAL
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_RELATIONSHIP "relating_activity")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ACTIVITY_HAPPENING))
      '(ACTIVITY_RELATIONSHIP))

(DEFDOMAIN-RULES "ACTIVITY_HAPPENING"
  ("WR1"
   (EXPRESS-NOT (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.ACTIVITY_ACTUAL"
                    (BI-TYPEOF (%PREDICTED INSTANCE NIL))))))


(DEFENTITY-CLASS "ACTIVITY" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY
    :OPTIONAL
    T)
   ("chosen_method"
    :RANGE
    ACTIVITY_METHOD
    :SOURCE
    ACTIVITY
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ACTIVITY_RELATIONSHIP" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating_activity"
    :RANGE
    ACTIVITY
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_activity"
    :RANGE
    ACTIVITY
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ACTIVITY_STATUS" :AP233
  (("assigned_activity"
    :RANGE
    ACTIVITY
    :SOURCE
    ACTIVITY_STATUS
    :OPTIONAL
    NIL)
   ("status"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_STATUS
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "APPLIED_ACTIVITY_ASSIGNMENT" :AP233
  (("assigned_activity"
    :RANGE
    ACTIVITY
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'ACTIVITY_ITEM)
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ANALYSIS_ASSIGNMENT" :AP233
  (("analysis"
    :RANGE
    ANALYSIS_VERSION
    :SOURCE
    ANALYSIS_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("applied_to"
    :RANGE
    ANALYSED_ITEM
    :SOURCE
    ANALYSIS_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ANALYSIS_DESIGN_VERSION_RELATIONSHIP" :AP233
  (("applied_to"
    :RANGE
    PRODUCT_VERSION
    :SOURCE
    ANALYSIS_ASSIGNMENT
    :REDEFINITION-OF
    (ANALYSIS_ASSIGNMENT "applied_to")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ANALYSIS_DESIGN_VERSION_RELATIONSHIP))
      '(ANALYSIS_ASSIGNMENT))


(DEFENTITY-CLASS "ANALYSIS" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'ANALYSIS)) '(PRODUCT))


(DEFENTITY-CLASS "ANALYSIS_DISCIPLINE_DEFINITION" :AP233
  (("defined_version"
    :RANGE
    ANALYSIS_VERSION
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :REDEFINITION-OF
    (PRODUCT_VIEW_DEFINITION "defined_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ANALYSIS_DISCIPLINE_DEFINITION))
      '(PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "ANALYSIS_VERSION" :AP233
  (("of_product"
    :RANGE
    ANALYSIS
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ANALYSIS_VERSION)) '(PRODUCT_VERSION))


(DEFENTITY-CLASS "ANALYSIS_VERSION_SEQUENCE" :AP233
  (("predecessor"
    :RANGE
    ANALYSIS_VERSION
    :SOURCE
    ANALYSIS_VERSION_SEQUENCE
    :DERIVED
    (%RELATING_VERSION INSTANCE NIL))
   ("successor"
    :RANGE
    ANALYSIS_VERSION
    :SOURCE
    ANALYSIS_VERSION_SEQUENCE
    :DERIVED
    (%RELATED_VERSION INSTANCE NIL))
   ("relating_version"
    :RANGE
    ANALYSIS_VERSION
    :SOURCE
    PRODUCT_VERSION_RELATIONSHIP
    :REDEFINITION-OF
    (PRODUCT_VERSION_RELATIONSHIP "relating_version")
    :OPTIONAL
    NIL)
   ("related_version"
    :RANGE
    ANALYSIS_VERSION
    :SOURCE
    PRODUCT_VERSION_RELATIONSHIP
    :REDEFINITION-OF
    (PRODUCT_VERSION_RELATIONSHIP "related_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ANALYSIS_VERSION_SEQUENCE))
      '(PRODUCT_VERSION_RELATIONSHIP))


(DEFENTITY-CLASS "CONTRACT" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CONTRACT
    :OPTIONAL
    NIL)
   ("purpose"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CONTRACT
    :OPTIONAL
    NIL)
   ("kind"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CONTRACT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "CONTRACT_ASSIGNMENT" :AP233
  (("assigned_contract"
    :RANGE
    CONTRACT
    :SOURCE
    CONTRACT_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'CONTRACT_ITEM)
    :SOURCE
    CONTRACT_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "CONTRACT_RELATIONSHIP" :AP233
  (("relating_contract"
    :RANGE
    CONTRACT
    :SOURCE
    CONTRACT_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_contract"
    :RANGE
    CONTRACT
    :SOURCE
    CONTRACT_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT"
                 :AP233
  (("assigned_entity"
    :RANGE
    ORGANIZATION_OR_PERSON_IN_ORGANIZATION_SELECT
    :SOURCE
    ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ITEM)
    :SOURCE
    ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "SECURITY_CLASSIFICATION" :AP233
  (("classification_level"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    SECURITY_CLASSIFICATION
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    SECURITY_CLASSIFICATION
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "SECURITY_CLASSIFICATION_ASSIGNMENT" :AP233
  (("classification"
    :RANGE
    SECURITY_CLASSIFICATION
    :SOURCE
    SECURITY_CLASSIFICATION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'SECURITY_CLASSIFICATION_ITEM)
    :SOURCE
    SECURITY_CLASSIFICATION_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "EXTERNAL_ANALYSIS_MODEL" :AP233
  (("external_file"
    :RANGE
    DIGITAL_FILE
    :SOURCE
    EXTERNAL_ANALYSIS_MODEL
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'EXTERNAL_ANALYSIS_MODEL))
      '(ANALYSIS_MODEL))


(DEFENTITY-CLASS "ASSUMPTION" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ASSUMPTION
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ASSUMPTION
    :OPTIONAL
    T)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ASSUMPTION
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "ASSUMPTION_ASSIGNMENT" :AP233
  (("assumption"
    :RANGE
    ASSUMPTION
    :SOURCE
    ASSUMPTION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ASSUMPTION_ASSIGNMENT
    :OPTIONAL
    T)
   ("item"
    :RANGE
    ASSUMPTION_ITEM
    :SOURCE
    ASSUMPTION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ASSUMPTION_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ASSUMPTION_RELATIONSHIP" :AP233
  (("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ASSUMPTION_RELATIONSHIP
    :OPTIONAL
    T)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ASSUMPTION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("relating_assumption"
    :RANGE
    ASSUMPTION
    :SOURCE
    ASSUMPTION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_assumption"
    :RANGE
    ASSUMPTION
    :SOURCE
    ASSUMPTION_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ITEM_ASSUMED" :AP233
  (("assumption" :RANGE ASSUMPTION :SOURCE ITEM_ASSUMED :OPTIONAL NIL)
   ("item" :RANGE ASSUMED_ITEM :SOURCE ITEM_ASSUMED :OPTIONAL NIL)))


(DEFENTITY-CLASS "JUSTIFICATION" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    JUSTIFICATION
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    JUSTIFICATION
    :OPTIONAL
    T)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    JUSTIFICATION
    :OPTIONAL
    NIL)
   ("context_description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    JUSTIFICATION
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "JUSTIFICATION_ASSIGNMENT" :AP233
  (("justification"
    :RANGE
    JUSTIFICATION
    :SOURCE
    JUSTIFICATION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    JUSTIFICATION_ASSIGNMENT
    :OPTIONAL
    T)
   ("item"
    :RANGE
    JUSTIFICATION_ITEM
    :SOURCE
    JUSTIFICATION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    JUSTIFICATION_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "JUSTIFICATION_RELATIONSHIP" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    JUSTIFICATION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    JUSTIFICATION_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating_justification"
    :RANGE
    JUSTIFICATION
    :SOURCE
    JUSTIFICATION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_justification"
    :RANGE
    JUSTIFICATION
    :SOURCE
    JUSTIFICATION_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "JUSTIFICATION_SUPPORT_ASSIGNMENT" :AP233
  (("justification"
    :RANGE
    JUSTIFICATION
    :SOURCE
    JUSTIFICATION_SUPPORT_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    JUSTIFICATION_SUPPORT_ASSIGNMENT
    :OPTIONAL
    T)
   ("support_item"
    :RANGE
    JUSTIFICATION_SUPPORT_ITEM
    :SOURCE
    JUSTIFICATION_SUPPORT_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    JUSTIFICATION_SUPPORT_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "EVIDENCE" :AP233
  (("supports"
    :RANGE
    EVIDENCE_SUPPORT_ITEM
    :SOURCE
    EVIDENCE
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'EVIDENCE_ITEM)
    :SOURCE
    EVIDENCE
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "VALIDATION" :AP233
  (("validates"
    :RANGE
    VALIDATION_ITEM
    :SOURCE
    VALIDATION
    :OPTIONAL
    NIL)
   ("validated_by"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   0
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'EVIDENCE)
    :SOURCE
    VALIDATION
    :INVERSE
    (EVIDENCE SUPPORTS))))


(DEFENTITY-CLASS "VERIFICATION" :AP233
  (("verifies"
    :RANGE
    REQUIREMENT_SATISFIED_BY
    :SOURCE
    VERIFICATION
    :OPTIONAL
    NIL)
   ("verified_by"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   0
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'EVIDENCE)
    :SOURCE
    VERIFICATION
    :INVERSE
    (EVIDENCE SUPPORTS))))


(DEFENTITY-CLASS "VERIFICATION_RELATIONSHIP" :AP233
  (("relating"
    :RANGE
    VERIFICATION
    :SOURCE
    VERIFICATION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    VERIFICATION
    :SOURCE
    VERIFICATION_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "FUNCTIONAL_BREAKDOWN" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'FUNCTIONAL_BREAKDOWN)) '(BREAKDOWN))


(DEFENTITY-CLASS "FUNCTIONAL_BREAKDOWN_CONTEXT" :AP233
  (("breakdown"
    :RANGE
    FUNCTIONAL_BREAKDOWN_VERSION
    :SOURCE
    BREAKDOWN_CONTEXT
    :REDEFINITION-OF
    (BREAKDOWN_CONTEXT "breakdown")
    :OPTIONAL
    NIL)
   ("breakdown_element"
    :RANGE
    FUNCTIONAL_ELEMENT_DEFINITION
    :SOURCE
    BREAKDOWN_CONTEXT
    :REDEFINITION-OF
    (BREAKDOWN_CONTEXT "breakdown_element")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'FUNCTIONAL_BREAKDOWN_CONTEXT))
      '(BREAKDOWN_CONTEXT))


(DEFENTITY-CLASS "FUNCTIONAL_BREAKDOWN_VERSION" :AP233
  (("of_product"
    :RANGE
    FUNCTIONAL_BREAKDOWN
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'FUNCTIONAL_BREAKDOWN_VERSION))
      '(BREAKDOWN_VERSION))


(DEFENTITY-CLASS "FUNCTIONAL_ELEMENT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'FUNCTIONAL_ELEMENT))
      '(BREAKDOWN_ELEMENT))


(DEFENTITY-CLASS "FUNCTIONAL_ELEMENT_DEFINITION" :AP233
  (("defined_version"
    :RANGE
    FUNCTIONAL_ELEMENT_VERSION
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :REDEFINITION-OF
    (PRODUCT_VIEW_DEFINITION "defined_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'FUNCTIONAL_ELEMENT_DEFINITION))
      '(BREAKDOWN_ELEMENT_DEFINITION))


(DEFENTITY-CLASS "FUNCTIONAL_ELEMENT_USAGE" :AP233
  (("relating_view"
    :RANGE
    FUNCTIONAL_ELEMENT_DEFINITION
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "relating_view")
    :OPTIONAL
    NIL)
   ("related_view"
    :RANGE
    FUNCTIONAL_ELEMENT_DEFINITION
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "related_view")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'FUNCTIONAL_ELEMENT_USAGE))
      '(BREAKDOWN_ELEMENT_USAGE))


(DEFENTITY-CLASS "FUNCTIONAL_ELEMENT_VERSION" :AP233
  (("of_product"
    :RANGE
    FUNCTIONAL_ELEMENT
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'FUNCTIONAL_ELEMENT_VERSION))
      '(BREAKDOWN_ELEMENT_VERSION))


(DEFENTITY-CLASS "BREAKDOWN" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'BREAKDOWN)) '(PRODUCT))


(DEFENTITY-CLASS "BREAKDOWN_CONTEXT" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    BREAKDOWN_CONTEXT
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    BREAKDOWN_CONTEXT
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    BREAKDOWN_CONTEXT
    :OPTIONAL
    T)
   ("breakdown"
    :RANGE
    BREAKDOWN_VERSION
    :SOURCE
    BREAKDOWN_CONTEXT
    :OPTIONAL
    NIL)
   ("breakdown_element"
    :RANGE
    BREAKDOWN_ELEMENT_DEFINITION
    :SOURCE
    BREAKDOWN_CONTEXT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "BREAKDOWN_ELEMENT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'BREAKDOWN_ELEMENT)) '(PRODUCT))


(DEFENTITY-CLASS "BREAKDOWN_ELEMENT_DEFINITION" :AP233
  (("defined_version"
    :RANGE
    BREAKDOWN_ELEMENT_VERSION
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :REDEFINITION-OF
    (PRODUCT_VIEW_DEFINITION "defined_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'BREAKDOWN_ELEMENT_DEFINITION))
      '(PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "BREAKDOWN_ELEMENT_REALIZATION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'BREAKDOWN_ELEMENT_REALIZATION))
      '(PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP))


(DEFENTITY-CLASS "BREAKDOWN_ELEMENT_USAGE" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    BREAKDOWN_ELEMENT_USAGE
    :OPTIONAL
    NIL)
   ("child_element"
    :RANGE
    BREAKDOWN_ELEMENT_DEFINITION
    :SOURCE
    BREAKDOWN_ELEMENT_USAGE
    :DERIVED
    (%RELATED_VIEW INSTANCE NIL))
   ("parent_element"
    :RANGE
    BREAKDOWN_ELEMENT_DEFINITION
    :SOURCE
    BREAKDOWN_ELEMENT_USAGE
    :DERIVED
    (%RELATING_VIEW INSTANCE NIL))
   ("relating_view"
    :RANGE
    BREAKDOWN_ELEMENT_DEFINITION
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "relating_view")
    :OPTIONAL
    NIL)
   ("related_view"
    :RANGE
    BREAKDOWN_ELEMENT_DEFINITION
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "related_view")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'BREAKDOWN_ELEMENT_USAGE))
      '(VIEW_DEFINITION_USAGE))


(DEFENTITY-CLASS "BREAKDOWN_ELEMENT_VERSION" :AP233
  (("of_product"
    :RANGE
    BREAKDOWN_ELEMENT
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'BREAKDOWN_ELEMENT_VERSION))
      '(PRODUCT_VERSION))


(DEFENTITY-CLASS "BREAKDOWN_OF" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    BREAKDOWN_OF
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    BREAKDOWN_OF
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    BREAKDOWN_OF
    :OPTIONAL
    T)
   ("breakdown"
    :RANGE
    BREAKDOWN_VERSION
    :SOURCE
    BREAKDOWN_OF
    :OPTIONAL
    NIL)
   ("of_view"
    :RANGE
    PRODUCT_VIEW_DEFINITION
    :SOURCE
    BREAKDOWN_OF
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "BREAKDOWN_VERSION" :AP233
  (("breakdown_of"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'BREAKDOWN_OF)
    :SOURCE
    BREAKDOWN_VERSION
    :INVERSE
    (BREAKDOWN_OF BREAKDOWN))
   ("of_product"
    :RANGE
    BREAKDOWN
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'BREAKDOWN_VERSION)) '(PRODUCT_VERSION))


(DEFENTITY-CLASS "PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP
    :OPTIONAL
    T)
   ("breakdown"
    :RANGE
    BREAKDOWN_ITEM
    :SOURCE
    PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("product"
    :RANGE
    PRODUCT_ITEM
    :SOURCE
    PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "GROUP" :AP233
  (("id" :RANGE (MAKE-INSTANCE 'STRING-TYP) :SOURCE GROUP :OPTIONAL T)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    GROUP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    GROUP
    :OPTIONAL
    T)
   ("elements"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   0
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'GROUPABLE_ITEM)
    :SOURCE
    GROUP
    :OPTIONAL
    NIL)
   ("membership_meaning"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    GROUP
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "GROUP_RELATIONSHIP" :AP233
  (("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    GROUP_RELATIONSHIP
    :OPTIONAL
    T)
   ("relation_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    GROUP_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("relating_group"
    :RANGE
    GROUP
    :SOURCE
    GROUP_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_group"
    :RANGE
    GROUP
    :SOURCE
    GROUP_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "BEHAVIOUR_DESCRIPTION_ASSOCIATION" :AP233
  (("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    BEHAVIOUR_DESCRIPTION_ASSOCIATION
    :OPTIONAL
    T)
   ("representation"
    :RANGE
    BEHAVIOUR_MODEL
    :SOURCE
    BEHAVIOUR_DESCRIPTION_ASSOCIATION
    :OPTIONAL
    NIL)
   ("represented_item"
    :RANGE
    BEHAVIOUR_ITEM
    :SOURCE
    BEHAVIOUR_DESCRIPTION_ASSOCIATION
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    BEHAVIOUR_DESCRIPTION_ASSOCIATION
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "BEHAVIOUR_VIEW_DEFINITION" :AP233
  (("defined_version"
    :RANGE
    BEHAVIOUR_VERSION
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :REDEFINITION-OF
    (PRODUCT_VIEW_DEFINITION "defined_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'BEHAVIOUR_VIEW_DEFINITION))
      '(PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "EXPRESSION_ASSIGNMENT" :AP233
  (("expression"
    :RANGE
    EXPRESSION
    :SOURCE
    EXPRESSION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'EXPRESSION_ASSIGNMENT_ITEM)
    :SOURCE
    EXPRESSION_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "AND_EXPRESSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'AND_EXPRESSION))
      '(MULTIPLE_ARITY_BOOLEAN_EXPRESSION))


(DEFENTITY-CLASS "BINARY_BOOLEAN_EXPRESSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'BINARY_BOOLEAN_EXPRESSION))
      '(BOOLEAN_EXPRESSION BINARY_GENERIC_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'BINARY_BOOLEAN_EXPRESSION)) T)


(DEFENTITY-CLASS "BINARY_NUMERIC_EXPRESSION" :AP233
  (("operands"
    :RANGE
    (MAKE-INSTANCE 'LIST-TYP
                   :L-BOUND
                   2
                   :U-BOUND
                   2
                   :BASE-TYPE
                   'NUMERIC_EXPRESSION
                   :UNIQUE
                   NIL)
    :SOURCE
    BINARY_GENERIC_EXPRESSION
    :REDEFINITION-OF
    (BINARY_GENERIC_EXPRESSION "operands")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'BINARY_NUMERIC_EXPRESSION))
      '(NUMERIC_EXPRESSION BINARY_GENERIC_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'BINARY_NUMERIC_EXPRESSION)) T)


(DEFENTITY-CLASS "BOOLEAN_DEFINED_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'BOOLEAN_DEFINED_FUNCTION))
      '(DEFINED_FUNCTION BOOLEAN_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'BOOLEAN_DEFINED_FUNCTION)) T)


(DEFENTITY-CLASS "BOOLEAN_EXPRESSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'BOOLEAN_EXPRESSION)) '(EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'BOOLEAN_EXPRESSION)) T)


(DEFENTITY-CLASS "BOOLEAN_LITERAL" :AP233
  (("the_value"
    :RANGE
    (MAKE-INSTANCE 'BOOLEAN-TYP)
    :SOURCE
    BOOLEAN_LITERAL
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'BOOLEAN_LITERAL))
      '(SIMPLE_BOOLEAN_EXPRESSION GENERIC_LITERAL))


(DEFENTITY-CLASS "BOOLEAN_VARIABLE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'BOOLEAN_VARIABLE))
      '(SIMPLE_BOOLEAN_EXPRESSION VARIABLE))


(DEFENTITY-CLASS "COMPARISON_EQUAL" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'COMPARISON_EQUAL))
      '(COMPARISON_EXPRESSION))


(DEFENTITY-CLASS "COMPARISON_EXPRESSION" :AP233
  (("operands"
    :RANGE
    (MAKE-INSTANCE 'LIST-TYP
                   :L-BOUND
                   2
                   :U-BOUND
                   2
                   :BASE-TYPE
                   'EXPRESSION
                   :UNIQUE
                   NIL)
    :SOURCE
    BINARY_GENERIC_EXPRESSION
    :REDEFINITION-OF
    (BINARY_GENERIC_EXPRESSION "operands")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'COMPARISON_EXPRESSION))
      '(BOOLEAN_EXPRESSION BINARY_GENERIC_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'COMPARISON_EXPRESSION)) T)

(DEFDOMAIN-RULES "COMPARISON_EXPRESSION"
  ("WR1"
   (EXPRESS-OR (EXPRESS-OR (EXPRESS-AND (IN "NUMERIC_EXPRESSION_ARM.NUMERIC_EXPRESSION"
                                            (BI-TYPEOF (EXPRESS-AREF (%OPERANDS
                                                                      INSTANCE
                                                                      NIL)
                                                                     1)))
                                        (IN "NUMERIC_EXPRESSION_ARM.NUMERIC_EXPRESSION"
                                            (BI-TYPEOF (EXPRESS-AREF (%OPERANDS
                                                                      INSTANCE
                                                                      NIL)
                                                                     2))))
                           (EXPRESS-AND (IN "BOOLEAN_EXPRESSION_ARM.BOOLEAN_EXPRESSION"
                                            (BI-TYPEOF (EXPRESS-AREF (%OPERANDS
                                                                      INSTANCE
                                                                      NIL)
                                                                     1)))
                                        (IN "BOOLEAN_EXPRESSION_ARM.BOOLEAN_EXPRESSION"
                                            (BI-TYPEOF (EXPRESS-AREF (%OPERANDS
                                                                      INSTANCE
                                                                      NIL)
                                                                     2)))))
               (EXPRESS-AND (IN "STRING_EXPRESSION_ARM.STRING_EXPRESSION"
                                (BI-TYPEOF (EXPRESS-AREF (%OPERANDS
                                                          INSTANCE
                                                          NIL)
                                                         1)))
                            (IN "STRING_EXPRESSION_ARM.STRING_EXPRESSION"
                                (BI-TYPEOF (EXPRESS-AREF (%OPERANDS
                                                          INSTANCE
                                                          NIL)
                                                         2)))))))


(DEFENTITY-CLASS "COMPARISON_GREATER" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'COMPARISON_GREATER))
      '(COMPARISON_EXPRESSION))


(DEFENTITY-CLASS "COMPARISON_GREATER_EQUAL" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'COMPARISON_GREATER_EQUAL))
      '(COMPARISON_EXPRESSION))


(DEFENTITY-CLASS "COMPARISON_LESS" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'COMPARISON_LESS))
      '(COMPARISON_EXPRESSION))


(DEFENTITY-CLASS "COMPARISON_LESS_EQUAL" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'COMPARISON_LESS_EQUAL))
      '(COMPARISON_EXPRESSION))


(DEFENTITY-CLASS "COMPARISON_NOT_EQUAL" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'COMPARISON_NOT_EQUAL))
      '(COMPARISON_EXPRESSION))


(DEFENTITY-CLASS "CONCAT_EXPRESSION" :AP233
  (("operands"
    :RANGE
    (MAKE-INSTANCE 'LIST-TYP
                   :L-BOUND
                   2
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STRING_EXPRESSION
                   :UNIQUE
                   NIL)
    :SOURCE
    MULTIPLE_ARITY_GENERIC_EXPRESSION
    :REDEFINITION-OF
    (MULTIPLE_ARITY_GENERIC_EXPRESSION "operands")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'CONCAT_EXPRESSION))
      '(STRING_EXPRESSION MULTIPLE_ARITY_GENERIC_EXPRESSION))


(DEFENTITY-CLASS "DEFINED_FUNCTION" :AP233 NIL)
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'DEFINED_FUNCTION)) T)


(DEFENTITY-CLASS "DIV_EXPRESSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'DIV_EXPRESSION))
      '(BINARY_NUMERIC_EXPRESSION))


(DEFENTITY-CLASS "EQUALS_EXPRESSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'EQUALS_EXPRESSION))
      '(BINARY_BOOLEAN_EXPRESSION))


(DEFENTITY-CLASS "EXPRESSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'EXPRESSION)) '(GENERIC_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'EXPRESSION)) T)


(DEFENTITY-CLASS "FORMAT_FUNCTION" :AP233
  (("value_to_format"
    :RANGE
    GENERIC_EXPRESSION
    :SOURCE
    FORMAT_FUNCTION
    :DERIVED
    (EXPRESS-AREF (%OPERANDS INSTANCE NIL) 1))
   ("format_string"
    :RANGE
    GENERIC_EXPRESSION
    :SOURCE
    FORMAT_FUNCTION
    :DERIVED
    (EXPRESS-AREF (%OPERANDS INSTANCE NIL) 2))))

(SETF (SUBTYPE-OF (FIND-CLASS 'FORMAT_FUNCTION))
      '(STRING_EXPRESSION BINARY_GENERIC_EXPRESSION))

(DEFDOMAIN-RULES "FORMAT_FUNCTION"
  ("WR1"
   (EXPRESS-AND (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.NUMERIC_EXPRESSION"
                    (BI-TYPEOF (%VALUE_TO_FORMAT INSTANCE NIL)))
                (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.STRING_EXPRESSION"
                    (BI-TYPEOF (%FORMAT_STRING INSTANCE NIL))))))


(DEFENTITY-CLASS "INDEX_EXPRESSION" :AP233
  (("operand"
    :RANGE
    GENERIC_EXPRESSION
    :SOURCE
    INDEX_EXPRESSION
    :DERIVED
    (EXPRESS-AREF (%OPERANDS INSTANCE NIL) 1))
   ("index"
    :RANGE
    GENERIC_EXPRESSION
    :SOURCE
    INDEX_EXPRESSION
    :DERIVED
    (EXPRESS-AREF (%OPERANDS INSTANCE NIL) 2))))

(SETF (SUBTYPE-OF (FIND-CLASS 'INDEX_EXPRESSION))
      '(STRING_EXPRESSION BINARY_GENERIC_EXPRESSION))

(DEFDOMAIN-RULES "INDEX_EXPRESSION"
  ("WR1"
   (EXPRESS-AND (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.STRING_EXPRESSION"
                    (BI-TYPEOF (%OPERAND INSTANCE NIL)))
                (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.NUMERIC_EXPRESSION"
                    (BI-TYPEOF (%INDEX INSTANCE NIL)))))
  ("WR2" ("Is_int_expr" (%INDEX INSTANCE NIL))))


(DEFENTITY-CLASS "INT_LITERAL" :AP233
  (("the_value"
    :RANGE
    (MAKE-INSTANCE 'INTEGER-TYP)
    :SOURCE
    LITERAL_NUMBER
    :REDEFINITION-OF
    (LITERAL_NUMBER "the_value")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'INT_LITERAL)) '(LITERAL_NUMBER))


(DEFENTITY-CLASS "INT_NUMERIC_VARIABLE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'INT_NUMERIC_VARIABLE))
      '(NUMERIC_VARIABLE))


(DEFENTITY-CLASS "INTERVAL_EXPRESSION" :AP233
  (("interval_low"
    :RANGE
    GENERIC_EXPRESSION
    :SOURCE
    INTERVAL_EXPRESSION
    :DERIVED
    (EXPRESS-AREF (%OPERANDS INSTANCE NIL) 1))
   ("interval_item"
    :RANGE
    GENERIC_EXPRESSION
    :SOURCE
    INTERVAL_EXPRESSION
    :DERIVED
    (EXPRESS-AREF (%OPERANDS INSTANCE NIL) 2))
   ("interval_high"
    :RANGE
    GENERIC_EXPRESSION
    :SOURCE
    INTERVAL_EXPRESSION
    :DERIVED
    (EXPRESS-AREF (%OPERANDS INSTANCE NIL) 3))))

(SETF (SUBTYPE-OF (FIND-CLASS 'INTERVAL_EXPRESSION))
      '(BOOLEAN_EXPRESSION MULTIPLE_ARITY_GENERIC_EXPRESSION))

(DEFDOMAIN-RULES "INTERVAL_EXPRESSION"
  ("WR1"
   (EXPRESS-AND (EXPRESS-AND (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.EXPRESSION"
                                 (BI-TYPEOF (%INTERVAL_LOW
                                             INSTANCE
                                             NIL)))
                             (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.EXPRESSION"
                                 (BI-TYPEOF (%INTERVAL_ITEM
                                             INSTANCE
                                             NIL))))
                (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.EXPRESSION"
                    (BI-TYPEOF (%INTERVAL_HIGH INSTANCE NIL)))))
  ("WR2"
   (EXPRESS-OR (EXPRESS-AND (EXPRESS-AND (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.STRING_EXPRESSION"
                                             (BI-TYPEOF (%INTERVAL_LOW
                                                         INSTANCE
                                                         NIL)))
                                         (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.STRING_EXPRESSION"
                                             (BI-TYPEOF (%INTERVAL_HIGH
                                                         INSTANCE
                                                         NIL))))
                            (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.STRING_EXPRESSION"
                                (BI-TYPEOF (%INTERVAL_ITEM
                                            INSTANCE
                                            NIL))))
               (EXPRESS-AND (EXPRESS-AND (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.STRING_EXPRESSION"
                                             (BI-TYPEOF (%INTERVAL_LOW
                                                         INSTANCE
                                                         NIL)))
                                         (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.NUMERIC_EXPRESSION"
                                             (BI-TYPEOF (%INTERVAL_ITEM
                                                         INSTANCE
                                                         NIL))))
                            (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.NUMERIC_EXPRESSION"
                                (BI-TYPEOF (%INTERVAL_HIGH
                                            INSTANCE
                                            NIL)))))))


(DEFENTITY-CLASS "LIKE_EXPRESSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'LIKE_EXPRESSION))
      '(COMPARISON_EXPRESSION))

(DEFDOMAIN-RULES "LIKE_EXPRESSION"
  ("WR1"
   (EXPRESS-AND (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.STRING_EXPRESSION"
                    (BI-TYPEOF (EXPRESS-AREF (%OPERANDS INSTANCE NIL)
                                             1)))
                (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.STRING_EXPRESSION"
                    (BI-TYPEOF (EXPRESS-AREF (%OPERANDS INSTANCE NIL)
                                             2))))))


(DEFENTITY-CLASS "LITERAL_NUMBER" :AP233
  (("the_value"
    :RANGE
    (MAKE-INSTANCE 'NUMBER-TYP)
    :SOURCE
    LITERAL_NUMBER
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'LITERAL_NUMBER))
      '(SIMPLE_NUMERIC_EXPRESSION GENERIC_LITERAL))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'LITERAL_NUMBER)) T)


(DEFENTITY-CLASS "MINUS_EXPRESSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'MINUS_EXPRESSION))
      '(BINARY_NUMERIC_EXPRESSION))


(DEFENTITY-CLASS "MOD_EXPRESSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'MOD_EXPRESSION))
      '(BINARY_NUMERIC_EXPRESSION))


(DEFENTITY-CLASS "MULT_EXPRESSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'MULT_EXPRESSION))
      '(MULTIPLE_ARITY_NUMERIC_EXPRESSION))


(DEFENTITY-CLASS "MULTIPLE_ARITY_BOOLEAN_EXPRESSION" :AP233
  (("operands"
    :RANGE
    (MAKE-INSTANCE 'LIST-TYP
                   :L-BOUND
                   2
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'BOOLEAN_EXPRESSION
                   :UNIQUE
                   NIL)
    :SOURCE
    MULTIPLE_ARITY_GENERIC_EXPRESSION
    :REDEFINITION-OF
    (MULTIPLE_ARITY_GENERIC_EXPRESSION "operands")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'MULTIPLE_ARITY_BOOLEAN_EXPRESSION))
      '(BOOLEAN_EXPRESSION MULTIPLE_ARITY_GENERIC_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'MULTIPLE_ARITY_BOOLEAN_EXPRESSION))
      T)


(DEFENTITY-CLASS "MULTIPLE_ARITY_FUNCTION_CALL" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'MULTIPLE_ARITY_FUNCTION_CALL))
      '(MULTIPLE_ARITY_NUMERIC_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'MULTIPLE_ARITY_FUNCTION_CALL)) T)


(DEFENTITY-CLASS "MULTIPLE_ARITY_NUMERIC_EXPRESSION" :AP233
  (("operands"
    :RANGE
    (MAKE-INSTANCE 'LIST-TYP
                   :L-BOUND
                   2
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'NUMERIC_EXPRESSION
                   :UNIQUE
                   NIL)
    :SOURCE
    MULTIPLE_ARITY_GENERIC_EXPRESSION
    :REDEFINITION-OF
    (MULTIPLE_ARITY_GENERIC_EXPRESSION "operands")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'MULTIPLE_ARITY_NUMERIC_EXPRESSION))
      '(NUMERIC_EXPRESSION MULTIPLE_ARITY_GENERIC_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'MULTIPLE_ARITY_NUMERIC_EXPRESSION))
      T)


(DEFENTITY-CLASS "NOT_EXPRESSION" :AP233
  (("operand"
    :RANGE
    BOOLEAN_EXPRESSION
    :SOURCE
    UNARY_GENERIC_EXPRESSION
    :REDEFINITION-OF
    (UNARY_GENERIC_EXPRESSION "operand")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'NOT_EXPRESSION))
      '(UNARY_BOOLEAN_EXPRESSION))


(DEFENTITY-CLASS "NUMERIC_EXPRESSION" :AP233
  (("is_int"
    :RANGE
    (MAKE-INSTANCE 'BOOLEAN-TYP)
    :SOURCE
    NUMERIC_EXPRESSION
    :DERIVED
    ("Is_int_expr" INSTANCE))
   ("sql_mappable"
    :RANGE
    (MAKE-INSTANCE 'BOOLEAN-TYP)
    :SOURCE
    NUMERIC_EXPRESSION
    :DERIVED
    ("Is_sql_mappable" INSTANCE))))

(SETF (SUBTYPE-OF (FIND-CLASS 'NUMERIC_EXPRESSION)) '(EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'NUMERIC_EXPRESSION)) T)


(DEFENTITY-CLASS "NUMERIC_VARIABLE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'NUMERIC_VARIABLE))
      '(SIMPLE_NUMERIC_EXPRESSION VARIABLE))

(DEFDOMAIN-RULES "NUMERIC_VARIABLE"
  ("WR1"
   (EXPRESS-OR (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.INT_NUMERIC_VARIABLE"
                   (BI-TYPEOF INSTANCE))
               (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.REAL_NUMERIC_VARIABLE"
                   (BI-TYPEOF INSTANCE)))))


(DEFENTITY-CLASS "OR_EXPRESSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'OR_EXPRESSION))
      '(MULTIPLE_ARITY_BOOLEAN_EXPRESSION))


(DEFENTITY-CLASS "PLUS_EXPRESSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'PLUS_EXPRESSION))
      '(MULTIPLE_ARITY_NUMERIC_EXPRESSION))


(DEFENTITY-CLASS "POWER_EXPRESSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'POWER_EXPRESSION))
      '(BINARY_NUMERIC_EXPRESSION))


(DEFENTITY-CLASS "REAL_LITERAL" :AP233
  (("the_value"
    :RANGE
    (MAKE-INSTANCE 'REAL-TYP)
    :SOURCE
    LITERAL_NUMBER
    :REDEFINITION-OF
    (LITERAL_NUMBER "the_value")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'REAL_LITERAL)) '(LITERAL_NUMBER))


(DEFENTITY-CLASS "REAL_NUMERIC_VARIABLE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'REAL_NUMERIC_VARIABLE))
      '(NUMERIC_VARIABLE))


(DEFENTITY-CLASS "SIMPLE_BOOLEAN_EXPRESSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'SIMPLE_BOOLEAN_EXPRESSION))
      '(BOOLEAN_EXPRESSION SIMPLE_GENERIC_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'SIMPLE_BOOLEAN_EXPRESSION)) T)


(DEFENTITY-CLASS "SIMPLE_NUMERIC_EXPRESSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'SIMPLE_NUMERIC_EXPRESSION))
      '(NUMERIC_EXPRESSION SIMPLE_GENERIC_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'SIMPLE_NUMERIC_EXPRESSION)) T)


(DEFENTITY-CLASS "SIMPLE_STRING_EXPRESSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'SIMPLE_STRING_EXPRESSION))
      '(STRING_EXPRESSION SIMPLE_GENERIC_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'SIMPLE_STRING_EXPRESSION)) T)


(DEFENTITY-CLASS "SLASH_EXPRESSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'SLASH_EXPRESSION))
      '(BINARY_NUMERIC_EXPRESSION))


(DEFENTITY-CLASS "SQL_MAPPABLE_DEFINED_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'SQL_MAPPABLE_DEFINED_FUNCTION))
      '(DEFINED_FUNCTION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'SQL_MAPPABLE_DEFINED_FUNCTION)) T)


(DEFENTITY-CLASS "STRING_DEFINED_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'STRING_DEFINED_FUNCTION))
      '(DEFINED_FUNCTION STRING_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'STRING_DEFINED_FUNCTION)) T)


(DEFENTITY-CLASS "STRING_EXPRESSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'STRING_EXPRESSION)) '(EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'STRING_EXPRESSION)) T)


(DEFENTITY-CLASS "STRING_LITERAL" :AP233
  (("the_value"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    STRING_LITERAL
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'STRING_LITERAL))
      '(SIMPLE_STRING_EXPRESSION GENERIC_LITERAL))


(DEFENTITY-CLASS "STRING_VARIABLE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'STRING_VARIABLE))
      '(SIMPLE_STRING_EXPRESSION VARIABLE))


(DEFENTITY-CLASS "SUBSTRING_EXPRESSION" :AP233
  (("operand"
    :RANGE
    GENERIC_EXPRESSION
    :SOURCE
    SUBSTRING_EXPRESSION
    :DERIVED
    (EXPRESS-AREF (%OPERANDS INSTANCE NIL) 1))
   ("index1"
    :RANGE
    GENERIC_EXPRESSION
    :SOURCE
    SUBSTRING_EXPRESSION
    :DERIVED
    (EXPRESS-AREF (%OPERANDS INSTANCE NIL) 2))
   ("index2"
    :RANGE
    GENERIC_EXPRESSION
    :SOURCE
    SUBSTRING_EXPRESSION
    :DERIVED
    (EXPRESS-AREF (%OPERANDS INSTANCE NIL) 3))))

(SETF (SUBTYPE-OF (FIND-CLASS 'SUBSTRING_EXPRESSION))
      '(STRING_EXPRESSION MULTIPLE_ARITY_GENERIC_EXPRESSION))

(DEFDOMAIN-RULES "SUBSTRING_EXPRESSION"
  ("WR1"
   (EXPRESS-AND (EXPRESS-AND (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.STRING_EXPRESSION"
                                 (BI-TYPEOF (%OPERAND INSTANCE NIL)))
                             (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.NUMERIC_EXPRESSION"
                                 (BI-TYPEOF (%INDEX1 INSTANCE NIL))))
                (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.NUMERIC_EXPRESSION"
                    (BI-TYPEOF (%INDEX2 INSTANCE NIL)))))
  ("WR2" (EXPRESS-EQUAL (BI-SIZEOF (%OPERANDS INSTANCE NIL)) 3))
  ("WR3" ("Is_int_expr" (%INDEX1 INSTANCE NIL)))
  ("WR4" ("Is_int_expr" (%INDEX2 INSTANCE NIL))))


(DEFENTITY-CLASS "UNARY_BOOLEAN_EXPRESSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'UNARY_BOOLEAN_EXPRESSION))
      '(BOOLEAN_EXPRESSION UNARY_GENERIC_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'UNARY_BOOLEAN_EXPRESSION)) T)


(DEFENTITY-CLASS "UNARY_NUMERIC_EXPRESSION" :AP233
  (("operand"
    :RANGE
    NUMERIC_EXPRESSION
    :SOURCE
    UNARY_GENERIC_EXPRESSION
    :REDEFINITION-OF
    (UNARY_GENERIC_EXPRESSION "operand")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'UNARY_NUMERIC_EXPRESSION))
      '(NUMERIC_EXPRESSION UNARY_GENERIC_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'UNARY_NUMERIC_EXPRESSION)) T)


(DEFENTITY-CLASS "XOR_EXPRESSION" :AP233
  (("operands"
    :RANGE
    (MAKE-INSTANCE 'LIST-TYP
                   :L-BOUND
                   2
                   :U-BOUND
                   2
                   :BASE-TYPE
                   'BOOLEAN_EXPRESSION
                   :UNIQUE
                   NIL)
    :SOURCE
    BINARY_GENERIC_EXPRESSION
    :REDEFINITION-OF
    (BINARY_GENERIC_EXPRESSION "operands")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'XOR_EXPRESSION))
      '(BINARY_BOOLEAN_EXPRESSION))


(DEFENTITY-CLASS "BINARY_GENERIC_EXPRESSION" :AP233
  (("operands"
    :RANGE
    (MAKE-INSTANCE 'LIST-TYP
                   :L-BOUND
                   2
                   :U-BOUND
                   2
                   :BASE-TYPE
                   'GENERIC_EXPRESSION
                   :UNIQUE
                   NIL)
    :SOURCE
    BINARY_GENERIC_EXPRESSION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'BINARY_GENERIC_EXPRESSION))
      '(GENERIC_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'BINARY_GENERIC_EXPRESSION)) T)


(DEFENTITY-CLASS "ENVIRONMENT" :AP233
  (("syntactic_representation"
    :RANGE
    GENERIC_VARIABLE
    :SOURCE
    ENVIRONMENT
    :OPTIONAL
    NIL)
   ("semantics"
    :RANGE
    VARIABLE_SEMANTICS
    :SOURCE
    ENVIRONMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "GENERIC_EXPRESSION" :AP233 NIL)
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'GENERIC_EXPRESSION)) T)

(DEFDOMAIN-RULES "GENERIC_EXPRESSION" ("WR1" ("Is_Acyclic" INSTANCE)))


(DEFENTITY-CLASS "GENERIC_LITERAL" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'GENERIC_LITERAL))
      '(SIMPLE_GENERIC_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'GENERIC_LITERAL)) T)


(DEFENTITY-CLASS "GENERIC_VARIABLE" :AP233
  (("interpretation"
    :RANGE
    ENVIRONMENT
    :SOURCE
    GENERIC_VARIABLE
    :INVERSE
    (ENVIRONMENT SYNTACTIC_REPRESENTATION))))

(SETF (SUBTYPE-OF (FIND-CLASS 'GENERIC_VARIABLE))
      '(SIMPLE_GENERIC_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'GENERIC_VARIABLE)) T)


(DEFENTITY-CLASS "MULTIPLE_ARITY_GENERIC_EXPRESSION" :AP233
  (("operands"
    :RANGE
    (MAKE-INSTANCE 'LIST-TYP
                   :L-BOUND
                   2
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'GENERIC_EXPRESSION
                   :UNIQUE
                   NIL)
    :SOURCE
    MULTIPLE_ARITY_GENERIC_EXPRESSION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'MULTIPLE_ARITY_GENERIC_EXPRESSION))
      '(GENERIC_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'MULTIPLE_ARITY_GENERIC_EXPRESSION))
      T)


(DEFENTITY-CLASS "SIMPLE_GENERIC_EXPRESSION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'SIMPLE_GENERIC_EXPRESSION))
      '(GENERIC_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'SIMPLE_GENERIC_EXPRESSION)) T)


(DEFENTITY-CLASS "UNARY_GENERIC_EXPRESSION" :AP233
  (("operand"
    :RANGE
    GENERIC_EXPRESSION
    :SOURCE
    UNARY_GENERIC_EXPRESSION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'UNARY_GENERIC_EXPRESSION))
      '(GENERIC_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'UNARY_GENERIC_EXPRESSION)) T)


(DEFENTITY-CLASS "VARIABLE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'VARIABLE)) '(GENERIC_VARIABLE))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'VARIABLE)) T)


(DEFENTITY-CLASS "VARIABLE_SEMANTICS" :AP233 NIL)
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'VARIABLE_SEMANTICS)) T)


(DEFENTITY-CLASS "EXTERNAL_FUNCTIONAL_MODEL" :AP233
  (("external_file"
    :RANGE
    DIGITAL_FILE
    :SOURCE
    EXTERNAL_FUNCTIONAL_MODEL
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'EXTERNAL_FUNCTIONAL_MODEL))
      '(FUNCTION_BASED_BEHAVIOUR_MODEL))


(DEFENTITY-CLASS "DIGITAL_FILE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'DIGITAL_FILE)) '(FILE))


(DEFENTITY-CLASS "FILE" :AP233
  (("id" :RANGE (MAKE-INSTANCE 'STRING-TYP) :SOURCE FILE :OPTIONAL NIL)
   ("version"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    FILE
    :OPTIONAL
    T)
   ("contained_data_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    FILE
    :OPTIONAL
    T)))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'FILE)) T)


(DEFENTITY-CLASS "HARDCOPY" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'HARDCOPY)) '(FILE))


(DEFENTITY-CLASS "FILE_LOCATION_IDENTIFICATION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'FILE_LOCATION_IDENTIFICATION))
      '(EXTERNAL_ITEM_IDENTIFICATION))

(DEFDOMAIN-RULES "FILE_LOCATION_IDENTIFICATION"
  ("WR1"
   (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.FILE"
       (BI-TYPEOF (%ITEM INSTANCE NIL)))))


(DEFENTITY-CLASS "FUNCTION_BASED_BEHAVIOUR_MODEL" :AP233
  (("context_of_items"
    :RANGE
    FUNCTION_BASED_BEHAVIOUR_REPRESENTATION_CONTEXT
    :SOURCE
    REPRESENTATION
    :REDEFINITION-OF
    (REPRESENTATION "context_of_items")
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'FUNCTION_BASED_BEHAVIOUR_REPRESENTATION_ITEM)
    :SOURCE
    REPRESENTATION
    :REDEFINITION-OF
    (REPRESENTATION "items")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'FUNCTION_BASED_BEHAVIOUR_MODEL))
      '(REPRESENTATION))


(DEFENTITY-CLASS "FUNCTION_BASED_BEHAVIOUR_REPRESENTATION_CONTEXT"
                 :AP233
  NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'FUNCTION_BASED_BEHAVIOUR_REPRESENTATION_CONTEXT))
      '(REPRESENTATION_CONTEXT))


(DEFENTITY-CLASS "FUNCTION_BASED_BEHAVIOUR_REPRESENTATION_ITEM" :AP233
  (("item"
    :RANGE
    TASK_ELEMENT
    :SOURCE
    FUNCTION_BASED_BEHAVIOUR_REPRESENTATION_ITEM
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'FUNCTION_BASED_BEHAVIOUR_REPRESENTATION_ITEM))
      '(REPRESENTATION_ITEM))


(DEFENTITY-CLASS "CONSTRAINED_GENERAL_PARAMETER_RELATIONSHIP" :AP233
  (("required_class"
    :RANGE
    CLASS
    :SOURCE
    CONSTRAINED_GENERAL_PARAMETER_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("relating"
    :RANGE
    GENERAL_MODEL_PARAMETER
    :SOURCE
    INDEPENDENT_PROPERTY_RELATIONSHIP
    :REDEFINITION-OF
    (INDEPENDENT_PROPERTY_RELATIONSHIP "relating")
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    GENERAL_MODEL_PARAMETER
    :SOURCE
    INDEPENDENT_PROPERTY_RELATIONSHIP
    :REDEFINITION-OF
    (INDEPENDENT_PROPERTY_RELATIONSHIP "related")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'CONSTRAINED_GENERAL_PARAMETER_RELATIONSHIP))
      '(INDEPENDENT_PROPERTY_RELATIONSHIP))

(DEFDOMAIN-RULES "CONSTRAINED_GENERAL_PARAMETER_RELATIONSHIP"
  ("WR1"
   (EXPRESS-AND (IN (%ID (%REQUIRED_CLASS INSTANCE NIL) NIL)
                    ("CLASSOF" (%RELATED INSTANCE NIL)))
                (IN (%ID (%REQUIRED_CLASS INSTANCE NIL) NIL)
                    ("CLASSOF" (%RELATING INSTANCE NIL))))))


(DEFENTITY-CLASS "GENERAL_MODEL_PARAMETER" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'GENERAL_MODEL_PARAMETER))
      '(INDEPENDENT_PROPERTY))


(DEFENTITY-CLASS "PARAMETER_VALUE_REPRESENTATION_ITEM" :AP233
  (("parameter_value"
    :RANGE
    PARAMETER_VALUE_SELECT
    :SOURCE
    PARAMETER_VALUE_REPRESENTATION_ITEM
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PARAMETER_VALUE_REPRESENTATION_ITEM))
      '(REPRESENTATION_ITEM))


(DEFENTITY-CLASS "REQUIRED_RESOURCE" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REQUIRED_RESOURCE
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REQUIRED_RESOURCE
    :OPTIONAL
    T)
   ("required_quantity"
    :RANGE
    VALUE_WITH_UNIT
    :SOURCE
    REQUIRED_RESOURCE
    :OPTIONAL
    T)))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'REQUIRED_RESOURCE)) T)


(DEFENTITY-CLASS "REQUIRED_RESOURCE_ASSIGNMENT" :AP233
  (("assigned_resource"
    :RANGE
    REQUIRED_RESOURCE
    :SOURCE
    REQUIRED_RESOURCE_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("item"
    :RANGE
    REQUIRED_RESOURCE_ITEM
    :SOURCE
    REQUIRED_RESOURCE_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "REQUIRED_RESOURCE_BY_REFERENCE" :AP233
  (("item"
    :RANGE
    RESOURCE_ITEM_SELECT
    :SOURCE
    REQUIRED_RESOURCE_BY_REFERENCE
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'REQUIRED_RESOURCE_BY_REFERENCE))
      '(REQUIRED_RESOURCE))


(DEFENTITY-CLASS "REQUIRED_RESOURCE_BY_REQUIREMENT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'REQUIRED_RESOURCE_BY_REQUIREMENT))
      '(REQUIRED_RESOURCE))


(DEFENTITY-CLASS "REQUIRED_RESOURCE_BY_RESOURCE_ITEM" :AP233
  (("resource_item"
    :RANGE
    RESOURCE_ITEM
    :SOURCE
    REQUIRED_RESOURCE_BY_RESOURCE_ITEM
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'REQUIRED_RESOURCE_BY_RESOURCE_ITEM))
      '(REQUIRED_RESOURCE))


(DEFENTITY-CLASS "REQUIRED_RESOURCE_RELATIONSHIP" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REQUIRED_RESOURCE_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REQUIRED_RESOURCE_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating"
    :RANGE
    REQUIRED_RESOURCE
    :SOURCE
    REQUIRED_RESOURCE_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    REQUIRED_RESOURCE
    :SOURCE
    REQUIRED_RESOURCE_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "REQUIRED_RESOURCE_REQUIREMENT" :AP233
  (("item"
    :RANGE
    RESOURCE_REQUIREMENT_SELECT
    :SOURCE
    REQUIRED_RESOURCE_REQUIREMENT
    :OPTIONAL
    NIL)
   ("resource_requirement"
    :RANGE
    REQUIRED_RESOURCE_BY_REQUIREMENT
    :SOURCE
    REQUIRED_RESOURCE_REQUIREMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "APPLIED_INDEPENDENT_RESOURCE_PROPERTY" :AP233
  (("base_element_property"
    :RANGE
    INDEPENDENT_PROPERTY
    :SOURCE
    APPLIED_INDEPENDENT_RESOURCE_PROPERTY
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RESOURCE_PROPERTY
    :DERIVED
    (%PROPERTY_TYPE (%BASE_ELEMENT_PROPERTY INSTANCE NIL) NIL)
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'APPLIED_INDEPENDENT_RESOURCE_PROPERTY))
      '(RESOURCE_PROPERTY))


(DEFENTITY-CLASS "RESOURCE_PROPERTY" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RESOURCE_PROPERTY
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RESOURCE_PROPERTY
    :OPTIONAL
    NIL)
   ("described_element"
    :RANGE
    CHARACTERIZED_RESOURCE_SELECT
    :SOURCE
    RESOURCE_PROPERTY
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "RESOURCE_PROPERTY_REPRESENTATION" :AP233
  (("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RESOURCE_PROPERTY_REPRESENTATION
    :OPTIONAL
    T)
   ("property"
    :RANGE
    RESOURCE_PROPERTY
    :SOURCE
    RESOURCE_PROPERTY_REPRESENTATION
    :OPTIONAL
    NIL)
   ("rep"
    :RANGE
    REPRESENTATION
    :SOURCE
    RESOURCE_PROPERTY_REPRESENTATION
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RESOURCE_PROPERTY_REPRESENTATION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "INCLUDED_TEXT_BASED_REPRESENTATION" :AP233
  ((MEXICO:|source|
    :RANGE
    TEXT_BASED_REPRESENTATION
    :SOURCE
    INCLUDED_TEXT_BASED_REPRESENTATION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'INCLUDED_TEXT_BASED_REPRESENTATION))
      '(REPRESENTATION_ITEM))


(DEFENTITY-CLASS "TEXT_BASED_REPRESENTATION" :AP233
  (("context_of_items"
    :RANGE
    TEXT_BASED_REPRESENTATION_CONTEXT
    :SOURCE
    REPRESENTATION
    :REDEFINITION-OF
    (REPRESENTATION "context_of_items")
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   1
                   :BASE-TYPE
                   'TEXT_BASED_ITEM_SELECT)
    :SOURCE
    REPRESENTATION
    :REDEFINITION-OF
    (REPRESENTATION "items")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'TEXT_BASED_REPRESENTATION))
      '(REPRESENTATION))


(DEFENTITY-CLASS "TEXT_BASED_REPRESENTATION_CONTEXT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'TEXT_BASED_REPRESENTATION_CONTEXT))
      '(REPRESENTATION_CONTEXT))


(DEFENTITY-CLASS "TEXTUAL_EXPRESSION_COMPOSITION" :AP233
  (("content"
    :RANGE
    LIST_OR_SET_OF_TEXT_BASED_ITEM
    :SOURCE
    TEXTUAL_EXPRESSION_COMPOSITION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'TEXTUAL_EXPRESSION_COMPOSITION))
      '(REPRESENTATION_ITEM))


(DEFENTITY-CLASS "TEXTUAL_EXPRESSION_REPRESENTATION_ITEM" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'TEXTUAL_EXPRESSION_REPRESENTATION_ITEM))
      '(STRING_REPRESENTATION_ITEM))


(DEFENTITY-CLASS "ALIAS_IDENTIFICATION" :AP233
  (("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    IDENTIFICATION_ASSIGNMENT
    :DERIVED
    "alias"
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'ALIAS_IDENTIFICATION_ITEM)
    :SOURCE
    IDENTIFICATION_ASSIGNMENT
    :REDEFINITION-OF
    (IDENTIFICATION_ASSIGNMENT "items")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ALIAS_IDENTIFICATION))
      '(IDENTIFICATION_ASSIGNMENT))


(DEFENTITY-CLASS "CONDITION" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CONDITION
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CONDITION
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "CONDITION_ASSIGNMENT" :AP233
  (("assigned_condition"
    :RANGE
    CONDITION
    :SOURCE
    CONDITION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("item"
    :RANGE
    CONDITION_ITEM
    :SOURCE
    CONDITION_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "CONDITION_PARAMETER" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CONDITION_PARAMETER
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CONDITION_PARAMETER
    :OPTIONAL
    T)
   ("condition"
    :RANGE
    CONDITION
    :SOURCE
    CONDITION_PARAMETER
    :OPTIONAL
    NIL)
   ("parameter"
    :RANGE
    CONDITION_PARAMETER_ITEM
    :SOURCE
    CONDITION_PARAMETER
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "CONDITION_RELATIONSHIP" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CONDITION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CONDITION_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating_condition"
    :RANGE
    CONDITION
    :SOURCE
    CONDITION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_condition"
    :RANGE
    CONDITION
    :SOURCE
    CONDITION_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "DESCRIPTION_TEXT" :AP233
  (("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    DESCRIPTION_TEXT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "DESCRIPTION_TEXT_ASSIGNMENT" :AP233
  (("description"
    :RANGE
    DESCRIPTION_TEXT
    :SOURCE
    DESCRIPTION_TEXT_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'DESCRIPTION_ITEM)
    :SOURCE
    DESCRIPTION_TEXT_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "EXTERNAL_STATE_BASED_BEHAVIOUR_MODEL" :AP233
  (("external_file"
    :RANGE
    DIGITAL_FILE
    :SOURCE
    EXTERNAL_STATE_BASED_BEHAVIOUR_MODEL
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'EXTERNAL_STATE_BASED_BEHAVIOUR_MODEL))
      '(STATE_BASED_BEHAVIOUR_MODEL))


(DEFENTITY-CLASS "STATE_BASED_BEHAVIOUR_MODEL" :AP233
  (("context_of_items"
    :RANGE
    STATE_BASED_BEHAVIOUR_REPRESENTATION_CONTEXT
    :SOURCE
    REPRESENTATION
    :REDEFINITION-OF
    (REPRESENTATION "context_of_items")
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_BASED_BEHAVIOUR_REPRESENTATION_ITEM)
    :SOURCE
    REPRESENTATION
    :REDEFINITION-OF
    (REPRESENTATION "items")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'STATE_BASED_BEHAVIOUR_MODEL))
      '(REPRESENTATION))


(DEFENTITY-CLASS "STATE_BASED_BEHAVIOUR_REPRESENTATION_CONTEXT" :AP233
  NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'STATE_BASED_BEHAVIOUR_REPRESENTATION_CONTEXT))
      '(REPRESENTATION_CONTEXT))


(DEFENTITY-CLASS "STATE_BASED_BEHAVIOUR_REPRESENTATION_ITEM" :AP233
  (("item"
    :RANGE
    STATE_BASED_BEHAVIOUR_ELEMENT
    :SOURCE
    STATE_BASED_BEHAVIOUR_REPRESENTATION_ITEM
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'STATE_BASED_BEHAVIOUR_REPRESENTATION_ITEM))
      '(REPRESENTATION_ITEM))


(DEFENTITY-CLASS "EXTERNAL_CLASS" :AP233
  (("external_source"
    :RANGE
    EXTERNAL_CLASS_LIBRARY
    :SOURCE
    EXTERNAL_CLASS
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'EXTERNAL_CLASS)) '(CLASS))


(DEFENTITY-CLASS "EXTERNAL_CLASS_LIBRARY" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'EXTERNAL_CLASS_LIBRARY))
      '(EXTERNAL_SOURCE))


(DEFENTITY-CLASS "EXTERNAL_SOURCE" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EXTERNAL_SOURCE
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EXTERNAL_SOURCE
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "NAME_ASSIGNMENT" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    NAME_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    NAME_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    ASSIGNED_NAME_SELECT
    :SOURCE
    NAME_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "INDEPENDENT_PROPERTY" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INDEPENDENT_PROPERTY
    :OPTIONAL
    NIL)
   ("property_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INDEPENDENT_PROPERTY
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INDEPENDENT_PROPERTY
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "INDEPENDENT_PROPERTY_RELATIONSHIP" :AP233
  (("relation_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INDEPENDENT_PROPERTY_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INDEPENDENT_PROPERTY_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating"
    :RANGE
    INDEPENDENT_PROPERTY
    :SOURCE
    INDEPENDENT_PROPERTY_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    INDEPENDENT_PROPERTY
    :SOURCE
    INDEPENDENT_PROPERTY_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "INDEPENDENT_PROPERTY_REPRESENTATION" :AP233
  (("property"
    :RANGE
    INDEPENDENT_PROPERTY
    :SOURCE
    INDEPENDENT_PROPERTY_REPRESENTATION
    :DERIVED
    (%DEFINITION INSTANCE NIL))
   ("definition"
    :RANGE
    INDEPENDENT_PROPERTY
    :SOURCE
    PROPERTY_DEFINITION_REPRESENTATION
    :REDEFINITION-OF
    (PROPERTY_DEFINITION_REPRESENTATION "definition")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'INDEPENDENT_PROPERTY_REPRESENTATION))
      '(PROPERTY_DEFINITION_REPRESENTATION))


(DEFENTITY-CLASS "NAMED_VARIABLE_SEMANTICS" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    NAMED_VARIABLE_SEMANTICS
    :OPTIONAL
    NIL)
   ("variable_context"
    :RANGE
    GENERIC_EXPRESSION
    :SOURCE
    NAMED_VARIABLE_SEMANTICS
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'NAMED_VARIABLE_SEMANTICS))
      '(VARIABLE_SEMANTICS))


(DEFENTITY-CLASS "APPLIED_INDEPENDENT_PROPERTY" :AP233
  (("base_independent_property"
    :RANGE
    INDEPENDENT_PROPERTY
    :SOURCE
    APPLIED_INDEPENDENT_PROPERTY
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ASSIGNED_PROPERTY
    :DERIVED
    (%PROPERTY_TYPE (%BASE_INDEPENDENT_PROPERTY INSTANCE NIL) NIL)
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'APPLIED_INDEPENDENT_PROPERTY))
      '(ASSIGNED_PROPERTY))


(DEFENTITY-CLASS "ASSIGNED_PROPERTY" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ASSIGNED_PROPERTY
    :OPTIONAL
    T)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ASSIGNED_PROPERTY
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ASSIGNED_PROPERTY
    :OPTIONAL
    T)
   ("described_element"
    :RANGE
    PROPERTY_ASSIGNMENT_SELECT
    :SOURCE
    ASSIGNED_PROPERTY
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PROPERTY_DEFINITION_REPRESENTATION" :AP233
  (("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PROPERTY_DEFINITION_REPRESENTATION
    :OPTIONAL
    T)
   ("definition"
    :RANGE
    REPRESENTED_DEFINITION
    :SOURCE
    PROPERTY_DEFINITION_REPRESENTATION
    :OPTIONAL
    NIL)
   ("rep"
    :RANGE
    REPRESENTATION
    :SOURCE
    PROPERTY_DEFINITION_REPRESENTATION
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PROPERTY_DEFINITION_REPRESENTATION
    :OPTIONAL
    T)))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'PROPERTY_DEFINITION_REPRESENTATION))
      T)


(DEFENTITY-CLASS "PROPERTY_REPRESENTATION" :AP233
  (("property"
    :RANGE
    ASSIGNED_PROPERTY
    :SOURCE
    PROPERTY_REPRESENTATION
    :DERIVED
    (%DEFINITION INSTANCE NIL))
   ("definition"
    :RANGE
    ASSIGNED_PROPERTY
    :SOURCE
    PROPERTY_DEFINITION_REPRESENTATION
    :REDEFINITION-OF
    (PROPERTY_DEFINITION_REPRESENTATION "definition")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PROPERTY_REPRESENTATION))
      '(PROPERTY_DEFINITION_REPRESENTATION))


(DEFENTITY-CLASS "PRODUCT" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "PRODUCT_VERSION" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_VERSION
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_VERSION
    :OPTIONAL
    T)
   ("of_product" :RANGE PRODUCT :SOURCE PRODUCT_VERSION :OPTIONAL NIL)))


(DEFENTITY-CLASS "CALENDAR_DATE" :AP233
  (("year_component"
    :RANGE
    YEAR_NUMBER
    :SOURCE
    CALENDAR_DATE
    :OPTIONAL
    NIL)
   ("month_component"
    :RANGE
    MONTH_IN_YEAR_NUMBER
    :SOURCE
    CALENDAR_DATE
    :OPTIONAL
    NIL)
   ("day_component"
    :RANGE
    DAY_IN_MONTH_NUMBER
    :SOURCE
    CALENDAR_DATE
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "DATE_TIME" :AP233
  (("date_component"
    :RANGE
    CALENDAR_DATE
    :SOURCE
    DATE_TIME
    :OPTIONAL
    NIL)
   ("time_component"
    :RANGE
    LOCAL_TIME
    :SOURCE
    DATE_TIME
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "LOCAL_TIME" :AP233
  (("hour_component"
    :RANGE
    HOUR_IN_DAY
    :SOURCE
    LOCAL_TIME
    :OPTIONAL
    NIL)
   ("minute_component"
    :RANGE
    MINUTE_IN_HOUR
    :SOURCE
    LOCAL_TIME
    :OPTIONAL
    T)
   ("second_component"
    :RANGE
    SECOND_IN_MINUTE
    :SOURCE
    LOCAL_TIME
    :OPTIONAL
    T)
   ("zone" :RANGE TIME_OFFSET :SOURCE LOCAL_TIME :OPTIONAL NIL)))


(DEFENTITY-CLASS "TIME_OFFSET" :AP233
  (("hour_offset"
    :RANGE
    (MAKE-INSTANCE 'INTEGER-TYP)
    :SOURCE
    TIME_OFFSET
    :OPTIONAL
    NIL)
   ("minute_offset"
    :RANGE
    (MAKE-INSTANCE 'INTEGER-TYP)
    :SOURCE
    TIME_OFFSET
    :OPTIONAL
    T)
   ("sense"
    :RANGE
    OFFSET_ORIENTATION
    :SOURCE
    TIME_OFFSET
    :OPTIONAL
    NIL)
   ("actual_minute_offset"
    :RANGE
    (MAKE-INSTANCE 'INTEGER-TYP)
    :SOURCE
    TIME_OFFSET
    :DERIVED
    (BI-NVL (%MINUTE_OFFSET INSTANCE NIL) 0))))

(DEFDOMAIN-RULES "TIME_OFFSET"
  ("WR1"
   (EXPRESS-AND (EXPRESS-<= 0 (%HOUR_OFFSET INSTANCE NIL))
                (EXPRESS-< (%HOUR_OFFSET INSTANCE NIL) 24)))
  ("WR2"
   (EXPRESS-AND (EXPRESS-<= 0 (%ACTUAL_MINUTE_OFFSET INSTANCE NIL))
                (EXPRESS-<= (%ACTUAL_MINUTE_OFFSET INSTANCE NIL) 59)))
  ("WR3"
   (EXPRESS-NOT (EXPRESS-AND (EXPRESS-OR (EXPRESS-NOT-EQUAL (%HOUR_OFFSET
                                                             INSTANCE
                                                             NIL)
                                                            0)
                                         (EXPRESS-NOT-EQUAL (%ACTUAL_MINUTE_OFFSET
                                                             INSTANCE
                                                             NIL)
                                                            0))
                             (EXPRESS-EQUAL (%SENSE INSTANCE NIL)
                                            :EXACT)))))


(DEFENTITY-CLASS "CERTIFICATION" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CERTIFICATION
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CERTIFICATION
    :OPTIONAL
    T)
   ("kind"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CERTIFICATION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "CERTIFICATION_ASSIGNMENT" :AP233
  (("assigned_certification"
    :RANGE
    CERTIFICATION
    :SOURCE
    CERTIFICATION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'CERTIFICATION_ITEM)
    :SOURCE
    CERTIFICATION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CERTIFICATION_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "LANGUAGE" :AP233
  (("language_code"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    LANGUAGE
    :OPTIONAL
    NIL)
   ("country_code"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    LANGUAGE
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "LANGUAGE_INDICATION" :AP233
  (("considered_instance"
    :RANGE
    STRING_SELECT
    :SOURCE
    LANGUAGE_INDICATION
    :OPTIONAL
    NIL)
   ("considered_attribute"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    LANGUAGE_INDICATION
    :OPTIONAL
    NIL)
   ("used_language"
    :RANGE
    LANGUAGE
    :SOURCE
    LANGUAGE_INDICATION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ATTRIBUTE_TRANSLATION_ASSIGNMENT" :AP233
  (("considered_instance"
    :RANGE
    STRING_SELECT
    :SOURCE
    ATTRIBUTE_TRANSLATION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("considered_attribute"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ATTRIBUTE_TRANSLATION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("translation_text"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ATTRIBUTE_TRANSLATION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("translation_language"
    :RANGE
    LANGUAGE
    :SOURCE
    ATTRIBUTE_TRANSLATION_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PROJECT" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PROJECT
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PROJECT
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PROJECT
    :OPTIONAL
    T)
   ("responsible_organizations"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   0
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'ORGANIZATION)
    :SOURCE
    PROJECT
    :OPTIONAL
    NIL)
   ("planned_start_date"
    :RANGE
    DATE_OR_EVENT
    :SOURCE
    PROJECT
    :OPTIONAL
    T)
   ("planned_end_date"
    :RANGE
    DATE_OR_EVENT
    :SOURCE
    PROJECT
    :OPTIONAL
    T)
   ("actual_start_date"
    :RANGE
    DATE_OR_DATE_TIME_SELECT
    :SOURCE
    PROJECT
    :OPTIONAL
    T)
   ("actual_end_date"
    :RANGE
    DATE_OR_DATE_TIME_SELECT
    :SOURCE
    PROJECT
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "PROJECT_ASSIGNMENT" :AP233
  (("assigned_project"
    :RANGE
    PROJECT
    :SOURCE
    PROJECT_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PROJECT_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'PROJECT_ITEM)
    :SOURCE
    PROJECT_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PROJECT_RELATIONSHIP" :AP233
  (("relation_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PROJECT_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PROJECT_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating_project"
    :RANGE
    PROJECT
    :SOURCE
    PROJECT_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_project"
    :RANGE
    PROJECT
    :SOURCE
    PROJECT_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PRODUCT_AS_INDIVIDUAL" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'PRODUCT_AS_INDIVIDUAL)) '(PRODUCT))


(DEFENTITY-CLASS "PRODUCT_AS_INDIVIDUAL_VERSION" :AP233
  (("of_product"
    :RANGE
    PRODUCT_AS_INDIVIDUAL
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PRODUCT_AS_INDIVIDUAL_VERSION))
      '(PRODUCT_VERSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'PRODUCT_AS_INDIVIDUAL_VERSION)) T)


(DEFENTITY-CLASS "PRODUCT_AS_INDIVIDUAL_VIEW" :AP233
  (("defined_version"
    :RANGE
    PRODUCT_AS_INDIVIDUAL_VERSION
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :REDEFINITION-OF
    (PRODUCT_VIEW_DEFINITION "defined_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PRODUCT_AS_INDIVIDUAL_VIEW))
      '(PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "PRODUCT_AS_PLANNED" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'PRODUCT_AS_PLANNED))
      '(PRODUCT_AS_INDIVIDUAL_VERSION))


(DEFENTITY-CLASS "PRODUCT_AS_REALIZED" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'PRODUCT_AS_REALIZED))
      '(PRODUCT_AS_INDIVIDUAL_VERSION))


(DEFENTITY-CLASS "PRODUCT_DESIGN_TO_INDIVIDUAL" :AP233
  (("product_design"
    :RANGE
    PRODUCT
    :SOURCE
    PRODUCT_DESIGN_TO_INDIVIDUAL
    :OPTIONAL
    NIL)
   ("individual_product"
    :RANGE
    PRODUCT_AS_INDIVIDUAL
    :SOURCE
    PRODUCT_DESIGN_TO_INDIVIDUAL
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL" :AP233
  (("product_design_version"
    :RANGE
    PRODUCT_VERSION
    :SOURCE
    PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL
    :OPTIONAL
    NIL)
   ("individual_product"
    :RANGE
    PRODUCT_AS_INDIVIDUAL_VERSION
    :SOURCE
    PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PRODUCT_DESIGN_VIEW_TO_INDIVIDUAL" :AP233
  (("product_as_individual_view"
    :RANGE
    PRODUCT_AS_INDIVIDUAL_VIEW
    :SOURCE
    PRODUCT_DESIGN_VIEW_TO_INDIVIDUAL
    :OPTIONAL
    NIL)
   ("product_view_definition"
    :RANGE
    PRODUCT_VIEW_DEFINITION
    :SOURCE
    PRODUCT_DESIGN_VIEW_TO_INDIVIDUAL
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PRODUCT_PLANNED_TO_REALIZED" :AP233
  (("planned_product"
    :RANGE
    PRODUCT_AS_PLANNED
    :SOURCE
    PRODUCT_PLANNED_TO_REALIZED
    :OPTIONAL
    NIL)
   ("realized_product"
    :RANGE
    PRODUCT_AS_REALIZED
    :SOURCE
    PRODUCT_PLANNED_TO_REALIZED
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "DIRECTED_ACTIVITY" :AP233
  (("directive"
    :RANGE
    WORK_ORDER
    :SOURCE
    DIRECTED_ACTIVITY
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'DIRECTED_ACTIVITY)) '(ACTIVITY))


(DEFENTITY-CLASS "WORK_ORDER" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    WORK_ORDER
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    WORK_ORDER
    :OPTIONAL
    T)
   ("in_response_to"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   0
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'WORK_REQUEST)
    :SOURCE
    WORK_ORDER
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ACTIVITY_METHOD_ASSIGNMENT" :AP233
  (("relation_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_METHOD_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("assigned_method"
    :RANGE
    ACTIVITY_METHOD
    :SOURCE
    ACTIVITY_METHOD_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("associated_request"
    :RANGE
    WORK_REQUEST
    :SOURCE
    ACTIVITY_METHOD_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "AFFECTED_ITEMS_ASSIGNMENT" :AP233
  (("assigned_work_request"
    :RANGE
    WORK_REQUEST
    :SOURCE
    AFFECTED_ITEMS_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'AFFECTED_ITEM_SELECT)
    :SOURCE
    AFFECTED_ITEMS_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "WORK_REQUEST" :AP233
  (("request_id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    WORK_REQUEST
    :OPTIONAL
    NIL)
   ("version_id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    WORK_REQUEST
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    WORK_REQUEST
    :OPTIONAL
    T)
   ("purpose"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    WORK_REQUEST
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "WORK_REQUEST_STATUS" :AP233
  (("status"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    WORK_REQUEST_STATUS
    :OPTIONAL
    NIL)
   ("work_request"
    :RANGE
    WORK_REQUEST
    :SOURCE
    WORK_REQUEST_STATUS
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ORGANIZATION_ORGANIZATION_TYPE_RELATIONSHIP" :AP233
  (("organization"
    :RANGE
    ORGANIZATION
    :SOURCE
    ORGANIZATION_ORGANIZATION_TYPE_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("organization_type"
    :RANGE
    ORGANIZATION_TYPE
    :SOURCE
    ORGANIZATION_ORGANIZATION_TYPE_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ORGANIZATION_TYPE" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ORGANIZATION_TYPE
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ORGANIZATION_TYPE
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "ITEM_DESIGN_ASSOCIATION" :AP233
  (("configuration"
    :RANGE
    PRODUCT_CONFIGURATION
    :SOURCE
    ITEM_DESIGN_ASSOCIATION
    :OPTIONAL
    NIL)
   ("design"
    :RANGE
    VERSION_OR_DEFINITION
    :SOURCE
    ITEM_DESIGN_ASSOCIATION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PRODUCT_CONFIGURATION" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_CONFIGURATION
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_CONFIGURATION
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_CONFIGURATION
    :OPTIONAL
    T)
   ("item_context"
    :RANGE
    PRODUCT_CONCEPT
    :SOURCE
    PRODUCT_CONFIGURATION
    :OPTIONAL
    NIL)
   ("corresponding_design"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   0
                   :U-BOUND
                   1
                   :BASE-TYPE
                   'ITEM_DESIGN_ASSOCIATION)
    :SOURCE
    PRODUCT_CONFIGURATION
    :INVERSE
    (ITEM_DESIGN_ASSOCIATION CONFIGURATION))))


(DEFENTITY-CLASS "PRODUCT_CONFIGURATION_HIERARCHICAL_RELATIONSHIP"
                 :AP233
  (("child"
    :RANGE
    PRODUCT_CONFIGURATION
    :SOURCE
    PRODUCT_CONFIGURATION_HIERARCHICAL_RELATIONSHIP
    :DERIVED
    (%RELATED_PRODUCT_CONFIGURATION INSTANCE NIL))
   ("parent"
    :RANGE
    PRODUCT_CONFIGURATION
    :SOURCE
    PRODUCT_CONFIGURATION_HIERARCHICAL_RELATIONSHIP
    :DERIVED
    (%RELATING_PRODUCT_CONFIGURATION INSTANCE NIL))))

(SETF (SUBTYPE-OF (FIND-CLASS 'PRODUCT_CONFIGURATION_HIERARCHICAL_RELATIONSHIP))
      '(PRODUCT_CONFIGURATION_RELATIONSHIP))


(DEFENTITY-CLASS "PRODUCT_CONFIGURATION_RELATIONSHIP" :AP233
  (("relating_product_configuration"
    :RANGE
    PRODUCT_CONFIGURATION
    :SOURCE
    PRODUCT_CONFIGURATION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_product_configuration"
    :RANGE
    PRODUCT_CONFIGURATION
    :SOURCE
    PRODUCT_CONFIGURATION_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PRODUCT_CONFIGURATION_REVISION_SEQUENCE" :AP233
  (("predecessor"
    :RANGE
    PRODUCT_CONFIGURATION
    :SOURCE
    PRODUCT_CONFIGURATION_REVISION_SEQUENCE
    :DERIVED
    (%RELATING_PRODUCT_CONFIGURATION INSTANCE NIL))
   ("successor"
    :RANGE
    PRODUCT_CONFIGURATION
    :SOURCE
    PRODUCT_CONFIGURATION_REVISION_SEQUENCE
    :DERIVED
    (%RELATED_PRODUCT_CONFIGURATION INSTANCE NIL))))

(SETF (SUBTYPE-OF (FIND-CLASS 'PRODUCT_CONFIGURATION_REVISION_SEQUENCE))
      '(PRODUCT_CONFIGURATION_RELATIONSHIP))


(DEFENTITY-CLASS "MARKET" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    MARKET
    :OPTIONAL
    NIL)
   ("market_segment_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    MARKET
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "PRODUCT_CONCEPT" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_CONCEPT
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_CONCEPT
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_CONCEPT
    :OPTIONAL
    T)
   ("target_market" :RANGE MARKET :SOURCE PRODUCT_CONCEPT :OPTIONAL T)))


(DEFENTITY-CLASS "PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION"
                 :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
    :OPTIONAL
    NIL)
   ("person_or_organization"
    :RANGE
    POSITION_PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_SELECT
    :SOURCE
    PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
    :OPTIONAL
    NIL)
   ("position"
    :RANGE
    POSITION
    :SOURCE
    PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP"
                 :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating"
    :RANGE
    PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
    :SOURCE
    PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
    :SOURCE
    PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "POSITION" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    POSITION
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    POSITION
    :OPTIONAL
    T)
   ("address" :RANGE ADDRESS :SOURCE POSITION :OPTIONAL T)
   ("position_context"
    :RANGE
    POSITION_CONTEXT_ITEM
    :SOURCE
    POSITION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "POSITION_ASSIGNMENT" :AP233
  (("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'POSITION_ITEM)
    :SOURCE
    POSITION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("position"
    :RANGE
    POSITION
    :SOURCE
    POSITION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    POSITION_ROLE
    :SOURCE
    POSITION_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "POSITION_GROUP" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    POSITION_GROUP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    POSITION_GROUP
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "POSITION_GROUP_ASSIGNMENT" :AP233
  (("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'POSITION_GROUP_ITEM)
    :SOURCE
    POSITION_GROUP_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("position_group"
    :RANGE
    POSITION_GROUP
    :SOURCE
    POSITION_GROUP_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    POSITION_GROUP_ROLE
    :SOURCE
    POSITION_GROUP_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "POSITION_GROUP_RELATIONSHIP" :AP233
  (("group"
    :RANGE
    POSITION_GROUP
    :SOURCE
    POSITION_GROUP_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("position"
    :RANGE
    POSITION
    :SOURCE
    POSITION_GROUP_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "POSITION_GROUP_ROLE" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    POSITION_GROUP_ROLE
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    POSITION_GROUP_ROLE
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "POSITION_POSITION_TYPE_ASSIGNMENT" :AP233
  (("assigned_position_type"
    :RANGE
    POSITION_TYPE
    :SOURCE
    POSITION_POSITION_TYPE_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("assigned_to"
    :RANGE
    POSITION
    :SOURCE
    POSITION_POSITION_TYPE_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "POSITION_RELATIONSHIP" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    POSITION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    POSITION_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating_position"
    :RANGE
    POSITION
    :SOURCE
    POSITION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_position"
    :RANGE
    POSITION
    :SOURCE
    POSITION_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "POSITION_ROLE" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    POSITION_ROLE
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    POSITION_ROLE
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "POSITION_TYPE" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    POSITION_TYPE
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    POSITION_TYPE
    :OPTIONAL
    T)
   ("defined_by"
    :RANGE
    TYPE_OF_PERSON
    :SOURCE
    POSITION_TYPE
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "POSITION_TYPE_ASSIGNMENT" :AP233
  (("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'POSITION_TYPE_ITEM)
    :SOURCE
    POSITION_TYPE_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("position_type"
    :RANGE
    POSITION_TYPE
    :SOURCE
    POSITION_TYPE_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    POSITION_TYPE_ROLE
    :SOURCE
    POSITION_TYPE_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "POSITION_TYPE_ROLE" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    POSITION_TYPE_ROLE
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    POSITION_TYPE_ROLE
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "TYPE_OF_PERSON" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    TYPE_OF_PERSON
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    TYPE_OF_PERSON
    :OPTIONAL
    T)
   ("has"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   0
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'TYPE_OF_PERSON_DEFINITION)
    :SOURCE
    TYPE_OF_PERSON
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "TYPE_OF_PERSON_ASSIGNMENT" :AP233
  (("assigned_type_of_person"
    :RANGE
    TYPE_OF_PERSON
    :SOURCE
    TYPE_OF_PERSON_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'TYPE_OF_PERSON_ITEM_SELECT)
    :SOURCE
    TYPE_OF_PERSON_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    TYPE_OF_PERSON_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "TYPE_OF_PERSON_DEFINITION" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    TYPE_OF_PERSON_DEFINITION
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    TYPE_OF_PERSON_DEFINITION
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "TYPE_OF_PERSON_DEFINITION_RELATIONSHIP" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    TYPE_OF_PERSON_DEFINITION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    TYPE_OF_PERSON_DEFINITION_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating"
    :RANGE
    TYPE_OF_PERSON_DEFINITION
    :SOURCE
    TYPE_OF_PERSON_DEFINITION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    TYPE_OF_PERSON_DEFINITION
    :SOURCE
    TYPE_OF_PERSON_DEFINITION_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "TYPE_OF_PERSON_DEFINITION_REQUIRED_ATTRIBUTES_RELATIONSHIP"
                 :AP233
  (("assigned_required_attributes"
    :RANGE
    TYPE_OF_PERSON_DEFINITION
    :SOURCE
    TYPE_OF_PERSON_DEFINITION_REQUIRED_ATTRIBUTES_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("required_attributes"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   0
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'DEFINED_ATTRIBUTES)
    :SOURCE
    TYPE_OF_PERSON_DEFINITION_REQUIRED_ATTRIBUTES_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "VIEW_DEFINITION_RELATIONSHIP" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :OPTIONAL
    T)
   ("relation_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :OPTIONAL
    T)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating_view"
    :RANGE
    PRODUCT_VIEW_DEFINITION
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_view"
    :RANGE
    PRODUCT_VIEW_DEFINITION
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "VIEW_DEFINITION_USAGE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'VIEW_DEFINITION_USAGE))
      '(VIEW_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "PRODUCT_GROUP" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_GROUP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_GROUP
    :OPTIONAL
    T)
   ("purpose"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_GROUP
    :OPTIONAL
    NIL)
   ("membership_rule"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_GROUP
    :OPTIONAL
    T)
   ("product_group_context"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_GROUP
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "PRODUCT_GROUP_MEMBERSHIP" :AP233
  (("member"
    :RANGE
    PRODUCT_SELECT
    :SOURCE
    PRODUCT_GROUP_MEMBERSHIP
    :OPTIONAL
    NIL)
   ("of_group"
    :RANGE
    PRODUCT_GROUP
    :SOURCE
    PRODUCT_GROUP_MEMBERSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PRODUCT_GROUP_RELATIONSHIP" :AP233
  (("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_GROUP_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating"
    :RANGE
    PRODUCT_GROUP
    :SOURCE
    PRODUCT_GROUP_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    PRODUCT_GROUP
    :SOURCE
    PRODUCT_GROUP_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_GROUP_RELATIONSHIP
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "EFFECTIVITY_ASSIGNMENT" :AP233
  (("assigned_effectivity"
    :RANGE
    EFFECTIVITY
    :SOURCE
    EFFECTIVITY_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EFFECTIVITY_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'EFFECTIVITY_ITEM)
    :SOURCE
    EFFECTIVITY_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "DATED_EFFECTIVITY" :AP233
  (("start_bound"
    :RANGE
    DATE_OR_EVENT
    :SOURCE
    DATED_EFFECTIVITY
    :OPTIONAL
    NIL)
   ("end_bound"
    :RANGE
    DATE_OR_EVENT
    :SOURCE
    DATED_EFFECTIVITY
    :OPTIONAL
    T)))

(SETF (SUBTYPE-OF (FIND-CLASS 'DATED_EFFECTIVITY)) '(EFFECTIVITY))


(DEFENTITY-CLASS "EFFECTIVITY" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EFFECTIVITY
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EFFECTIVITY
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EFFECTIVITY
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "EFFECTIVITY_RELATIONSHIP" :AP233
  (("relation_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EFFECTIVITY_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EFFECTIVITY_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating_effectivity"
    :RANGE
    EFFECTIVITY
    :SOURCE
    EFFECTIVITY_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_effectivity"
    :RANGE
    EFFECTIVITY
    :SOURCE
    EFFECTIVITY_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "LOT_EFFECTIVITY" :AP233
  (("lot_id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    LOT_EFFECTIVITY
    :OPTIONAL
    NIL)
   ("lot_size"
    :RANGE
    VALUE_WITH_UNIT
    :SOURCE
    LOT_EFFECTIVITY
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'LOT_EFFECTIVITY)) '(EFFECTIVITY))


(DEFENTITY-CLASS "SERIAL_EFFECTIVITY" :AP233
  (("start_id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    SERIAL_EFFECTIVITY
    :OPTIONAL
    NIL)
   ("end_id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    SERIAL_EFFECTIVITY
    :OPTIONAL
    T)))

(SETF (SUBTYPE-OF (FIND-CLASS 'SERIAL_EFFECTIVITY)) '(EFFECTIVITY))


(DEFENTITY-CLASS "TIME_INTERVAL_EFFECTIVITY" :AP233
  (("effectivity_period"
    :RANGE
    TIME_INTERVAL
    :SOURCE
    TIME_INTERVAL_EFFECTIVITY
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'TIME_INTERVAL_EFFECTIVITY))
      '(EFFECTIVITY))


(DEFENTITY-CLASS "SELECTED_ITEM" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'SELECTED_ITEM)) '(CLASS))


(DEFENTITY-CLASS "SELECTED_ITEM_ASSIGNMENT" :AP233
  (("assigned_class"
    :RANGE
    SELECTED_ITEM
    :SOURCE
    SELECTED_ITEM_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("item"
    :RANGE
    SELECTED_ITEM_SELECT
    :SOURCE
    SELECTED_ITEM_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("item_context"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'SELECTED_ITEM_CONTEXT_ITEMS)
    :SOURCE
    SELECTED_ITEM_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "APPLIED_STATE_DEFINITION_ASSIGNMENT" :AP233
  (("described_state_definition"
    :RANGE
    STATE_DEFINITION
    :SOURCE
    APPLIED_STATE_DEFINITION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("assigned_to"
    :RANGE
    STATE_DEFINITION_OF_ITEM
    :SOURCE
    APPLIED_STATE_DEFINITION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    STATE_DEFINITION_ROLE
    :SOURCE
    APPLIED_STATE_DEFINITION_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "COMPOSITION_OF_STATE_DEFINITION" :AP233
  (("part"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_DEFINITION)
    :SOURCE
    COMPOSITION_OF_STATE_DEFINITION
    :DERIVED
    (%RELATED INSTANCE NIL))
   ("whole"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_DEFINITION)
    :SOURCE
    COMPOSITION_OF_STATE_DEFINITION
    :DERIVED
    (%RELATING INSTANCE NIL))))

(SETF (SUBTYPE-OF (FIND-CLASS 'COMPOSITION_OF_STATE_DEFINITION))
      '(STATE_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "STATE_DEFINITION" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    STATE_DEFINITION
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    STATE_DEFINITION
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "STATE_DEFINITION_RELATIONSHIP" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    STATE_DEFINITION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    STATE_DEFINITION_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_DEFINITION)
    :SOURCE
    STATE_DEFINITION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_DEFINITION)
    :SOURCE
    STATE_DEFINITION_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "STATE_DEFINITION_ROLE" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    STATE_DEFINITION_ROLE
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    STATE_DEFINITION_ROLE
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "STATE_TRANSITION_DEFINITION" :AP233
  (("end_state"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_DEFINITION)
    :SOURCE
    STATE_TRANSITION_DEFINITION
    :DERIVED
    (%RELATING INSTANCE NIL))
   ("start_state"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_DEFINITION)
    :SOURCE
    STATE_TRANSITION_DEFINITION
    :DERIVED
    (%RELATED INSTANCE NIL))))

(SETF (SUBTYPE-OF (FIND-CLASS 'STATE_TRANSITION_DEFINITION))
      '(STATE_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "APPLIED_STATE_ASSIGNMENT" :AP233
  (("described_state"
    :RANGE
    STATE
    :SOURCE
    APPLIED_STATE_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("assigned_to"
    :RANGE
    STATE_OF_ITEM
    :SOURCE
    APPLIED_STATE_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    STATE_ROLE
    :SOURCE
    APPLIED_STATE_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "COMPOSITION_OF_STATE" :AP233
  (("part"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP :L-BOUND 1 :U-BOUND :? :BASE-TYPE 'STATE)
    :SOURCE
    COMPOSITION_OF_STATE
    :DERIVED
    (%RELATED INSTANCE NIL))
   ("whole"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP :L-BOUND 1 :U-BOUND :? :BASE-TYPE 'STATE)
    :SOURCE
    COMPOSITION_OF_STATE
    :DERIVED
    (%RELATING INSTANCE NIL))))

(SETF (SUBTYPE-OF (FIND-CLASS 'COMPOSITION_OF_STATE))
      '(STATE_RELATIONSHIP))


(DEFENTITY-CLASS "DEFINED_STATE_RELATIONSHIP" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    DEFINED_STATE_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    DEFINED_STATE_RELATIONSHIP
    :OPTIONAL
    T)
   ("definitive_state"
    :RANGE
    STATE_ASSERTION
    :SOURCE
    DEFINED_STATE_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("defined_state"
    :RANGE
    STATE_ASSESSMENT
    :SOURCE
    DEFINED_STATE_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "SEQUENCE_OF_STATE" :AP233
  (("predecessor"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP :L-BOUND 1 :U-BOUND :? :BASE-TYPE 'STATE)
    :SOURCE
    SEQUENCE_OF_STATE
    :DERIVED
    (%RELATED INSTANCE NIL))
   ("successor"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP :L-BOUND 1 :U-BOUND :? :BASE-TYPE 'STATE)
    :SOURCE
    SEQUENCE_OF_STATE
    :DERIVED
    (%RELATING INSTANCE NIL))))

(SETF (SUBTYPE-OF (FIND-CLASS 'SEQUENCE_OF_STATE))
      '(STATE_RELATIONSHIP))


(DEFENTITY-CLASS "STATE" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    STATE
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    STATE
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "STATE_ASSERTION" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    STATE_ASSERTION
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    STATE_ASSERTION
    :OPTIONAL
    T)
   ("asserted_state"
    :RANGE
    STATE
    :SOURCE
    STATE_ASSERTION
    :OPTIONAL
    NIL)
   ("conformance_state"
    :RANGE
    STATE_DEFINITION
    :SOURCE
    STATE_ASSERTION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "STATE_ASSESSMENT" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    STATE_ASSESSMENT
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    STATE_ASSESSMENT
    :OPTIONAL
    T)
   ("assessed_state"
    :RANGE
    STATE
    :SOURCE
    STATE_ASSESSMENT
    :OPTIONAL
    NIL)
   ("comparable_state"
    :RANGE
    STATE_DEFINITION
    :SOURCE
    STATE_ASSESSMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "STATE_CAUSE_EFFECT" :AP233
  (("cause"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP :L-BOUND 1 :U-BOUND :? :BASE-TYPE 'STATE)
    :SOURCE
    STATE_CAUSE_EFFECT
    :DERIVED
    (%RELATED INSTANCE NIL))
   ("effect"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP :L-BOUND 1 :U-BOUND :? :BASE-TYPE 'STATE)
    :SOURCE
    STATE_CAUSE_EFFECT
    :DERIVED
    (%RELATING INSTANCE NIL))))

(SETF (SUBTYPE-OF (FIND-CLASS 'STATE_CAUSE_EFFECT))
      '(STATE_RELATIONSHIP))


(DEFENTITY-CLASS "STATE_OBSERVED" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'STATE_OBSERVED)) '(STATE))


(DEFENTITY-CLASS "STATE_PREDICTED" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'STATE_PREDICTED)) '(STATE))


(DEFENTITY-CLASS "STATE_PREDICTED_TO_OBSERVED" :AP233
  (("observed_state"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_OBSERVED)
    :SOURCE
    STATE_PREDICTED_TO_OBSERVED
    :DERIVED
    (%RELATING INSTANCE NIL))
   ("predicted_state"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_PREDICTED)
    :SOURCE
    STATE_PREDICTED_TO_OBSERVED
    :DERIVED
    (%RELATED INSTANCE NIL))
   ("relating"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_OBSERVED)
    :SOURCE
    STATE_RELATIONSHIP
    :REDEFINITION-OF
    (STATE_RELATIONSHIP "relating")
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_PREDICTED)
    :SOURCE
    STATE_RELATIONSHIP
    :REDEFINITION-OF
    (STATE_RELATIONSHIP "related")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'STATE_PREDICTED_TO_OBSERVED))
      '(STATE_RELATIONSHIP))


(DEFENTITY-CLASS "STATE_RELATIONSHIP" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    STATE_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    STATE_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP :L-BOUND 1 :U-BOUND :? :BASE-TYPE 'STATE)
    :SOURCE
    STATE_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP :L-BOUND 1 :U-BOUND :? :BASE-TYPE 'STATE)
    :SOURCE
    STATE_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "STATE_ROLE" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    STATE_ROLE
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    STATE_ROLE
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "STATE_TRANSITION" :AP233
  (("end_state"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP :L-BOUND 1 :U-BOUND :? :BASE-TYPE 'STATE)
    :SOURCE
    STATE_TRANSITION
    :DERIVED
    (%RELATING INSTANCE NIL))
   ("start_state"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP :L-BOUND 1 :U-BOUND :? :BASE-TYPE 'STATE)
    :SOURCE
    STATE_TRANSITION
    :DERIVED
    (%RELATED INSTANCE NIL))))

(SETF (SUBTYPE-OF (FIND-CLASS 'STATE_TRANSITION)) '(STATE_RELATIONSHIP))


(DEFENTITY-CLASS "ACTIVITY_METHOD_RELATIONSHIP" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_METHOD_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_METHOD_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating_method"
    :RANGE
    ACTIVITY_METHOD
    :SOURCE
    ACTIVITY_METHOD_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_method"
    :RANGE
    ACTIVITY_METHOD
    :SOURCE
    ACTIVITY_METHOD_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "RESOURCE_ITEM" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RESOURCE_ITEM
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RESOURCE_ITEM
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "RESOURCE_ITEM_ASSIGNMENT" :AP233
  (("assigned_resource"
    :RANGE
    RESOURCE_ITEM
    :SOURCE
    RESOURCE_ITEM_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("item"
    :RANGE
    RESOURCE_ASSIGNMENT_ITEM
    :SOURCE
    RESOURCE_ITEM_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "RESOURCE_ITEM_REALIZATION" :AP233
  (("item"
    :RANGE
    RESOURCE_ITEM_SELECT
    :SOURCE
    RESOURCE_ITEM_REALIZATION
    :OPTIONAL
    NIL)
   ("resource_item"
    :RANGE
    RESOURCE_ITEM
    :SOURCE
    RESOURCE_ITEM_REALIZATION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "RESOURCE_ITEM_RELATIONSHIP" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RESOURCE_ITEM_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RESOURCE_ITEM_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating"
    :RANGE
    RESOURCE_ITEM
    :SOURCE
    RESOURCE_ITEM_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    RESOURCE_ITEM
    :SOURCE
    RESOURCE_ITEM_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "CONTAINED_ACCEPTANCE" :AP233
  (("relating_activity"
    :RANGE
    RISK_CONTROL
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_RELATIONSHIP "relating_activity")
    :OPTIONAL
    NIL)
   ("related_activity"
    :RANGE
    RISK_ACCEPTANCE
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_RELATIONSHIP "related_activity")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'CONTAINED_ACCEPTANCE))
      '(RISK_ACTIVITY_STRUCTURE))


(DEFENTITY-CLASS "CONTAINED_ANALYSIS" :AP233
  (("relating_activity"
    :RANGE
    RISK_ASSESSMENT
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_RELATIONSHIP "relating_activity")
    :OPTIONAL
    NIL)
   ("related_activity"
    :RANGE
    RISK_ANALYSIS
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_RELATIONSHIP "related_activity")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'CONTAINED_ANALYSIS))
      '(RISK_ACTIVITY_STRUCTURE))


(DEFENTITY-CLASS "CONTAINED_COMMUNICATION" :AP233
  (("relating_activity"
    :RANGE
    RISK_CONTROL
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_RELATIONSHIP "relating_activity")
    :OPTIONAL
    NIL)
   ("related_activity"
    :RANGE
    RISK_COMMUNICATION
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_RELATIONSHIP "related_activity")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'CONTAINED_COMMUNICATION))
      '(RISK_ACTIVITY_STRUCTURE))


(DEFENTITY-CLASS "CONTAINED_ESTIMATION" :AP233
  (("relating_activity"
    :RANGE
    RISK_ANALYSIS
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_RELATIONSHIP "relating_activity")
    :OPTIONAL
    NIL)
   ("related_activity"
    :RANGE
    RISK_ESTIMATION
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_RELATIONSHIP "related_activity")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'CONTAINED_ESTIMATION))
      '(RISK_ACTIVITY_STRUCTURE))


(DEFENTITY-CLASS "CONTAINED_EVALUATION" :AP233
  (("relating_activity"
    :RANGE
    RISK_ASSESSMENT
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_RELATIONSHIP "relating_activity")
    :OPTIONAL
    NIL)
   ("related_activity"
    :RANGE
    RISK_EVALUATION
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_RELATIONSHIP "related_activity")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'CONTAINED_EVALUATION))
      '(RISK_ACTIVITY_STRUCTURE))


(DEFENTITY-CLASS "CONTAINED_IDENTIFICATION" :AP233
  (("relating_activity"
    :RANGE
    RISK_ANALYSIS
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_RELATIONSHIP "relating_activity")
    :OPTIONAL
    NIL)
   ("related_activity"
    :RANGE
    RISK_IDENTIFICATION
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_RELATIONSHIP "related_activity")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'CONTAINED_IDENTIFICATION))
      '(RISK_ACTIVITY_STRUCTURE))


(DEFENTITY-CLASS "CONTAINED_TREATMENTS" :AP233
  (("relating_activity"
    :RANGE
    RISK_CONTROL
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_RELATIONSHIP "relating_activity")
    :OPTIONAL
    NIL)
   ("related_activity"
    :RANGE
    RISK_TREATMENT
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_RELATIONSHIP "related_activity")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'CONTAINED_TREATMENTS))
      '(RISK_ACTIVITY_STRUCTURE))


(DEFENTITY-CLASS "EVENT_PROBABILITY" :AP233
  (("described_element"
    :RANGE
    EVENT
    :SOURCE
    ASSIGNED_PROPERTY
    :REDEFINITION-OF
    (ASSIGNED_PROPERTY "described_element")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'EVENT_PROBABILITY)) '(ASSIGNED_PROPERTY))


(DEFENTITY-CLASS "LESSONS_LEARNED" :AP233
  (("is_assigned_to"
    :RANGE
    LESSONS_LEARNED_SELECT
    :SOURCE
    DOCUMENT_ASSIGNMENT
    :REDEFINITION-OF
    (DOCUMENT_ASSIGNMENT "is_assigned_to")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'LESSONS_LEARNED)) '(DOCUMENT_ASSIGNMENT))


(DEFENTITY-CLASS "MONITOR" :AP233
  (("relating_activity"
    :RANGE
    RISK_CONTROL
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_RELATIONSHIP "relating_activity")
    :OPTIONAL
    NIL)
   ("related_activity"
    :RANGE
    RISK_ASSESSMENT
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_RELATIONSHIP "related_activity")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'MONITOR)) '(RISK_ACTIVITY_STRUCTURE))


(DEFENTITY-CLASS "PROBABILITY_REPRESENTATION" :AP233
  (("definition"
    :RANGE
    EVENT_PROBABILITY
    :SOURCE
    PROPERTY_DEFINITION_REPRESENTATION
    :REDEFINITION-OF
    (PROPERTY_DEFINITION_REPRESENTATION "definition")
    :OPTIONAL
    NIL)
   ("rep"
    :RANGE
    PROBABILITY
    :SOURCE
    PROPERTY_DEFINITION_REPRESENTATION
    :REDEFINITION-OF
    (PROPERTY_DEFINITION_REPRESENTATION "rep")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PROBABILITY_REPRESENTATION))
      '(PROPERTY_REPRESENTATION))


(DEFENTITY-CLASS "RELATED_CONSEQUENCE" :AP233
  (("relating_view"
    :RANGE
    RISK_PERCEPTION
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "relating_view")
    :OPTIONAL
    NIL)
   ("related_view"
    :RANGE
    RISK_CONSEQUENCE
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "related_view")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RELATED_CONSEQUENCE))
      '(VIEW_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "RISK" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK)) '(PRODUCT))


(DEFENTITY-CLASS "RISK_ACCEPTANCE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_ACCEPTANCE)) '(ACTIVITY))


(DEFENTITY-CLASS "RISK_ACTIVITY_STRUCTURE" :AP233
  (("child"
    :RANGE
    RISK_ACTIVITY
    :SOURCE
    RISK_ACTIVITY_STRUCTURE
    :DERIVED
    (%RELATED_ACTIVITY INSTANCE NIL))
   ("parent"
    :RANGE
    RISK_ACTIVITY
    :SOURCE
    RISK_ACTIVITY_STRUCTURE
    :DERIVED
    (%RELATING_ACTIVITY INSTANCE NIL))
   ("relating_activity"
    :RANGE
    RISK_ACTIVITY
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_RELATIONSHIP "relating_activity")
    :OPTIONAL
    NIL)
   ("related_activity"
    :RANGE
    RISK_ACTIVITY
    :SOURCE
    ACTIVITY_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_RELATIONSHIP "related_activity")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_ACTIVITY_STRUCTURE))
      '(ACTIVITY_RELATIONSHIP))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'RISK_ACTIVITY_STRUCTURE)) T)


(DEFENTITY-CLASS "RISK_ANALYSIS" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_ANALYSIS)) '(ACTIVITY))


(DEFENTITY-CLASS "RISK_ASSESSMENT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_ASSESSMENT)) '(ACTIVITY))


(DEFENTITY-CLASS "RISK_ATTITUDE" :AP233
  (("criticality_factor"
    :RANGE
    PROPERTY_VALUE_REPRESENTATION
    :SOURCE
    RISK_ATTITUDE
    :DERIVED
    (%REP INSTANCE NIL))
   ("definition"
    :RANGE
    RISK_LEVEL
    :SOURCE
    PROPERTY_DEFINITION_REPRESENTATION
    :REDEFINITION-OF
    (PROPERTY_DEFINITION_REPRESENTATION "definition")
    :OPTIONAL
    NIL)
   ("rep"
    :RANGE
    PROPERTY_VALUE_REPRESENTATION
    :SOURCE
    PROPERTY_DEFINITION_REPRESENTATION
    :REDEFINITION-OF
    (PROPERTY_DEFINITION_REPRESENTATION "rep")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_ATTITUDE))
      '(PROPERTY_REPRESENTATION))


(DEFENTITY-CLASS "RISK_COMMUNICATED_ITEMS" :AP233
  (("assigned_activity"
    :RANGE
    RISK_COMMUNICATION
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_ASSIGNMENT "assigned_activity")
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'RISK_COMMUNICATION_SELECT)
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_ASSIGNMENT "items")
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :DERIVED
    "risk_communicated_items"
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_COMMUNICATED_ITEMS))
      '(APPLIED_ACTIVITY_ASSIGNMENT))


(DEFENTITY-CLASS "RISK_COMMUNICATION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_COMMUNICATION)) '(ACTIVITY))


(DEFENTITY-CLASS "RISK_CONSEQUENCE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_CONSEQUENCE))
      '(PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "RISK_CONTROL" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_CONTROL)) '(ACTIVITY))


(DEFENTITY-CLASS "RISK_ESTIMATION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_ESTIMATION)) '(ACTIVITY))


(DEFENTITY-CLASS "RISK_ESTIMATION_INPUTS" :AP233
  (("assigned_activity"
    :RANGE
    RISK_ESTIMATION
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_ASSIGNMENT "assigned_activity")
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'RISK_PERCEPTION)
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_ASSIGNMENT "items")
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :DERIVED
    "risk_estimation_input"
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_ESTIMATION_INPUTS))
      '(APPLIED_ACTIVITY_ASSIGNMENT))


(DEFENTITY-CLASS "RISK_ESTIMATION_OUTPUTS" :AP233
  (("assigned_activity"
    :RANGE
    RISK_ESTIMATION
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_ASSIGNMENT "assigned_activity")
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'RISK_ESTIMATION_SELECT)
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_ASSIGNMENT "items")
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :DERIVED
    "risk_estimation_output"
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_ESTIMATION_OUTPUTS))
      '(APPLIED_ACTIVITY_ASSIGNMENT))


(DEFENTITY-CLASS "RISK_EVALUATION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_EVALUATION)) '(ACTIVITY))


(DEFENTITY-CLASS "RISK_EVALUATION_CRITERIA" :AP233
  (("assigned_activity"
    :RANGE
    RISK_EVALUATION
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_ASSIGNMENT "assigned_activity")
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'RISK_CRITERIA_SELECT)
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_ASSIGNMENT "items")
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :DERIVED
    "risk_evaluation_criteria"
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_EVALUATION_CRITERIA))
      '(APPLIED_ACTIVITY_ASSIGNMENT))


(DEFENTITY-CLASS "RISK_EVALUATION_INPUTS" :AP233
  (("assigned_activity"
    :RANGE
    RISK_EVALUATION
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_ASSIGNMENT "assigned_activity")
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'RISK_PERCEPTION)
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_ASSIGNMENT "items")
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :DERIVED
    "risk_evaluation_input"
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_EVALUATION_INPUTS))
      '(APPLIED_ACTIVITY_ASSIGNMENT))


(DEFENTITY-CLASS "RISK_EVENT" :AP233
  (("associated_risk"
    :RANGE
    RISK_PERCEPTION
    :SOURCE
    RISK_EVENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'RISK_PERCEPTION)
    :SOURCE
    EVENT_ASSIGNMENT
    :DERIVED
    (MAKE-INSTANCE 'EXPRESS-BAG
                   :VALUE
                   (LIST (%ASSOCIATED_RISK INSTANCE NIL))
                   :TYPE-DESCRIPTOR
                   (MAKE-INSTANCE 'BAG-TYP
                                  :L-BOUND
                                  0
                                  :U-BOUND
                                  :?
                                  :BASE-TYPE
                                  T))
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EVENT_ASSIGNMENT
    :DERIVED
    "risk of event"
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_EVENT)) '(EVENT_ASSIGNMENT))


(DEFENTITY-CLASS "RISK_IDENTIFICATION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_IDENTIFICATION)) '(ACTIVITY))


(DEFENTITY-CLASS "RISK_IDENTIFICATION_INPUTS" :AP233
  (("assigned_activity"
    :RANGE
    RISK_IDENTIFICATION
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_ASSIGNMENT "assigned_activity")
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'RISK_PERCEPTION_SOURCE_ITEM)
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_ASSIGNMENT "items")
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :DERIVED
    "risk_identification_input"
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_IDENTIFICATION_INPUTS))
      '(APPLIED_ACTIVITY_ASSIGNMENT))


(DEFENTITY-CLASS "RISK_IMPACT" :AP233
  (("causal_consequence"
    :RANGE
    RISK_CONSEQUENCE
    :SOURCE
    RISK_IMPACT
    :OPTIONAL
    T)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_IMPACT)) '(RISK_CONSEQUENCE))


(DEFENTITY-CLASS "RISK_IMPACT_ASSIGNMENT" :AP233
  (("assigned_risk_impact"
    :RANGE
    RISK_IMPACT
    :SOURCE
    RISK_IMPACT_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'RISK_IMPACT_ITEM)
    :SOURCE
    RISK_IMPACT_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "RISK_LEVEL" :AP233
  (("described_element"
    :RANGE
    RISK_PERCEPTION
    :SOURCE
    ASSIGNED_PROPERTY
    :REDEFINITION-OF
    (ASSIGNED_PROPERTY "described_element")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_LEVEL)) '(ASSIGNED_PROPERTY))


(DEFENTITY-CLASS "RISK_MEASURE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_MEASURE)) '(ACTIVITY_METHOD))


(DEFENTITY-CLASS "RISK_PERCEPTION" :AP233
  (("risk_perception_context"
    :RANGE
    RISK_PERCEPTION_CONTEXT
    :SOURCE
    RISK_PERCEPTION
    :DERIVED
    (%INITIAL_CONTEXT INSTANCE NIL))
   ("initial_context"
    :RANGE
    RISK_PERCEPTION_CONTEXT
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :REDEFINITION-OF
    (PRODUCT_VIEW_DEFINITION "initial_context")
    :OPTIONAL
    NIL)
   ("defined_version"
    :RANGE
    RISK_VERSION
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :REDEFINITION-OF
    (PRODUCT_VIEW_DEFINITION "defined_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_PERCEPTION))
      '(PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "RISK_PERCEPTION_CONTEXT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_PERCEPTION_CONTEXT))
      '(VIEW_DEFINITION_CONTEXT))


(DEFENTITY-CLASS "RISK_PERCEPTION_RELATIONSHIP" :AP233
  (("related_risk_perception"
    :RANGE
    RISK_PERCEPTION
    :SOURCE
    RISK_PERCEPTION_RELATIONSHIP
    :DERIVED
    (%RELATED_VIEW INSTANCE NIL))
   ("relating_risk_perception"
    :RANGE
    RISK_PERCEPTION
    :SOURCE
    RISK_PERCEPTION_RELATIONSHIP
    :DERIVED
    (%RELATING_VIEW INSTANCE NIL))
   ("relating_view"
    :RANGE
    RISK_PERCEPTION
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "relating_view")
    :OPTIONAL
    NIL)
   ("related_view"
    :RANGE
    RISK_PERCEPTION
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "related_view")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_PERCEPTION_RELATIONSHIP))
      '(VIEW_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "RISK_PERCEPTION_SOURCE_ASSIGNMENT" :AP233
  (("assigned_risk"
    :RANGE
    RISK_PERCEPTION
    :SOURCE
    RISK_PERCEPTION_SOURCE_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'RISK_PERCEPTION_SOURCE_ITEM)
    :SOURCE
    RISK_PERCEPTION_SOURCE_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "RISK_RELATIONSHIP" :AP233
  (("related_risk"
    :RANGE
    RISK
    :SOURCE
    RISK_RELATIONSHIP
    :DERIVED
    (%RELATED_PRODUCT INSTANCE NIL))
   ("relating_risk"
    :RANGE
    RISK
    :SOURCE
    RISK_RELATIONSHIP
    :DERIVED
    (%RELATING_PRODUCT INSTANCE NIL))
   ("relating_product"
    :RANGE
    RISK
    :SOURCE
    PRODUCT_RELATIONSHIP
    :REDEFINITION-OF
    (PRODUCT_RELATIONSHIP "relating_product")
    :OPTIONAL
    NIL)
   ("related_product"
    :RANGE
    RISK
    :SOURCE
    PRODUCT_RELATIONSHIP
    :REDEFINITION-OF
    (PRODUCT_RELATIONSHIP "related_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_RELATIONSHIP))
      '(PRODUCT_RELATIONSHIP))


(DEFENTITY-CLASS "RISK_TREATMENT" :AP233
  (("chosen_method"
    :RANGE
    RISK_MEASURE
    :SOURCE
    ACTIVITY
    :REDEFINITION-OF
    (ACTIVITY "chosen_method")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_TREATMENT)) '(ACTIVITY))


(DEFENTITY-CLASS "RISK_TREATMENT_ASSIGNMENT" :AP233
  (("assigned_activity"
    :RANGE
    RISK_TREATMENT
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_ASSIGNMENT "assigned_activity")
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'RISK_TREATMENT_SELECT)
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_ASSIGNMENT "items")
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    APPLIED_ACTIVITY_ASSIGNMENT
    :DERIVED
    "risk_treatment_assignment"
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_TREATMENT_ASSIGNMENT))
      '(APPLIED_ACTIVITY_ASSIGNMENT))


(DEFENTITY-CLASS "RISK_VERSION" :AP233
  (("of_risk"
    :RANGE
    RISK
    :SOURCE
    RISK_VERSION
    :DERIVED
    (%OF_PRODUCT INSTANCE NIL))
   ("of_product"
    :RANGE
    RISK
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RISK_VERSION)) '(PRODUCT_VERSION))


(DEFENTITY-CLASS "DOCUMENT_ASSIGNMENT" :AP233
  (("assigned_document"
    :RANGE
    ASSIGNED_DOCUMENT_SELECT
    :SOURCE
    DOCUMENT_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("is_assigned_to"
    :RANGE
    DOCUMENTED_ELEMENT_SELECT
    :SOURCE
    DOCUMENT_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    DOCUMENT_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PARTIAL_DOCUMENT_ASSIGNMENT" :AP233
  (("document_portion"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PARTIAL_DOCUMENT_ASSIGNMENT
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PARTIAL_DOCUMENT_ASSIGNMENT))
      '(DOCUMENT_ASSIGNMENT))


(DEFENTITY-CLASS "DOCUMENT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'DOCUMENT)) '(PRODUCT))


(DEFENTITY-CLASS "DOCUMENT_VERSION" :AP233
  (("of_product"
    :RANGE
    DOCUMENT
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'DOCUMENT_VERSION)) '(PRODUCT_VERSION))


(DEFENTITY-CLASS "DIGITAL_DOCUMENT_DEFINITION" :AP233
  (("files"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   0
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'DIGITAL_FILE)
    :SOURCE
    DIGITAL_DOCUMENT_DEFINITION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'DIGITAL_DOCUMENT_DEFINITION))
      '(DOCUMENT_DEFINITION))


(DEFENTITY-CLASS "DOCUMENT_DEFINITION" :AP233
  (("associated_document_version"
    :RANGE
    DOCUMENT_VERSION
    :SOURCE
    DOCUMENT_DEFINITION
    :DERIVED
    (%DEFINED_VERSION INSTANCE NIL))
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    DOCUMENT_DEFINITION
    :DERIVED
    (%NAME INSTANCE NIL))
   ("defined_version"
    :RANGE
    DOCUMENT_VERSION
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :REDEFINITION-OF
    (PRODUCT_VIEW_DEFINITION "defined_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'DOCUMENT_DEFINITION))
      '(PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "DOCUMENT_LOCATION_IDENTIFICATION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'DOCUMENT_LOCATION_IDENTIFICATION))
      '(EXTERNAL_SOURCE_IDENTIFICATION))

(DEFDOMAIN-RULES "DOCUMENT_LOCATION_IDENTIFICATION"
  ("WR1"
   (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.DOCUMENT_DEFINITION"
       (BI-TYPEOF (%ITEM INSTANCE NIL)))))


(DEFENTITY-CLASS "PHYSICAL_DOCUMENT_DEFINITION" :AP233
  (("components"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   0
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'HARDCOPY)
    :SOURCE
    PHYSICAL_DOCUMENT_DEFINITION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PHYSICAL_DOCUMENT_DEFINITION))
      '(DOCUMENT_DEFINITION))


(DEFENTITY-CLASS "EVENT_ASSIGNMENT" :AP233
  (("assigned_event"
    :RANGE
    EVENT
    :SOURCE
    EVENT_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'EVENT_ITEM)
    :SOURCE
    EVENT_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EVENT_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "EVENT" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EVENT
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EVENT
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EVENT
    :OPTIONAL
    T)
   ("actual_start_date"
    :RANGE
    DATE_OR_DATE_TIME_SELECT
    :SOURCE
    EVENT
    :OPTIONAL
    T)
   ("planned_start_date"
    :RANGE
    DATE_OR_DATE_TIME_SELECT
    :SOURCE
    EVENT
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "EVENT_RELATIONSHIP" :AP233
  (("relation_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EVENT_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EVENT_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating_event"
    :RANGE
    EVENT
    :SOURCE
    EVENT_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_event"
    :RANGE
    EVENT
    :SOURCE
    EVENT_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "RELATIVE_EVENT" :AP233
  (("base_event" :RANGE EVENT :SOURCE RELATIVE_EVENT :OPTIONAL NIL)
   ("offset" :RANGE DURATION :SOURCE RELATIVE_EVENT :OPTIONAL NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RELATIVE_EVENT)) '(EVENT))


(DEFENTITY-CLASS "AND_STATE_CAUSE_EFFECT_DEFINITION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'AND_STATE_CAUSE_EFFECT_DEFINITION))
      '(STATE_CAUSE_EFFECT_DEFINITION))


(DEFENTITY-CLASS "OR_STATE_CAUSE_EFFECT_DEFINITION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'OR_STATE_CAUSE_EFFECT_DEFINITION))
      '(STATE_CAUSE_EFFECT_DEFINITION))


(DEFENTITY-CLASS "SEQUENCE_OF_STATE_DEFINITION" :AP233
  (("predecessor"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_DEFINITION)
    :SOURCE
    SEQUENCE_OF_STATE_DEFINITION
    :DERIVED
    (%RELATED INSTANCE NIL))
   ("successor"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_DEFINITION)
    :SOURCE
    SEQUENCE_OF_STATE_DEFINITION
    :DERIVED
    (%RELATING INSTANCE NIL))))

(SETF (SUBTYPE-OF (FIND-CLASS 'SEQUENCE_OF_STATE_DEFINITION))
      '(STATE_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "STATE_CAUSE_EFFECT_DEFINITION" :AP233
  (("cause"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_DEFINITION)
    :SOURCE
    STATE_CAUSE_EFFECT_DEFINITION
    :DERIVED
    (%RELATED INSTANCE NIL))
   ("effect"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_DEFINITION)
    :SOURCE
    STATE_CAUSE_EFFECT_DEFINITION
    :DERIVED
    (%RELATING INSTANCE NIL))))

(SETF (SUBTYPE-OF (FIND-CLASS 'STATE_CAUSE_EFFECT_DEFINITION))
      '(STATE_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "STATE_COMPLEMENT_DEFINITION" :AP233
  (("set_2"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_DEFINITION)
    :SOURCE
    STATE_COMPLEMENT_DEFINITION
    :OPTIONAL
    NIL)
   ("set_1"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_DEFINITION)
    :SOURCE
    STATE_COMPLEMENT_DEFINITION
    :DERIVED
    (%RELATED INSTANCE NIL))
   ("universe"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_DEFINITION)
    :SOURCE
    STATE_COMPLEMENT_DEFINITION
    :DERIVED
    (%RELATING INSTANCE NIL))))

(SETF (SUBTYPE-OF (FIND-CLASS 'STATE_COMPLEMENT_DEFINITION))
      '(STATE_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "STATE_PROPER_SUBSET_DEFINITION" :AP233
  (("proper_subset"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_DEFINITION)
    :SOURCE
    STATE_PROPER_SUBSET_DEFINITION
    :DERIVED
    (%RELATED INSTANCE NIL))
   ("proper_superset"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_DEFINITION)
    :SOURCE
    STATE_PROPER_SUBSET_DEFINITION
    :DERIVED
    (%RELATING INSTANCE NIL))))

(SETF (SUBTYPE-OF (FIND-CLASS 'STATE_PROPER_SUBSET_DEFINITION))
      '(STATE_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "STATE_SUBSET_DEFINITION" :AP233
  (("subset"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_DEFINITION)
    :SOURCE
    STATE_SUBSET_DEFINITION
    :DERIVED
    (%RELATED INSTANCE NIL))
   ("superset"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_DEFINITION)
    :SOURCE
    STATE_SUBSET_DEFINITION
    :DERIVED
    (%RELATING INSTANCE NIL))))

(SETF (SUBTYPE-OF (FIND-CLASS 'STATE_SUBSET_DEFINITION))
      '(STATE_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "STATE_SYMPTOM_DEFINITION" :AP233
  (("symptom_cause"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_DEFINITION)
    :SOURCE
    STATE_SYMPTOM_DEFINITION
    :DERIVED
    (%RELATED INSTANCE NIL))
   ("symptom_effect"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'STATE_DEFINITION)
    :SOURCE
    STATE_SYMPTOM_DEFINITION
    :DERIVED
    (%RELATING INSTANCE NIL))))

(SETF (SUBTYPE-OF (FIND-CLASS 'STATE_SYMPTOM_DEFINITION))
      '(STATE_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "XOR_STATE_CAUSE_EFFECT_DEFINITION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'XOR_STATE_CAUSE_EFFECT_DEFINITION))
      '(STATE_CAUSE_EFFECT_DEFINITION))


(DEFENTITY-CLASS "ANALYSIS_MODEL" :AP233
  (("context_of_items"
    :RANGE
    ANALYSIS_REPRESENTATION_CONTEXT
    :SOURCE
    REPRESENTATION
    :REDEFINITION-OF
    (REPRESENTATION "context_of_items")
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'ANALYSIS_REPRESENTATION_ITEM)
    :SOURCE
    REPRESENTATION
    :REDEFINITION-OF
    (REPRESENTATION "items")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ANALYSIS_MODEL)) '(REPRESENTATION))


(DEFENTITY-CLASS "ANALYSIS_REPRESENTATION_CONTEXT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'ANALYSIS_REPRESENTATION_CONTEXT))
      '(REPRESENTATION_CONTEXT))


(DEFENTITY-CLASS "ANALYSIS_REPRESENTATION_ITEM" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'ANALYSIS_REPRESENTATION_ITEM))
      '(REPRESENTATION_ITEM))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'ANALYSIS_REPRESENTATION_ITEM)) T)


(DEFENTITY-CLASS "ASSIGNED_DOCUMENT_PROPERTY" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ASSIGNED_PROPERTY
    :DERIVED
    "document property"
    :OPTIONAL
    NIL)
   ("described_element"
    :RANGE
    DOCUMENT_PROPERTY_ITEM
    :SOURCE
    ASSIGNED_PROPERTY
    :REDEFINITION-OF
    (ASSIGNED_PROPERTY "described_element")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ASSIGNED_DOCUMENT_PROPERTY))
      '(ASSIGNED_PROPERTY))

(DEFDOMAIN-RULES "ASSIGNED_DOCUMENT_PROPERTY"
  ("WR1"
   (EXPRESS-EQUAL (BI-SIZEOF (EXPRESS-MULT (MAKE-INSTANCE 'EXPRESS-BAG
                                                          :VALUE
                                                          (LIST "AP233_SYSTEMS_ENGINEERING_ARM_LF.DOCUMENT_DEFINITION"
                                                                "AP233_SYSTEMS_ENGINEERING_ARM_LF.FILE")
                                                          :TYPE-DESCRIPTOR
                                                          (MAKE-INSTANCE 'BAG-TYP
                                                                         :L-BOUND
                                                                         0
                                                                         :U-BOUND
                                                                         :?
                                                                         :BASE-TYPE
                                                                         T))
                                           (BI-TYPEOF (%DESCRIBED_ELEMENT
                                                       INSTANCE
                                                       NIL))))
                  1)))


(DEFENTITY-CLASS "DESCRIPTIVE_DOCUMENT_PROPERTY" :AP233
  (("valued_characteristic"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   1
                   :BASE-TYPE
                   'DOCUMENT_PROPERTY_REPRESENTATION)
    :SOURCE
    DESCRIPTIVE_DOCUMENT_PROPERTY
    :INVERSE
    (DOCUMENT_PROPERTY_REPRESENTATION ITEMS))))

(SETF (SUBTYPE-OF (FIND-CLASS 'DESCRIPTIVE_DOCUMENT_PROPERTY))
      '(STRING_REPRESENTATION_ITEM))


(DEFENTITY-CLASS "DOCUMENT_PROPERTY_REPRESENTATION" :AP233
  (("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'DESCRIPTIVE_OR_NUMERICAL)
    :SOURCE
    REPRESENTATION
    :REDEFINITION-OF
    (REPRESENTATION "items")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'DOCUMENT_PROPERTY_REPRESENTATION))
      '(REPRESENTATION))

(DEFDOMAIN-RULES "DOCUMENT_PROPERTY_REPRESENTATION"
  ("WR1"
   (EXPRESS-> (BI-SIZEOF (QUERY (BI-USEDIN INSTANCE
                                           "AP233_SYSTEMS_ENGINEERING_ARM_LF.PROPERTY_DEFINITION_REPRESENTATION.REP")
                                #'(LAMBDA (PR)
                                    (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.ASSIGNED_PROPERTY"
                                        (BI-TYPEOF (%PROPERTY
                                                    PR
                                                    NIL))))))
              0))
  ("WR2"
   (EXPRESS-EQUAL (%KIND (%CONTEXT_OF_ITEMS INSTANCE NIL) NIL)
                  "document parameters"))
  ("WR3"
   (EXPRESS-EQUAL (BI-SIZEOF (QUERY (%ITEMS INSTANCE NIL)
                                    #'(LAMBDA (IT1)
                                        (EXPRESS-> (BI-SIZEOF (QUERY (%ITEMS
                                                                      INSTANCE
                                                                      NIL)
                                                                     #'(LAMBDA
                                                                           (IT2)
                                                                         (EXPRESS-EQUAL (%NAME
                                                                                         IT1
                                                                                         NIL)
                                                                                        (%NAME
                                                                                         IT2
                                                                                         NIL)))))
                                                   1))))
                  0)))


(DEFENTITY-CLASS "NUMERICAL_DOCUMENT_PROPERTY" :AP233
  (("valued_characteristic"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   1
                   :BASE-TYPE
                   'DOCUMENT_PROPERTY_REPRESENTATION)
    :SOURCE
    NUMERICAL_DOCUMENT_PROPERTY
    :INVERSE
    (DOCUMENT_PROPERTY_REPRESENTATION ITEMS))))

(SETF (SUBTYPE-OF (FIND-CLASS 'NUMERICAL_DOCUMENT_PROPERTY))
      '(NUMERICAL_ITEM_WITH_UNIT))


(DEFENTITY-CLASS "EXTERNAL_ITEM_IDENTIFICATION" :AP233
  (("external_id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EXTERNAL_ITEM_IDENTIFICATION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'EXTERNAL_ITEM_IDENTIFICATION))
      '(EXTERNAL_SOURCE_IDENTIFICATION))


(DEFENTITY-CLASS "EXTERNAL_SOURCE_IDENTIFICATION" :AP233
  (("source_id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EXTERNAL_SOURCE_IDENTIFICATION
    :OPTIONAL
    NIL)
   ("source_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EXTERNAL_SOURCE_IDENTIFICATION
    :OPTIONAL
    NIL)
   ("item"
    :RANGE
    EXTERNAL_IDENTIFICATION_ITEM
    :SOURCE
    EXTERNAL_SOURCE_IDENTIFICATION
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EXTERNAL_SOURCE_IDENTIFICATION
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "APPLIED_INFORMATION_USAGE_RIGHT" :AP233
  (("item"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'INFORMATION_USAGE_RIGHT_ITEM)
    :SOURCE
    APPLIED_INFORMATION_USAGE_RIGHT
    :OPTIONAL
    NIL)
   ("right_applied"
    :RANGE
    INFORMATION_USAGE_RIGHT
    :SOURCE
    APPLIED_INFORMATION_USAGE_RIGHT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "INFORMATION_RIGHT" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INFORMATION_RIGHT
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INFORMATION_RIGHT
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INFORMATION_RIGHT
    :OPTIONAL
    T)
   ("restriction"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INFORMATION_RIGHT
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "INFORMATION_USAGE_RIGHT" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INFORMATION_USAGE_RIGHT
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INFORMATION_USAGE_RIGHT
    :OPTIONAL
    NIL)
   ("comment"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INFORMATION_USAGE_RIGHT
    :OPTIONAL
    T)
   ("grants_right"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'INFORMATION_RIGHT)
    :SOURCE
    INFORMATION_USAGE_RIGHT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "INFORMATION_USAGE_RIGHT_RELATIONSHIP" :AP233
  (("relating"
    :RANGE
    INFORMATION_USAGE_RIGHT
    :SOURCE
    INFORMATION_USAGE_RIGHT_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    INFORMATION_USAGE_RIGHT
    :SOURCE
    INFORMATION_USAGE_RIGHT_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("relation_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INFORMATION_USAGE_RIGHT_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PROPERTY_AS_DEFINITION" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ASSIGNED_PROPERTY
    :DERIVED
    "THIS"
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PROPERTY_AS_DEFINITION))
      '(ASSIGNED_PROPERTY))


(DEFENTITY-CLASS "REPRESENTATION_PROXY_ITEM" :AP233
  (("item"
    :RANGE
    REPRESENTATION_PROXY_SELECT
    :SOURCE
    REPRESENTATION_PROXY_ITEM
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'REPRESENTATION_PROXY_ITEM))
      '(REPRESENTATION_ITEM))


(DEFENTITY-CLASS "REQUIREMENT_ASSIGNMENT" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REQUIREMENT_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REQUIREMENT_ASSIGNMENT
    :OPTIONAL
    T)
   ("assigned_requirement"
    :RANGE
    REQUIREMENT_VIEW_DEFINITION
    :SOURCE
    REQUIREMENT_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("assigned_to"
    :RANGE
    REQUIREMENT_ASSIGNMENT_ITEM
    :SOURCE
    REQUIREMENT_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "REQUIREMENT_SATISFIED_BY" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REQUIREMENT_SATISFIED_BY
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REQUIREMENT_SATISFIED_BY
    :OPTIONAL
    T)
   ("satisfied_by"
    :RANGE
    REQUIREMENT_SATISFACTION_ITEM
    :SOURCE
    REQUIREMENT_SATISFIED_BY
    :OPTIONAL
    NIL)
   ("satisfied_requirement"
    :RANGE
    REQUIREMENT_VIEW_DEFINITION
    :SOURCE
    REQUIREMENT_SATISFIED_BY
    :OPTIONAL
    NIL)
   ("related_assignment"
    :RANGE
    REQUIREMENT_ASSIGNMENT
    :SOURCE
    REQUIREMENT_SATISFIED_BY
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "REQUIREMENT_SOURCE" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REQUIREMENT_SOURCE
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REQUIREMENT_SOURCE
    :OPTIONAL
    T)
   (MEXICO:|source|
    :RANGE
    REQUIREMENT_SOURCE_ITEM
    :SOURCE
    REQUIREMENT_SOURCE
    :OPTIONAL
    NIL)
   ("sourced_requirement"
    :RANGE
    REQUIREMENT_VIEW_DEFINITION
    :SOURCE
    REQUIREMENT_SOURCE
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "REQUIREMENT_VIEW_DEFINITION" :AP233
  (("defined_version"
    :RANGE
    REQUIREMENT_VERSION
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :REDEFINITION-OF
    (PRODUCT_VIEW_DEFINITION "defined_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'REQUIREMENT_VIEW_DEFINITION))
      '(PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "REQUIREMENT_COLLECTION_RELATIONSHIP" :AP233
  (("collection"
    :RANGE
    REQUIREMENT_VIEW_DEFINITION
    :SOURCE
    REQUIREMENT_COLLECTION_RELATIONSHIP
    :DERIVED
    (%PRIMARY INSTANCE NIL))
   ("member"
    :RANGE
    REQUIREMENT_VIEW_DEFINITION
    :SOURCE
    REQUIREMENT_COLLECTION_RELATIONSHIP
    :DERIVED
    (%SECONDARY INSTANCE NIL))))

(SETF (SUBTYPE-OF (FIND-CLASS 'REQUIREMENT_COLLECTION_RELATIONSHIP))
      '(REQUIREMENT_VIEW_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "REQUIREMENT_VIEW_DEFINITION_RELATIONSHIP" :AP233
  (("primary"
    :RANGE
    REQUIREMENT_VIEW_DEFINITION
    :SOURCE
    REQUIREMENT_VIEW_DEFINITION_RELATIONSHIP
    :DERIVED
    (%RELATING_VIEW INSTANCE NIL))
   ("secondary"
    :RANGE
    REQUIREMENT_VIEW_DEFINITION
    :SOURCE
    REQUIREMENT_VIEW_DEFINITION_RELATIONSHIP
    :DERIVED
    (%RELATED_VIEW INSTANCE NIL))
   ("relating_view"
    :RANGE
    REQUIREMENT_VIEW_DEFINITION
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "relating_view")
    :OPTIONAL
    NIL)
   ("related_view"
    :RANGE
    REQUIREMENT_VIEW_DEFINITION
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "related_view")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'REQUIREMENT_VIEW_DEFINITION_RELATIONSHIP))
      '(VIEW_DEFINITION_RELATIONSHIP))

(DEFDOMAIN-RULES "REQUIREMENT_VIEW_DEFINITION_RELATIONSHIP"
  ("WR1"
   (EXPRESS-INSTANCE-NOT-EQUAL (%PRIMARY INSTANCE NIL)
                               (%SECONDARY INSTANCE NIL))))


(DEFENTITY-CLASS "TRACING_RELATIONSHIP" :AP233
  (("traces_from"
    :RANGE
    REQUIREMENT_VIEW_DEFINITION
    :SOURCE
    TRACING_RELATIONSHIP
    :DERIVED
    (%PRIMARY INSTANCE NIL))
   ("traces_to"
    :RANGE
    REQUIREMENT_VIEW_DEFINITION
    :SOURCE
    TRACING_RELATIONSHIP
    :DERIVED
    (%SECONDARY INSTANCE NIL))))

(SETF (SUBTYPE-OF (FIND-CLASS 'TRACING_RELATIONSHIP))
      '(REQUIREMENT_VIEW_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "BEHAVIOUR" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'BEHAVIOUR)) '(PRODUCT))


(DEFENTITY-CLASS "BEHAVIOUR_VERSION" :AP233
  (("of_product"
    :RANGE
    BEHAVIOUR
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'BEHAVIOUR_VERSION)) '(PRODUCT_VERSION))


(DEFENTITY-CLASS "BEHAVIOUR_VERSION_SEQUENCE" :AP233
  (("predecessor"
    :RANGE
    BEHAVIOUR_VERSION
    :SOURCE
    BEHAVIOUR_VERSION_SEQUENCE
    :DERIVED
    (%RELATING_VERSION INSTANCE NIL))
   ("successor"
    :RANGE
    BEHAVIOUR_VERSION
    :SOURCE
    BEHAVIOUR_VERSION_SEQUENCE
    :DERIVED
    (%RELATED_VERSION INSTANCE NIL))
   ("relating_version"
    :RANGE
    BEHAVIOUR_VERSION
    :SOURCE
    PRODUCT_VERSION_RELATIONSHIP
    :REDEFINITION-OF
    (PRODUCT_VERSION_RELATIONSHIP "relating_version")
    :OPTIONAL
    NIL)
   ("related_version"
    :RANGE
    BEHAVIOUR_VERSION
    :SOURCE
    PRODUCT_VERSION_RELATIONSHIP
    :REDEFINITION-OF
    (PRODUCT_VERSION_RELATIONSHIP "related_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'BEHAVIOUR_VERSION_SEQUENCE))
      '(PRODUCT_VERSION_RELATIONSHIP))


(DEFENTITY-CLASS "DECISION_PATH" :AP233
  (("condition" :RANGE CONDITION :SOURCE DECISION_PATH :OPTIONAL NIL)
   ("defined_in"
    :RANGE
    MULTIPLE_DECISION_POINT
    :SOURCE
    DECISION_PATH
    :OPTIONAL
    NIL)
   ("path_element"
    :RANGE
    TASK_ELEMENT
    :SOURCE
    DECISION_PATH
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "MULTIPLE_DECISION_POINT" :AP233
  (("paths"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   2
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'DECISION_PATH)
    :SOURCE
    MULTIPLE_DECISION_POINT
    :INVERSE
    (DECISION_PATH DEFINED_IN))))

(SETF (SUBTYPE-OF (FIND-CLASS 'MULTIPLE_DECISION_POINT))
      '(STRUCTURED_TASK_ELEMENT))


(DEFENTITY-CLASS "TASK_IO" :AP233
  (("assigned_activity_method"
    :RANGE
    TASK_STEP
    :SOURCE
    APPLIED_ACTIVITY_METHOD_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_METHOD_ASSIGNMENT "assigned_activity_method")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'TASK_IO)) '(TASK_ELEMENT_ASSIGNMENT))


(DEFENTITY-CLASS "TASK_IO_HIERARCHY" :AP233
  (("child" :RANGE TASK_IO :SOURCE TASK_IO_HIERARCHY :OPTIONAL NIL)
   ("parent" :RANGE TASK_IO :SOURCE TASK_IO_HIERARCHY :OPTIONAL NIL)))

(DEFDOMAIN-RULES "TASK_IO_HIERARCHY"
  ("wr1"
   (EXPRESS-EQUAL (%ROLE (%CHILD INSTANCE NIL) NIL)
                  (%ROLE (%PARENT INSTANCE NIL) NIL))))


(DEFENTITY-CLASS "TASK_STEP_HIERARCHY" :AP233
  (("child"
    :RANGE
    TASK_STEP
    :SOURCE
    TASK_STEP_HIERARCHY
    :DERIVED
    (%RELATED_METHOD INSTANCE NIL))
   ("parent"
    :RANGE
    TASK_STEP
    :SOURCE
    TASK_STEP_HIERARCHY
    :DERIVED
    (%RELATING_METHOD INSTANCE NIL))
   ("relating_method"
    :RANGE
    TASK_STEP
    :SOURCE
    ACTIVITY_METHOD_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_METHOD_RELATIONSHIP "relating_method")
    :OPTIONAL
    NIL)
   ("related_method"
    :RANGE
    TASK_STEP
    :SOURCE
    ACTIVITY_METHOD_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_METHOD_RELATIONSHIP "related_method")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'TASK_STEP_HIERARCHY))
      '(TASK_ELEMENT_RELATIONSHIP))


(DEFENTITY-CLASS "CONCURRENT_ELEMENTS" :AP233
  (("elements"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   2
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'TASK_ELEMENT)
    :SOURCE
    CONCURRENT_ELEMENTS
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'CONCURRENT_ELEMENTS))
      '(STRUCTURED_TASK_ELEMENT))


(DEFENTITY-CLASS "DECISION_POINT" :AP233
  (("condition" :RANGE CONDITION :SOURCE DECISION_POINT :OPTIONAL NIL)
   ("true_case_element"
    :RANGE
    TASK_ELEMENT
    :SOURCE
    DECISION_POINT
    :OPTIONAL
    T)
   ("false_case_element"
    :RANGE
    TASK_ELEMENT
    :SOURCE
    DECISION_POINT
    :OPTIONAL
    T)
   ("unknown_case_element"
    :RANGE
    TASK_ELEMENT
    :SOURCE
    DECISION_POINT
    :OPTIONAL
    T)))

(SETF (SUBTYPE-OF (FIND-CLASS 'DECISION_POINT))
      '(STRUCTURED_TASK_ELEMENT))


(DEFENTITY-CLASS "END_TASK" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'END_TASK)) '(TASK_ELEMENT))


(DEFENTITY-CLASS "EXIT_LOOP" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'EXIT_LOOP)) '(TASK_ELEMENT))


(DEFENTITY-CLASS "LOOPING_ELEMENT" :AP233
  (("repeated_element"
    :RANGE
    TASK_ELEMENT
    :SOURCE
    LOOPING_ELEMENT
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'LOOPING_ELEMENT))
      '(STRUCTURED_TASK_ELEMENT))


(DEFENTITY-CLASS "REPEAT_COUNT" :AP233
  (("count"
    :RANGE
    (MAKE-INSTANCE 'INTEGER-TYP)
    :SOURCE
    REPEAT_COUNT
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'REPEAT_COUNT)) '(LOOPING_ELEMENT))


(DEFENTITY-CLASS "REPEAT_UNTIL" :AP233
  (("condition" :RANGE CONDITION :SOURCE REPEAT_UNTIL :OPTIONAL NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'REPEAT_UNTIL)) '(LOOPING_ELEMENT))


(DEFENTITY-CLASS "REPEAT_WHILE" :AP233
  (("condition" :RANGE CONDITION :SOURCE REPEAT_WHILE :OPTIONAL NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'REPEAT_WHILE)) '(LOOPING_ELEMENT))


(DEFENTITY-CLASS "START_TASK" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'START_TASK)) '(TASK_ELEMENT))


(DEFENTITY-CLASS "STRUCTURED_TASK_ELEMENT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'STRUCTURED_TASK_ELEMENT))
      '(TASK_ELEMENT))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'STRUCTURED_TASK_ELEMENT)) T)


(DEFENTITY-CLASS "TASK_ELEMENT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'TASK_ELEMENT)) '(ACTIVITY_METHOD))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'TASK_ELEMENT)) T)


(DEFENTITY-CLASS "TASK_ELEMENT_ASSIGNMENT" :AP233
  (("assigned_task_element"
    :RANGE
    TASK_ELEMENT
    :SOURCE
    TASK_ELEMENT_ASSIGNMENT
    :DERIVED
    (%ASSIGNED_ACTIVITY_METHOD INSTANCE NIL))
   ("assigned_activity_method"
    :RANGE
    TASK_ELEMENT
    :SOURCE
    APPLIED_ACTIVITY_METHOD_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_METHOD_ASSIGNMENT "assigned_activity_method")
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'TASK_ITEM)
    :SOURCE
    APPLIED_ACTIVITY_METHOD_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_METHOD_ASSIGNMENT "items")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'TASK_ELEMENT_ASSIGNMENT))
      '(APPLIED_ACTIVITY_METHOD_ASSIGNMENT))


(DEFENTITY-CLASS "TASK_ELEMENT_RELATIONSHIP" :AP233
  (("relating_method"
    :RANGE
    TASK_ELEMENT
    :SOURCE
    ACTIVITY_METHOD_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_METHOD_RELATIONSHIP "relating_method")
    :OPTIONAL
    NIL)
   ("related_method"
    :RANGE
    TASK_ELEMENT
    :SOURCE
    ACTIVITY_METHOD_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_METHOD_RELATIONSHIP "related_method")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'TASK_ELEMENT_RELATIONSHIP))
      '(ACTIVITY_METHOD_RELATIONSHIP))


(DEFENTITY-CLASS "TASK_ELEMENT_SEQUENCE" :AP233
  (("elements"
    :RANGE
    (MAKE-INSTANCE 'LIST-TYP
                   :L-BOUND
                   2
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'TASK_ELEMENT
                   :UNIQUE
                   NIL)
    :SOURCE
    TASK_ELEMENT_SEQUENCE
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'TASK_ELEMENT_SEQUENCE))
      '(STRUCTURED_TASK_ELEMENT))


(DEFENTITY-CLASS "TASK_STEP" :AP233
  (("step_text"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    TASK_STEP
    :DERIVED
    (%DESCRIPTION INSTANCE NIL))
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_METHOD
    :REDEFINITION-OF
    (ACTIVITY_METHOD "description")
    :OPTIONAL
    T)))

(SETF (SUBTYPE-OF (FIND-CLASS 'TASK_STEP)) '(TASK_ELEMENT))


(DEFENTITY-CLASS "REQUIREMENT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'REQUIREMENT)) '(PRODUCT))


(DEFENTITY-CLASS "REQUIREMENT_VERSION" :AP233
  (("of_product"
    :RANGE
    REQUIREMENT
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'REQUIREMENT_VERSION)) '(PRODUCT_VERSION))


(DEFENTITY-CLASS "REQUIREMENT_VERSION_RELATIONSHIP" :AP233
  (("predecessor"
    :RANGE
    REQUIREMENT_VERSION
    :SOURCE
    REQUIREMENT_VERSION_RELATIONSHIP
    :DERIVED
    (%RELATING_VERSION INSTANCE NIL))
   ("successor"
    :RANGE
    REQUIREMENT_VERSION
    :SOURCE
    REQUIREMENT_VERSION_RELATIONSHIP
    :DERIVED
    (%RELATED_VERSION INSTANCE NIL))
   ("relating_version"
    :RANGE
    REQUIREMENT_VERSION
    :SOURCE
    PRODUCT_VERSION_RELATIONSHIP
    :REDEFINITION-OF
    (PRODUCT_VERSION_RELATIONSHIP "relating_version")
    :OPTIONAL
    NIL)
   ("related_version"
    :RANGE
    REQUIREMENT_VERSION
    :SOURCE
    PRODUCT_VERSION_RELATIONSHIP
    :REDEFINITION-OF
    (PRODUCT_VERSION_RELATIONSHIP "related_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'REQUIREMENT_VERSION_RELATIONSHIP))
      '(PRODUCT_VERSION_RELATIONSHIP))


(DEFENTITY-CLASS "ABS_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'ABS_FUNCTION)) '(UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "ACOS_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'ACOS_FUNCTION)) '(UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "ASIN_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'ASIN_FUNCTION)) '(UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "ATAN_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'ATAN_FUNCTION)) '(BINARY_FUNCTION_CALL))


(DEFENTITY-CLASS "BINARY_FUNCTION_CALL" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'BINARY_FUNCTION_CALL))
      '(BINARY_NUMERIC_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'BINARY_FUNCTION_CALL)) T)


(DEFENTITY-CLASS "COS_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'COS_FUNCTION)) '(UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "EXP_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'EXP_FUNCTION)) '(UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "FUNCTION_PARAMETER_VALUE" :AP233
  (("operand"
    :RANGE
    STRING_EXPRESSION
    :SOURCE
    UNARY_GENERIC_EXPRESSION
    :REDEFINITION-OF
    (UNARY_GENERIC_EXPRESSION "operand")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'FUNCTION_PARAMETER_VALUE))
      '(NUMERIC_EXPRESSION UNARY_GENERIC_EXPRESSION))


(DEFENTITY-CLASS "INT_VALUE_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'INT_VALUE_FUNCTION))
      '(FUNCTION_PARAMETER_VALUE))


(DEFENTITY-CLASS "INTEGER_DEFINED_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'INTEGER_DEFINED_FUNCTION))
      '(NUMERIC_DEFINED_FUNCTION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'INTEGER_DEFINED_FUNCTION)) T)


(DEFENTITY-CLASS "LENGTH_FUNCTION" :AP233
  (("operand"
    :RANGE
    STRING_EXPRESSION
    :SOURCE
    UNARY_GENERIC_EXPRESSION
    :REDEFINITION-OF
    (UNARY_GENERIC_EXPRESSION "operand")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'LENGTH_FUNCTION))
      '(NUMERIC_EXPRESSION UNARY_GENERIC_EXPRESSION))


(DEFENTITY-CLASS "LOG10_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'LOG10_FUNCTION)) '(UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "LOG2_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'LOG2_FUNCTION)) '(UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "LOG_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'LOG_FUNCTION)) '(UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "MAXIMUM_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'MAXIMUM_FUNCTION))
      '(MULTIPLE_ARITY_FUNCTION_CALL))


(DEFENTITY-CLASS "MINIMUM_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'MINIMUM_FUNCTION))
      '(MULTIPLE_ARITY_FUNCTION_CALL))


(DEFENTITY-CLASS "MINUS_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'MINUS_FUNCTION)) '(UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "NUMERIC_DEFINED_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'NUMERIC_DEFINED_FUNCTION))
      '(NUMERIC_EXPRESSION DEFINED_FUNCTION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'NUMERIC_DEFINED_FUNCTION)) T)


(DEFENTITY-CLASS "ODD_FUNCTION" :AP233
  (("operand"
    :RANGE
    NUMERIC_EXPRESSION
    :SOURCE
    UNARY_GENERIC_EXPRESSION
    :REDEFINITION-OF
    (UNARY_GENERIC_EXPRESSION "operand")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ODD_FUNCTION))
      '(UNARY_BOOLEAN_EXPRESSION))

(DEFDOMAIN-RULES "ODD_FUNCTION" ("WR1" ("Is_int_expr" INSTANCE)))


(DEFENTITY-CLASS "REAL_DEFINED_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'REAL_DEFINED_FUNCTION))
      '(NUMERIC_DEFINED_FUNCTION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'REAL_DEFINED_FUNCTION)) T)


(DEFENTITY-CLASS "SIN_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'SIN_FUNCTION)) '(UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "SQUARE_ROOT_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'SQUARE_ROOT_FUNCTION))
      '(UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "TAN_FUNCTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'TAN_FUNCTION)) '(UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "UNARY_FUNCTION_CALL" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'UNARY_FUNCTION_CALL))
      '(UNARY_NUMERIC_EXPRESSION))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'UNARY_FUNCTION_CALL)) T)


(DEFENTITY-CLASS "CONDITIONAL_EFFECTIVITY" :AP233
  (("condition"
    :RANGE
    CONDITION
    :SOURCE
    CONDITIONAL_EFFECTIVITY
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'CONDITIONAL_EFFECTIVITY)) '(EFFECTIVITY))


(DEFENTITY-CLASS "HIERARCHICAL_INTERFACE_CONNECTION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'HIERARCHICAL_INTERFACE_CONNECTION))
      '(INTERFACE_CONNECTION))


(DEFENTITY-CLASS "INTERFACE_CONNECTION" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INTERFACE_CONNECTION
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INTERFACE_CONNECTION
    :OPTIONAL
    T)
   ("connection_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INTERFACE_CONNECTION
    :OPTIONAL
    NIL)
   ("connecting"
    :RANGE
    CONNECTION_ITEMS
    :SOURCE
    INTERFACE_CONNECTION
    :OPTIONAL
    NIL)
   ("connected"
    :RANGE
    CONNECTION_ITEMS
    :SOURCE
    INTERFACE_CONNECTION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "INTERFACE_CONNECTOR" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'INTERFACE_CONNECTOR)) '(PRODUCT))


(DEFENTITY-CLASS "INTERFACE_CONNECTOR_DEFINITION" :AP233
  (("connector_on"
    :RANGE
    PRODUCT_VIEW_DEFINITION
    :SOURCE
    INTERFACE_CONNECTOR_DEFINITION
    :OPTIONAL
    NIL)
   ("defined_version"
    :RANGE
    INTERFACE_CONNECTOR_VERSION
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :REDEFINITION-OF
    (PRODUCT_VIEW_DEFINITION "defined_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'INTERFACE_CONNECTOR_DEFINITION))
      '(PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "INTERFACE_CONNECTOR_OCCURRENCE" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INTERFACE_CONNECTOR_OCCURRENCE
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INTERFACE_CONNECTOR_OCCURRENCE
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INTERFACE_CONNECTOR_OCCURRENCE
    :OPTIONAL
    T)
   ("occurrence_of"
    :RANGE
    INTERFACE_CONNECTOR_DEFINITION
    :SOURCE
    INTERFACE_CONNECTOR_OCCURRENCE
    :OPTIONAL
    NIL)
   ("connector_on"
    :RANGE
    CONNECTOR_ON_ITEM
    :SOURCE
    INTERFACE_CONNECTOR_OCCURRENCE
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "INTERFACE_CONNECTOR_VERSION" :AP233
  (("of_product"
    :RANGE
    INTERFACE_CONNECTOR
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'INTERFACE_CONNECTOR_VERSION))
      '(PRODUCT_VERSION))


(DEFENTITY-CLASS "INTERFACE_DEFINITION_CONNECTION" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INTERFACE_DEFINITION_CONNECTION
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INTERFACE_DEFINITION_CONNECTION
    :OPTIONAL
    T)
   ("connection_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INTERFACE_DEFINITION_CONNECTION
    :OPTIONAL
    NIL)
   ("connecting"
    :RANGE
    CONNECTION_DEFINITION_ITEMS
    :SOURCE
    INTERFACE_DEFINITION_CONNECTION
    :OPTIONAL
    NIL)
   ("connected"
    :RANGE
    CONNECTION_DEFINITION_ITEMS
    :SOURCE
    INTERFACE_DEFINITION_CONNECTION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "INTERFACE_DEFINITION_FOR" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INTERFACE_DEFINITION_FOR
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INTERFACE_DEFINITION_FOR
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    INTERFACE_DEFINITION_FOR
    :OPTIONAL
    T)
   ("interface"
    :RANGE
    INTERFACE_SPECIFICATION_DEFINITION
    :SOURCE
    INTERFACE_DEFINITION_FOR
    :OPTIONAL
    NIL)
   ("interface_component"
    :RANGE
    INTERFACE_DEFINITION_ITEM
    :SOURCE
    INTERFACE_DEFINITION_FOR
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "INTERFACE_SPECIFICATION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'INTERFACE_SPECIFICATION)) '(PRODUCT))


(DEFENTITY-CLASS "INTERFACE_SPECIFICATION_DEFINITION" :AP233
  (("defined_version"
    :RANGE
    INTERFACE_SPECIFICATION_VERSION
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :REDEFINITION-OF
    (PRODUCT_VIEW_DEFINITION "defined_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'INTERFACE_SPECIFICATION_DEFINITION))
      '(PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "INTERFACE_SPECIFICATION_VERSION" :AP233
  (("of_product"
    :RANGE
    INTERFACE_SPECIFICATION
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'INTERFACE_SPECIFICATION_VERSION))
      '(PRODUCT_VERSION))


(DEFENTITY-CLASS "ASSEMBLY_COMPONENT_RELATIONSHIP" :AP233
  (("location_indicator"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ASSEMBLY_COMPONENT_RELATIONSHIP
    :OPTIONAL
    T)
   ("quantity"
    :RANGE
    VALUE_WITH_UNIT
    :SOURCE
    ASSEMBLY_COMPONENT_RELATIONSHIP
    :OPTIONAL
    T)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ASSEMBLY_COMPONENT_RELATIONSHIP))
      '(PRODUCT_OCCURRENCE_DEFINITION_RELATIONSHIP))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'ASSEMBLY_COMPONENT_RELATIONSHIP)) T)

(DEFDOMAIN-RULES "ASSEMBLY_COMPONENT_RELATIONSHIP"
  ("WR1"
   (EXPRESS-OR (EXPRESS-NOT (BI-EXISTS (%QUANTITY INSTANCE NIL)))
               (EXPRESS-XOR (EXPRESS-NOT (IN "NUMBER"
                                             (BI-TYPEOF (%VALUE_COMPONENT
                                                         (%QUANTITY
                                                          INSTANCE
                                                          NIL)
                                                         NIL))))
                            (EXPRESS-> (%VALUE_COMPONENT
                                        (%QUANTITY INSTANCE NIL)
                                        NIL)
                                       0)))))


(DEFENTITY-CLASS "COMPONENT_UPPER_LEVEL_IDENTIFICATION" :AP233
  (("upper_assembly_relationship"
    :RANGE
    ASSEMBLY_COMPONENT_RELATIONSHIP
    :SOURCE
    COMPONENT_UPPER_LEVEL_IDENTIFICATION
    :OPTIONAL
    NIL)
   ("sub_assembly_relationship"
    :RANGE
    NEXT_ASSEMBLY_USAGE
    :SOURCE
    COMPONENT_UPPER_LEVEL_IDENTIFICATION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'COMPONENT_UPPER_LEVEL_IDENTIFICATION))
      '(ASSEMBLY_COMPONENT_RELATIONSHIP))

(DEFDOMAIN-RULES "COMPONENT_UPPER_LEVEL_IDENTIFICATION"
  ("WR1"
   (EXPRESS-INSTANCE-NOT-EQUAL INSTANCE
                               (%UPPER_ASSEMBLY_RELATIONSHIP
                                INSTANCE
                                NIL)))
  ("WR2"
   (EXPRESS-INSTANCE-EQUAL (%RELATING_VIEW INSTANCE NIL)
                           (%RELATING_VIEW
                            (%UPPER_ASSEMBLY_RELATIONSHIP INSTANCE NIL)
                            NIL)))
  ("WR3"
   (EXPRESS-INSTANCE-EQUAL (%RELATED_VIEW INSTANCE NIL)
                           (%RELATED_VIEW
                            (%SUB_ASSEMBLY_RELATIONSHIP INSTANCE NIL)
                            NIL)))
  ("WR4"
   (EXPRESS-OR (EXPRESS-INSTANCE-EQUAL (%RELATED_VIEW
                                        (%UPPER_ASSEMBLY_RELATIONSHIP
                                         INSTANCE
                                         NIL)
                                        NIL)
                                       (%RELATING_VIEW
                                        (%SUB_ASSEMBLY_RELATIONSHIP
                                         INSTANCE
                                         NIL)
                                        NIL))
               (EXPRESS-EQUAL (BI-SIZEOF (QUERY (BI-USEDIN (%RELATED_VIEW
                                                            (%UPPER_ASSEMBLY_RELATIONSHIP
                                                             INSTANCE
                                                             NIL)
                                                            NIL)
                                                           "AP233_SYSTEMS_ENGINEERING_ARM_LF.PRODUCT_OCCURRENCE_DEFINITION_RELATIONSHIP.RELATED_VIEW")
                                                #'(LAMBDA (PDR)
                                                    (EXPRESS-INSTANCE-EQUAL (%RELATING_VIEW
                                                                             PDR
                                                                             NIL)
                                                                            (%RELATING_VIEW
                                                                             (%SUB_ASSEMBLY_RELATIONSHIP
                                                                              INSTANCE
                                                                              NIL)
                                                                             NIL)))))
                              1)))
  ("WR5"
   (EXPRESS-EQUAL (BI-SIZEOF (EXPRESS-MULT (MAKE-INSTANCE 'EXPRESS-BAG
                                                          :VALUE
                                                          (LIST "AP233_SYSTEMS_ENGINEERING_ARM_LF.NEXT_ASSEMBLY_USAGE"
                                                                "AP233_SYSTEMS_ENGINEERING_ARM_LF.COMPONENT_UPPER_LEVEL_IDENTIFICATION")
                                                          :TYPE-DESCRIPTOR
                                                          (MAKE-INSTANCE 'BAG-TYP
                                                                         :L-BOUND
                                                                         0
                                                                         :U-BOUND
                                                                         :?
                                                                         :BASE-TYPE
                                                                         T))
                                           (BI-TYPEOF (%UPPER_ASSEMBLY_RELATIONSHIP
                                                       INSTANCE
                                                       NIL))))
                  1)))


(DEFENTITY-CLASS "NEXT_ASSEMBLY_USAGE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'NEXT_ASSEMBLY_USAGE))
      '(ASSEMBLY_COMPONENT_RELATIONSHIP))


(DEFENTITY-CLASS "PRODUCT_OCCURRENCE_DEFINITION_RELATIONSHIP" :AP233
  (("relating_view"
    :RANGE
    PRODUCT_VIEW_DEFINITION
    :SOURCE
    PRODUCT_OCCURRENCE_DEFINITION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_view"
    :RANGE
    PRODUCT_VIEW_DEFINITION
    :SOURCE
    PRODUCT_OCCURRENCE_DEFINITION_RELATIONSHIP
    :OPTIONAL
    NIL)))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'PRODUCT_OCCURRENCE_DEFINITION_RELATIONSHIP))
      T)


(DEFENTITY-CLASS "PROMISSORY_USAGE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'PROMISSORY_USAGE))
      '(ASSEMBLY_COMPONENT_RELATIONSHIP))


(DEFENTITY-CLASS "PHYSICAL_BREAKDOWN" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'PHYSICAL_BREAKDOWN)) '(BREAKDOWN))


(DEFENTITY-CLASS "PHYSICAL_BREAKDOWN_CONTEXT" :AP233
  (("breakdown"
    :RANGE
    PHYSICAL_BREAKDOWN_VERSION
    :SOURCE
    BREAKDOWN_CONTEXT
    :REDEFINITION-OF
    (BREAKDOWN_CONTEXT "breakdown")
    :OPTIONAL
    NIL)
   ("breakdown_element"
    :RANGE
    PHYSICAL_ELEMENT_DEFINITION
    :SOURCE
    BREAKDOWN_CONTEXT
    :REDEFINITION-OF
    (BREAKDOWN_CONTEXT "breakdown_element")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PHYSICAL_BREAKDOWN_CONTEXT))
      '(BREAKDOWN_CONTEXT))


(DEFENTITY-CLASS "PHYSICAL_BREAKDOWN_VERSION" :AP233
  (("of_product"
    :RANGE
    PHYSICAL_BREAKDOWN
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PHYSICAL_BREAKDOWN_VERSION))
      '(BREAKDOWN_VERSION))


(DEFENTITY-CLASS "PHYSICAL_ELEMENT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'PHYSICAL_ELEMENT)) '(BREAKDOWN_ELEMENT))


(DEFENTITY-CLASS "PHYSICAL_ELEMENT_DEFINITION" :AP233
  (("defined_version"
    :RANGE
    PHYSICAL_ELEMENT_VERSION
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :REDEFINITION-OF
    (PRODUCT_VIEW_DEFINITION "defined_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PHYSICAL_ELEMENT_DEFINITION))
      '(BREAKDOWN_ELEMENT_DEFINITION))


(DEFENTITY-CLASS "PHYSICAL_ELEMENT_USAGE" :AP233
  (("relating_view"
    :RANGE
    PHYSICAL_ELEMENT_DEFINITION
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "relating_view")
    :OPTIONAL
    NIL)
   ("related_view"
    :RANGE
    PHYSICAL_ELEMENT_DEFINITION
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "related_view")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PHYSICAL_ELEMENT_USAGE))
      '(BREAKDOWN_ELEMENT_USAGE))


(DEFENTITY-CLASS "PHYSICAL_ELEMENT_VERSION" :AP233
  (("of_product"
    :RANGE
    PHYSICAL_ELEMENT
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PHYSICAL_ELEMENT_VERSION))
      '(BREAKDOWN_ELEMENT_VERSION))


(DEFENTITY-CLASS "ITEM_USAGE_EFFECTIVITY" :AP233
  (("effectivity_domain"
    :RANGE
    EFFECTIVITY
    :SOURCE
    ITEM_USAGE_EFFECTIVITY
    :OPTIONAL
    NIL)
   ("item_usage_relationship"
    :RANGE
    ITEM_USAGE_RELATIONSHIP_ITEM
    :SOURCE
    ITEM_USAGE_EFFECTIVITY
    :OPTIONAL
    NIL)
   ("resolved_configuration"
    :RANGE
    ITEM_DESIGN_ASSOCIATION
    :SOURCE
    ITEM_USAGE_EFFECTIVITY
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "DOCUMENT_DEFINITION_RELATIONSHIP" :AP233
  (("relation_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    DOCUMENT_DEFINITION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    DOCUMENT_DEFINITION_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating_document_definition"
    :RANGE
    DOCUMENT_DEFINITION
    :SOURCE
    DOCUMENT_DEFINITION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_document_definition"
    :RANGE
    DOCUMENT_DEFINITION
    :SOURCE
    DOCUMENT_DEFINITION_RELATIONSHIP
    :OPTIONAL
    NIL)))

(DEFDOMAIN-RULES "DOCUMENT_DEFINITION_RELATIONSHIP"
  ("WR1"
   (EXPRESS-INSTANCE-NOT-EQUAL (%RELATING_DOCUMENT_DEFINITION
                                INSTANCE
                                NIL)
                               (%RELATED_DOCUMENT_DEFINITION
                                INSTANCE
                                NIL))))


(DEFENTITY-CLASS "FILE_RELATIONSHIP" :AP233
  (("relation_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    FILE_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    FILE_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating_document_file"
    :RANGE
    FILE
    :SOURCE
    FILE_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_document_file"
    :RANGE
    FILE
    :SOURCE
    FILE_RELATIONSHIP
    :OPTIONAL
    NIL)))

(DEFDOMAIN-RULES "FILE_RELATIONSHIP"
  ("WR1"
   (EXPRESS-INSTANCE-NOT-EQUAL (%RELATING_DOCUMENT_FILE INSTANCE NIL)
                               (%RELATED_DOCUMENT_FILE INSTANCE NIL))))


(DEFENTITY-CLASS "INCOMPLETE_REFERENCE_MARKING" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'INCOMPLETE_REFERENCE_MARKING))
      '(CLASSIFICATION_ASSIGNMENT))

(DEFDOMAIN-RULES "INCOMPLETE_REFERENCE_MARKING"
  ("WR1"
   (EXPRESS-EQUAL (BI-SIZEOF (QUERY (%ITEMS INSTANCE NIL)
                                    #'(LAMBDA (ITEM)
                                        (EXPRESS-NOT (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.IDRM_MARKED_ITEM"
                                                         (BI-TYPEOF ITEM))))))
                  0))
  ("WR2"
   (EXPRESS-EQUAL (%ID (%ASSIGNED_CLASS INSTANCE NIL) NIL)
                  "reference")))


(DEFENTITY-CLASS "PART_VIEW_DEFINITION" :AP233
  (("defined_version"
    :RANGE
    PART_VERSION
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :REDEFINITION-OF
    (PRODUCT_VIEW_DEFINITION "defined_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PART_VIEW_DEFINITION))
      '(PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "ACTIVITY_PROPERTY" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_PROPERTY
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_PROPERTY
    :OPTIONAL
    NIL)
   ("described_element"
    :RANGE
    CHARACTERIZED_ACTIVITY_DEFINITION
    :SOURCE
    ACTIVITY_PROPERTY
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ACTIVITY_PROPERTY_REPRESENTATION" :AP233
  (("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_PROPERTY_REPRESENTATION
    :OPTIONAL
    T)
   ("property"
    :RANGE
    ACTIVITY_PROPERTY
    :SOURCE
    ACTIVITY_PROPERTY_REPRESENTATION
    :OPTIONAL
    NIL)
   ("rep"
    :RANGE
    REPRESENTATION
    :SOURCE
    ACTIVITY_PROPERTY_REPRESENTATION
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_PROPERTY_REPRESENTATION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "APPLIED_INDEPENDENT_ACTIVITY_PROPERTY" :AP233
  (("base_element_property"
    :RANGE
    INDEPENDENT_PROPERTY
    :SOURCE
    APPLIED_INDEPENDENT_ACTIVITY_PROPERTY
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_PROPERTY
    :DERIVED
    (%PROPERTY_TYPE (%BASE_ELEMENT_PROPERTY INSTANCE NIL) NIL)
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'APPLIED_INDEPENDENT_ACTIVITY_PROPERTY))
      '(ACTIVITY_PROPERTY))


(DEFENTITY-CLASS "ALTERNATE_PART_RELATIONSHIP" :AP233
  (("alternate_product"
    :RANGE
    PART
    :SOURCE
    ALTERNATE_PRODUCT_RELATIONSHIP
    :REDEFINITION-OF
    (ALTERNATE_PRODUCT_RELATIONSHIP "alternate_product")
    :OPTIONAL
    NIL)
   ("base_product"
    :RANGE
    PART
    :SOURCE
    ALTERNATE_PRODUCT_RELATIONSHIP
    :REDEFINITION-OF
    (ALTERNATE_PRODUCT_RELATIONSHIP "base_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ALTERNATE_PART_RELATIONSHIP))
      '(ALTERNATE_PRODUCT_RELATIONSHIP))


(DEFENTITY-CLASS "TIME_INTERVAL_ASSIGNMENT" :AP233
  (("assigned_time_interval"
    :RANGE
    TIME_INTERVAL
    :SOURCE
    TIME_INTERVAL_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    TIME_INTERVAL_ROLE
    :SOURCE
    TIME_INTERVAL_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'TIME_INTERVAL_ITEM)
    :SOURCE
    TIME_INTERVAL_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "TIME_INTERVAL_ROLE" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    TIME_INTERVAL_ROLE
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    TIME_INTERVAL_ROLE
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ENVIRONMENT_DEFINITION" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'ENVIRONMENT_DEFINITION)) '(PRODUCT))


(DEFENTITY-CLASS "ENVIRONMENT_DEFINITION_VERSION" :AP233
  (("of_environment"
    :RANGE
    ENVIRONMENT_DEFINITION
    :SOURCE
    ENVIRONMENT_DEFINITION_VERSION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ENVIRONMENT_DEFINITION_VERSION))
      '(PRODUCT_VERSION))


(DEFENTITY-CLASS "ENVIRONMENT_DEFINITION_VIEW" :AP233
  (("defined_environment_version"
    :RANGE
    ENVIRONMENT_DEFINITION_VERSION
    :SOURCE
    ENVIRONMENT_DEFINITION_VIEW
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ENVIRONMENT_DEFINITION_VIEW))
      '(PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "ENVIRONMENT_PRODUCT_ASSIGNMENT" :AP233
  (("environment"
    :RANGE
    ENVIRONMENT_DEFINITION_VIEW
    :SOURCE
    ENVIRONMENT_PRODUCT_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("item"
    :RANGE
    ENVIRONMENT_PRODUCT_ITEM
    :SOURCE
    ENVIRONMENT_PRODUCT_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ENVIRONMENT_VIEW_DEFINITION_RELATIONSHIP" :AP233
  (("related_environment"
    :RANGE
    ENVIRONMENT_DEFINITION_VIEW
    :SOURCE
    ENVIRONMENT_VIEW_DEFINITION_RELATIONSHIP
    :DERIVED
    (%RELATED_VIEW INSTANCE NIL))
   ("relating_environment"
    :RANGE
    ENVIRONMENT_DEFINITION_VIEW
    :SOURCE
    ENVIRONMENT_VIEW_DEFINITION_RELATIONSHIP
    :DERIVED
    (%RELATING_VIEW INSTANCE NIL))
   ("relating_view"
    :RANGE
    ENVIRONMENT_DEFINITION_VIEW
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "relating_view")
    :OPTIONAL
    NIL)
   ("related_view"
    :RANGE
    ENVIRONMENT_DEFINITION_VIEW
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "related_view")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ENVIRONMENT_VIEW_DEFINITION_RELATIONSHIP))
      '(VIEW_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "LOCATION_ASSIGNMENT" :AP233
  (("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    LOCATION_ASSIGNMENT
    :OPTIONAL
    T)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    LOCATION_ASSIGNMENT
    :OPTIONAL
    T)
   ("entity_for_location"
    :RANGE
    LOCATION_ASSIGNMENT_SELECT
    :SOURCE
    LOCATION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("location_for_assignment"
    :RANGE
    LOCATION
    :SOURCE
    LOCATION_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ADDRESS_BASED_LOCATION_REPRESENTATION" :AP233
  (("postal_address"
    :RANGE
    ADDRESS
    :SOURCE
    ADDRESS_BASED_LOCATION_REPRESENTATION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ADDRESS_BASED_LOCATION_REPRESENTATION))
      '(LOCATION_REPRESENTATION))


(DEFENTITY-CLASS "GLOBAL_LOCATION_REPRESENTATION" :AP233
  (("altitude"
    :RANGE
    VALUE_WITH_UNIT
    :SOURCE
    GLOBAL_LOCATION_REPRESENTATION
    :OPTIONAL
    T)
   ("geographical_area"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    GLOBAL_LOCATION_REPRESENTATION
    :OPTIONAL
    T)
   ("latitude"
    :RANGE
    VALUE_WITH_UNIT
    :SOURCE
    GLOBAL_LOCATION_REPRESENTATION
    :OPTIONAL
    NIL)
   ("longitude"
    :RANGE
    VALUE_WITH_UNIT
    :SOURCE
    GLOBAL_LOCATION_REPRESENTATION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'GLOBAL_LOCATION_REPRESENTATION))
      '(LOCATION_REPRESENTATION))


(DEFENTITY-CLASS "LOCATION" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    LOCATION
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    LOCATION
    :OPTIONAL
    T)
   ("alternative_location_representations"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   0
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'LOCATION_REPRESENTATION)
    :SOURCE
    LOCATION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "LOCATION_RELATIONSHIP" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    LOCATION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    LOCATION_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating"
    :RANGE
    LOCATION
    :SOURCE
    LOCATION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    LOCATION
    :SOURCE
    LOCATION_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "LOCATION_REPRESENTATION" :AP233 NIL)
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'LOCATION_REPRESENTATION)) T)


(DEFENTITY-CLASS "ORGANIZATION_BASED_LOCATION_REPRESENTATION" :AP233
  (("location_identifications"
    :RANGE
    (MAKE-INSTANCE 'LIST-TYP
                   :L-BOUND
                   0
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'ORGANIZATIONAL_LOCATION_IDENTIFICATION
                   :UNIQUE
                   NIL)
    :SOURCE
    ORGANIZATION_BASED_LOCATION_REPRESENTATION
    :OPTIONAL
    NIL)
   ("organization_for_location"
    :RANGE
    ORGANIZATION
    :SOURCE
    ORGANIZATION_BASED_LOCATION_REPRESENTATION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ORGANIZATION_BASED_LOCATION_REPRESENTATION))
      '(LOCATION_REPRESENTATION))


(DEFENTITY-CLASS "ORGANIZATIONAL_LOCATION_IDENTIFICATION" :AP233
  (("identification_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ORGANIZATIONAL_LOCATION_IDENTIFICATION
    :OPTIONAL
    NIL)
   ("location_value"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ORGANIZATIONAL_LOCATION_IDENTIFICATION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PRODUCT_BASED_LOCATION_IDENTIFICATION" :AP233
  (("location_identification"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_BASED_LOCATION_IDENTIFICATION
    :OPTIONAL
    NIL)
   ("location_name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    PRODUCT_BASED_LOCATION_IDENTIFICATION
    :OPTIONAL
    T)
   ("referenced_product"
    :RANGE
    PRODUCT_BASED_LOCATION_REPRESENTATION
    :SOURCE
    PRODUCT_BASED_LOCATION_IDENTIFICATION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PRODUCT_BASED_LOCATION_IDENTIFICATION))
      '(LOCATION_REPRESENTATION))


(DEFENTITY-CLASS "REGIONAL_COORDINATE" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REGIONAL_COORDINATE
    :OPTIONAL
    NIL)
   ("coordinate_value"
    :RANGE
    VALUE_WITH_UNIT
    :SOURCE
    REGIONAL_COORDINATE
    :OPTIONAL
    NIL)
   ("grid_system"
    :RANGE
    REGIONAL_GRID_LOCATION_REPRESENTATION
    :SOURCE
    REGIONAL_COORDINATE
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "REGIONAL_GRID_LOCATION_REPRESENTATION" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REGIONAL_GRID_LOCATION_REPRESENTATION
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    REGIONAL_GRID_LOCATION_REPRESENTATION
    :OPTIONAL
    T)))

(SETF (SUBTYPE-OF (FIND-CLASS 'REGIONAL_GRID_LOCATION_REPRESENTATION))
      '(LOCATION_REPRESENTATION))


(DEFENTITY-CLASS "OBSERVED_ENVIRONMENT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'OBSERVED_ENVIRONMENT)) '(PRODUCT))


(DEFENTITY-CLASS "OBSERVED_ENVIRONMENT_PRODUCT_ASSIGNMENT" :AP233
  (("environment"
    :RANGE
    OBSERVED_ENVIRONMENT_VIEW
    :SOURCE
    OBSERVED_ENVIRONMENT_PRODUCT_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("item"
    :RANGE
    OBSERVED_ENVIRONMENT_PRODUCT_ITEM
    :SOURCE
    OBSERVED_ENVIRONMENT_PRODUCT_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "OBSERVED_ENVIRONMENT_TO_DEFINITION" :AP233
  (("defined_environment"
    :RANGE
    ENVIRONMENT_DEFINITION
    :SOURCE
    OBSERVED_ENVIRONMENT_TO_DEFINITION
    :OPTIONAL
    NIL)
   ("observed_environment"
    :RANGE
    OBSERVED_ENVIRONMENT
    :SOURCE
    OBSERVED_ENVIRONMENT_TO_DEFINITION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "OBSERVED_ENVIRONMENT_TO_DEFINITION_VERSION" :AP233
  (("defined_environment_version"
    :RANGE
    ENVIRONMENT_DEFINITION_VERSION
    :SOURCE
    OBSERVED_ENVIRONMENT_TO_DEFINITION_VERSION
    :OPTIONAL
    NIL)
   ("observed_environment_version"
    :RANGE
    OBSERVED_ENVIRONMENT_VERSION
    :SOURCE
    OBSERVED_ENVIRONMENT_TO_DEFINITION_VERSION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "OBSERVED_ENVIRONMENT_TO_DEFINITION_VIEW" :AP233
  (("defined_environment_view"
    :RANGE
    OBSERVED_ENVIRONMENT_VIEW
    :SOURCE
    OBSERVED_ENVIRONMENT_TO_DEFINITION_VIEW
    :OPTIONAL
    NIL)
   ("observed_environment_view"
    :RANGE
    ENVIRONMENT_DEFINITION_VIEW
    :SOURCE
    OBSERVED_ENVIRONMENT_TO_DEFINITION_VIEW
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "OBSERVED_ENVIRONMENT_VERSION" :AP233
  (("of_environment"
    :RANGE
    OBSERVED_ENVIRONMENT
    :SOURCE
    OBSERVED_ENVIRONMENT_VERSION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'OBSERVED_ENVIRONMENT_VERSION))
      '(PRODUCT_VERSION))


(DEFENTITY-CLASS "OBSERVED_ENVIRONMENT_VIEW" :AP233
  (("observed_environment_version"
    :RANGE
    OBSERVED_ENVIRONMENT_VERSION
    :SOURCE
    OBSERVED_ENVIRONMENT_VIEW
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'OBSERVED_ENVIRONMENT_VIEW))
      '(PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "OBSERVED_ENVIRONMENT_VIEW_DEFINITION_RELATIONSHIP"
                 :AP233
  (("related_environment"
    :RANGE
    OBSERVED_ENVIRONMENT_VIEW
    :SOURCE
    OBSERVED_ENVIRONMENT_VIEW_DEFINITION_RELATIONSHIP
    :DERIVED
    (%RELATED_VIEW INSTANCE NIL))
   ("relating_environment"
    :RANGE
    OBSERVED_ENVIRONMENT_VIEW
    :SOURCE
    OBSERVED_ENVIRONMENT_VIEW_DEFINITION_RELATIONSHIP
    :DERIVED
    (%RELATING_VIEW INSTANCE NIL))
   ("relating_view"
    :RANGE
    OBSERVED_ENVIRONMENT_VIEW
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "relating_view")
    :OPTIONAL
    NIL)
   ("related_view"
    :RANGE
    OBSERVED_ENVIRONMENT_VIEW
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "related_view")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'OBSERVED_ENVIRONMENT_VIEW_DEFINITION_RELATIONSHIP))
      '(VIEW_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "SYSTEM_BREAKDOWN" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'SYSTEM_BREAKDOWN)) '(BREAKDOWN))


(DEFENTITY-CLASS "SYSTEM_BREAKDOWN_CONTEXT" :AP233
  (("breakdown"
    :RANGE
    SYSTEM_BREAKDOWN_VERSION
    :SOURCE
    BREAKDOWN_CONTEXT
    :REDEFINITION-OF
    (BREAKDOWN_CONTEXT "breakdown")
    :OPTIONAL
    NIL)
   ("breakdown_element"
    :RANGE
    SYSTEM_ELEMENT_DEFINITION
    :SOURCE
    BREAKDOWN_CONTEXT
    :REDEFINITION-OF
    (BREAKDOWN_CONTEXT "breakdown_element")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'SYSTEM_BREAKDOWN_CONTEXT))
      '(BREAKDOWN_CONTEXT))


(DEFENTITY-CLASS "SYSTEM_BREAKDOWN_VERSION" :AP233
  (("of_product"
    :RANGE
    SYSTEM_BREAKDOWN
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'SYSTEM_BREAKDOWN_VERSION))
      '(BREAKDOWN_VERSION))


(DEFENTITY-CLASS "SYSTEM_ELEMENT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'SYSTEM_ELEMENT)) '(BREAKDOWN_ELEMENT))


(DEFENTITY-CLASS "SYSTEM_ELEMENT_DEFINITION" :AP233
  (("defined_version"
    :RANGE
    SYSTEM_ELEMENT_VERSION
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :REDEFINITION-OF
    (PRODUCT_VIEW_DEFINITION "defined_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'SYSTEM_ELEMENT_DEFINITION))
      '(BREAKDOWN_ELEMENT_DEFINITION))


(DEFENTITY-CLASS "SYSTEM_ELEMENT_USAGE" :AP233
  (("relating_view"
    :RANGE
    SYSTEM_ELEMENT_DEFINITION
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "relating_view")
    :OPTIONAL
    NIL)
   ("related_view"
    :RANGE
    SYSTEM_ELEMENT_DEFINITION
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "related_view")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'SYSTEM_ELEMENT_USAGE))
      '(BREAKDOWN_ELEMENT_USAGE))


(DEFENTITY-CLASS "SYSTEM_ELEMENT_VERSION" :AP233
  (("of_product"
    :RANGE
    SYSTEM_ELEMENT
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'SYSTEM_ELEMENT_VERSION))
      '(BREAKDOWN_ELEMENT_VERSION))


(DEFENTITY-CLASS "SYSTEM_VIEW_DEFINITION" :AP233
  (("defined_version"
    :RANGE
    SYSTEM_VERSION
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :REDEFINITION-OF
    (PRODUCT_VIEW_DEFINITION "defined_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'SYSTEM_VIEW_DEFINITION))
      '(PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "IN_ZONE" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    IN_ZONE
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    IN_ZONE
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    IN_ZONE
    :OPTIONAL
    T)
   ("located_item" :RANGE IN_ZONE_ITEM :SOURCE IN_ZONE :OPTIONAL NIL)
   ("zone"
    :RANGE
    ZONE_ELEMENT_DEFINITION
    :SOURCE
    IN_ZONE
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ZONE_BREAKDOWN" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'ZONE_BREAKDOWN)) '(BREAKDOWN))


(DEFENTITY-CLASS "ZONE_BREAKDOWN_CONTEXT" :AP233
  (("breakdown"
    :RANGE
    ZONE_BREAKDOWN_VERSION
    :SOURCE
    BREAKDOWN_CONTEXT
    :REDEFINITION-OF
    (BREAKDOWN_CONTEXT "breakdown")
    :OPTIONAL
    NIL)
   ("breakdown_element"
    :RANGE
    ZONE_ELEMENT_DEFINITION
    :SOURCE
    BREAKDOWN_CONTEXT
    :REDEFINITION-OF
    (BREAKDOWN_CONTEXT "breakdown_element")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ZONE_BREAKDOWN_CONTEXT))
      '(BREAKDOWN_CONTEXT))


(DEFENTITY-CLASS "ZONE_BREAKDOWN_VERSION" :AP233
  (("of_product"
    :RANGE
    ZONE_BREAKDOWN
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ZONE_BREAKDOWN_VERSION))
      '(BREAKDOWN_VERSION))


(DEFENTITY-CLASS "ZONE_ELEMENT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'ZONE_ELEMENT)) '(BREAKDOWN_ELEMENT))


(DEFENTITY-CLASS "ZONE_ELEMENT_DEFINITION" :AP233
  (("defined_version"
    :RANGE
    ZONE_ELEMENT_VERSION
    :SOURCE
    PRODUCT_VIEW_DEFINITION
    :REDEFINITION-OF
    (PRODUCT_VIEW_DEFINITION "defined_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ZONE_ELEMENT_DEFINITION))
      '(BREAKDOWN_ELEMENT_DEFINITION))


(DEFENTITY-CLASS "ZONE_ELEMENT_USAGE" :AP233
  (("relating_view"
    :RANGE
    ZONE_ELEMENT_DEFINITION
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "relating_view")
    :OPTIONAL
    NIL)
   ("related_view"
    :RANGE
    ZONE_ELEMENT_DEFINITION
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "related_view")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ZONE_ELEMENT_USAGE))
      '(BREAKDOWN_ELEMENT_USAGE))


(DEFENTITY-CLASS "ZONE_ELEMENT_VERSION" :AP233
  (("of_product"
    :RANGE
    ZONE_ELEMENT
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ZONE_ELEMENT_VERSION))
      '(BREAKDOWN_ELEMENT_VERSION))


(DEFENTITY-CLASS "EXPERIENCE_GAINED" :AP233
  (("experience_of"
    :RANGE
    EXPERIENCE_INSTANCE
    :SOURCE
    EXPERIENCE_GAINED
    :OPTIONAL
    NIL)
   ("gained_by"
    :RANGE
    PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_SELECT
    :SOURCE
    EXPERIENCE_GAINED
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EXPERIENCE_GAINED
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "EXPERIENCE_INSTANCE" :AP233
  (("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EXPERIENCE_INSTANCE
    :OPTIONAL
    T)
   ("is_defined_by"
    :RANGE
    EXPERIENCE_TYPE
    :SOURCE
    EXPERIENCE_INSTANCE
    :OPTIONAL
    NIL)
   ("consists_of"
    :RANGE
    DEFINED_ACTIVITIES
    :SOURCE
    EXPERIENCE_INSTANCE
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "EXPERIENCE_TYPE" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EXPERIENCE_TYPE
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    EXPERIENCE_TYPE
    :OPTIONAL
    T)
   ("consists_of"
    :RANGE
    DEFINED_METHODS
    :SOURCE
    EXPERIENCE_TYPE
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "EXPERIENCE_TYPE_RELATIONSHIP" :AP233
  (("compound_experience"
    :RANGE
    EXPERIENCE_TYPE
    :SOURCE
    EXPERIENCE_TYPE_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("component_experience"
    :RANGE
    EXPERIENCE_TYPE
    :SOURCE
    EXPERIENCE_TYPE_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "RESOURCE_AS_REALIZED" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RESOURCE_AS_REALIZED
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RESOURCE_AS_REALIZED
    :OPTIONAL
    T)
   ("quantity"
    :RANGE
    VALUE_WITH_UNIT
    :SOURCE
    RESOURCE_AS_REALIZED
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "RESOURCE_AS_REALIZED_ASSIGNMENT" :AP233
  (("assigned_resource"
    :RANGE
    RESOURCE_AS_REALIZED
    :SOURCE
    RESOURCE_AS_REALIZED_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("item"
    :RANGE
    RESOURCE_AS_REALIZED_ITEM
    :SOURCE
    RESOURCE_AS_REALIZED_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "RESOURCE_AS_REALIZED_BY_REFERENCE" :AP233
  (("item"
    :RANGE
    RESOURCE_ITEM_SELECT
    :SOURCE
    RESOURCE_AS_REALIZED_BY_REFERENCE
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RESOURCE_AS_REALIZED_BY_REFERENCE))
      '(RESOURCE_AS_REALIZED))


(DEFENTITY-CLASS "RESOURCE_AS_REALIZED_BY_RESOURCE_ITEM" :AP233
  (("resource_item"
    :RANGE
    RESOURCE_ITEM
    :SOURCE
    RESOURCE_AS_REALIZED_BY_RESOURCE_ITEM
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'RESOURCE_AS_REALIZED_BY_RESOURCE_ITEM))
      '(RESOURCE_AS_REALIZED))


(DEFENTITY-CLASS "RESOURCE_AS_REALIZED_RELATIONSHIP" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RESOURCE_AS_REALIZED_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RESOURCE_AS_REALIZED_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating"
    :RANGE
    RESOURCE_AS_REALIZED
    :SOURCE
    RESOURCE_AS_REALIZED_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    RESOURCE_AS_REALIZED_RELATIONSHIP_SELECT
    :SOURCE
    RESOURCE_AS_REALIZED_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "QUALIFICATION_ASSIGNMENT" :AP233
  (("assigned_qualification_type"
    :RANGE
    QUALIFICATION_TYPE
    :SOURCE
    QUALIFICATION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("received_by"
    :RANGE
    QUALIFICATIONS_SELECT
    :SOURCE
    QUALIFICATION_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "QUALIFICATION_TYPE" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    QUALIFICATION_TYPE
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    QUALIFICATION_TYPE
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "QUALIFICATION_TYPE_RELATIONSHIP" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    QUALIFICATION_TYPE_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    QUALIFICATION_TYPE_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating"
    :RANGE
    QUALIFICATION_TYPE
    :SOURCE
    QUALIFICATION_TYPE_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    QUALIFICATION_TYPE
    :SOURCE
    QUALIFICATION_TYPE_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "TIME_INTERVAL" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    TIME_INTERVAL
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    TIME_INTERVAL
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    TIME_INTERVAL
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "TIME_INTERVAL_RELATIONSHIP" :AP233
  (("relation_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    TIME_INTERVAL_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    TIME_INTERVAL_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("relating_time_interval"
    :RANGE
    TIME_INTERVAL
    :SOURCE
    TIME_INTERVAL_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related_time_interval"
    :RANGE
    TIME_INTERVAL
    :SOURCE
    TIME_INTERVAL_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "TIME_INTERVAL_WITH_BOUNDS" :AP233
  (("primary_bound"
    :RANGE
    DATE_OR_EVENT
    :SOURCE
    TIME_INTERVAL_WITH_BOUNDS
    :OPTIONAL
    T)
   ("secondary_bound"
    :RANGE
    DATE_OR_EVENT
    :SOURCE
    TIME_INTERVAL_WITH_BOUNDS
    :OPTIONAL
    T)
   ("duration_from_primary_bound"
    :RANGE
    DURATION
    :SOURCE
    TIME_INTERVAL_WITH_BOUNDS
    :OPTIONAL
    T)))

(SETF (SUBTYPE-OF (FIND-CLASS 'TIME_INTERVAL_WITH_BOUNDS))
      '(TIME_INTERVAL))

(DEFDOMAIN-RULES "TIME_INTERVAL_WITH_BOUNDS"
  ("WR1"
   (EXPRESS-NOT (EXPRESS-AND (BI-EXISTS (%SECONDARY_BOUND
                                         INSTANCE
                                         NIL))
                             (BI-EXISTS (%DURATION_FROM_PRIMARY_BOUND
                                         INSTANCE
                                         NIL)))))
  ("WR2"
   (EXPRESS-OR (BI-EXISTS (%PRIMARY_BOUND INSTANCE NIL))
               (BI-EXISTS (%SECONDARY_BOUND INSTANCE NIL)))))


(DEFENTITY-CLASS "ACTIVITY_METHOD_REALIZATION" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_METHOD_REALIZATION
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_METHOD_REALIZATION
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_METHOD_REALIZATION
    :OPTIONAL
    T)
   ("activity_method"
    :RANGE
    ACTIVITY_METHOD
    :SOURCE
    ACTIVITY_METHOD_REALIZATION
    :OPTIONAL
    NIL)
   ("realized_by"
    :RANGE
    ACTIVITY_REALIZATION_SELECT
    :SOURCE
    ACTIVITY_METHOD_REALIZATION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ACTIVITY_METHOD_REALIZATION_RELATIONSHIP" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating"
    :RANGE
    ACTIVITY_METHOD_REALIZATION
    :SOURCE
    ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    ACTIVITY_METHOD_REALIZATION
    :SOURCE
    ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ATTRIBUTE_CLASSIFICATION" :AP233
  (("allowed_value"
    :RANGE
    CLASS
    :SOURCE
    ATTRIBUTE_CLASSIFICATION
    :OPTIONAL
    NIL)
   ("attribute_name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ATTRIBUTE_CLASSIFICATION
    :OPTIONAL
    NIL)
   ("classified_entity"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'CLASSIFIED_ATTRIBUTE_SELECT)
    :SOURCE
    ATTRIBUTE_CLASSIFICATION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "CONDITION_EVALUATION" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CONDITION_EVALUATION
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CONDITION_EVALUATION
    :OPTIONAL
    T)
   ("result"
    :RANGE
    (MAKE-INSTANCE 'LOGICAL-TYP)
    :SOURCE
    CONDITION_EVALUATION
    :OPTIONAL
    NIL)
   ("condition"
    :RANGE
    CONDITION
    :SOURCE
    CONDITION_EVALUATION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "CONDITION_EVALUATION_ASSIGNMENT" :AP233
  (("assigned_condition_evaluation"
    :RANGE
    CONDITION_EVALUATION
    :SOURCE
    CONDITION_EVALUATION_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("item"
    :RANGE
    CONDITION_EVALUATION_ITEM
    :SOURCE
    CONDITION_EVALUATION_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "CONDITION_EVALUATION_PARAMETER" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CONDITION_EVALUATION_PARAMETER
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CONDITION_EVALUATION_PARAMETER
    :OPTIONAL
    T)
   ("condition_evaluation"
    :RANGE
    CONDITION_EVALUATION
    :SOURCE
    CONDITION_EVALUATION_PARAMETER
    :OPTIONAL
    NIL)
   ("evaluation_parameter"
    :RANGE
    CONDITION_EVALUATION_PARAMETER_ITEM
    :SOURCE
    CONDITION_EVALUATION_PARAMETER
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "RELATED_CONDITION_PARAMETER" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RELATED_CONDITION_PARAMETER
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RELATED_CONDITION_PARAMETER
    :OPTIONAL
    T)
   ("conditon_evaluation_parameter"
    :RANGE
    CONDITION_EVALUATION_PARAMETER
    :SOURCE
    RELATED_CONDITION_PARAMETER
    :OPTIONAL
    NIL)
   ("condition_parameter"
    :RANGE
    CONDITION_PARAMETER
    :SOURCE
    RELATED_CONDITION_PARAMETER
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "DECREASING_RESOURCE_EVENT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'DECREASING_RESOURCE_EVENT))
      '(RESOURCE_EVENT))


(DEFENTITY-CLASS "INCREASING_RESOURCE_EVENT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'INCREASING_RESOURCE_EVENT))
      '(RESOURCE_EVENT))


(DEFENTITY-CLASS "MANAGED_RESOURCE" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    MANAGED_RESOURCE
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    MANAGED_RESOURCE
    :OPTIONAL
    T)
   ("quantity"
    :RANGE
    VALUE_WITH_UNIT
    :SOURCE
    MANAGED_RESOURCE
    :OPTIONAL
    T)))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'MANAGED_RESOURCE)) T)


(DEFENTITY-CLASS "MANAGED_RESOURCE_BY_REFERENCE" :AP233
  (("item"
    :RANGE
    RESOURCE_ITEM_SELECT
    :SOURCE
    MANAGED_RESOURCE_BY_REFERENCE
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'MANAGED_RESOURCE_BY_REFERENCE))
      '(MANAGED_RESOURCE))


(DEFENTITY-CLASS "MANAGED_RESOURCE_BY_RESOURCE_ITEM" :AP233
  (("item"
    :RANGE
    RESOURCE_ITEM
    :SOURCE
    MANAGED_RESOURCE_BY_RESOURCE_ITEM
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'MANAGED_RESOURCE_BY_RESOURCE_ITEM))
      '(MANAGED_RESOURCE))


(DEFENTITY-CLASS "MANAGED_RESOURCE_RELATIONSHIP" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    MANAGED_RESOURCE_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    MANAGED_RESOURCE_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating"
    :RANGE
    MANAGED_RESOURCE
    :SOURCE
    MANAGED_RESOURCE_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    MANAGED_RESOURCE
    :SOURCE
    MANAGED_RESOURCE_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "RESOURCE_EVENT" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RESOURCE_EVENT
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RESOURCE_EVENT
    :OPTIONAL
    T)
   ("quantity"
    :RANGE
    VALUE_WITH_UNIT
    :SOURCE
    RESOURCE_EVENT
    :OPTIONAL
    T)
   ("resource"
    :RANGE
    MANAGED_RESOURCE
    :SOURCE
    RESOURCE_EVENT
    :OPTIONAL
    NIL)))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'RESOURCE_EVENT)) T)


(DEFENTITY-CLASS "RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating"
    :RANGE
    RESOURCE_EVENT
    :SOURCE
    RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    REQUIRED_RESOURCE
    :SOURCE
    RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "RESOURCE_EVENT_RELATIONSHIP" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RESOURCE_EVENT_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    RESOURCE_EVENT_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating"
    :RANGE
    RESOURCE_EVENT
    :SOURCE
    RESOURCE_EVENT_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    RESOURCE_EVENT
    :SOURCE
    RESOURCE_EVENT_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "SCHEME" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'SCHEME)) '(ACTIVITY_METHOD))


(DEFENTITY-CLASS "SCHEME_ENTRY" :AP233
  (("scheme" :RANGE SCHEME_VERSION :SOURCE SCHEME_ENTRY :OPTIONAL NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'SCHEME_ENTRY)) '(ACTIVITY_METHOD))


(DEFENTITY-CLASS "SCHEME_ENTRY_ASSIGNMENT" :AP233
  (("assigned_entry"
    :RANGE
    SCHEME_ENTRY
    :SOURCE
    SCHEME_ENTRY_ASSIGNMENT
    :DERIVED
    (%ASSIGNED_ACTIVITY_METHOD INSTANCE NIL))
   ("assigned_activity_method"
    :RANGE
    SCHEME_ENTRY
    :SOURCE
    APPLIED_ACTIVITY_METHOD_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_METHOD_ASSIGNMENT "assigned_activity_method")
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'SCHEME_ENTRY_ITEM_SELECT)
    :SOURCE
    APPLIED_ACTIVITY_METHOD_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_METHOD_ASSIGNMENT "items")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'SCHEME_ENTRY_ASSIGNMENT))
      '(APPLIED_ACTIVITY_METHOD_ASSIGNMENT))


(DEFENTITY-CLASS "SCHEME_ENTRY_RELATIONSHIP" :AP233
  (("related_entry"
    :RANGE
    SCHEME_ENTRY
    :SOURCE
    SCHEME_ENTRY_RELATIONSHIP
    :DERIVED
    (%RELATED_METHOD INSTANCE NIL))
   ("relating_entry"
    :RANGE
    SCHEME_ENTRY
    :SOURCE
    SCHEME_ENTRY_RELATIONSHIP
    :DERIVED
    (%RELATING_METHOD INSTANCE NIL))
   ("relating_method"
    :RANGE
    SCHEME_ENTRY
    :SOURCE
    ACTIVITY_METHOD_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_METHOD_RELATIONSHIP "relating_method")
    :OPTIONAL
    NIL)
   ("related_method"
    :RANGE
    SCHEME_ENTRY
    :SOURCE
    ACTIVITY_METHOD_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_METHOD_RELATIONSHIP "related_method")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'SCHEME_ENTRY_RELATIONSHIP))
      '(ACTIVITY_METHOD_RELATIONSHIP))


(DEFENTITY-CLASS "SCHEME_RELATIONSHIP" :AP233
  (("related_scheme"
    :RANGE
    SCHEME
    :SOURCE
    SCHEME_RELATIONSHIP
    :DERIVED
    (%RELATED_METHOD INSTANCE NIL))
   ("relating_scheme"
    :RANGE
    SCHEME
    :SOURCE
    SCHEME_RELATIONSHIP
    :DERIVED
    (%RELATING_METHOD INSTANCE NIL))
   ("relating_method"
    :RANGE
    SCHEME
    :SOURCE
    ACTIVITY_METHOD_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_METHOD_RELATIONSHIP "relating_method")
    :OPTIONAL
    NIL)
   ("related_method"
    :RANGE
    SCHEME
    :SOURCE
    ACTIVITY_METHOD_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_METHOD_RELATIONSHIP "related_method")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'SCHEME_RELATIONSHIP))
      '(ACTIVITY_METHOD_RELATIONSHIP))


(DEFENTITY-CLASS "SCHEME_SUBJECT_ASSIGNMENT" :AP233
  (("assigned_scheme"
    :RANGE
    SCHEME
    :SOURCE
    SCHEME_SUBJECT_ASSIGNMENT
    :DERIVED
    (%ASSIGNED_ACTIVITY_METHOD INSTANCE NIL))
   ("assigned_activity_method"
    :RANGE
    SCHEME
    :SOURCE
    APPLIED_ACTIVITY_METHOD_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_METHOD_ASSIGNMENT "assigned_activity_method")
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'SCHEME_SUBJECT_SELECT)
    :SOURCE
    APPLIED_ACTIVITY_METHOD_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_METHOD_ASSIGNMENT "items")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'SCHEME_SUBJECT_ASSIGNMENT))
      '(APPLIED_ACTIVITY_METHOD_ASSIGNMENT))


(DEFENTITY-CLASS "SCHEME_VERSION" :AP233
  (("of_scheme" :RANGE SCHEME :SOURCE SCHEME_VERSION :OPTIONAL NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'SCHEME_VERSION)) '(ACTIVITY_METHOD))


(DEFENTITY-CLASS "SCHEME_VERSION_ASSIGNMENT" :AP233
  (("assigned_scheme_version"
    :RANGE
    SCHEME_VERSION
    :SOURCE
    SCHEME_VERSION_ASSIGNMENT
    :DERIVED
    (%ASSIGNED_ACTIVITY_METHOD INSTANCE NIL))
   ("assigned_activity_method"
    :RANGE
    SCHEME_VERSION
    :SOURCE
    APPLIED_ACTIVITY_METHOD_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_METHOD_ASSIGNMENT "assigned_activity_method")
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'SCHEME_VERSION_SELECT)
    :SOURCE
    APPLIED_ACTIVITY_METHOD_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_METHOD_ASSIGNMENT "items")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'SCHEME_VERSION_ASSIGNMENT))
      '(APPLIED_ACTIVITY_METHOD_ASSIGNMENT))


(DEFENTITY-CLASS "SCHEME_VERSION_RELATIONSHIP" :AP233
  (("related_scheme_version"
    :RANGE
    SCHEME_VERSION
    :SOURCE
    SCHEME_VERSION_RELATIONSHIP
    :DERIVED
    (%RELATED_METHOD INSTANCE NIL))
   ("relating_scheme_version"
    :RANGE
    SCHEME_VERSION
    :SOURCE
    SCHEME_VERSION_RELATIONSHIP
    :DERIVED
    (%RELATING_METHOD INSTANCE NIL))
   ("relating_method"
    :RANGE
    SCHEME_VERSION
    :SOURCE
    ACTIVITY_METHOD_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_METHOD_RELATIONSHIP "relating_method")
    :OPTIONAL
    NIL)
   ("related_method"
    :RANGE
    SCHEME_VERSION
    :SOURCE
    ACTIVITY_METHOD_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_METHOD_RELATIONSHIP "related_method")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'SCHEME_VERSION_RELATIONSHIP))
      '(ACTIVITY_METHOD_RELATIONSHIP))


(DEFENTITY-CLASS "SEQUENCING_RELATIONSHIP" :AP233
  (("sequencing_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    SEQUENCING_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("time_lag"
    :RANGE
    TIME_INTERVAL
    :SOURCE
    SEQUENCING_RELATIONSHIP
    :OPTIONAL
    T)))

(SETF (SUBTYPE-OF (FIND-CLASS 'SEQUENCING_RELATIONSHIP))
      '(SCHEME_ENTRY_RELATIONSHIP))


(DEFENTITY-CLASS "ADVISORY_NOTE" :AP233
  (("advisory"
    :RANGE
    ADVISORY_TASK_STEP
    :SOURCE
    ADVISORY_NOTE
    :OPTIONAL
    NIL)
   ("applies_to"
    :RANGE
    TASK_ELEMENT
    :SOURCE
    ADVISORY_NOTE
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ADVISORY_TASK_STEP" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'ADVISORY_TASK_STEP)) '(TASK_STEP))


(DEFENTITY-CLASS "ELEMENT_CONSTRAINT" :AP233
  (("applies_in"
    :RANGE
    CONSTRAINT_CONTEXT
    :SOURCE
    ELEMENT_CONSTRAINT
    :OPTIONAL
    T)))

(SETF (SUBTYPE-OF (FIND-CLASS 'ELEMENT_CONSTRAINT))
      '(TASK_ELEMENT_RELATIONSHIP))


(DEFENTITY-CLASS "SIMULTANEOUS_ELEMENTS" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'SIMULTANEOUS_ELEMENTS))
      '(CONCURRENT_ELEMENTS))


(DEFENTITY-CLASS "TASK_ELEMENT_LEVELS" :AP233
  (("alternatives"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   2
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'TASK_ELEMENT)
    :SOURCE
    TASK_ELEMENT_LEVELS
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'TASK_ELEMENT_LEVELS)) '(TASK_ELEMENT))


(DEFENTITY-CLASS "TASK_ELEMENT_STATE_RELATIONSHIP" :AP233
  (("state"
    :RANGE
    STATE_OR_STATE_DEFINITION_SELECT
    :SOURCE
    TASK_ELEMENT_STATE_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("task_element"
    :RANGE
    TASK_ELEMENT
    :SOURCE
    TASK_ELEMENT_STATE_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "TASK_INVOCATION" :AP233
  (("task_method"
    :RANGE
    METHOD_OR_METHOD_VERSION
    :SOURCE
    TASK_INVOCATION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'TASK_INVOCATION)) '(TASK_ELEMENT))


(DEFENTITY-CLASS "TASK_METHOD" :AP233
  (("objective"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   0
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'TASK_OBJECTIVE)
    :SOURCE
    TASK_METHOD
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'TASK_METHOD)) '(ACTIVITY_METHOD))


(DEFENTITY-CLASS "TASK_METHOD_ASSIGNMENT" :AP233
  (("assigned_activity_method"
    :RANGE
    TASK_METHOD
    :SOURCE
    APPLIED_ACTIVITY_METHOD_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_METHOD_ASSIGNMENT "assigned_activity_method")
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'TASK_ITEM)
    :SOURCE
    APPLIED_ACTIVITY_METHOD_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_METHOD_ASSIGNMENT "items")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'TASK_METHOD_ASSIGNMENT))
      '(APPLIED_ACTIVITY_METHOD_ASSIGNMENT))


(DEFENTITY-CLASS "TASK_METHOD_RELATIONSHIP" :AP233
  (("relating_method"
    :RANGE
    TASK_METHOD
    :SOURCE
    ACTIVITY_METHOD_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_METHOD_RELATIONSHIP "relating_method")
    :OPTIONAL
    NIL)
   ("related_method"
    :RANGE
    TASK_METHOD
    :SOURCE
    ACTIVITY_METHOD_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_METHOD_RELATIONSHIP "related_method")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'TASK_METHOD_RELATIONSHIP))
      '(ACTIVITY_METHOD_RELATIONSHIP))


(DEFENTITY-CLASS "TASK_METHOD_STATE_RELATIONSHIP" :AP233
  (("state"
    :RANGE
    STATE_OR_STATE_DEFINITION_SELECT
    :SOURCE
    TASK_METHOD_STATE_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("task_method"
    :RANGE
    TASK_METHOD_VERSION
    :SOURCE
    TASK_METHOD_STATE_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "TASK_METHOD_VERSION" :AP233
  (("content"
    :RANGE
    TASK_ELEMENT
    :SOURCE
    TASK_METHOD_VERSION
    :OPTIONAL
    T)
   ("of_task_method"
    :RANGE
    TASK_METHOD
    :SOURCE
    TASK_METHOD_VERSION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'TASK_METHOD_VERSION)) '(ACTIVITY_METHOD))


(DEFENTITY-CLASS "TASK_METHOD_VERSION_ASSIGNMENT" :AP233
  (("assigned_task_method"
    :RANGE
    TASK_METHOD_VERSION
    :SOURCE
    TASK_METHOD_VERSION_ASSIGNMENT
    :DERIVED
    (%ASSIGNED_ACTIVITY_METHOD INSTANCE NIL))
   ("assigned_activity_method"
    :RANGE
    TASK_METHOD_VERSION
    :SOURCE
    APPLIED_ACTIVITY_METHOD_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_METHOD_ASSIGNMENT "assigned_activity_method")
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'TASK_ITEM)
    :SOURCE
    APPLIED_ACTIVITY_METHOD_ASSIGNMENT
    :REDEFINITION-OF
    (APPLIED_ACTIVITY_METHOD_ASSIGNMENT "items")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'TASK_METHOD_VERSION_ASSIGNMENT))
      '(APPLIED_ACTIVITY_METHOD_ASSIGNMENT))


(DEFENTITY-CLASS "TASK_METHOD_VERSION_RELATIONSHIP" :AP233
  (("related_task_method"
    :RANGE
    TASK_METHOD_VERSION
    :SOURCE
    TASK_METHOD_VERSION_RELATIONSHIP
    :DERIVED
    (%RELATED_METHOD INSTANCE NIL))
   ("relating_task_method"
    :RANGE
    TASK_METHOD_VERSION
    :SOURCE
    TASK_METHOD_VERSION_RELATIONSHIP
    :DERIVED
    (%RELATING_METHOD INSTANCE NIL))
   ("relating_method"
    :RANGE
    TASK_METHOD_VERSION
    :SOURCE
    ACTIVITY_METHOD_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_METHOD_RELATIONSHIP "relating_method")
    :OPTIONAL
    NIL)
   ("related_method"
    :RANGE
    TASK_METHOD_VERSION
    :SOURCE
    ACTIVITY_METHOD_RELATIONSHIP
    :REDEFINITION-OF
    (ACTIVITY_METHOD_RELATIONSHIP "related_method")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'TASK_METHOD_VERSION_RELATIONSHIP))
      '(ACTIVITY_METHOD_RELATIONSHIP))


(DEFENTITY-CLASS "TASK_OBJECTIVE" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    TASK_OBJECTIVE
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    TASK_OBJECTIVE
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "TASK_OBJECTIVE_STATE_RELATIONSHIP" :AP233
  (("state"
    :RANGE
    STATE_OR_STATE_DEFINITION_SELECT
    :SOURCE
    TASK_OBJECTIVE_STATE_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("task_objective"
    :RANGE
    TASK_OBJECTIVE
    :SOURCE
    TASK_OBJECTIVE_STATE_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "WORK_OUTPUT" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    WORK_OUTPUT
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    WORK_OUTPUT
    :OPTIONAL
    T)
   ("quantity" :RANGE VALUE_WITH_UNIT :SOURCE WORK_OUTPUT :OPTIONAL T)
   ("output_item"
    :RANGE
    WORK_OUTPUT_ITEM
    :SOURCE
    WORK_OUTPUT
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "WORK_OUTPUT_ASSIGNMENT" :AP233
  (("assigned_output"
    :RANGE
    WORK_OUTPUT
    :SOURCE
    WORK_OUTPUT_ASSIGNMENT
    :OPTIONAL
    NIL)
   ("item"
    :RANGE
    WORK_ITEM
    :SOURCE
    WORK_OUTPUT_ASSIGNMENT
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "WORK_OUTPUT_RELATIONSHIP" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    WORK_OUTPUT_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    WORK_OUTPUT_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating"
    :RANGE
    WORK_OUTPUT
    :SOURCE
    WORK_OUTPUT_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    WORK_OUTPUT
    :SOURCE
    WORK_OUTPUT_RELATIONSHIP
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PART" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'PART)) '(PRODUCT))


(DEFENTITY-CLASS "PART_VERSION" :AP233
  (("of_product"
    :RANGE
    PART
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'PART_VERSION)) '(PRODUCT_VERSION))


(DEFENTITY-CLASS "CONTEXTUAL_SHAPE_REPRESENTATION" :AP233
  (("contextual_shape"
    :RANGE
    CONTEXTUAL_ITEM_SHAPE
    :SOURCE
    CONTEXTUAL_SHAPE_REPRESENTATION
    :OPTIONAL
    NIL)
   ("representing_relationship"
    :RANGE
    GEOMETRIC_MODEL_RELATIONSHIP
    :SOURCE
    CONTEXTUAL_SHAPE_REPRESENTATION
    :OPTIONAL
    NIL)
   ("context_representation"
    :RANGE
    GEOMETRIC_MODEL
    :SOURCE
    CONTEXTUAL_SHAPE_REPRESENTATION
    :DERIVED
    (%REP_2 (%REPRESENTING_RELATIONSHIP INSTANCE NIL) NIL))
   ("positioned_representation"
    :RANGE
    GEOMETRIC_MODEL
    :SOURCE
    CONTEXTUAL_SHAPE_REPRESENTATION
    :DERIVED
    (%REP_1 (%REPRESENTING_RELATIONSHIP INSTANCE NIL) NIL))))


(DEFENTITY-CLASS "GEOMETRIC_COMPOSITION_WITH_OPERATOR_TRANSFORMATION"
                 :AP233
  NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'GEOMETRIC_COMPOSITION_WITH_OPERATOR_TRANSFORMATION))
      '(GEOMETRIC_RELATIONSHIP_WITH_OPERATOR_TRANSFORMATION
        DEFINITIONAL_REPRESENTATION_RELATIONSHIP))


(DEFENTITY-CLASS "GEOMETRIC_COMPOSITION_WITH_PLACEMENT_TRANSFORMATION"
                 :AP233
  NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'GEOMETRIC_COMPOSITION_WITH_PLACEMENT_TRANSFORMATION))
      '(GEOMETRIC_RELATIONSHIP_WITH_PLACEMENT_TRANSFORMATION
        DEFINITIONAL_REPRESENTATION_RELATIONSHIP))


(DEFENTITY-CLASS "GEOMETRIC_PLACEMENT" :AP233
  ((P11P::|target|
    :RANGE
    AXIS_PLACEMENT
    :SOURCE
    GEOMETRIC_PLACEMENT
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'GEOMETRIC_PLACEMENT))
      '(GEOMETRIC_PLACEMENT_OPERATION))


(DEFENTITY-CLASS "GEOMETRIC_PLACEMENT_MODEL" :AP233
  (("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   1
                   :BASE-TYPE
                   'GEOMETRIC_PLACEMENT_OPERATION)
    :SOURCE
    REPRESENTATION
    :REDEFINITION-OF
    (REPRESENTATION "items")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'GEOMETRIC_PLACEMENT_MODEL))
      '(GEOMETRIC_MODEL))


(DEFENTITY-CLASS "GEOMETRIC_PLACEMENT_OPERATION" :AP233
  ((MEXICO:|source|
    :RANGE
    AXIS_PLACEMENT
    :SOURCE
    GEOMETRIC_PLACEMENT_OPERATION
    :OPTIONAL
    NIL)
   ("template_definition"
    :RANGE
    TEMPLATE_DEFINITION_SELECT
    :SOURCE
    GEOMETRIC_PLACEMENT_OPERATION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'GEOMETRIC_PLACEMENT_OPERATION))
      '(DETAILED_GEOMETRIC_MODEL_ELEMENT))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'GEOMETRIC_PLACEMENT_OPERATION)) T)


(DEFENTITY-CLASS "GEOMETRIC_MODEL_RELATIONSHIP_WITH_TRANSFORMATION"
                 :AP233
  NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'GEOMETRIC_MODEL_RELATIONSHIP_WITH_TRANSFORMATION))
      '(GEOMETRIC_MODEL_RELATIONSHIP))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'GEOMETRIC_MODEL_RELATIONSHIP_WITH_TRANSFORMATION))
      T)

(DEFDOMAIN-RULES "GEOMETRIC_MODEL_RELATIONSHIP_WITH_TRANSFORMATION"
  ("WR1"
   (EXPRESS-INSTANCE-NOT-EQUAL (%CONTEXT_OF_ITEMS
                                (%REP_1 INSTANCE NIL)
                                NIL)
                               (%CONTEXT_OF_ITEMS
                                (%REP_2 INSTANCE NIL)
                                NIL))))


(DEFENTITY-CLASS "GEOMETRIC_OPERATOR_TRANSFORMATION" :AP233
  ((P11P::|target|
    :RANGE
    CARTESIAN_TRANSFORMATION
    :SOURCE
    GEOMETRIC_OPERATOR_TRANSFORMATION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'GEOMETRIC_OPERATOR_TRANSFORMATION))
      '(GEOMETRIC_PLACEMENT_OPERATION))


(DEFENTITY-CLASS "GEOMETRIC_RELATIONSHIP_WITH_OPERATOR_TRANSFORMATION"
                 :AP233
  (("transformation"
    :RANGE
    CARTESIAN_TRANSFORMATION
    :SOURCE
    GEOMETRIC_RELATIONSHIP_WITH_OPERATOR_TRANSFORMATION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'GEOMETRIC_RELATIONSHIP_WITH_OPERATOR_TRANSFORMATION))
      '(GEOMETRIC_MODEL_RELATIONSHIP_WITH_TRANSFORMATION))

(DEFDOMAIN-RULES "GEOMETRIC_RELATIONSHIP_WITH_OPERATOR_TRANSFORMATION"
  ("WR1"
   (EXPRESS-INSTANCE-EQUAL (%DIMENSION_COUNT
                            (%CONTEXT_OF_ITEMS
                             (%REP_1 INSTANCE NIL)
                             NIL)
                            NIL)
                           (%DIMENSION_COUNT
                            (%CONTEXT_OF_ITEMS
                             (%REP_2 INSTANCE NIL)
                             NIL)
                            NIL))))


(DEFENTITY-CLASS "GEOMETRIC_RELATIONSHIP_WITH_PLACEMENT_TRANSFORMATION"
                 :AP233
  (("transformation"
    :RANGE
    AXIS_PLACEMENT_MAPPING
    :SOURCE
    GEOMETRIC_RELATIONSHIP_WITH_PLACEMENT_TRANSFORMATION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'GEOMETRIC_RELATIONSHIP_WITH_PLACEMENT_TRANSFORMATION))
      '(GEOMETRIC_MODEL_RELATIONSHIP_WITH_TRANSFORMATION))

(DEFDOMAIN-RULES "GEOMETRIC_RELATIONSHIP_WITH_PLACEMENT_TRANSFORMATION"
  ("WR1"
   (EXPRESS-INSTANCE-EQUAL (%DIMENSION_COUNT
                            (%CONTEXT_OF_ITEMS
                             (%REP_1 INSTANCE NIL)
                             NIL)
                            NIL)
                           (%DIMENSION_COUNT
                            (%CONTEXT_OF_ITEMS
                             (%REP_2 INSTANCE NIL)
                             NIL)
                            NIL))))


(DEFENTITY-CLASS "SHAPE_PLACEMENT_ASSOCIATION" :AP233
  (("represented_characteristic"
    :RANGE
    CONTEXTUAL_ITEM_SHAPE
    :SOURCE
    SHAPE_DESCRIPTION_ASSOCIATION
    :REDEFINITION-OF
    (SHAPE_DESCRIPTION_ASSOCIATION "represented_characteristic")
    :OPTIONAL
    NIL)
   ("representation"
    :RANGE
    GEOMETRIC_PLACEMENT_MODEL
    :SOURCE
    SHAPE_DESCRIPTION_ASSOCIATION
    :REDEFINITION-OF
    (SHAPE_DESCRIPTION_ASSOCIATION "representation")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'SHAPE_PLACEMENT_ASSOCIATION))
      '(SHAPE_DESCRIPTION_ASSOCIATION))


(DEFENTITY-CLASS "DEFINITIONAL_REPRESENTATION_RELATIONSHIP" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'DEFINITIONAL_REPRESENTATION_RELATIONSHIP))
      '(REPRESENTATION_RELATIONSHIP))

(DEFDOMAIN-RULES "DEFINITIONAL_REPRESENTATION_RELATIONSHIP"
  ("WR1"
   ("acyclic_representation_relationship"
    INSTANCE
    (MAKE-INSTANCE 'EXPRESS-BAG
                   :VALUE
                   (LIST (%REP_2 INSTANCE NIL))
                   :TYPE-DESCRIPTOR
                   (MAKE-INSTANCE 'BAG-TYP
                                  :L-BOUND
                                  0
                                  :U-BOUND
                                  :?
                                  :BASE-TYPE
                                  T))
    (EXPRESS-PLUS "AP233_SYSTEMS_ENGINEERING_ARM_LF."
                  "REPRESENTATION"))))


(DEFENTITY-CLASS "DETAILED_GEOMETRIC_MODEL_ELEMENT_RELATIONSHIP" :AP233
  (("item_1"
    :RANGE
    DETAILED_GEOMETRIC_MODEL_ELEMENT
    :SOURCE
    DETAILED_GEOMETRIC_MODEL_ELEMENT_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("item_2"
    :RANGE
    DETAILED_GEOMETRIC_MODEL_ELEMENT
    :SOURCE
    DETAILED_GEOMETRIC_MODEL_ELEMENT_RELATIONSHIP
    :OPTIONAL
    NIL)))

(DEFDOMAIN-RULES "DETAILED_GEOMETRIC_MODEL_ELEMENT_RELATIONSHIP"
  ("WR1"
   (EXPRESS-NOT-EQUAL (%ITEM_1 INSTANCE NIL) (%ITEM_2 INSTANCE NIL))))


(DEFENTITY-CLASS "GEOMETRIC_MODEL_ELEMENT_RELATIONSHIP" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'GEOMETRIC_MODEL_ELEMENT_RELATIONSHIP))
      '(DETAILED_GEOMETRIC_MODEL_ELEMENT_RELATIONSHIP
        DETAILED_GEOMETRIC_MODEL_ELEMENT))


(DEFENTITY-CLASS "GEOMETRIC_MODEL_RELATIONSHIP" :AP233
  (("rep_1"
    :RANGE
    GEOMETRIC_MODEL
    :SOURCE
    REPRESENTATION_RELATIONSHIP
    :REDEFINITION-OF
    (REPRESENTATION_RELATIONSHIP "rep_1")
    :OPTIONAL
    NIL)
   ("rep_2"
    :RANGE
    GEOMETRIC_MODEL
    :SOURCE
    REPRESENTATION_RELATIONSHIP
    :REDEFINITION-OF
    (REPRESENTATION_RELATIONSHIP "rep_2")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'GEOMETRIC_MODEL_RELATIONSHIP))
      '(REPRESENTATION_RELATIONSHIP))

(DEFDOMAIN-RULES "GEOMETRIC_MODEL_RELATIONSHIP"
  ("WR1"
   (EXPRESS-NOT-EQUAL (%REP_1 INSTANCE NIL) (%REP_2 INSTANCE NIL))))


(DEFENTITY-CLASS "VECTOR" :AP233
  (("orientation" :RANGE DIRECTION :SOURCE VECTOR :OPTIONAL NIL)
   ("magnitude" :RANGE LENGTH_MEASURE :SOURCE VECTOR :OPTIONAL NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'VECTOR))
      '(DETAILED_GEOMETRIC_MODEL_ELEMENT))

(DEFDOMAIN-RULES "VECTOR"
  ("WR1" (EXPRESS->= (%MAGNITUDE INSTANCE NIL) 0.0)))


(DEFENTITY-CLASS "CONTEXTUAL_ITEM_SHAPE" :AP233
  (("shaped_product"
    :RANGE
    PRODUCT_VIEW_DEFINITION
    :SOURCE
    CONTEXTUAL_ITEM_SHAPE
    :DERIVED
    ("spa_get_definition" INSTANCE))
   ("described_element"
    :RANGE
    DESCRIBED_ELEMENT_SELECT
    :SOURCE
    ITEM_SHAPE
    :REDEFINITION-OF
    (ITEM_SHAPE "described_element")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'CONTEXTUAL_ITEM_SHAPE)) '(ITEM_SHAPE))


(DEFENTITY-CLASS "GEOMETRIC_ITEM_SPECIFIC_USAGE" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    GEOMETRIC_ITEM_SPECIFIC_USAGE
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    GEOMETRIC_ITEM_SPECIFIC_USAGE
    :OPTIONAL
    T)
   ("definition"
    :RANGE
    GEOMETRIC_ITEM_SPECIFIC_USAGE_SELECT
    :SOURCE
    GEOMETRIC_ITEM_SPECIFIC_USAGE
    :OPTIONAL
    NIL)
   ("identified_item"
    :RANGE
    DETAILED_GEOMETRIC_MODEL_ELEMENT
    :SOURCE
    GEOMETRIC_ITEM_SPECIFIC_USAGE
    :OPTIONAL
    NIL)
   ("used_model"
    :RANGE
    SHAPE_MODEL
    :SOURCE
    GEOMETRIC_ITEM_SPECIFIC_USAGE
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "ITEM_SHAPE" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ITEM_SHAPE
    :OPTIONAL
    T)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ITEM_SHAPE
    :OPTIONAL
    T)
   ("described_element"
    :RANGE
    SHAPEABLE_ITEM
    :SOURCE
    ITEM_SHAPE
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "SHAPE_DEPENDENT_PROPERTY_REPRESENTATION" :AP233
  (("characteristic_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    SHAPE_DEPENDENT_PROPERTY_REPRESENTATION
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    SHAPE_DEPENDENT_PROPERTY_REPRESENTATION
    :OPTIONAL
    T)
   ("described_element"
    :RANGE
    SHAPE_DEPENDENT_SELECT
    :SOURCE
    SHAPE_DEPENDENT_PROPERTY_REPRESENTATION
    :OPTIONAL
    NIL)
   ("property_representation"
    :RANGE
    REPRESENTATION
    :SOURCE
    SHAPE_DEPENDENT_PROPERTY_REPRESENTATION
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "SHAPE_DESCRIPTION_ASSOCIATION" :AP233
  (("represented_characteristic"
    :RANGE
    SHAPE_SELECT
    :SOURCE
    SHAPE_DESCRIPTION_ASSOCIATION
    :OPTIONAL
    NIL)
   ("representation"
    :RANGE
    SHAPE_MODEL
    :SOURCE
    SHAPE_DESCRIPTION_ASSOCIATION
    :OPTIONAL
    NIL)
   ("role"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    SHAPE_DESCRIPTION_ASSOCIATION
    :OPTIONAL
    T)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    SHAPE_DESCRIPTION_ASSOCIATION
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "SHAPE_ELEMENT" :AP233
  (("id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    SHAPE_ELEMENT
    :OPTIONAL
    T)
   ("element_name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    SHAPE_ELEMENT
    :OPTIONAL
    T)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    SHAPE_ELEMENT
    :OPTIONAL
    T)
   ("containing_shape"
    :RANGE
    ITEM_SHAPE
    :SOURCE
    SHAPE_ELEMENT
    :OPTIONAL
    NIL)))

(DEFDOMAIN-RULES "SHAPE_ELEMENT"
  ("WR1"
   (EXPRESS-OR (BI-EXISTS (%ELEMENT_NAME INSTANCE NIL))
               (EXPRESS-NOT-EQUAL (BI-TYPEOF INSTANCE)
                                  (BI-TYPEOF INSTANCE)))))


(DEFENTITY-CLASS "SHAPE_ELEMENT_RELATIONSHIP" :AP233
  (("relation_type"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    SHAPE_ELEMENT_RELATIONSHIP
    :OPTIONAL
    T)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    SHAPE_ELEMENT_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating"
    :RANGE
    SHAPE_ELEMENT
    :SOURCE
    SHAPE_ELEMENT_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("related"
    :RANGE
    SHAPE_ELEMENT
    :SOURCE
    SHAPE_ELEMENT_RELATIONSHIP
    :OPTIONAL
    NIL)))

(DEFDOMAIN-RULES "SHAPE_ELEMENT_RELATIONSHIP"
  ("WR1"
   (EXPRESS-OR (BI-EXISTS (%RELATION_TYPE INSTANCE NIL))
               (EXPRESS-NOT-EQUAL (BI-TYPEOF INSTANCE)
                                  (BI-TYPEOF INSTANCE)))))


(DEFENTITY-CLASS "MAKE_FROM_RELATIONSHIP" :AP233
  (("quantity"
    :RANGE
    VALUE_WITH_UNIT
    :SOURCE
    MAKE_FROM_RELATIONSHIP
    :OPTIONAL
    T)
   ("priority"
    :RANGE
    (MAKE-INSTANCE 'INTEGER-TYP)
    :SOURCE
    MAKE_FROM_RELATIONSHIP
    :OPTIONAL
    T)
   ("relating_view"
    :RANGE
    PART_VIEW_DEFINITION
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "relating_view")
    :OPTIONAL
    NIL)
   ("related_view"
    :RANGE
    PART_VIEW_DEFINITION
    :SOURCE
    VIEW_DEFINITION_RELATIONSHIP
    :REDEFINITION-OF
    (VIEW_DEFINITION_RELATIONSHIP "related_view")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'MAKE_FROM_RELATIONSHIP))
      '(VIEW_DEFINITION_USAGE))

(DEFDOMAIN-RULES "MAKE_FROM_RELATIONSHIP"
  ("WR1"
   (EXPRESS-INSTANCE-NOT-EQUAL (%RELATING_VIEW INSTANCE NIL)
                               (%RELATED_VIEW INSTANCE NIL)))
  ("WR2"
   (EXPRESS-XOR (EXPRESS-NOT (BI-EXISTS (%QUANTITY INSTANCE NIL)))
                (EXPRESS-XOR (EXPRESS-NOT (IN "NUMBER"
                                              (BI-TYPEOF (%VALUE_COMPONENT
                                                          (%QUANTITY
                                                           INSTANCE
                                                           NIL)
                                                          NIL))))
                             (EXPRESS-> (%VALUE_COMPONENT
                                         (%QUANTITY INSTANCE NIL)
                                         NIL)
                                        0)))))


(DEFENTITY-CLASS "ALTERNATE_PRODUCT_RELATIONSHIP" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ALTERNATE_PRODUCT_RELATIONSHIP
    :OPTIONAL
    T)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ALTERNATE_PRODUCT_RELATIONSHIP
    :OPTIONAL
    T)
   ("alternate_product"
    :RANGE
    PRODUCT
    :SOURCE
    ALTERNATE_PRODUCT_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("base_product"
    :RANGE
    PRODUCT
    :SOURCE
    ALTERNATE_PRODUCT_RELATIONSHIP
    :OPTIONAL
    NIL)
   ("criteria"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ALTERNATE_PRODUCT_RELATIONSHIP
    :OPTIONAL
    T)))

(DEFDOMAIN-RULES "ALTERNATE_PRODUCT_RELATIONSHIP"
  ("WR1"
   (EXPRESS-INSTANCE-NOT-EQUAL (%ALTERNATE_PRODUCT INSTANCE NIL)
                               (%BASE_PRODUCT INSTANCE NIL)))
  ("WR2"
   (EXPRESS-OR (BI-EXISTS (%CRITERIA INSTANCE NIL))
               (EXPRESS-NOT-EQUAL (BI-TYPEOF INSTANCE)
                                  (BI-TYPEOF INSTANCE)))))


(DEFENTITY-CLASS "ASSEMBLY_RELATIONSHIP_SUBSTITUTION" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ASSEMBLY_RELATIONSHIP_SUBSTITUTION
    :OPTIONAL
    T)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    ASSEMBLY_RELATIONSHIP_SUBSTITUTION
    :OPTIONAL
    T)
   ("base_relationship"
    :RANGE
    ASSEMBLY_COMPONENT_RELATIONSHIP
    :SOURCE
    ASSEMBLY_RELATIONSHIP_SUBSTITUTION
    :OPTIONAL
    NIL)
   ("substitute_relationship"
    :RANGE
    ASSEMBLY_COMPONENT_RELATIONSHIP
    :SOURCE
    ASSEMBLY_RELATIONSHIP_SUBSTITUTION
    :OPTIONAL
    NIL)))

(DEFDOMAIN-RULES "ASSEMBLY_RELATIONSHIP_SUBSTITUTION"
  ("WR1"
   (EXPRESS-INSTANCE-EQUAL (%RELATING_VIEW
                            (%BASE_RELATIONSHIP INSTANCE NIL)
                            NIL)
                           (%RELATING_VIEW
                            (%SUBSTITUTE_RELATIONSHIP INSTANCE NIL)
                            NIL)))
  ("WR2"
   (EXPRESS-INSTANCE-NOT-EQUAL (%BASE_RELATIONSHIP INSTANCE NIL)
                               (%SUBSTITUTE_RELATIONSHIP
                                INSTANCE
                                NIL))))


(DEFENTITY-CLASS "SYSTEM" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'SYSTEM)) '(PRODUCT))


(DEFENTITY-CLASS "SYSTEM_VERSION" :AP233
  (("of_product"
    :RANGE
    SYSTEM
    :SOURCE
    PRODUCT_VERSION
    :REDEFINITION-OF
    (PRODUCT_VERSION "of_product")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'SYSTEM_VERSION)) '(PRODUCT_VERSION))


(DEFENTITY-CLASS "SYSTEM_VERSION_SEQUENCE" :AP233
  (("predecessor"
    :RANGE
    SYSTEM_VERSION
    :SOURCE
    SYSTEM_VERSION_SEQUENCE
    :DERIVED
    (%RELATING_VERSION INSTANCE NIL))
   ("successor"
    :RANGE
    SYSTEM_VERSION
    :SOURCE
    SYSTEM_VERSION_SEQUENCE
    :DERIVED
    (%RELATED_VERSION INSTANCE NIL))
   ("relating_version"
    :RANGE
    SYSTEM_VERSION
    :SOURCE
    PRODUCT_VERSION_RELATIONSHIP
    :REDEFINITION-OF
    (PRODUCT_VERSION_RELATIONSHIP "relating_version")
    :OPTIONAL
    NIL)
   ("related_version"
    :RANGE
    SYSTEM_VERSION
    :SOURCE
    PRODUCT_VERSION_RELATIONSHIP
    :REDEFINITION-OF
    (PRODUCT_VERSION_RELATIONSHIP "related_version")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'SYSTEM_VERSION_SEQUENCE))
      '(PRODUCT_VERSION_RELATIONSHIP))


(DEFENTITY-CLASS "CURVE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'CURVE))
      '(DETAILED_GEOMETRIC_MODEL_ELEMENT))


(DEFENTITY-CLASS "LINE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'LINE)) '(CURVE))


(DEFENTITY-CLASS "PLANE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'PLANE)) '(SURFACE))


(DEFENTITY-CLASS "POINT_ON_CURVE" :AP233
  (("supporting_curve"
    :RANGE
    CURVE
    :SOURCE
    POINT_ON_CURVE
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'POINT_ON_CURVE))
      '(DETAILED_GEOMETRIC_MODEL_ELEMENT))


(DEFENTITY-CLASS "POINT_ON_SURFACE" :AP233
  (("supporting_surface"
    :RANGE
    SURFACE
    :SOURCE
    POINT_ON_SURFACE
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'POINT_ON_SURFACE))
      '(DETAILED_GEOMETRIC_MODEL_ELEMENT))


(DEFENTITY-CLASS "SURFACE" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'SURFACE))
      '(DETAILED_GEOMETRIC_MODEL_ELEMENT))


(DEFENTITY-CLASS "AXIS_PLACEMENT" :AP233
  (("origin"
    :RANGE
    CARTESIAN_POINT
    :SOURCE
    AXIS_PLACEMENT
    :OPTIONAL
    NIL)
   ("x_axis" :RANGE DIRECTION :SOURCE AXIS_PLACEMENT :OPTIONAL NIL)
   ("y_axis" :RANGE DIRECTION :SOURCE AXIS_PLACEMENT :OPTIONAL NIL)
   ("dim"
    :RANGE
    (MAKE-INSTANCE 'INTEGER-TYP)
    :SOURCE
    AXIS_PLACEMENT
    :DERIVED
    (BI-SIZEOF (%COORDINATES (%ORIGIN INSTANCE NIL) NIL)))))

(SETF (SUBTYPE-OF (FIND-CLASS 'AXIS_PLACEMENT))
      '(DETAILED_GEOMETRIC_MODEL_ELEMENT))

(DEFDOMAIN-RULES "AXIS_PLACEMENT"
  ("WR1" (EXPRESS-> (%DIM INSTANCE NIL) 1))
  ("WR2"
   (EXPRESS-EQUAL (%DIM INSTANCE NIL)
                  (BI-SIZEOF (%COORDINATES
                              (%X_AXIS INSTANCE NIL)
                              NIL))))
  ("WR3"
   (EXPRESS-EQUAL (%DIM INSTANCE NIL)
                  (BI-SIZEOF (%COORDINATES
                              (%Y_AXIS INSTANCE NIL)
                              NIL)))))


(DEFENTITY-CLASS "AXIS_PLACEMENT_2D" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'AXIS_PLACEMENT_2D)) '(AXIS_PLACEMENT))


(DEFENTITY-CLASS "AXIS_PLACEMENT_3D" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'AXIS_PLACEMENT_3D)) '(AXIS_PLACEMENT))


(DEFENTITY-CLASS "AXIS_PLACEMENT_MAPPING" :AP233
  ((MEXICO:|source|
    :RANGE
    AXIS_PLACEMENT
    :SOURCE
    AXIS_PLACEMENT_MAPPING
    :OPTIONAL
    NIL)
   (P11P::|target|
    :RANGE
    AXIS_PLACEMENT
    :SOURCE
    AXIS_PLACEMENT_MAPPING
    :OPTIONAL
    NIL)))

(DEFDOMAIN-RULES "AXIS_PLACEMENT_MAPPING"
  ("WR1"
   (EXPRESS-EQUAL (%DIM (%SOURCE INSTANCE NIL) NIL)
                  (%DIM (%TARGET INSTANCE NIL) NIL))))


(DEFENTITY-CLASS "CARTESIAN_POINT" :AP233
  (("coordinates"
    :RANGE
    (MAKE-INSTANCE 'LIST-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   3
                   :BASE-TYPE
                   'LENGTH_MEASURE
                   :UNIQUE
                   NIL)
    :SOURCE
    CARTESIAN_POINT
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'CARTESIAN_POINT))
      '(DETAILED_GEOMETRIC_MODEL_ELEMENT))


(DEFENTITY-CLASS "CARTESIAN_TRANSFORMATION_2D" :AP233
  (("multiplication_matrix"
    :RANGE
    (MAKE-INSTANCE 'ARRAY-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   2
                   :BASE-TYPE
                   'DIRECTION
                   :UNIQUE
                   NIL)
    :SOURCE
    CARTESIAN_TRANSFORMATION_2D
    :OPTIONAL
    NIL)
   ("translation"
    :RANGE
    CARTESIAN_POINT
    :SOURCE
    CARTESIAN_TRANSFORMATION_2D
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'CARTESIAN_TRANSFORMATION_2D))
      '(DETAILED_GEOMETRIC_MODEL_ELEMENT))

(DEFDOMAIN-RULES "CARTESIAN_TRANSFORMATION_2D"
  ("WR1"
   (EXPRESS-EQUAL (BI-SIZEOF (%COORDINATES
                              (EXPRESS-AREF (%MULTIPLICATION_MATRIX
                                             INSTANCE
                                             NIL)
                                            1)
                              NIL))
                  2))
  ("WR2"
   (EXPRESS-EQUAL (BI-SIZEOF (%COORDINATES
                              (EXPRESS-AREF (%MULTIPLICATION_MATRIX
                                             INSTANCE
                                             NIL)
                                            2)
                              NIL))
                  2))
  ("WR3"
   (EXPRESS-EQUAL (BI-SIZEOF (%COORDINATES
                              (%TRANSLATION INSTANCE NIL)
                              NIL))
                  2)))


(DEFENTITY-CLASS "CARTESIAN_TRANSFORMATION_3D" :AP233
  (("multiplication_matrix"
    :RANGE
    (MAKE-INSTANCE 'ARRAY-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   3
                   :BASE-TYPE
                   'DIRECTION
                   :UNIQUE
                   NIL)
    :SOURCE
    CARTESIAN_TRANSFORMATION_3D
    :OPTIONAL
    NIL)
   ("translation"
    :RANGE
    CARTESIAN_POINT
    :SOURCE
    CARTESIAN_TRANSFORMATION_3D
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'CARTESIAN_TRANSFORMATION_3D))
      '(DETAILED_GEOMETRIC_MODEL_ELEMENT))

(DEFDOMAIN-RULES "CARTESIAN_TRANSFORMATION_3D"
  ("WR1"
   (EXPRESS-EQUAL (BI-SIZEOF (%COORDINATES
                              (EXPRESS-AREF (%MULTIPLICATION_MATRIX
                                             INSTANCE
                                             NIL)
                                            1)
                              NIL))
                  3))
  ("WR2"
   (EXPRESS-EQUAL (BI-SIZEOF (%COORDINATES
                              (EXPRESS-AREF (%MULTIPLICATION_MATRIX
                                             INSTANCE
                                             NIL)
                                            2)
                              NIL))
                  3))
  ("WR3"
   (EXPRESS-EQUAL (BI-SIZEOF (%COORDINATES
                              (EXPRESS-AREF (%MULTIPLICATION_MATRIX
                                             INSTANCE
                                             NIL)
                                            3)
                              NIL))
                  3))
  ("WR4"
   (EXPRESS-EQUAL (BI-SIZEOF (%COORDINATES
                              (%TRANSLATION INSTANCE NIL)
                              NIL))
                  3)))


(DEFENTITY-CLASS "DETAILED_GEOMETRIC_MODEL_ELEMENT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'DETAILED_GEOMETRIC_MODEL_ELEMENT))
      '(REPRESENTATION_ITEM))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'DETAILED_GEOMETRIC_MODEL_ELEMENT))
      T)


(DEFENTITY-CLASS "DIRECTION" :AP233
  (("coordinates"
    :RANGE
    (MAKE-INSTANCE 'LIST-TYP
                   :L-BOUND
                   2
                   :U-BOUND
                   3
                   :BASE-TYPE
                   'LENGTH_MEASURE
                   :UNIQUE
                   NIL)
    :SOURCE
    DIRECTION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'DIRECTION))
      '(DETAILED_GEOMETRIC_MODEL_ELEMENT))


(DEFENTITY-CLASS "GEOMETRIC_COORDINATE_SPACE" :AP233
  (("dimension_count"
    :RANGE
    (MAKE-INSTANCE 'INTEGER-TYP)
    :SOURCE
    GEOMETRIC_COORDINATE_SPACE
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'GEOMETRIC_COORDINATE_SPACE))
      '(NUMERICAL_REPRESENTATION_CONTEXT))

(DEFDOMAIN-RULES "GEOMETRIC_COORDINATE_SPACE"
  ("WR1" (EXPRESS-> (%DIMENSION_COUNT INSTANCE NIL) 0)))


(DEFENTITY-CLASS "GEOMETRIC_MODEL" :AP233
  (("version_id"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    GEOMETRIC_MODEL
    :OPTIONAL
    T)
   ("model_extent"
    :RANGE
    LENGTH_MEASURE
    :SOURCE
    GEOMETRIC_MODEL
    :OPTIONAL
    T)
   ("context_of_items"
    :RANGE
    GEOMETRIC_COORDINATE_SPACE
    :SOURCE
    REPRESENTATION
    :REDEFINITION-OF
    (REPRESENTATION "context_of_items")
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'DETAILED_GEOMETRIC_MODEL_ELEMENT)
    :SOURCE
    REPRESENTATION
    :REDEFINITION-OF
    (REPRESENTATION "items")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'GEOMETRIC_MODEL)) '(REPRESENTATION))


(DEFENTITY-CLASS "CHARACTERIZABLE_OBJECT" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CHARACTERIZABLE_OBJECT
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    CHARACTERIZABLE_OBJECT
    :OPTIONAL
    T)))


(DEFENTITY-CLASS "EXTERNAL_GEOMETRIC_MODEL" :AP233
  (("external_file"
    :RANGE
    DIGITAL_FILE
    :SOURCE
    EXTERNAL_GEOMETRIC_MODEL
    :OPTIONAL
    NIL)
   ("items"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   1
                   :BASE-TYPE
                   'AXIS_PLACEMENT)
    :SOURCE
    REPRESENTATION
    :REDEFINITION-OF
    (REPRESENTATION "items")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'EXTERNAL_GEOMETRIC_MODEL))
      '(GEOMETRIC_MODEL))

(DEFDOMAIN-RULES "EXTERNAL_GEOMETRIC_MODEL"
  ("WR1"
   (EXPRESS-EQUAL (%DIMENSION_COUNT
                   (%CONTEXT_OF_ITEMS INSTANCE NIL)
                   NIL)
                  3))
  ("WR2"
   (EXPRESS-EQUAL (%KIND (%CONTEXT_OF_ITEMS INSTANCE NIL) NIL)
                  "external")))


(DEFENTITY-CLASS "MEASURE_ITEM_WITH_PRECISION" :AP233
  (("significant_digits"
    :RANGE
    (MAKE-INSTANCE 'INTEGER-TYP)
    :SOURCE
    MEASURE_ITEM_WITH_PRECISION
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'MEASURE_ITEM_WITH_PRECISION))
      '(MEASURE_ITEM))


(DEFENTITY-CLASS "VALUE_LIMIT" :AP233
  (("qualifiers"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   1
                   :BASE-TYPE
                   'PRE_DEFINED_TYPE_QUALIFIER)
    :SOURCE
    QUALIFIED_REPRESENTATION_ITEM
    :REDEFINITION-OF
    (QUALIFIED_REPRESENTATION_ITEM "qualifiers")
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'VALUE_LIMIT))
      '(NUMERICAL_ITEM_WITH_UNIT QUALIFIED_REPRESENTATION_ITEM))


(DEFENTITY-CLASS "VALUE_LIST" :AP233
  (("values"
    :RANGE
    (MAKE-INSTANCE 'LIST-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'MEASURE_ITEM
                   :UNIQUE
                   NIL)
    :SOURCE
    VALUE_LIST
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'VALUE_LIST)) '(MEASURE_ITEM))


(DEFENTITY-CLASS "VALUE_RANGE" :AP233
  (("lower_limit"
    :RANGE
    NUMERICAL_ITEM_WITH_UNIT
    :SOURCE
    VALUE_RANGE
    :OPTIONAL
    NIL)
   ("upper_limit"
    :RANGE
    NUMERICAL_ITEM_WITH_UNIT
    :SOURCE
    VALUE_RANGE
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'VALUE_RANGE)) '(MEASURE_ITEM))


(DEFENTITY-CLASS "VALUE_RANGE_WITH_GLOBAL_UNIT" :AP233
  (("lower_limit"
    :RANGE
    NUMERICAL_ITEM_WITH_GLOBAL_UNIT
    :SOURCE
    VALUE_RANGE_WITH_GLOBAL_UNIT
    :OPTIONAL
    NIL)
   ("upper_limit"
    :RANGE
    NUMERICAL_ITEM_WITH_GLOBAL_UNIT
    :SOURCE
    VALUE_RANGE_WITH_GLOBAL_UNIT
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'VALUE_RANGE_WITH_GLOBAL_UNIT))
      '(MEASURE_ITEM))


(DEFENTITY-CLASS "VALUE_SET" :AP233
  (("values"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'MEASURE_ITEM)
    :SOURCE
    VALUE_SET
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'VALUE_SET)) '(MEASURE_ITEM))


(DEFENTITY-CLASS "VALUE_WITH_TOLERANCES" :AP233
  (("item_value"
    :RANGE
    NUMERICAL_ITEM_WITH_UNIT
    :SOURCE
    VALUE_WITH_TOLERANCES
    :OPTIONAL
    NIL)
   ("lower_limit"
    :RANGE
    (MAKE-INSTANCE 'REAL-TYP)
    :SOURCE
    VALUE_WITH_TOLERANCES
    :OPTIONAL
    NIL)
   ("upper_limit"
    :RANGE
    (MAKE-INSTANCE 'REAL-TYP)
    :SOURCE
    VALUE_WITH_TOLERANCES
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'VALUE_WITH_TOLERANCES)) '(MEASURE_ITEM))


(DEFENTITY-CLASS "EXPANDED_UNCERTAINTY" :AP233
  (("coverage_factor"
    :RANGE
    (MAKE-INSTANCE 'REAL-TYP)
    :SOURCE
    EXPANDED_UNCERTAINTY
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'EXPANDED_UNCERTAINTY))
      '(STANDARD_UNCERTAINTY))


(DEFENTITY-CLASS "MEASURE_QUALIFICATION" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    MEASURE_QUALIFICATION
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    MEASURE_QUALIFICATION
    :OPTIONAL
    NIL)
   ("qualified_measure"
    :RANGE
    VALUE_WITH_UNIT
    :SOURCE
    MEASURE_QUALIFICATION
    :OPTIONAL
    NIL)
   ("qualifiers"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'VALUE_QUALIFIER)
    :SOURCE
    MEASURE_QUALIFICATION
    :OPTIONAL
    NIL)))

(DEFDOMAIN-RULES "MEASURE_QUALIFICATION"
  ("WR1"
   (EXPRESS-NOT (IN (EXPRESS-PLUS "AP233_SYSTEMS_ENGINEERING_ARM_LF."
                                  "NUMERICAL_ITEM_WITH_UNIT")
                    (BI-TYPEOF (%QUALIFIED_MEASURE INSTANCE NIL)))))
  ("WR2"
   (EXPRESS-< (BI-SIZEOF (QUERY (%QUALIFIERS INSTANCE NIL)
                                #'(LAMBDA (TEMP)
                                    (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.PRECISION_QUALIFIER"
                                        (BI-TYPEOF TEMP)))))
              2)))


(DEFENTITY-CLASS "PRECISION_QUALIFIER" :AP233
  (("precision_value"
    :RANGE
    (MAKE-INSTANCE 'INTEGER-TYP)
    :SOURCE
    PRECISION_QUALIFIER
    :OPTIONAL
    NIL)))


(DEFENTITY-CLASS "PRE_DEFINED_TYPE_QUALIFIER" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'PRE_DEFINED_TYPE_QUALIFIER))
      '(TYPE_QUALIFIER))


(DEFENTITY-CLASS "QUALIFIED_NUMERICAL_ITEM_WITH_UNIT" :AP233 NIL)

(SETF (SUBTYPE-OF (FIND-CLASS 'QUALIFIED_NUMERICAL_ITEM_WITH_UNIT))
      '(NUMERICAL_ITEM_WITH_UNIT QUALIFIED_REPRESENTATION_ITEM))


(DEFENTITY-CLASS "QUALIFIED_REPRESENTATION_ITEM" :AP233
  (("qualifiers"
    :RANGE
    (MAKE-INSTANCE 'SET-TYP
                   :L-BOUND
                   1
                   :U-BOUND
                   :?
                   :BASE-TYPE
                   'VALUE_QUALIFIER)
    :SOURCE
    QUALIFIED_REPRESENTATION_ITEM
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'QUALIFIED_REPRESENTATION_ITEM))
      '(REPRESENTATION_ITEM))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'QUALIFIED_REPRESENTATION_ITEM)) T)

(DEFDOMAIN-RULES "QUALIFIED_REPRESENTATION_ITEM"
  ("WR1"
   (EXPRESS-< (BI-SIZEOF (QUERY (%QUALIFIERS INSTANCE NIL)
                                #'(LAMBDA (TEMP)
                                    (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.PRECISION_QUALIFIER"
                                        (BI-TYPEOF TEMP)))))
              2)))


(DEFENTITY-CLASS "QUALITATIVE_UNCERTAINTY" :AP233
  (("uncertainty_value"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    QUALITATIVE_UNCERTAINTY
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'QUALITATIVE_UNCERTAINTY))
      '(UNCERTAINTY_QUALIFIER))


(DEFENTITY-CLASS "STANDARD_UNCERTAINTY" :AP233
  (("uncertainty_value"
    :RANGE
    (MAKE-INSTANCE 'REAL-TYP)
    :SOURCE
    STANDARD_UNCERTAINTY
    :OPTIONAL
    NIL)))

(SETF (SUBTYPE-OF (FIND-CLASS 'STANDARD_UNCERTAINTY))
      '(UNCERTAINTY_QUALIFIER))


(DEFENTITY-CLASS "TYPE_QUALIFIER" :AP233
  (("name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    TYPE_QUALIFIER
    :OPTIONAL
    NIL)))
(SETF (MOFI:ABSTRACT-P (FIND-CLASS 'TYPE_QUALIFIER)) T)


(DEFENTITY-CLASS "UNCERTAINTY_QUALIFIER" :AP233
  (("measure_name"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    UNCERTAINTY_QUALIFIER
    :OPTIONAL
    NIL)
   ("description"
    :RANGE
    (MAKE-INSTANCE 'STRING-TYP)
    :SOURCE
    UNCERTAINTY_QUALIFIER
    :OPTIONAL
    NIL)))




;;;=================
;;; GlobalRules
;;;=================
(DEFGLOBAL-RULE DOCUMENT_DEFINITION_CONSTRAINT
                (PRODUCT_VIEW_DEFINITION)
  ("WR1"
   (EXPRESS-EQUAL (BI-SIZEOF (QUERY PRODUCT_VIEW_DEFINITION
                                    #'(LAMBDA (DD)
                                        (EXPRESS-AND (EXPRESS-NOT (IN (EXPRESS-PLUS "AP233_SYSTEMS_ENGINEERING_ARM_LF."
                                                                                    "DOCUMENT_DEFINITION")
                                                                      (BI-TYPEOF DD)))
                                                     (IN (EXPRESS-PLUS "AP233_SYSTEMS_ENGINEERING_ARM_LF."
                                                                       "DOCUMENT_VERSION")
                                                         (BI-TYPEOF (%DEFINED_VERSION
                                                                     DD
                                                                     NIL)))))))
                  0)))


(DEFGLOBAL-RULE PART_VIEW_DEFINITION_CONSTRAINT
                (PRODUCT_VIEW_DEFINITION)
  ("WR1"
   (EXPRESS-EQUAL (BI-SIZEOF (QUERY PRODUCT_VIEW_DEFINITION
                                    #'(LAMBDA (PVD)
                                        (EXPRESS-AND (EXPRESS-NOT (IN (EXPRESS-PLUS "AP233_SYSTEMS_ENGINEERING_ARM_LF."
                                                                                    "PART_VIEW_DEFINITION")
                                                                      (BI-TYPEOF PVD)))
                                                     (IN (EXPRESS-PLUS "AP233_SYSTEMS_ENGINEERING_ARM_LF."
                                                                       "PART_VERSION")
                                                         (BI-TYPEOF (%DEFINED_VERSION
                                                                     PVD
                                                                     NIL)))))))
                  0)))


(DEFGLOBAL-RULE DOCUMENT_VERSION_CONSTRAINT (PRODUCT_VERSION)
  ("WR1"
   (EXPRESS-EQUAL (BI-SIZEOF (QUERY PRODUCT_VERSION
                                    #'(LAMBDA (PV)
                                        (EXPRESS-AND (EXPRESS-NOT (IN (EXPRESS-PLUS "AP233_SYSTEMS_ENGINEERING_ARM_LF."
                                                                                    "DOCUMENT_VERSION")
                                                                      (BI-TYPEOF PV)))
                                                     (IN (EXPRESS-PLUS "AP233_SYSTEMS_ENGINEERING_ARM_LF."
                                                                       "DOCUMENT")
                                                         (BI-TYPEOF (%OF_PRODUCT
                                                                     PV
                                                                     NIL)))))))
                  0)))


(DEFGLOBAL-RULE TOTAL_OVER_ASSEMBLY_COMPONENT_RELATIONSHIP_CONSTRAINT
                (ASSEMBLY_COMPONENT_RELATIONSHIP)
  ("wr1"
   (EXPRESS-EQUAL (BI-SIZEOF (QUERY ASSEMBLY_COMPONENT_RELATIONSHIP
                                    #'(LAMBDA (P)
                                        (EXPRESS-EQUAL (BI-SIZEOF (EXPRESS-MULT (MAKE-INSTANCE 'EXPRESS-BAG
                                                                                               :VALUE
                                                                                               (LIST "Ap233_systems_engineering_arm.COMPONENT_UPPER_LEVEL_IDENTIFICATION")
                                                                                               :TYPE-DESCRIPTOR
                                                                                               (MAKE-INSTANCE 'BAG-TYP
                                                                                                              :L-BOUND
                                                                                                              0
                                                                                                              :U-BOUND
                                                                                                              :?
                                                                                                              :BASE-TYPE
                                                                                                              T))
                                                                                (BI-TYPEOF P)))
                                                       0))))
                  0))
  ("wr2"
   (EXPRESS-EQUAL (BI-SIZEOF (QUERY ASSEMBLY_COMPONENT_RELATIONSHIP
                                    #'(LAMBDA (P)
                                        (EXPRESS-EQUAL (BI-SIZEOF (EXPRESS-MULT (MAKE-INSTANCE 'EXPRESS-BAG
                                                                                               :VALUE
                                                                                               (LIST "Ap233_systems_engineering_arm.NEXT_ASSEMBLY_USAGE")
                                                                                               :TYPE-DESCRIPTOR
                                                                                               (MAKE-INSTANCE 'BAG-TYP
                                                                                                              :L-BOUND
                                                                                                              0
                                                                                                              :U-BOUND
                                                                                                              :?
                                                                                                              :BASE-TYPE
                                                                                                              T))
                                                                                (BI-TYPEOF P)))
                                                       0))))
                  0))
  ("wr3"
   (EXPRESS-EQUAL (BI-SIZEOF (QUERY ASSEMBLY_COMPONENT_RELATIONSHIP
                                    #'(LAMBDA (P)
                                        (EXPRESS-EQUAL (BI-SIZEOF (EXPRESS-MULT (MAKE-INSTANCE 'EXPRESS-BAG
                                                                                               :VALUE
                                                                                               (LIST "Ap233_systems_engineering_arm.PROMISSORY_USAGE")
                                                                                               :TYPE-DESCRIPTOR
                                                                                               (MAKE-INSTANCE 'BAG-TYP
                                                                                                              :L-BOUND
                                                                                                              0
                                                                                                              :U-BOUND
                                                                                                              :?
                                                                                                              :BASE-TYPE
                                                                                                              T))
                                                                                (BI-TYPEOF P)))
                                                       0))))
                  0)))




;;;=================
;;; Functions
;;;=================
(DEFUN IS_SQL_MAPPABLE (ARG)
  (BLOCK THIS-FUNCTION
    (EXPRESS-ASSERT EXPRESSION ARG)
    (WHEN (OR (EXPO::INDETERMINATE-P ARG))
      (RETURN-FROM IS_SQL_MAPPABLE :?))
    (LET ((I (MAKE-ONE (MAKE-INSTANCE 'INTEGER-TYP) NIL)))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.SIMPLE_NUMERIC_EXPRESSION"
              (BI-TYPEOF ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION T))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.SQL_MAPPABLE_DEFINED_FUNCTION"
              (BI-TYPEOF ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION T))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.MINUS_FUNCTION"
              (BI-TYPEOF ARG))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              ("Is_sql_mappable" (%OPERAND ARG NIL))))
        (PROGN))
      (IF (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.ABS_FUNCTION"
                                                                                                                                                                          (BI-TYPEOF ARG))
                                                                                                                                                                      (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.SIN_FUNCTION"
                                                                                                                                                                          (BI-TYPEOF ARG)))
                                                                                                                                                          (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.COS_FUNCTION"
                                                                                                                                                              (BI-TYPEOF ARG)))
                                                                                                                                              (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.TAN_FUNCTION"
                                                                                                                                                  (BI-TYPEOF ARG)))
                                                                                                                                  (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.ASIN_FUNCTION"
                                                                                                                                      (BI-TYPEOF ARG)))
                                                                                                                      (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.ACOS_FUNCTION"
                                                                                                                          (BI-TYPEOF ARG)))
                                                                                                          (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.ATAN_FUNCTION"
                                                                                                              (BI-TYPEOF ARG)))
                                                                                              (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.EXP_FUNCTION"
                                                                                                  (BI-TYPEOF ARG)))
                                                                                  (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.LOG_FUNCTION"
                                                                                      (BI-TYPEOF ARG)))
                                                                      (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.LOG2_FUNCTION"
                                                                          (BI-TYPEOF ARG)))
                                                          (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.LOG10_FUNCTION"
                                                              (BI-TYPEOF ARG)))
                                              (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.SQUARE_ROOT_FUNCTION"
                                                  (BI-TYPEOF ARG)))
                                  (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.VALUE_FUNCTION"
                                      (BI-TYPEOF ARG)))
                      (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.LENGTH_FUNCTION"
                          (BI-TYPEOF ARG)))
          (PROGN (RETURN-FROM THIS-FUNCTION NIL))
        (PROGN))
      (IF (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.PLUS_EXPRESSION"
                                                  (BI-TYPEOF ARG))
                                              (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.MULT_EXPRESSION"
                                                  (BI-TYPEOF ARG)))
                                  (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.MAXIMUM_FUNCTION"
                                      (BI-TYPEOF ARG)))
                      (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.MAXIMUM_FUNCTION"
                          (BI-TYPEOF ARG)))
          (PROGN
            (LOOP
              (MEXICO:FOR
               I
               MEXICO:FROM
               1
               MEXICO:TO
               (BI-SIZEOF (%OPERANDS ARG NIL)))
              DO
              (IF (EXPRESS-NOT ("Is_sql_mappable"
                                (EXPRESS-AREF (%OPERANDS ARG NIL) I)))
                  (PROGN (RETURN-FROM THIS-FUNCTION NIL))
                (PROGN)))
            (RETURN-FROM THIS-FUNCTION T))
        (PROGN))
      (IF (EXPRESS-OR (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.MINUS_EXPRESSION"
                          (BI-TYPEOF ARG))
                      (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.SLASH_EXPRESSION"
                          (BI-TYPEOF ARG)))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              (EXPRESS-AND ("Is_sql_mappable"
                            (EXPRESS-AREF (%OPERANDS ARG NIL) 1))
                           ("Is_sql_mappable"
                            (EXPRESS-AREF (%OPERANDS ARG NIL) 2)))))
        (PROGN))
      (IF (EXPRESS-OR (EXPRESS-OR (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.DIV_EXPRESSION"
                                      (BI-TYPEOF ARG))
                                  (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.MOD_EXPRESSION"
                                      (BI-TYPEOF ARG)))
                      (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.POWER_EXPRESSION"
                          (BI-TYPEOF ARG)))
          (PROGN (RETURN-FROM THIS-FUNCTION NIL))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.SIMPLE_BOOLEAN_EXPRESSION"
              (BI-TYPEOF ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION T))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.NOT_EXPRESSION"
              (BI-TYPEOF ARG))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              ("Is_sql_mappable" (%OPERAND ARG NIL))))
        (PROGN))
      (IF (EXPRESS-OR (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.ODD_FUNCTION"
                          (BI-TYPEOF ARG))
                      (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.XOR_EXPRESSION"
                          (BI-TYPEOF ARG)))
          (PROGN (RETURN-FROM THIS-FUNCTION NIL))
        (PROGN))
      (IF (EXPRESS-OR (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.AND_EXPRESSION"
                          (BI-TYPEOF ARG))
                      (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.OR_EXPRESSION"
                          (BI-TYPEOF ARG)))
          (PROGN
            (LOOP
              (MEXICO:FOR
               I
               MEXICO:FROM
               1
               MEXICO:TO
               (BI-SIZEOF (%OPERANDS ARG NIL)))
              DO
              (IF (EXPRESS-NOT ("Is_sql_mappable"
                                (EXPRESS-AREF (%OPERANDS ARG NIL) I)))
                  (PROGN (RETURN-FROM THIS-FUNCTION NIL))
                (PROGN)))
            (RETURN-FROM THIS-FUNCTION T))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.EQUALS_EXPRESSION"
              (BI-TYPEOF ARG))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              (EXPRESS-AND ("Is_sql_mappable"
                            (EXPRESS-AREF (%OPERANDS ARG NIL) 1))
                           ("Is_sql_mappable"
                            (EXPRESS-AREF (%OPERANDS ARG NIL) 2)))))
        (PROGN))
      (IF (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.COMPARISON_EQUAL"
                                                                                      (BI-TYPEOF ARG))
                                                                                  (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.COMPARISON_GREATER"
                                                                                      (BI-TYPEOF ARG)))
                                                                      (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.COMPARISON_GREATER_EQUAL"
                                                                          (BI-TYPEOF ARG)))
                                                          (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.COMPARISON_LESS"
                                                              (BI-TYPEOF ARG)))
                                              (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.COMPARISON_LESS_EQUAL"
                                                  (BI-TYPEOF ARG)))
                                  (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.COMPARISON_NOT_EQUAL"
                                      (BI-TYPEOF ARG)))
                      (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.LIKE_EXPRESSION"
                          (BI-TYPEOF ARG)))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              (EXPRESS-AND ("Is_sql_mappable"
                            (EXPRESS-AREF (%OPERANDS ARG NIL) 1))
                           ("Is_sql_mappable"
                            (EXPRESS-AREF (%OPERANDS ARG NIL) 2)))))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.INTERVAL_EXPRESSION"
              (BI-TYPEOF ARG))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              (EXPRESS-AND (EXPRESS-AND ("Is_sql_mappable"
                                         (%INTERVAL_LOW ARG NIL))
                                        ("Is_sql_mappable"
                                         (%INTERVAL_HIGH ARG NIL)))
                           ("Is_sql_mappable"
                            (%INTERVAL_ITEM ARG NIL)))))
        (PROGN))
      (IF (EXPRESS-OR (EXPRESS-OR (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.NUMERIC_DEFINED_FUNCTION"
                                      (BI-TYPEOF ARG))
                                  (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.BOOLEAN_DEFINED_FUNCTION"
                                      (BI-TYPEOF ARG)))
                      (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.STRING_DEFINED_FUNCTION"
                          (BI-TYPEOF ARG)))
          (PROGN (RETURN-FROM THIS-FUNCTION NIL))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.SIMPLE_STRING_EXPRESSION"
              (BI-TYPEOF ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION T))
        (PROGN))
      (IF (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.INDEX_EXPRESSION"
                                                  (BI-TYPEOF ARG))
                                              (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.SUBSTRING_EXPRESSION"
                                                  (BI-TYPEOF ARG)))
                                  (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.CONCAT_EXPRESSION"
                                      (BI-TYPEOF ARG)))
                      (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.FORMAT_FUNCTION"
                          (BI-TYPEOF ARG)))
          (PROGN (RETURN-FROM THIS-FUNCTION NIL))
        (PROGN))
      (RETURN-FROM THIS-FUNCTION NIL))))


(DEFUN IS_ACYCLIC (ARG)
  (BLOCK THIS-FUNCTION
    (EXPRESS-ASSERT GENERIC_EXPRESSION ARG)
    (WHEN (OR (EXPO::INDETERMINATE-P ARG)) (RETURN-FROM IS_ACYCLIC :?))
    (LET ()
      (RETURN-FROM THIS-FUNCTION
        ("Acyclic"
         ARG
         (MAKE-INSTANCE 'EXPRESS-BAG
                        :VALUE
                        (LIST)
                        :TYPE-DESCRIPTOR
                        (MAKE-INSTANCE 'BAG-TYP
                                       :L-BOUND
                                       0
                                       :U-BOUND
                                       :?
                                       :BASE-TYPE
                                       T)))))))


(DEFUN ACYCLIC (ARG1 ARG2)
  (BLOCK THIS-FUNCTION
    (EXPRESS-ASSERT GENERIC_EXPRESSION ARG1)
    (EXPRESS-ASSERT (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   'GENERIC_EXPRESSION)
                    ARG2)
    (WHEN (OR (EXPO::INDETERMINATE-P ARG1)
              (EXPO::INDETERMINATE-P ARG2))
      (RETURN-FROM ACYCLIC :?))
    (LET ((RESULT (MAKE-ONE (MAKE-INSTANCE 'BOOLEAN-TYP) NIL)))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.SIMPLE_GENERIC_EXPRESSION"
              (BI-TYPEOF ARG1))
          (PROGN (RETURN-FROM THIS-FUNCTION T))
        (PROGN))
      (IF (IN ARG1 ARG2)
          (PROGN (RETURN-FROM THIS-FUNCTION NIL))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.UNARY_GENERIC_EXPRESSION"
              (BI-TYPEOF ARG1))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              ("Acyclic"
               (%OPERAND ARG1 NIL)
               (EXPRESS-PLUS ARG2
                             (MAKE-INSTANCE 'EXPRESS-BAG
                                            :VALUE
                                            (LIST ARG1)
                                            :TYPE-DESCRIPTOR
                                            (MAKE-INSTANCE 'BAG-TYP
                                                           :L-BOUND
                                                           0
                                                           :U-BOUND
                                                           :?
                                                           :BASE-TYPE
                                                           T))))))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.BINARY_GENERIC_EXPRESSION"
              (BI-TYPEOF ARG1))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              (EXPRESS-AND ("Acyclic"
                            (EXPRESS-AREF (%OPERANDS ARG1 NIL) 1)
                            (EXPRESS-PLUS ARG2
                                          (MAKE-INSTANCE 'EXPRESS-BAG
                                                         :VALUE
                                                         (LIST ARG1)
                                                         :TYPE-DESCRIPTOR
                                                         (MAKE-INSTANCE 'BAG-TYP
                                                                        :L-BOUND
                                                                        0
                                                                        :U-BOUND
                                                                        :?
                                                                        :BASE-TYPE
                                                                        T))))
                           ("Acyclic"
                            (EXPRESS-AREF (%OPERANDS ARG1 NIL) 2)
                            (EXPRESS-PLUS ARG2
                                          (MAKE-INSTANCE 'EXPRESS-BAG
                                                         :VALUE
                                                         (LIST ARG1)
                                                         :TYPE-DESCRIPTOR
                                                         (MAKE-INSTANCE 'BAG-TYP
                                                                        :L-BOUND
                                                                        0
                                                                        :U-BOUND
                                                                        :?
                                                                        :BASE-TYPE
                                                                        T)))))))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.MULTIPLE_ARITY_GENERIC_EXPRESSION"
              (BI-TYPEOF ARG1))
          (PROGN
            (SETF RESULT T)
            (LOOP
              (MEXICO:FOR
               I
               MEXICO:FROM
               1
               MEXICO:TO
               (BI-SIZEOF (%OPERANDS ARG1 NIL)))
              DO
              (SETF RESULT
                    (EXPRESS-AND RESULT
                                 ("Acyclic"
                                  (EXPRESS-AREF (%OPERANDS ARG1 NIL) I)
                                  (EXPRESS-PLUS ARG2
                                                (MAKE-INSTANCE 'EXPRESS-BAG
                                                               :VALUE
                                                               (LIST ARG1)
                                                               :TYPE-DESCRIPTOR
                                                               (MAKE-INSTANCE 'BAG-TYP
                                                                              :L-BOUND
                                                                              0
                                                                              :U-BOUND
                                                                              :?
                                                                              :BASE-TYPE
                                                                              T)))))))
            (RETURN-FROM THIS-FUNCTION RESULT))
        (PROGN)))))


(DEFUN CLASSOF (THE_INSTANCE)
  (BLOCK THIS-FUNCTION
    (EXPRESS-ASSERT T THE_INSTANCE)
    (WHEN (OR (EXPO::INDETERMINATE-P THE_INSTANCE))
      (RETURN-FROM CLASSOF :?))
    (LET ((RESULT
           (MAKE-ONE (MAKE-INSTANCE 'SET-TYP
                                    :L-BOUND
                                    0
                                    :U-BOUND
                                    :?
                                    :BASE-TYPE
                                    (MAKE-INSTANCE 'STRING-TYP))
                     NIL))
          (CLASSIFICATIONS
           (MAKE-ONE (MAKE-INSTANCE 'BAG-TYP
                                    :L-BOUND
                                    0
                                    :U-BOUND
                                    :?
                                    :BASE-TYPE
                                    'CLASSIFICATION_ASSIGNMENT)
                     NIL)))
      (SETF RESULT (BI-TYPEOF THE_INSTANCE))
      (SETF CLASSIFICATIONS
            (BI-USEDIN THE_INSTANCE
                       "AP233_SYSTEMS_ENGINEERING_ARM_LF.CLASSIFICATION_ASSIGNMENT.ITEMS"))
      (LOOP
        (MEXICO:FOR
         I
         MEXICO:FROM
         (BI-LOINDEX CLASSIFICATIONS)
         MEXICO:TO
         (BI-HIINDEX CLASSIFICATIONS))
        DO
        (SETF RESULT
              (EXPRESS-PLUS RESULT
                            (%ID
                             (%ASSIGNED_CLASS
                              (EXPRESS-AREF CLASSIFICATIONS I)
                              NIL)
                             NIL))))
      (RETURN-FROM THIS-FUNCTION RESULT))))


(DEFUN ACYCLIC_REPRESENTATION_RELATIONSHIP
       (RELATION RELATIVES SPECIFIC_RELATION)
  (BLOCK THIS-FUNCTION
    (EXPRESS-ASSERT REPRESENTATION_RELATIONSHIP RELATION)
    (EXPRESS-ASSERT (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   'REPRESENTATION)
                    RELATIVES)
    (EXPRESS-ASSERT (MAKE-INSTANCE 'STRING-TYP) SPECIFIC_RELATION)
    (WHEN (OR (EXPO::INDETERMINATE-P RELATION)
              (EXPO::INDETERMINATE-P RELATIVES)
              (EXPO::INDETERMINATE-P SPECIFIC_RELATION))
      (RETURN-FROM ACYCLIC_REPRESENTATION_RELATIONSHIP :?))
    (LET ((X
           (MAKE-ONE (MAKE-INSTANCE 'SET-TYP
                                    :L-BOUND
                                    0
                                    :U-BOUND
                                    :?
                                    :BASE-TYPE
                                    'REPRESENTATION_RELATIONSHIP)
                     NIL)))
      (IF (IN (%REP_1 RELATION NIL) RELATIVES)
          (PROGN (RETURN-FROM THIS-FUNCTION NIL))
        (PROGN))
      (SETF X
            (QUERY ("bag_to_set"
                    (BI-USEDIN (%REP_1 RELATION NIL)
                               (EXPRESS-PLUS (EXPRESS-PLUS "AP233_SYSTEMS_ENGINEERING_ARM_LF."
                                                           "REPRESENTATION_RELATIONSHIP.")
                                             "REP_2")))
                   #'(LAMBDA (R)
                       (IN SPECIFIC_RELATION (BI-TYPEOF R)))))
      (LOOP
        (MEXICO:FOR I MEXICO:FROM 1 MEXICO:TO (BI-HIINDEX X))
        DO
        (IF (EXPRESS-NOT ("acyclic_representation_relationship"
                          (EXPRESS-AREF X I)
                          (EXPRESS-PLUS RELATIVES
                                        (%REP_1 RELATION NIL))
                          SPECIFIC_RELATION))
            (PROGN (RETURN-FROM THIS-FUNCTION NIL))
          (PROGN)))
      (RETURN-FROM THIS-FUNCTION T))))


(DEFUN BAG_TO_SET (THE_BAG)
  (BLOCK THIS-FUNCTION
    (EXPRESS-ASSERT (MAKE-INSTANCE 'BAG-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   'T)
                    THE_BAG)
    (WHEN (OR (EXPO::INDETERMINATE-P THE_BAG))
      (RETURN-FROM BAG_TO_SET :?))
    (LET ((THE_SET
           (MAKE-ONE (MAKE-INSTANCE 'SET-TYP
                                    :L-BOUND
                                    0
                                    :U-BOUND
                                    :?
                                    :BASE-TYPE
                                    'T)
                     (MAKE-INSTANCE 'EXPRESS-BAG
                                    :VALUE
                                    (LIST)
                                    :TYPE-DESCRIPTOR
                                    (MAKE-INSTANCE 'BAG-TYP
                                                   :L-BOUND
                                                   0
                                                   :U-BOUND
                                                   :?
                                                   :BASE-TYPE
                                                   T))))
          (I (MAKE-ONE (MAKE-INSTANCE 'INTEGER-TYP) NIL)))
      (IF (EXPRESS-> (BI-SIZEOF THE_BAG) 0)
          (PROGN
            (LOOP
              (MEXICO:FOR
               I
               MEXICO:FROM
               1
               MEXICO:TO
               (BI-HIINDEX THE_BAG))
              DO
              (SETF THE_SET
                    (EXPRESS-PLUS THE_SET (EXPRESS-AREF THE_BAG I)))))
        (PROGN))
      (RETURN-FROM THIS-FUNCTION THE_SET))))


(DEFUN SPA_GET_DEFINITION (INPUT)
  (BLOCK THIS-FUNCTION
    (EXPRESS-ASSERT CONTEXTUAL_ITEM_SHAPE INPUT)
    (WHEN (OR (EXPO::INDETERMINATE-P INPUT))
      (RETURN-FROM SPA_GET_DEFINITION :?))
    (LET ()
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.VIEW_DEFINITION_USAGE"
              (BI-TYPEOF (%DESCRIBED_ELEMENT INPUT NIL)))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              (%RELATED_VIEW (%DESCRIBED_ELEMENT INPUT NIL) NIL)))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.PRODUCT_OCCURRENCE_DEFINITION_RELATIONSHIP"
              (BI-TYPEOF (%DESCRIBED_ELEMENT INPUT NIL)))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              (%RELATED_VIEW (%DESCRIBED_ELEMENT INPUT NIL) NIL)))
        (PROGN))
      (RETURN-FROM THIS-FUNCTION :?))))


(DEFUN IS_INT_EXPR (ARG)
  (BLOCK THIS-FUNCTION
    (EXPRESS-ASSERT NUMERIC_EXPRESSION ARG)
    (WHEN (OR (EXPO::INDETERMINATE-P ARG))
      (RETURN-FROM IS_INT_EXPR :?))
    (LET ((I (MAKE-ONE (MAKE-INSTANCE 'INTEGER-TYP) NIL)))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.INT_LITERAL"
              (BI-TYPEOF ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION T))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.REAL_LITERAL"
              (BI-TYPEOF ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION NIL))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.INT_NUMERIC_VARIABLE"
              (BI-TYPEOF ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION T))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.REAL_NUMERIC_VARIABLE"
              (BI-TYPEOF ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION NIL))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.ABS_FUNCTION"
              (BI-TYPEOF ARG))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              ("Is_int_expr" (%OPERAND ARG NIL))))
        (PROGN))
      (IF (IN "NUMERIC_FUNCTION.MINUS_FUNCTION" (BI-TYPEOF ARG))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              ("Is_int_expr" (%OPERAND ARG NIL))))
        (PROGN))
      (IF (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.SIN_FUNCTION"
                                                                                                                                      (BI-TYPEOF ARG))
                                                                                                                                  (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.COS_FUNCTION"
                                                                                                                                      (BI-TYPEOF ARG)))
                                                                                                                      (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.TAN_FUNCTION"
                                                                                                                          (BI-TYPEOF ARG)))
                                                                                                          (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.ASIN_FUNCTION"
                                                                                                              (BI-TYPEOF ARG)))
                                                                                              (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.ACOS_FUNCTION"
                                                                                                  (BI-TYPEOF ARG)))
                                                                                  (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.Atan_function"
                                                                                      (BI-TYPEOF ARG)))
                                                                      (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.EXP_FUNCTION"
                                                                          (BI-TYPEOF ARG)))
                                                          (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.LOG_FUNCTION"
                                                              (BI-TYPEOF ARG)))
                                              (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.LOG2_FUNCTION"
                                                  (BI-TYPEOF ARG)))
                                  (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.LOG10_FUNCTION"
                                      (BI-TYPEOF ARG)))
                      (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.SQUARE_ROOT_FUNCTION"
                          (BI-TYPEOF ARG)))
          (PROGN (RETURN-FROM THIS-FUNCTION NIL))
        (PROGN))
      (IF (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.PLUS_EXPRESSION"
                                                  (BI-TYPEOF ARG))
                                              (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.MULT_EXPRESSION"
                                                  (BI-TYPEOF ARG)))
                                  (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.MAXIMUM_FUNCTION"
                                      (BI-TYPEOF ARG)))
                      (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.MINIMUM_FUNCTION"
                          (BI-TYPEOF ARG)))
          (PROGN
            (LOOP
              (MEXICO:FOR
               I
               MEXICO:FROM
               1
               MEXICO:TO
               (BI-SIZEOF (%OPERANDS ARG NIL)))
              DO
              (IF (EXPRESS-NOT ("Is_int_expr"
                                (EXPRESS-AREF (%OPERANDS ARG NIL) I)))
                  (PROGN (RETURN-FROM THIS-FUNCTION NIL))
                (PROGN)))
            (RETURN-FROM THIS-FUNCTION T))
        (PROGN))
      (IF (EXPRESS-OR (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.MINUS_EXPRESSION"
                          (BI-TYPEOF ARG))
                      (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.POWER_EXPRESSION"
                          (BI-TYPEOF ARG)))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              (EXPRESS-AND ("Is_int_expr"
                            (EXPRESS-AREF (%OPERANDS ARG NIL) 1))
                           ("Is_int_expr"
                            (EXPRESS-AREF (%OPERANDS ARG NIL) 2)))))
        (PROGN))
      (IF (EXPRESS-OR (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.DIV_EXPRESSION"
                          (BI-TYPEOF ARG))
                      (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.MOD_EXPRESSION"
                          (BI-TYPEOF ARG)))
          (PROGN (RETURN-FROM THIS-FUNCTION T))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.SLASH_EXPRESSION"
              (BI-TYPEOF ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION NIL))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.LENGTH_FUNCTION"
              (BI-TYPEOF ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION T))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.VALUE_FUNCTION"
              (BI-TYPEOF ARG))
          (PROGN
            (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.INT_VALUE_FUNCTION"
                    (BI-TYPEOF ARG))
                (PROGN (RETURN-FROM THIS-FUNCTION T))
              (PROGN (RETURN-FROM THIS-FUNCTION NIL))))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.INTEGER_DEFINED_FUNCTION"
              (BI-TYPEOF ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION T))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.REAL_DEFINED_FUNCTION"
              (BI-TYPEOF ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION NIL))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.BOOLEAN_DEFINED_FUNCTION"
              (BI-TYPEOF ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION NIL))
        (PROGN))
      (IF (IN "AP233_SYSTEMS_ENGINEERING_ARM_LF.STRING_DEFINED_FUNCTION"
              (BI-TYPEOF ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION NIL))
        (PROGN))
      (RETURN-FROM THIS-FUNCTION NIL))))



;;; END OF OUTPUT