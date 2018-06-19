;;; -*- Mode: Lisp; -*-

;;; File created by Expresso 4.0.0 (compiled 2007-Oct-02 17:20)
;;; Date created: 2007-11-15 12:10:15
;;; Compilation of ap233.exp

(in-package :expresso-user)

(SETF (SCHEMA *EXPRESSO*)
      (ENSURE-SCHEMA 'EXPRESS-SCHEMA
                     :NAME
                     "ap233_system_engineering_and_design_arm_lf"
                     :INTERNED-NAME
                     'AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                     :SCHEMA-PATHNAME
                     #P"ap233.exp"))
(EXPO::CLEAR-SCHEMA (FIND-SCHEMA "ap233_system_engineering_and_design_arm_lf"))


;;;=================
;;; SpecializedTypes
;;;=================
(DEFTYPE-CLASS "ASEADAL.GROUPABLE_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.APPROVAL
                                ASEADAL.BREAKDOWN_OF
                                ASEADAL.CERTIFICATION
                                ASEADAL.CONDITION
                                ASEADAL.CONTRACT
                                ASEADAL.EFFECTIVITY
                                ASEADAL.EVENT
                                ASEADAL.EXPERIENCE_TYPE
                                ASEADAL.FILE
                                ASEADAL.GROUP_RELATIONSHIP
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.JUSTIFICATION
                                ASEADAL.LOCATION
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.OBSERVATION
                                ASEADAL.PRODUCT
                                ASEADAL.PROJECT
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RISK
                                ASEADAL.TASK_IO
                                ASEADAL.VERIFICATION
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.ACTIVITY_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_SOURCE_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_DEFINITION_ASSIGNMENT
                                ASEADAL.APPROVAL
                                ASEADAL.ASSIGNED_DOCUMENT_PROPERTY
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.BEHAVIOUR_DESCRIPTION_ASSOCIATION
                                ASEADAL.CERTIFICATION
                                ASEADAL.CONTRACT
                                ASEADAL.DESCRIPTIVE_DOCUMENT_PROPERTY
                                ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_DEFINITION
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.EFFECTIVITY
                                ASEADAL.EVENT
                                ASEADAL.FILE
                                ASEADAL.INDEPENDENT_PROPERTY
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.ISSUE
                                ASEADAL.ITEM_USAGE_EFFECTIVITY
                                ASEADAL.JUSTIFICATION
                                ASEADAL.LOCATION
                                ASEADAL.LOCATION_REPRESENTATION
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.NUMERICAL_DOCUMENT_PROPERTY
                                ASEADAL.OBSERVATION_CONSEQUENCE
                                ASEADAL.ORGANIZATION
                                ASEADAL.PERSON
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.POSITION
                                ASEADAL.POSITION_GROUP
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_CATEGORY
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VERSION_RELATIONSHIP
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.REQUIREMENT_SOURCE
                                ASEADAL.RESOURCE_AS_REALIZED
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.RISK
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_ASSESSMENT
                                ASEADAL.RISK_COMMUNICATION
                                ASEADAL.RISK_CONTROL
                                ASEADAL.RISK_ESTIMATION
                                ASEADAL.RISK_EVALUATION
                                ASEADAL.RISK_IDENTIFICATION
                                ASEADAL.RISK_REDUCTION
                                ASEADAL.SCHEME
                                ASEADAL.SCHEME_ENTRY
                                ASEADAL.SCHEME_ENTRY_ASSIGNMENT
                                ASEADAL.STATE
                                ASEADAL.STATE_RELATIONSHIP
                                ASEADAL.TASK_ELEMENT
                                ASEADAL.TASK_IO
                                ASEADAL.TASK_IO_HIERARCHY
                                ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_VERSION
                                ASEADAL.VERIFICATION
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.APPROVAL_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_ACTUAL
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.ACTIVITY_METHOD_REALIZATION
                                ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                                ASEADAL.ACTIVITY_METHOD_RELATIONSHIP
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ADDRESS_ASSIGNMENT
                                ASEADAL.AFFECTED_ITEMS_ASSIGNMENT
                                ASEADAL.ALTERNATE_PART_RELATIONSHIP
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.ANALYSIS_DISCIPLINE_DEFINITION
                                ASEADAL.ANALYSIS_VERSION
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPLIED_INFORMATION_USAGE_RIGHT
                                ASEADAL.APPLIED_STATE_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_DEFINITION_ASSIGNMENT
                                ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.BREAKDOWN
                                ASEADAL.BREAKDOWN_ELEMENT
                                ASEADAL.BREAKDOWN_ELEMENT_DEFINITION
                                ASEADAL.BREAKDOWN_ELEMENT_REALIZATION
                                ASEADAL.BREAKDOWN_ELEMENT_USAGE
                                ASEADAL.BREAKDOWN_ELEMENT_VERSION
                                ASEADAL.BREAKDOWN_VERSION
                                ASEADAL.CERTIFICATION
                                ASEADAL.CERTIFICATION_ASSIGNMENT
                                ASEADAL.CLASSIFICATION_ASSIGNMENT
                                ASEADAL.CONDITION
                                ASEADAL.CONDITION_ASSIGNMENT
                                ASEADAL.CONDITION_EVALUATION
                                ASEADAL.CONDITION_EVALUATION_ASSIGNMENT
                                ASEADAL.CONTRACT
                                ASEADAL.CONTRACT_ASSIGNMENT
                                ASEADAL.DATE_OR_DATE_TIME_ASSIGNMENT
                                ASEADAL.DIGITAL_DOCUMENT_DEFINITION
                                ASEADAL.DIRECTED_ACTIVITY
                                ASEADAL.DOCUMENT_ASSIGNMENT
                                ASEADAL.DOCUMENT_DEFINITION_RELATIONSHIP
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.EFFECTIVITY
                                ASEADAL.EFFECTIVITY_ASSIGNMENT
                                ASEADAL.EVENT
                                ASEADAL.EVENT_ASSIGNMENT
                                ASEADAL.EXPERIENCE_GAINED
                                ASEADAL.EXPERIENCE_TYPE
                                ASEADAL.GROUP
                                ASEADAL.GROUP_RELATIONSHIP
                                ASEADAL.IDENTIFICATION_ASSIGNMENT
                                ASEADAL.IN_ZONE
                                ASEADAL.INDEPENDENT_PROPERTY
                                ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP
                                ASEADAL.INFORMATION_USAGE_RIGHT
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_DEFINITION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.INTERFACE_SPECIFICATION
                                ASEADAL.INTERFACE_SPECIFICATION_DEFINITION
                                ASEADAL.INTERFACE_SPECIFICATION_VERSION
                                ASEADAL.ITEM_USAGE_EFFECTIVITY
                                ASEADAL.JUSTIFICATION
                                ASEADAL.JUSTIFICATION_ASSIGNMENT
                                ASEADAL.JUSTIFICATION_RELATIONSHIP
                                ASEADAL.JUSTIFICATION_SUPPORT_ASSIGNMENT
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.MANAGED_RESOURCE_RELATIONSHIP
                                ASEADAL.OBSERVATION
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                                ASEADAL.ORGANIZATION_ORGANIZATION_TYPE_RELATIONSHIP
                                ASEADAL.ORGANIZATION_RELATIONSHIP
                                ASEADAL.PART
                                ASEADAL.PART_VERSION
                                ASEADAL.PART_VIEW_DEFINITION
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
                                ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
                                ASEADAL.PHYSICAL_DOCUMENT_DEFINITION
                                ASEADAL.POSITION_ASSIGNMENT
                                ASEADAL.POSITION_GROUP_ASSIGNMENT
                                ASEADAL.POSITION_POSITION_TYPE_ASSIGNMENT
                                ASEADAL.POSITION_TYPE
                                ASEADAL.POSITION_TYPE_ASSIGNMENT
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_AS_INDIVIDUAL
                                ASEADAL.PRODUCT_AS_PLANNED
                                ASEADAL.PRODUCT_AS_REALIZED
                                ASEADAL.PRODUCT_CATEGORY_ASSIGNMENT
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP
                                ASEADAL.PRODUCT_DESIGN_TO_INDIVIDUAL
                                ASEADAL.PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_GROUP_MEMBERSHIP
                                ASEADAL.PRODUCT_GROUP_RELATIONSHIP
                                ASEADAL.PRODUCT_PLANNED_TO_REALIZED
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VERSION_RELATIONSHIP
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.PROJECT_ASSIGNMENT
                                ASEADAL.QUALIFICATION_ASSIGNMENT
                                ASEADAL.QUALIFICATION_TYPE
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT
                                ASEADAL.REQUIRED_RESOURCE_RELATIONSHIP
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.REQUIREMENT_COLLECTION_RELATIONSHIP
                                ASEADAL.REQUIREMENT_SOURCE
                                ASEADAL.RESOURCE_AS_REALIZED
                                ASEADAL.RESOURCE_AS_REALIZED_ASSIGNMENT
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RESOURCE_ITEM_RELATIONSHIP
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.RISK_PERCEPTION
                                ASEADAL.RISK_REDUCTION
                                ASEADAL.SECURITY_CLASSIFICATION
                                ASEADAL.SECURITY_CLASSIFICATION_ASSIGNMENT
                                ASEADAL.SELECTED_ITEM_ASSIGNMENT
                                ASEADAL.STATE_ASSESSMENT
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.STATE_DEFINITION_RELATIONSHIP
                                ASEADAL.STATE_RELATIONSHIP
                                ASEADAL.SUPPLIED_PART_RELATIONSHIP
                                ASEADAL.TASK_ELEMENT
                                ASEADAL.TASK_ELEMENT_STATE_RELATIONSHIP
                                ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_ASSIGNMENT
                                ASEADAL.TASK_METHOD_RELATIONSHIP
                                ASEADAL.TASK_METHOD_STATE_RELATIONSHIP
                                ASEADAL.TASK_METHOD_VERSION
                                ASEADAL.TASK_METHOD_VERSION_ASSIGNMENT
                                ASEADAL.TASK_METHOD_VERSION_RELATIONSHIP
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.TASK_OBJECTIVE_STATE_RELATIONSHIP
                                ASEADAL.TRACING_RELATIONSHIP
                                ASEADAL.TYPE_OF_PERSON
                                ASEADAL.TYPE_OF_PERSON_ASSIGNMENT
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VERIFICATION_RELATIONSHIP
                                ASEADAL.VIEW_DEFINITION_CONTEXT
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT
                                ASEADAL.WORK_OUTPUT_ASSIGNMENT
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.DATE_OR_DATE_TIME_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.CALENDAR_DATE
                                ASEADAL.DATE_TIME)))


(DEFTYPE-CLASS "ASEADAL.DAY_IN_MONTH_NUMBER"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               MAKE-INSTANCE
               'INTEGER-TYP)


(DEFTYPE-CLASS "ASEADAL.HOUR_IN_DAY"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               MAKE-INSTANCE
               'INTEGER-TYP)


(DEFTYPE-CLASS "ASEADAL.MINUTE_IN_HOUR"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               MAKE-INSTANCE
               'INTEGER-TYP)


(DEFTYPE-CLASS "ASEADAL.MONTH_IN_YEAR_NUMBER"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               MAKE-INSTANCE
               'INTEGER-TYP)


(DEFTYPE-CLASS "ASEADAL.OFFSET_ORIENTATION"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'ENUM-TYP
                              :ENUMERATION-LIST
                              '(AHEAD EXACT BEHIND)))


(DEFTYPE-CLASS "ASEADAL.SECOND_IN_MINUTE"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               MAKE-INSTANCE
               'REAL-TYP)


(DEFTYPE-CLASS "ASEADAL.YEAR_NUMBER"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               MAKE-INSTANCE
               'INTEGER-TYP)


(DEFTYPE-CLASS "ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ORGANIZATION
                                ASEADAL.PERSON_IN_ORGANIZATION)))


(DEFTYPE-CLASS "ASEADAL.IDENTIFICATION_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_REALIZATION
                                ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                                ASEADAL.ACTIVITY_METHOD_RELATIONSHIP
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ADDRESS
                                ASEADAL.AFFECTED_ITEMS_ASSIGNMENT
                                ASEADAL.ALIAS_IDENTIFICATION_ITEM
                                ASEADAL.ANALYSIS
                                ASEADAL.ANALYSIS_DISCIPLINE_DEFINITION
                                ASEADAL.ANALYSIS_VERSION
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPLIED_PROBABILITY_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_SOURCE_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_DEFINITION_ASSIGNMENT
                                ASEADAL.APPROVAL
                                ASEADAL.APPROVAL_STATUS
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.BEHAVIOUR
                                ASEADAL.BEHAVIOUR_VERSION
                                ASEADAL.BEHAVIOUR_VIEW_DEFINITION
                                ASEADAL.BREAKDOWN
                                ASEADAL.BREAKDOWN_ELEMENT
                                ASEADAL.BREAKDOWN_ELEMENT_DEFINITION
                                ASEADAL.BREAKDOWN_ELEMENT_VERSION
                                ASEADAL.BREAKDOWN_VERSION
                                ASEADAL.CERTIFICATION
                                ASEADAL.CONDITION
                                ASEADAL.CONDITION_EVALUATION
                                ASEADAL.CONTRACT
                                ASEADAL.DESCRIPTION_TEXT_ASSIGNMENT
                                ASEADAL.DIGITAL_DOCUMENT_DEFINITION
                                ASEADAL.DIGITAL_FILE
                                ASEADAL.DIRECTED_ACTIVITY
                                ASEADAL.DISPOSITION
                                ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_ASSIGNMENT
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.EFFECTIVITY
                                ASEADAL.EVENT
                                ASEADAL.EXPERIENCE_TYPE
                                ASEADAL.EXTERNAL_CLASS_LIBRARY
                                ASEADAL.EXTERNAL_SOURCE_IDENTIFICATION
                                ASEADAL.FILE
                                ASEADAL.GENERAL_MODEL_PARAMETER
                                ASEADAL.GROUP
                                ASEADAL.GROUP_RELATIONSHIP
                                ASEADAL.HARDCOPY
                                ASEADAL.INDEPENDENT_PROPERTY
                                ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP
                                ASEADAL.INFORMATION_RIGHT
                                ASEADAL.INFORMATION_USAGE_RIGHT
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR
                                ASEADAL.INTERFACE_CONNECTOR_DEFINITION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_SPECIFICATION
                                ASEADAL.INTERFACE_SPECIFICATION_DEFINITION
                                ASEADAL.INTERFACE_SPECIFICATION_VERSION
                                ASEADAL.ITEM_SHAPE
                                ASEADAL.JUSTIFICATION
                                ASEADAL.JUSTIFICATION_ASSIGNMENT
                                ASEADAL.JUSTIFICATION_RELATIONSHIP
                                ASEADAL.JUSTIFICATION_SUPPORT_ASSIGNMENT
                                ASEADAL.LOCATION
                                ASEADAL.LOCATION_REPRESENTATION
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.MARKET
                                ASEADAL.NUMERICAL_DOCUMENT_PROPERTY
                                ASEADAL.OBSERVATION
                                ASEADAL.OBSERVATION_CONSEQUENCE
                                ASEADAL.ORGANIZATION
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                                ASEADAL.ORGANIZATION_TYPE
                                ASEADAL.ORGANIZATIONAL_LOCATION_IDENTIFICATION
                                ASEADAL.PERSON
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
                                ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
                                ASEADAL.PHYSICAL_DOCUMENT_DEFINITION
                                ASEADAL.POSITION_ASSIGNMENT
                                ASEADAL.POSITION_GROUP
                                ASEADAL.POSITION_ROLE
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_AS_INDIVIDUAL
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VERSION
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VIEW
                                ASEADAL.PRODUCT_AS_PLANNED
                                ASEADAL.PRODUCT_AS_REALIZED
                                ASEADAL.PRODUCT_CATEGORY
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_GROUP_MEMBERSHIP
                                ASEADAL.PRODUCT_GROUP_RELATIONSHIP
                                ASEADAL.PRODUCT_RELATIONSHIP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.QUALIFICATION_ASSIGNMENT
                                ASEADAL.QUALIFICATION_TYPE
                                ASEADAL.REPRESENTATION
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.REQUIRED_RESOURCE_RELATIONSHIP
                                ASEADAL.REQUIREMENT
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.REQUIREMENT_COLLECTION_RELATIONSHIP
                                ASEADAL.REQUIREMENT_SOURCE
                                ASEADAL.REQUIREMENT_VERSION
                                ASEADAL.REQUIREMENT_VERSION_RELATIONSHIP
                                ASEADAL.REQUIREMENT_VIEW_DEFINITION
                                ASEADAL.RESOURCE_AS_REALIZED
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.RISK
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_IDENTIFICATION
                                ASEADAL.RISK_IMPACT
                                ASEADAL.RISK_STAKEHOLDER
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.SECURITY_CLASSIFICATION
                                ASEADAL.SECURITY_CLASSIFICATION_ASSIGNMENT
                                ASEADAL.SHAPE_ELEMENT_RELATIONSHIP
                                ASEADAL.STATE_BASED_BEHAVIOUR_MODEL
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.STATE_DEFINITION_RELATIONSHIP
                                ASEADAL.STATE_TRANSITION_DEFINITION
                                ASEADAL.SYSTEM
                                ASEADAL.SYSTEM_VERSION
                                ASEADAL.SYSTEM_VIEW_DEFINITION
                                ASEADAL.TASK_ELEMENT
                                ASEADAL.TASK_ELEMENT_RELATIONSHIP
                                ASEADAL.TASK_ELEMENT_STATE_RELATIONSHIP
                                ASEADAL.TASK_IO
                                ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_ASSIGNMENT
                                ASEADAL.TASK_METHOD_RELATIONSHIP
                                ASEADAL.TASK_METHOD_STATE_RELATIONSHIP
                                ASEADAL.TASK_METHOD_VERSION
                                ASEADAL.TASK_METHOD_VERSION_ASSIGNMENT
                                ASEADAL.TASK_METHOD_VERSION_RELATIONSHIP
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.TASK_OBJECTIVE_STATE_RELATIONSHIP
                                ASEADAL.TASK_STEP
                                ASEADAL.TRACING_RELATIONSHIP
                                ASEADAL.TYPE_OF_PERSON
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VIEW_DEFINITION_CONTEXT
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.VIEW_DEFINITION_USAGE
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.ISSUE_REFERENCE_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.ACTIVITY_METHOD_REALIZATION
                                ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                                ASEADAL.ACTIVITY_METHOD_RELATIONSHIP
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ACTIVITY_PROPERTY_REPRESENTATION
                                ASEADAL.ACTIVITY_RELATIONSHIP
                                ASEADAL.ACTIVITY_STATUS
                                ASEADAL.ADDRESS
                                ASEADAL.ADDRESS_ASSIGNMENT
                                ASEADAL.AFFECTED_ITEMS_ASSIGNMENT
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPLIED_INFORMATION_USAGE_RIGHT
                                ASEADAL.APPLIED_PROBABILITY_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_SOURCE_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_STATUS_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_DEFINITION_ASSIGNMENT
                                ASEADAL.APPROVAL
                                ASEADAL.APPROVAL_ASSIGNMENT
                                ASEADAL.APPROVAL_RELATIONSHIP
                                ASEADAL.APPROVAL_STATUS
                                ASEADAL.APPROVING_PERSON_ORGANIZATION
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.ATTRIBUTE_CLASSIFICATION
                                ASEADAL.ATTRIBUTE_TRANSLATION_ASSIGNMENT
                                ASEADAL.BEHAVIOUR_DESCRIPTION_ASSOCIATION
                                ASEADAL.BREAKDOWN_CONTEXT
                                ASEADAL.BREAKDOWN_OF
                                ASEADAL.CALENDAR_DATE
                                ASEADAL.CERTIFICATION
                                ASEADAL.CERTIFICATION_ASSIGNMENT
                                ASEADAL.CHARACTERIZABLE_OBJECT
                                ASEADAL.CLASS
                                ASEADAL.CLASSIFICATION_ASSIGNMENT
                                ASEADAL.CONDITION
                                ASEADAL.CONDITION_ASSIGNMENT
                                ASEADAL.CONDITION_EVALUATION
                                ASEADAL.CONDITION_EVALUATION_ASSIGNMENT
                                ASEADAL.CONDITION_EVALUATION_PARAMETER
                                ASEADAL.CONDITION_PARAMETER
                                ASEADAL.CONDITION_RELATIONSHIP
                                ASEADAL.CONTRACT
                                ASEADAL.CONTRACT_ASSIGNMENT
                                ASEADAL.DATE_OR_DATE_TIME_ASSIGNMENT
                                ASEADAL.DATE_TIME
                                ASEADAL.DECISION_PATH
                                ASEADAL.DEFINED_STATE_RELATIONSHIP
                                ASEADAL.DESCRIPTION_TEXT
                                ASEADAL.DESCRIPTION_TEXT_ASSIGNMENT
                                ASEADAL.DOCUMENT_ASSIGNMENT
                                ASEADAL.DOCUMENT_DEFINITION_RELATIONSHIP
                                ASEADAL.EFFECTIVITY
                                ASEADAL.EFFECTIVITY_ASSIGNMENT
                                ASEADAL.EFFECTIVITY_RELATIONSHIP
                                ASEADAL.EVENT
                                ASEADAL.EVENT_ASSIGNMENT
                                ASEADAL.EVENT_RELATIONSHIP
                                ASEADAL.EXPERIENCE_GAINED
                                ASEADAL.EXPERIENCE_INSTANCE
                                ASEADAL.EXPERIENCE_TYPE
                                ASEADAL.EXPERIENCE_TYPE_RELATIONSHIP
                                ASEADAL.EXPRESSION_ASSIGNMENT
                                ASEADAL.EXTERNAL_CLASS_LIBRARY
                                ASEADAL.EXTERNAL_SOURCE_IDENTIFICATION
                                ASEADAL.FILE
                                ASEADAL.FILE_RELATIONSHIP
                                ASEADAL.GENERIC_EXPRESSION
                                ASEADAL.GROUP
                                ASEADAL.GROUP_RELATIONSHIP
                                ASEADAL.IDENTIFICATION_ASSIGNMENT
                                ASEADAL.IN_ZONE
                                ASEADAL.INDEPENDENT_PROPERTY
                                ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP
                                ASEADAL.INFORMATION_RIGHT
                                ASEADAL.INFORMATION_USAGE_RIGHT
                                ASEADAL.INFORMATION_USAGE_RIGHT_RELATIONSHIP
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.ITEM_DESIGN_ASSOCIATION
                                ASEADAL.ITEM_SHAPE
                                ASEADAL.ITEM_USAGE_EFFECTIVITY
                                ASEADAL.JUSTIFICATION
                                ASEADAL.JUSTIFICATION_ASSIGNMENT
                                ASEADAL.JUSTIFICATION_RELATIONSHIP
                                ASEADAL.JUSTIFICATION_SUPPORT_ASSIGNMENT
                                ASEADAL.LANGUAGE
                                ASEADAL.LANGUAGE_INDICATION
                                ASEADAL.LOCAL_TIME
                                ASEADAL.LOCATION
                                ASEADAL.LOCATION_ASSIGNMENT
                                ASEADAL.LOCATION_RELATIONSHIP
                                ASEADAL.LOCATION_REPRESENTATION
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.MANAGED_RESOURCE_RELATIONSHIP
                                ASEADAL.MARKET
                                ASEADAL.NAME_ASSIGNMENT
                                ASEADAL.OBSERVATION
                                ASEADAL.OBSERVATION_CONSEQUENCE
                                ASEADAL.OBSERVATION_RELATIONSHIP
                                ASEADAL.ORGANIZATION
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                                ASEADAL.ORGANIZATION_ORGANIZATION_TYPE_RELATIONSHIP
                                ASEADAL.ORGANIZATION_RELATIONSHIP
                                ASEADAL.ORGANIZATION_TYPE
                                ASEADAL.ORGANIZATIONAL_LOCATION_IDENTIFICATION
                                ASEADAL.PERSON
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
                                ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
                                ASEADAL.POSITION
                                ASEADAL.POSITION_ASSIGNMENT
                                ASEADAL.POSITION_GROUP
                                ASEADAL.POSITION_GROUP_ASSIGNMENT
                                ASEADAL.POSITION_GROUP_RELATIONSHIP
                                ASEADAL.POSITION_GROUP_ROLE
                                ASEADAL.POSITION_POSITION_TYPE_ASSIGNMENT
                                ASEADAL.POSITION_RELATIONSHIP
                                ASEADAL.POSITION_ROLE
                                ASEADAL.POSITION_TYPE
                                ASEADAL.POSITION_TYPE_ASSIGNMENT
                                ASEADAL.POSITION_TYPE_ROLE
                                ASEADAL.PROBABILITY
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_CATEGORY
                                ASEADAL.PRODUCT_CATEGORY_ASSIGNMENT
                                ASEADAL.PRODUCT_CATEGORY_HIERARCHY
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP
                                ASEADAL.PRODUCT_DESIGN_TO_INDIVIDUAL
                                ASEADAL.PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_GROUP_MEMBERSHIP
                                ASEADAL.PRODUCT_GROUP_RELATIONSHIP
                                ASEADAL.PRODUCT_PLANNED_TO_REALIZED
                                ASEADAL.PRODUCT_RELATIONSHIP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VERSION_RELATIONSHIP
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.PROJECT_ASSIGNMENT
                                ASEADAL.PROJECT_RELATIONSHIP
                                ASEADAL.PROPERTY_DEFINITION_REPRESENTATION
                                ASEADAL.QUALIFICATION_ASSIGNMENT
                                ASEADAL.QUALIFICATION_TYPE
                                ASEADAL.QUALIFICATION_TYPE_RELATIONSHIP
                                ASEADAL.REGIONAL_COORDINATE
                                ASEADAL.RELATED_CONDITION_PARAMETER
                                ASEADAL.REPRESENTATION
                                ASEADAL.REPRESENTATION_CONTEXT
                                ASEADAL.REPRESENTATION_ITEM
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT
                                ASEADAL.REQUIRED_RESOURCE_RELATIONSHIP
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.REQUIREMENT_SOURCE
                                ASEADAL.RESOURCE_AS_REALIZED
                                ASEADAL.RESOURCE_AS_REALIZED_ASSIGNMENT
                                ASEADAL.RESOURCE_AS_REALIZED_RELATIONSHIP
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP
                                ASEADAL.RESOURCE_EVENT_RELATIONSHIP
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RESOURCE_ITEM_RELATIONSHIP
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.RESOURCE_PROPERTY_REPRESENTATION
                                ASEADAL.RISK
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_ASSESSMENT
                                ASEADAL.RISK_ATTITUDE
                                ASEADAL.RISK_COMMUNICATION
                                ASEADAL.RISK_CONSEQUENCE
                                ASEADAL.RISK_CONTEXT
                                ASEADAL.RISK_CONTROL
                                ASEADAL.RISK_ESTIMATION
                                ASEADAL.RISK_EVALUATION
                                ASEADAL.RISK_IDENTIFICATION
                                ASEADAL.RISK_OWNER_ASSIGNMENT
                                ASEADAL.RISK_PERCEPTION
                                ASEADAL.RISK_PERCEPTION_FORMATION
                                ASEADAL.RISK_PERCEPTION_RELATIONSHIP
                                ASEADAL.RISK_REDUCTION
                                ASEADAL.RISK_RELATIONSHIP
                                ASEADAL.RISK_STAKEHOLDER
                                ASEADAL.RISK_STATUS
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.SECURITY_CLASSIFICATION
                                ASEADAL.SECURITY_CLASSIFICATION_ASSIGNMENT
                                ASEADAL.SELECTED_ITEM_ASSIGNMENT
                                ASEADAL.SHAPE_ELEMENT_RELATIONSHIP
                                ASEADAL.STATE
                                ASEADAL.STATE_ASSERTION
                                ASEADAL.STATE_ASSESSMENT
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.STATE_DEFINITION_RELATIONSHIP
                                ASEADAL.STATE_DEFINITION_ROLE
                                ASEADAL.STATE_RELATIONSHIP
                                ASEADAL.STATE_ROLE
                                ASEADAL.TASK_ELEMENT_STATE_RELATIONSHIP
                                ASEADAL.TASK_IO_HIERARCHY
                                ASEADAL.TASK_METHOD_STATE_RELATIONSHIP
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.TASK_OBJECTIVE_STATE_RELATIONSHIP
                                ASEADAL.TIME_INTERVAL
                                ASEADAL.TIME_INTERVAL_ASSIGNMENT
                                ASEADAL.TIME_INTERVAL_RELATIONSHIP
                                ASEADAL.TIME_INTERVAL_ROLE
                                ASEADAL.TIME_OFFSET
                                ASEADAL.TYPE_OF_PERSON
                                ASEADAL.TYPE_OF_PERSON_ASSIGNMENT
                                ASEADAL.TYPE_OF_PERSON_DEFINITION
                                ASEADAL.TYPE_OF_PERSON_DEFINITION_RELATIONSHIP
                                ASEADAL.TYPE_OF_PERSON_DEFINITION_REQUIRED_ATTRIBUTES_RELATIONSHIP
                                ASEADAL.UNIT
                                ASEADAL.VALUE_WITH_UNIT
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VERIFICATION_RELATIONSHIP
                                ASEADAL.VIEW_DEFINITION_CONTEXT
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT
                                ASEADAL.WORK_OUTPUT_ASSIGNMENT
                                ASEADAL.WORK_OUTPUT_RELATIONSHIP
                                ASEADAL.WORK_REQUEST
                                ASEADAL.WORK_REQUEST_STATUS)))


(DEFTYPE-CLASS "ASEADAL.AFFECTED_ITEM_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.APPROVAL_ASSIGNMENT
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.BEHAVIOUR_DESCRIPTION_ASSOCIATION
                                ASEADAL.CERTIFICATION_ASSIGNMENT
                                ASEADAL.CONTRACT
                                ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_ASSIGNMENT
                                ASEADAL.DOCUMENT_DEFINITION
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.EVENT_ASSIGNMENT
                                ASEADAL.FILE
                                ASEADAL.INFORMATION_USAGE_RIGHT
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.JUSTIFICATION_ASSIGNMENT
                                ASEADAL.ORGANIZATION
                                ASEADAL.PERSON
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT_ASSIGNMENT
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.RISK
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.VERIFICATION
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.LESSONS_LEARNED_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (SAFE-FIND-EU-CLASS 'ASEADAL.DOCUMENTED_ELEMENT_SELECT))


(DEFTYPE-CLASS "ASEADAL.MITIGATION_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.APPLIED_PROBABILITY_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_SOURCE_ASSIGNMENT
                                ASEADAL.RISK
                                ASEADAL.RISK_CONSEQUENCE
                                ASEADAL.RISK_LEVEL
                                ASEADAL.RISK_PERCEPTION
                                ASEADAL.RISK_PERCEPTION_RELATIONSHIP
                                ASEADAL.RISK_RELATIONSHIP)))


(DEFTYPE-CLASS "ASEADAL.PROBABILITY_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.PROBABILITY
                                ASEADAL.PROBABILITY_DISTRIBUTION)))


(DEFTYPE-CLASS "ASEADAL.PROBABLE_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_RELATIONSHIP
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ACTIVITY_RELATIONSHIP
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_ASSIGNMENT
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.CONDITION
                                ASEADAL.CONDITION_EVALUATION_PARAMETER
                                ASEADAL.CONTRACT
                                ASEADAL.CONTRACT_ASSIGNMENT
                                ASEADAL.EVENT
                                ASEADAL.INDEPENDENT_PROPERTY
                                ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.MARKET
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.PROJECT_ASSIGNMENT
                                ASEADAL.REPRESENTATION
                                ASEADAL.REPRESENTATION_ITEM
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.STATE
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.STATE_DEFINITION_RELATIONSHIP
                                ASEADAL.STATE_RELATIONSHIP
                                ASEADAL.TASK_METHOD_STATE_RELATIONSHIP
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.TASK_OBJECTIVE_STATE_RELATIONSHIP
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VERIFICATION_RELATIONSHIP
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP)))


(DEFTYPE-CLASS "ASEADAL.RISK_COMMUNICATION_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.APPLIED_PROBABILITY_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_SOURCE_ASSIGNMENT
                                ASEADAL.LESSONS_LEARNED
                                ASEADAL.RISK
                                ASEADAL.RISK_ASSESSMENT
                                ASEADAL.RISK_CONSEQUENCE
                                ASEADAL.RISK_CONTEXT
                                ASEADAL.RISK_CONTROL
                                ASEADAL.RISK_CRITERIA
                                ASEADAL.RISK_ESTIMATION
                                ASEADAL.RISK_EVALUATION
                                ASEADAL.RISK_IDENTIFICATION
                                ASEADAL.RISK_PERCEPTION
                                ASEADAL.RISK_PERCEPTION_RELATIONSHIP
                                ASEADAL.RISK_STATUS
                                ASEADAL.RISK_TREATMENT)))


(DEFTYPE-CLASS "ASEADAL.RISK_ESTIMATION_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.APPLIED_PROBABILITY_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT
                                ASEADAL.RISK_CONSEQUENCE)))


(DEFTYPE-CLASS "ASEADAL.RISK_EVALUATION_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.RISK_LEVEL
                                ASEADAL.RISK_PERCEPTION)))


(DEFTYPE-CLASS "ASEADAL.RISK_IDENTIFICATION_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_SOURCE_ASSIGNMENT
                                ASEADAL.RISK
                                ASEADAL.RISK_CONSEQUENCE
                                ASEADAL.RISK_CRITERIA
                                ASEADAL.RISK_PERCEPTION)))


(DEFTYPE-CLASS "ASEADAL.RISK_IMPACT_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ACTIVITY_RELATIONSHIP
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_ASSIGNMENT
                                ASEADAL.APPROVAL
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.BREAKDOWN_CONTEXT
                                ASEADAL.BREAKDOWN_OF
                                ASEADAL.CONDITION
                                ASEADAL.DEFINED_STATE_RELATIONSHIP
                                ASEADAL.EVENT
                                ASEADAL.EVENT_RELATIONSHIP
                                ASEADAL.INDEPENDENT_PROPERTY
                                ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.ISSUE
                                ASEADAL.ISSUE_CONSEQUENCE
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.MANAGED_RESOURCE_RELATIONSHIP
                                ASEADAL.MARKET
                                ASEADAL.ORGANIZATION
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                                ASEADAL.PERSON
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VERSION_RELATIONSHIP
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.PROJECT_ASSIGNMENT
                                ASEADAL.REPRESENTATION
                                ASEADAL.REPRESENTATION_ITEM
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.REQUIREMENT_SOURCE
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RESOURCE_ITEM_RELATIONSHIP
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.STATE
                                ASEADAL.STATE_ASSERTION
                                ASEADAL.STATE_ASSESSMENT
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.STATE_DEFINITION_RELATIONSHIP
                                ASEADAL.STATE_RELATIONSHIP
                                ASEADAL.TASK_METHOD_STATE_RELATIONSHIP
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.TASK_OBJECTIVE_STATE_RELATIONSHIP
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VERIFICATION_RELATIONSHIP
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP)))


(DEFTYPE-CLASS "ASEADAL.RISK_SOURCE_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ACTIVITY_RELATIONSHIP
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.APPLIED_STATE_ASSIGNMENT
                                ASEADAL.APPROVAL
                                ASEADAL.APPROVING_PERSON_ORGANIZATION
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.BREAKDOWN_CONTEXT
                                ASEADAL.BREAKDOWN_OF
                                ASEADAL.CERTIFICATION_ASSIGNMENT
                                ASEADAL.CONDITION
                                ASEADAL.CONDITION_EVALUATION_PARAMETER
                                ASEADAL.CONTRACT
                                ASEADAL.CONTRACT_ASSIGNMENT
                                ASEADAL.DEFINED_STATE_RELATIONSHIP
                                ASEADAL.DOCUMENT_ASSIGNMENT
                                ASEADAL.EFFECTIVITY_ASSIGNMENT
                                ASEADAL.EVENT
                                ASEADAL.EVENT_ASSIGNMENT
                                ASEADAL.EVENT_RELATIONSHIP
                                ASEADAL.EXPERIENCE_GAINED
                                ASEADAL.EXPERIENCE_INSTANCE
                                ASEADAL.EXPRESSION_ASSIGNMENT
                                ASEADAL.FILE
                                ASEADAL.GENERIC_EXPRESSION
                                ASEADAL.INDEPENDENT_PROPERTY
                                ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP
                                ASEADAL.INFORMATION_RIGHT
                                ASEADAL.INFORMATION_USAGE_RIGHT
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.JUSTIFICATION
                                ASEADAL.JUSTIFICATION_ASSIGNMENT
                                ASEADAL.JUSTIFICATION_RELATIONSHIP
                                ASEADAL.JUSTIFICATION_SUPPORT_ASSIGNMENT
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.MANAGED_RESOURCE_RELATIONSHIP
                                ASEADAL.MARKET
                                ASEADAL.OBSERVATION
                                ASEADAL.OBSERVATION_CONSEQUENCE
                                ASEADAL.OBSERVATION_RELATIONSHIP
                                ASEADAL.ORGANIZATION
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                                ASEADAL.PERSON
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
                                ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
                                ASEADAL.POSITION
                                ASEADAL.POSITION_ASSIGNMENT
                                ASEADAL.POSITION_GROUP
                                ASEADAL.POSITION_GROUP_ASSIGNMENT
                                ASEADAL.POSITION_GROUP_RELATIONSHIP
                                ASEADAL.POSITION_POSITION_TYPE_ASSIGNMENT
                                ASEADAL.POSITION_RELATIONSHIP
                                ASEADAL.POSITION_ROLE
                                ASEADAL.POSITION_TYPE
                                ASEADAL.POSITION_TYPE_ASSIGNMENT
                                ASEADAL.POSITION_TYPE_ROLE
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_DESIGN_TO_INDIVIDUAL
                                ASEADAL.PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_GROUP_RELATIONSHIP
                                ASEADAL.PRODUCT_PLANNED_TO_REALIZED
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VERSION_RELATIONSHIP
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.PROJECT_ASSIGNMENT
                                ASEADAL.PROJECT_RELATIONSHIP
                                ASEADAL.QUALIFICATION_ASSIGNMENT
                                ASEADAL.QUALIFICATION_TYPE
                                ASEADAL.REPRESENTATION
                                ASEADAL.REPRESENTATION_ITEM
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.REQUIREMENT_SOURCE
                                ASEADAL.RESOURCE_AS_REALIZED
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RESOURCE_ITEM_RELATIONSHIP
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.SELECTED_ITEM
                                ASEADAL.SELECTED_ITEM_ASSIGNMENT
                                ASEADAL.STATE
                                ASEADAL.STATE_ASSERTION
                                ASEADAL.STATE_ASSESSMENT
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.STATE_DEFINITION_RELATIONSHIP
                                ASEADAL.STATE_RELATIONSHIP
                                ASEADAL.TASK_METHOD_STATE_RELATIONSHIP
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.TASK_OBJECTIVE_STATE_RELATIONSHIP
                                ASEADAL.TYPE_OF_PERSON
                                ASEADAL.TYPE_OF_PERSON_ASSIGNMENT
                                ASEADAL.TYPE_OF_PERSON_DEFINITION
                                ASEADAL.TYPE_OF_PERSON_DEFINITION_RELATIONSHIP
                                ASEADAL.TYPE_OF_PERSON_DEFINITION_REQUIRED_ATTRIBUTES_RELATIONSHIP
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VERIFICATION_RELATIONSHIP
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT
                                ASEADAL.WORK_OUTPUT_ASSIGNMENT)))


(DEFTYPE-CLASS "ASEADAL.ANALISED_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                                ASEADAL.ACTIVITY_METHOD_RELATIONSHIP
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ACTIVITY_RELATIONSHIP
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.BEHAVIOUR_DESCRIPTION_ASSOCIATION
                                ASEADAL.BEHAVIOUR_ITEM
                                ASEADAL.BEHAVIOUR_MODEL
                                ASEADAL.CONDITION
                                ASEADAL.CONDITION_RELATIONSHIP
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.LESSONS_LEARNED
                                ASEADAL.MANAGED_RESOURCE_RELATIONSHIP
                                ASEADAL.OBSERVATION
                                ASEADAL.OBSERVATION_CONSEQUENCE
                                ASEADAL.OBSERVATION_ITEM
                                ASEADAL.OBSERVATION_RELATIONSHIP
                                ASEADAL.ORGANIZATION
                                ASEADAL.ORGANIZATION_RELATIONSHIP
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_DESIGN_TO_INDIVIDUAL
                                ASEADAL.PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL
                                ASEADAL.PRODUCT_GROUP_RELATIONSHIP
                                ASEADAL.PRODUCT_PLANNED_TO_REALIZED
                                ASEADAL.PRODUCT_RELATIONSHIP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VERSION_RELATIONSHIP
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT_RELATIONSHIP
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.RESOURCE_EVENT_RELATIONSHIP
                                ASEADAL.RESOURCE_ITEM_RELATIONSHIP
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_ASSESSMENT
                                ASEADAL.RISK_CONSEQUENCE
                                ASEADAL.RISK_CONTROL
                                ASEADAL.RISK_CRITERIA
                                ASEADAL.RISK_ESTIMATION
                                ASEADAL.RISK_EVALUATION
                                ASEADAL.RISK_PERCEPTION_RELATIONSHIP
                                ASEADAL.RISK_REDUCTION
                                ASEADAL.RISK_RELATIONSHIP
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.STATE
                                ASEADAL.STATE_ASSESSMENT
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.STATE_ROLE
                                ASEADAL.TASK_IO
                                ASEADAL.TASK_METHOD
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VERIFICATION_RELATIONSHIP
                                ASEADAL.VIEW_DEFINITION_CONTEXT
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_OUTPUT_ASSIGNMENT
                                ASEADAL.WORK_OUTPUT_RELATIONSHIP)))


(DEFTYPE-CLASS "ASEADAL.JUSTIFICATION_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.ACTIVITY_METHOD_REALIZATION
                                ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                                ASEADAL.ACTIVITY_METHOD_RELATIONSHIP
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.AFFECTED_ITEMS_ASSIGNMENT
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPLIED_INFORMATION_USAGE_RIGHT
                                ASEADAL.APPROVAL
                                ASEADAL.APPROVAL_ASSIGNMENT
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.BEHAVIOUR_DESCRIPTION_ASSOCIATION
                                ASEADAL.BREAKDOWN
                                ASEADAL.BREAKDOWN_OF
                                ASEADAL.CERTIFICATION
                                ASEADAL.CLASSIFICATION_ASSIGNMENT
                                ASEADAL.CONDITION
                                ASEADAL.CONTRACT
                                ASEADAL.DESCRIPTION_TEXT
                                ASEADAL.DESCRIPTIVE_DOCUMENT_PROPERTY
                                ASEADAL.DIRECTED_ACTIVITY
                                ASEADAL.DOCUMENT_ASSIGNMENT
                                ASEADAL.DOCUMENT_DEFINITION
                                ASEADAL.DOCUMENT_DEFINITION_RELATIONSHIP
                                ASEADAL.EFFECTIVITY
                                ASEADAL.FILE_RELATIONSHIP
                                ASEADAL.INDEPENDENT_PROPERTY
                                ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP
                                ASEADAL.INFORMATION_USAGE_RIGHT
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.ISSUE
                                ASEADAL.LOCATION_ASSIGNMENT
                                ASEADAL.MANAGED_RESOURCE_RELATIONSHIP
                                ASEADAL.NUMERICAL_DOCUMENT_PROPERTY
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VERSION_RELATIONSHIP
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT_ASSIGNMENT
                                ASEADAL.QUALIFICATION_TYPE
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT
                                ASEADAL.REQUIRED_RESOURCE_RELATIONSHIP
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.RESOURCE_AS_REALIZED
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RESOURCE_ITEM_RELATIONSHIP
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.RISK
                                ASEADAL.RISK_REDUCTION
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.SECURITY_CLASSIFICATION
                                ASEADAL.STATE_ASSERTION
                                ASEADAL.STATE_ASSESSMENT
                                ASEADAL.TASK_ELEMENT
                                ASEADAL.TASK_ELEMENT_RELATIONSHIP
                                ASEADAL.TASK_ELEMENT_STATE_RELATIONSHIP
                                ASEADAL.TASK_IO
                                ASEADAL.TASK_IO_HIERARCHY
                                ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_ASSIGNMENT
                                ASEADAL.TASK_METHOD_RELATIONSHIP
                                ASEADAL.TASK_METHOD_STATE_RELATIONSHIP
                                ASEADAL.TASK_METHOD_VERSION
                                ASEADAL.TASK_METHOD_VERSION_ASSIGNMENT
                                ASEADAL.TASK_METHOD_VERSION_RELATIONSHIP
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.TASK_OBJECTIVE_STATE_RELATIONSHIP
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT_ASSIGNMENT
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.JUSTIFICATION_SUPPORT_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_DEFINITION_ASSIGNMENT
                                ASEADAL.APPROVAL
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.CERTIFICATION
                                ASEADAL.CONTRACT
                                ASEADAL.DESCRIPTIVE_DOCUMENT_PROPERTY
                                ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_DEFINITION
                                ASEADAL.DOCUMENT_DEFINITION_RELATIONSHIP
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.EFFECTIVITY
                                ASEADAL.EVENT
                                ASEADAL.FILE_RELATIONSHIP
                                ASEADAL.INDEPENDENT_PROPERTY
                                ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.LOCATION
                                ASEADAL.LOCATION_ASSIGNMENT
                                ASEADAL.NUMERICAL_DOCUMENT_PROPERTY
                                ASEADAL.OBSERVATION
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VERSION_RELATIONSHIP
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_CONSEQUENCE
                                ASEADAL.RISK_STAKEHOLDER
                                ASEADAL.STATE
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.STATE_RELATIONSHIP
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VIEW_DEFINITION_CONTEXT
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.MAXIMIZE_OR_MINIMIZE"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'ENUM-TYP
                              :ENUMERATION-LIST
                              '(MAXIMIZE MINIMIZE)))


(DEFTYPE-CLASS "ASEADAL.VERIFICATION_EVIDENCE_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY_ACTUAL
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.ACTIVITY_METHOD_RELATIONSHIP
                                ASEADAL.ACTIVITY_RELATIONSHIP
                                ASEADAL.ACTIVITY_STATUS
                                ASEADAL.AFFECTED_ITEMS_ASSIGNMENT
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.ANALYSIS_VERSION
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPLIED_INDEPENDENT_PROPERTY
                                ASEADAL.APPLIED_INFORMATION_USAGE_RIGHT
                                ASEADAL.APPLIED_STATE_ASSIGNMENT
                                ASEADAL.APPROVAL_ASSIGNMENT
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.BEHAVIOUR_DESCRIPTION_ASSOCIATION
                                ASEADAL.BEHAVIOUR_MODEL
                                ASEADAL.BREAKDOWN_OF
                                ASEADAL.CERTIFICATION_ASSIGNMENT
                                ASEADAL.CLASSIFICATION_ASSIGNMENT
                                ASEADAL.CONDITION_ASSIGNMENT
                                ASEADAL.CONDITION_EVALUATION_ASSIGNMENT
                                ASEADAL.CONDITION_EVALUATION_PARAMETER
                                ASEADAL.CONTRACT_ASSIGNMENT
                                ASEADAL.DATE_OR_DATE_TIME_ASSIGNMENT
                                ASEADAL.DEFINED_STATE_RELATIONSHIP
                                ASEADAL.DESCRIPTION_TEXT_ASSIGNMENT
                                ASEADAL.DIRECTED_ACTIVITY
                                ASEADAL.EFFECTIVITY_ASSIGNMENT
                                ASEADAL.EVENT_ASSIGNMENT
                                ASEADAL.EXPRESSION_ASSIGNMENT
                                ASEADAL.INTERFACE_CONNECTOR_DEFINITION
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.JUSTIFICATION_ASSIGNMENT
                                ASEADAL.JUSTIFICATION_RELATIONSHIP
                                ASEADAL.JUSTIFICATION_SUPPORT_ASSIGNMENT
                                ASEADAL.LOCATION_ASSIGNMENT
                                ASEADAL.OBSERVATION
                                ASEADAL.OBSERVATION_CONSEQUENCE
                                ASEADAL.OBSERVATION_RELATIONSHIP
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                                ASEADAL.PERSON
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_DESIGN_TO_INDIVIDUAL
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VERSION_RELATIONSHIP
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT_ASSIGNMENT
                                ASEADAL.REPRESENTATION
                                ASEADAL.REPRESENTATION_CONTEXT
                                ASEADAL.REPRESENTATION_ITEM
                                ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT
                                ASEADAL.RESOURCE_AS_REALIZED_ASSIGNMENT
                                ASEADAL.RESOURCE_AS_REALIZED_RELATIONSHIP
                                ASEADAL.RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP
                                ASEADAL.RESOURCE_EVENT_RELATIONSHIP
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_COMMUNICATION
                                ASEADAL.RISK_CONSEQUENCE
                                ASEADAL.RISK_CRITERIA
                                ASEADAL.RISK_ESTIMATION
                                ASEADAL.RISK_EVALUATION
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.SECURITY_CLASSIFICATION_ASSIGNMENT
                                ASEADAL.STATE
                                ASEADAL.STATE_ASSERTION
                                ASEADAL.STATE_ASSESSMENT
                                ASEADAL.STATE_RELATIONSHIP
                                ASEADAL.TASK_IO_HIERARCHY
                                ASEADAL.TASK_OBJECTIVE_STATE_RELATIONSHIP
                                ASEADAL.TIME_INTERVAL_ASSIGNMENT
                                ASEADAL.TYPE_OF_PERSON_ASSIGNMENT
                                ASEADAL.VIEW_DEFINITION_CONTEXT
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT_ASSIGNMENT
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.CONNECTION_DEFINITION_ITEMS"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.INTERFACE_CONNECTOR_DEFINITION
                                ASEADAL.PRODUCT_VIEW_DEFINITION)))


(DEFTYPE-CLASS "ASEADAL.CONNECTION_ITEMS"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.CONNECTION_DEFINITION_ITEMS
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP)))


(DEFTYPE-CLASS "ASEADAL.CONNECTOR_ON_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP)))


(DEFTYPE-CLASS "ASEADAL.INTERFACE_DEFINITION_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.PRODUCT_VIEW_DEFINITION)))


(DEFTYPE-CLASS "ASEADAL.IN_ZONE_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.HIERARCHICAL_INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.PRODUCT_VIEW_DEFINITION)))


(DEFTYPE-CLASS "ASEADAL.OBSERVATION_RECORDER"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.PERSON
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.PRODUCT_AS_REALIZED
                                ASEADAL.TYPE_OF_PERSON_ASSIGNMENT)))


(DEFTYPE-CLASS "ASEADAL.OBSERVED_CONTEXT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_SOURCE_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_DEFINITION_ASSIGNMENT
                                ASEADAL.APPROVAL_ASSIGNMENT
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.BEHAVIOUR_DESCRIPTION_ASSOCIATION
                                ASEADAL.CERTIFICATION_ASSIGNMENT
                                ASEADAL.CONDITION_ASSIGNMENT
                                ASEADAL.CONDITION_EVALUATION_ASSIGNMENT
                                ASEADAL.CONTRACT_ASSIGNMENT
                                ASEADAL.DOCUMENT_ASSIGNMENT
                                ASEADAL.EFFECTIVITY_ASSIGNMENT
                                ASEADAL.EVENT_ASSIGNMENT
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.ISSUE
                                ASEADAL.JUSTIFICATION_ASSIGNMENT
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.OBSERVATION_CONSEQUENCE
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_DESIGN_TO_INDIVIDUAL
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_PLANNED_TO_REALIZED
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VERSION_RELATIONSHIP
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.PROJECT_ASSIGNMENT
                                ASEADAL.PROPERTY_REPRESENTATION
                                ASEADAL.RELATED_CONDITION_PARAMETER
                                ASEADAL.REPRESENTATION
                                ASEADAL.REPRESENTATION_ITEM
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.RESOURCE_AS_REALIZED
                                ASEADAL.RESOURCE_AS_REALIZED_ASSIGNMENT
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.RISK
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_ASSESSMENT
                                ASEADAL.RISK_ATTITUDE
                                ASEADAL.RISK_CONSEQUENCE
                                ASEADAL.RISK_CONTROL
                                ASEADAL.RISK_ESTIMATION
                                ASEADAL.RISK_EVALUATION
                                ASEADAL.RISK_OBJECTIVE
                                ASEADAL.RISK_PERCEPTION
                                ASEADAL.RISK_REDUCTION
                                ASEADAL.RISK_STATUS
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.SCHEME
                                ASEADAL.SCHEME_ENTRY
                                ASEADAL.SCHEME_VERSION
                                ASEADAL.SECURITY_CLASSIFICATION_ASSIGNMENT
                                ASEADAL.STATE
                                ASEADAL.STATE_ASSERTION
                                ASEADAL.STATE_ASSESSMENT
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.STATE_DEFINITION_RELATIONSHIP
                                ASEADAL.STATE_RELATIONSHIP
                                ASEADAL.STATE_ROLE
                                ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_VERSION
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.CLASSIFICATION_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.ACTIVITY_METHOD_REALIZATION
                                ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                                ASEADAL.ACTIVITY_METHOD_RELATIONSHIP
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ACTIVITY_PROPERTY_REPRESENTATION
                                ASEADAL.ACTIVITY_RELATIONSHIP
                                ASEADAL.ACTIVITY_STATUS
                                ASEADAL.ADDRESS
                                ASEADAL.ADDRESS_ASSIGNMENT
                                ASEADAL.AFFECTED_ITEMS_ASSIGNMENT
                                ASEADAL.ALTERNATE_PART_RELATIONSHIP
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.ANALYSIS
                                ASEADAL.ANALYSIS_DISCIPLINE_DEFINITION
                                ASEADAL.ANALYSIS_VERSION
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPLIED_INFORMATION_USAGE_RIGHT
                                ASEADAL.APPLIED_PROBABILITY_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_DEFINITION_ASSIGNMENT
                                ASEADAL.APPROVAL
                                ASEADAL.APPROVAL_ASSIGNMENT
                                ASEADAL.APPROVAL_RELATIONSHIP
                                ASEADAL.APPROVAL_STATUS
                                ASEADAL.APPROVING_PERSON_ORGANIZATION
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.ATTRIBUTE_TRANSLATION_ASSIGNMENT
                                ASEADAL.BEHAVIOUR
                                ASEADAL.BEHAVIOUR_VIEW_DEFINITION
                                ASEADAL.BREAKDOWN
                                ASEADAL.BREAKDOWN_CONTEXT
                                ASEADAL.BREAKDOWN_ELEMENT
                                ASEADAL.BREAKDOWN_ELEMENT_REALIZATION
                                ASEADAL.BREAKDOWN_ELEMENT_USAGE
                                ASEADAL.BREAKDOWN_ELEMENT_VERSION
                                ASEADAL.BREAKDOWN_OF
                                ASEADAL.CALENDAR_DATE
                                ASEADAL.CERTIFICATION
                                ASEADAL.CERTIFICATION_ASSIGNMENT
                                ASEADAL.CHARACTERIZABLE_OBJECT
                                ASEADAL.CLASS
                                ASEADAL.CONDITION
                                ASEADAL.CONDITION_ASSIGNMENT
                                ASEADAL.CONDITION_EVALUATION
                                ASEADAL.CONDITION_EVALUATION_ASSIGNMENT
                                ASEADAL.CONDITION_EVALUATION_PARAMETER
                                ASEADAL.CONDITION_PARAMETER
                                ASEADAL.CONDITION_RELATIONSHIP
                                ASEADAL.CONSTRAINED_GENERAL_PARAMETER_RELATIONSHIP
                                ASEADAL.CONTEXT_DEPENDENT_UNIT
                                ASEADAL.CONTRACT
                                ASEADAL.CONTRACT_ASSIGNMENT
                                ASEADAL.CONVERSION_BASED_UNIT
                                ASEADAL.DATE_OR_DATE_TIME_ASSIGNMENT
                                ASEADAL.DATE_TIME
                                ASEADAL.DEFINED_STATE_RELATIONSHIP
                                ASEADAL.DERIVED_UNIT
                                ASEADAL.DESCRIPTION_TEXT
                                ASEADAL.DESCRIPTION_TEXT_ASSIGNMENT
                                ASEADAL.DIGITAL_DOCUMENT_DEFINITION
                                ASEADAL.DIGITAL_FILE
                                ASEADAL.DIRECTED_ACTIVITY
                                ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_ASSIGNMENT
                                ASEADAL.DOCUMENT_LOCATION_IDENTIFICATION
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.EFFECTIVITY
                                ASEADAL.EFFECTIVITY_ASSIGNMENT
                                ASEADAL.EFFECTIVITY_RELATIONSHIP
                                ASEADAL.EVENT
                                ASEADAL.EVENT_ASSIGNMENT
                                ASEADAL.EVENT_RELATIONSHIP
                                ASEADAL.EXPERIENCE_GAINED
                                ASEADAL.EXPERIENCE_INSTANCE
                                ASEADAL.EXPERIENCE_TYPE
                                ASEADAL.EXTERNAL_CLASS_LIBRARY
                                ASEADAL.EXTERNAL_ITEM_IDENTIFICATION
                                ASEADAL.EXTERNAL_SOURCE_IDENTIFICATION
                                ASEADAL.FILE
                                ASEADAL.FILE_LOCATION_IDENTIFICATION
                                ASEADAL.FILE_RELATIONSHIP
                                ASEADAL.GENERAL_MODEL_PARAMETER
                                ASEADAL.HARDCOPY
                                ASEADAL.IDENTIFICATION_ASSIGNMENT
                                ASEADAL.IN_ZONE
                                ASEADAL.INDEPENDENT_PROPERTY
                                ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP
                                ASEADAL.INDEPENDENT_PROPERTY_REPRESENTATION
                                ASEADAL.INFORMATION_RIGHT
                                ASEADAL.INFORMATION_USAGE_RIGHT
                                ASEADAL.INFORMATION_USAGE_RIGHT_RELATIONSHIP
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR
                                ASEADAL.INTERFACE_CONNECTOR_DEFINITION
                                ASEADAL.INTERFACE_CONNECTOR_VERSION
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.INTERFACE_SPECIFICATION
                                ASEADAL.INTERFACE_SPECIFICATION_DEFINITION
                                ASEADAL.INTERFACE_SPECIFICATION_VERSION
                                ASEADAL.ITEM_SHAPE
                                ASEADAL.ITEM_USAGE_EFFECTIVITY
                                ASEADAL.JUSTIFICATION
                                ASEADAL.JUSTIFICATION_ASSIGNMENT
                                ASEADAL.JUSTIFICATION_RELATIONSHIP
                                ASEADAL.JUSTIFICATION_SUPPORT_ASSIGNMENT
                                ASEADAL.LANGUAGE
                                ASEADAL.LANGUAGE_INDICATION
                                ASEADAL.LOCAL_TIME
                                ASEADAL.LOCATION
                                ASEADAL.LOCATION_ASSIGNMENT
                                ASEADAL.LOCATION_RELATIONSHIP
                                ASEADAL.LOCATION_REPRESENTATION
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.MANAGED_RESOURCE_RELATIONSHIP
                                ASEADAL.MARKET
                                ASEADAL.NUMERICAL_ITEM_WITH_UNIT
                                ASEADAL.OBSERVATION
                                ASEADAL.OBSERVATION_CONSEQUENCE
                                ASEADAL.OBSERVATION_ITEM
                                ASEADAL.OBSERVATION_RELATIONSHIP
                                ASEADAL.ORGANIZATION
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                                ASEADAL.ORGANIZATION_RELATIONSHIP
                                ASEADAL.ORGANIZATION_TYPE
                                ASEADAL.ORGANIZATIONAL_LOCATION_IDENTIFICATION
                                ASEADAL.PARAMETER_VALUE_REPRESENTATION_ITEM
                                ASEADAL.PART
                                ASEADAL.PART_VERSION
                                ASEADAL.PART_VIEW_DEFINITION
                                ASEADAL.PARTIAL_DOCUMENT_ASSIGNMENT
                                ASEADAL.PERSON
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
                                ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
                                ASEADAL.PHYSICAL_DOCUMENT_DEFINITION
                                ASEADAL.POSITION
                                ASEADAL.POSITION_ASSIGNMENT
                                ASEADAL.POSITION_GROUP
                                ASEADAL.POSITION_GROUP_ASSIGNMENT
                                ASEADAL.POSITION_GROUP_RELATIONSHIP
                                ASEADAL.POSITION_POSITION_TYPE_ASSIGNMENT
                                ASEADAL.POSITION_RELATIONSHIP
                                ASEADAL.POSITION_TYPE
                                ASEADAL.POSITION_TYPE_ASSIGNMENT
                                ASEADAL.PROBABILITY_DISTRIBUTION
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_AS_PLANNED
                                ASEADAL.PRODUCT_AS_REALIZED
                                ASEADAL.PRODUCT_CATEGORY
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_DESIGN_TO_INDIVIDUAL
                                ASEADAL.PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_GROUP_RELATIONSHIP
                                ASEADAL.PRODUCT_PLANNED_TO_REALIZED
                                ASEADAL.PRODUCT_RELATIONSHIP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VERSION_RELATIONSHIP
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.PROJECT_ASSIGNMENT
                                ASEADAL.PROJECT_RELATIONSHIP
                                ASEADAL.PROPERTY_REPRESENTATION
                                ASEADAL.QUALIFICATION_ASSIGNMENT
                                ASEADAL.QUALIFICATION_TYPE
                                ASEADAL.QUALIFICATION_TYPE_RELATIONSHIP
                                ASEADAL.REGIONAL_COORDINATE
                                ASEADAL.RELATED_CONDITION_PARAMETER
                                ASEADAL.REPRESENTATION
                                ASEADAL.REPRESENTATION_CONTEXT
                                ASEADAL.REPRESENTATION_ITEM
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT
                                ASEADAL.REQUIRED_RESOURCE_RELATIONSHIP
                                ASEADAL.REQUIREMENT
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.REQUIREMENT_COLLECTION_RELATIONSHIP
                                ASEADAL.REQUIREMENT_SOURCE
                                ASEADAL.REQUIREMENT_VERSION
                                ASEADAL.REQUIREMENT_VERSION_RELATIONSHIP
                                ASEADAL.REQUIREMENT_VIEW_DEFINITION
                                ASEADAL.RESOURCE_AS_REALIZED
                                ASEADAL.RESOURCE_AS_REALIZED_ASSIGNMENT
                                ASEADAL.RESOURCE_AS_REALIZED_RELATIONSHIP
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP
                                ASEADAL.RESOURCE_EVENT_RELATIONSHIP
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RESOURCE_ITEM_RELATIONSHIP
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.RESOURCE_PROPERTY_REPRESENTATION
                                ASEADAL.RISK
                                ASEADAL.RISK_CONSEQUENCE
                                ASEADAL.RISK_PERCEPTION
                                ASEADAL.RISK_PERCEPTION_RELATIONSHIP
                                ASEADAL.RISK_RELATIONSHIP
                                ASEADAL.RISK_STAKEHOLDER
                                ASEADAL.SECURITY_CLASSIFICATION
                                ASEADAL.SECURITY_CLASSIFICATION_ASSIGNMENT
                                ASEADAL.SELECTED_ITEM
                                ASEADAL.SELECTED_ITEM_ASSIGNMENT
                                ASEADAL.STATE
                                ASEADAL.STATE_ASSERTION
                                ASEADAL.STATE_ASSESSMENT
                                ASEADAL.STATE_BASED_BEHAVIOUR_MODEL
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.STATE_DEFINITION_RELATIONSHIP
                                ASEADAL.STATE_RELATIONSHIP
                                ASEADAL.STRING_REPRESENTATION_ITEM
                                ASEADAL.SUPPLIED_PART_RELATIONSHIP
                                ASEADAL.TASK_ELEMENT_STATE_RELATIONSHIP
                                ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_STATE_RELATIONSHIP
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.TASK_OBJECTIVE_STATE_RELATIONSHIP
                                ASEADAL.TEXT_BASED_REPRESENTATION
                                ASEADAL.TIME_INTERVAL_RELATIONSHIP
                                ASEADAL.TRACING_RELATIONSHIP
                                ASEADAL.TYPE_OF_PERSON
                                ASEADAL.TYPE_OF_PERSON_ASSIGNMENT
                                ASEADAL.TYPE_OF_PERSON_DEFINITION
                                ASEADAL.TYPE_OF_PERSON_DEFINITION_RELATIONSHIP
                                ASEADAL.TYPE_OF_PERSON_DEFINITION_REQUIRED_ATTRIBUTES_RELATIONSHIP
                                ASEADAL.UNCERTAINTY_WITH_UNIT
                                ASEADAL.UNIT
                                ASEADAL.VALUE_WITH_UNIT
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VIEW_DEFINITION_CONTEXT
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT
                                ASEADAL.WORK_OUTPUT_ASSIGNMENT
                                ASEADAL.WORK_OUTPUT_RELATIONSHIP
                                ASEADAL.WORK_REQUEST
                                ASEADAL.WORK_REQUEST_STATUS)))


(DEFTYPE-CLASS "ASEADAL.VERSION_OR_DEFINITION"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION)))


(DEFTYPE-CLASS "ASEADAL.POSITION_CONTEXT_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ORGANIZATION
                                ASEADAL.POSITION_GROUP
                                ASEADAL.PROJECT)))


(DEFTYPE-CLASS "ASEADAL.POSITION_GROUP_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.APPROVING_PERSON_ORGANIZATION
                                ASEADAL.DOCUMENT_DEFINITION
                                ASEADAL.EVENT
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.LOCATION
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_CATEGORY
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.STATE
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT_ASSIGNMENT
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.POSITION_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.APPROVING_PERSON_ORGANIZATION
                                ASEADAL.DOCUMENT_DEFINITION
                                ASEADAL.EVENT
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.LOCATION
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_CATEGORY
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.STATE
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT_ASSIGNMENT
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.POSITION_PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ORGANIZATION
                                ASEADAL.PERSON
                                ASEADAL.PERSON_IN_ORGANIZATION)))


(DEFTYPE-CLASS "ASEADAL.POSITION_TYPE_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.PERSON_IN_ORGANIZATION)))


(DEFTYPE-CLASS "ASEADAL.PROJECT_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_REALIZATION
                                ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                                ASEADAL.ACTIVITY_METHOD_RELATIONSHIP
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_SOURCE_ASSIGNMENT
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.BREAKDOWN
                                ASEADAL.INDEPENDENT_PROPERTY
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.LESSONS_LEARNED
                                ASEADAL.PERSON_IN_ORGANIZATION_STAKEHOLDER
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_GROUP_MEMBERSHIP
                                ASEADAL.PRODUCT_GROUP_RELATIONSHIP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.REPRESENTATION
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_COMMUNICATION
                                ASEADAL.RISK_CONTROL
                                ASEADAL.RISK_EVALUATION
                                ASEADAL.RISK_IDENTIFICATION
                                ASEADAL.RISK_OBJECTIVE
                                ASEADAL.RISK_REDUCTION
                                ASEADAL.RISK_RELATIONSHIP
                                ASEADAL.RISK_STAKEHOLDER
                                ASEADAL.TASK_ELEMENT
                                ASEADAL.TASK_IO
                                ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_ASSIGNMENT
                                ASEADAL.TASK_METHOD_VERSION
                                ASEADAL.TASK_METHOD_VERSION_ASSIGNMENT
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP)))


(DEFTYPE-CLASS "ASEADAL.DEFINED_ATTRIBUTES"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.EXPERIENCE_TYPE
                                ASEADAL.POSITION_GROUP
                                ASEADAL.POSITION_GROUP_ROLE
                                ASEADAL.POSITION_ROLE
                                ASEADAL.POSITION_TYPE_ROLE
                                ASEADAL.QUALIFICATION_TYPE
                                ASEADAL.RISK_STAKEHOLDER
                                ASEADAL.TYPE_OF_PERSON_ASSIGNMENT
                                ASEADAL.WORK_OUTPUT_ASSIGNMENT)))


(DEFTYPE-CLASS "ASEADAL.TYPE_OF_PERSON_ITEM_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT
                                ASEADAL.BEHAVIOUR_DESCRIPTION_ASSOCIATION
                                ASEADAL.BEHAVIOUR_MODEL
                                ASEADAL.DOCUMENT_ASSIGNMENT
                                ASEADAL.EXPERIENCE_GAINED
                                ASEADAL.EXPERIENCE_INSTANCE
                                ASEADAL.EXPERIENCE_TYPE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.OBSERVATION_CONSEQUENCE
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.POSITION
                                ASEADAL.POSITION_GROUP
                                ASEADAL.POSITION_TYPE
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PROJECT
                                ASEADAL.PROJECT_ASSIGNMENT
                                ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT_ASSIGNMENT
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.BREAKDOWN_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.BREAKDOWN_ELEMENT_DEFINITION
                                ASEADAL.BREAKDOWN_ELEMENT_USAGE)))


(DEFTYPE-CLASS "ASEADAL.PRODUCT_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.VIEW_DEFINITION_USAGE)))


(DEFTYPE-CLASS "ASEADAL.PRODUCT_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_AS_INDIVIDUAL
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_VERSION)))


(DEFTYPE-CLASS "ASEADAL.ACTIVITY_REALIZATION_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.SCHEME
                                ASEADAL.SCHEME_VERSION
                                ASEADAL.TASK_ELEMENT
                                ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_VERSION)))


(DEFTYPE-CLASS "ASEADAL.CLASSIFIED_ATTRIBUTE_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ACTIVITY_PROPERTY_REPRESENTATION
                                ASEADAL.ACTIVITY_RELATIONSHIP
                                ASEADAL.ADDRESS_ASSIGNMENT
                                ASEADAL.AFFECTED_ITEMS_ASSIGNMENT
                                ASEADAL.ALTERNATE_PART_RELATIONSHIP
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPROVAL
                                ASEADAL.APPROVAL_ASSIGNMENT
                                ASEADAL.APPROVAL_RELATIONSHIP
                                ASEADAL.APPROVAL_STATUS
                                ASEADAL.APPROVING_PERSON_ORGANIZATION
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.BREAKDOWN_CONTEXT
                                ASEADAL.BREAKDOWN_ELEMENT_REALIZATION
                                ASEADAL.BREAKDOWN_ELEMENT_USAGE
                                ASEADAL.CERTIFICATION
                                ASEADAL.CERTIFICATION_ASSIGNMENT
                                ASEADAL.CONDITION
                                ASEADAL.CONDITION_EVALUATION
                                ASEADAL.CONDITION_EVALUATION_PARAMETER
                                ASEADAL.CONDITION_PARAMETER
                                ASEADAL.CONDITION_RELATIONSHIP
                                ASEADAL.CONTEXT_DEPENDENT_UNIT
                                ASEADAL.CONTRACT
                                ASEADAL.DATE_OR_DATE_TIME_ASSIGNMENT
                                ASEADAL.DESCRIPTION_TEXT
                                ASEADAL.DESCRIPTIVE_DOCUMENT_PROPERTY
                                ASEADAL.DIGITAL_FILE
                                ASEADAL.DOCUMENT_ASSIGNMENT
                                ASEADAL.DOCUMENT_DEFINITION_RELATIONSHIP
                                ASEADAL.DOCUMENT_LOCATION_IDENTIFICATION
                                ASEADAL.DOCUMENT_PROPERTY_REPRESENTATION
                                ASEADAL.EFFECTIVITY
                                ASEADAL.EFFECTIVITY_ASSIGNMENT
                                ASEADAL.EVENT_ASSIGNMENT
                                ASEADAL.EVENT_RELATIONSHIP
                                ASEADAL.EXTERNAL_ITEM_IDENTIFICATION
                                ASEADAL.EXTERNAL_SOURCE_IDENTIFICATION
                                ASEADAL.FILE_LOCATION_IDENTIFICATION
                                ASEADAL.FILE_RELATIONSHIP
                                ASEADAL.GLOBAL_LOCATION_REPRESENTATION
                                ASEADAL.GROUP
                                ASEADAL.GROUP_RELATIONSHIP
                                ASEADAL.HARDCOPY
                                ASEADAL.IDENTIFICATION_ASSIGNMENT
                                ASEADAL.INDEPENDENT_PROPERTY
                                ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP
                                ASEADAL.INDEPENDENT_PROPERTY_REPRESENTATION
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_DEFINITION
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_SPECIFICATION_DEFINITION
                                ASEADAL.JUSTIFICATION
                                ASEADAL.JUSTIFICATION_ASSIGNMENT
                                ASEADAL.JUSTIFICATION_SUPPORT_ASSIGNMENT
                                ASEADAL.LANGUAGE
                                ASEADAL.LOCATION
                                ASEADAL.LOCATION_RELATIONSHIP
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.MANAGED_RESOURCE_RELATIONSHIP
                                ASEADAL.MARKET
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                                ASEADAL.ORGANIZATION_RELATIONSHIP
                                ASEADAL.ORGANIZATIONAL_LOCATION_IDENTIFICATION
                                ASEADAL.PART_VIEW_DEFINITION
                                ASEADAL.PARTIAL_DOCUMENT_ASSIGNMENT
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_BASED_LOCATION_IDENTIFICATION
                                ASEADAL.PRODUCT_CATEGORY
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_RELATIONSHIP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VERSION_RELATIONSHIP
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT_ASSIGNMENT
                                ASEADAL.PROJECT_RELATIONSHIP
                                ASEADAL.PROPERTY_REPRESENTATION
                                ASEADAL.REGIONAL_COORDINATE
                                ASEADAL.REGIONAL_GRID_LOCATION_REPRESENTATION
                                ASEADAL.RELATED_CONDITION_PARAMETER
                                ASEADAL.REPRESENTATION
                                ASEADAL.REPRESENTATION_CONTEXT
                                ASEADAL.REPRESENTATION_ITEM
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.REQUIRED_RESOURCE_RELATIONSHIP
                                ASEADAL.RESOURCE_AS_REALIZED
                                ASEADAL.RESOURCE_AS_REALIZED_RELATIONSHIP
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP
                                ASEADAL.RESOURCE_EVENT_RELATIONSHIP
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RESOURCE_ITEM_RELATIONSHIP
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.RESOURCE_PROPERTY_REPRESENTATION
                                ASEADAL.SECURITY_CLASSIFICATION
                                ASEADAL.TIME_INTERVAL_RELATIONSHIP
                                ASEADAL.UNCERTAINTY_WITH_UNIT
                                ASEADAL.UNIT
                                ASEADAL.VALUE_WITH_UNIT
                                ASEADAL.VIEW_DEFINITION_CONTEXT
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT
                                ASEADAL.WORK_OUTPUT_RELATIONSHIP
                                ASEADAL.WORK_REQUEST
                                ASEADAL.WORK_REQUEST_STATUS)))


(DEFTYPE-CLASS "ASEADAL.CONDITION_EVALUATION_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT
                                ASEADAL.APPROVAL
                                ASEADAL.APPROVAL_ASSIGNMENT
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.BEHAVIOUR_DESCRIPTION_ASSOCIATION
                                ASEADAL.DOCUMENT_ASSIGNMENT
                                ASEADAL.HIERARCHICAL_INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.JUSTIFICATION
                                ASEADAL.PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.TASK_IO
                                ASEADAL.VERIFICATION
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP)))


(DEFTYPE-CLASS "ASEADAL.CONDITION_EVALUATION_PARAMETER_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.APPROVAL
                                ASEADAL.APPROVAL_ASSIGNMENT
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.CALENDAR_DATE
                                ASEADAL.CERTIFICATION_ASSIGNMENT
                                ASEADAL.CLASSIFICATION_ASSIGNMENT
                                ASEADAL.CONTRACT_ASSIGNMENT
                                ASEADAL.DATE_OR_DATE_TIME_ASSIGNMENT
                                ASEADAL.DATE_TIME
                                ASEADAL.DOCUMENT_ASSIGNMENT
                                ASEADAL.IDENTIFICATION_ASSIGNMENT
                                ASEADAL.INDEPENDENT_PROPERTY_REPRESENTATION
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_AS_INDIVIDUAL
                                ASEADAL.PRODUCT_CATEGORY_ASSIGNMENT
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROPERTY_REPRESENTATION
                                ASEADAL.REPRESENTATION
                                ASEADAL.REQUIREMENT_SOURCE
                                ASEADAL.STATE
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.TASK_IO
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_OUTPUT)))


(DEFTYPE-CLASS "ASEADAL.ASSIGNED_DOCUMENT_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_DEFINITION
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.FILE)))


(DEFTYPE-CLASS "ASEADAL.DOCUMENTED_ELEMENT_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_REALIZATION
                                ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                                ASEADAL.ACTIVITY_METHOD_RELATIONSHIP
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ACTIVITY_PROPERTY_REPRESENTATION
                                ASEADAL.ALTERNATE_PART_RELATIONSHIP
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.ANALYSIS
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_SOURCE_ASSIGNMENT
                                ASEADAL.APPROVAL
                                ASEADAL.APPROVAL_ASSIGNMENT
                                ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.BEHAVIOUR_VERSION
                                ASEADAL.BREAKDOWN
                                ASEADAL.BREAKDOWN_CONTEXT
                                ASEADAL.BREAKDOWN_ELEMENT
                                ASEADAL.BREAKDOWN_ELEMENT_REALIZATION
                                ASEADAL.BREAKDOWN_ELEMENT_USAGE
                                ASEADAL.BREAKDOWN_ELEMENT_VERSION
                                ASEADAL.CERTIFICATION
                                ASEADAL.CERTIFICATION_ASSIGNMENT
                                ASEADAL.CONDITION_EVALUATION
                                ASEADAL.CONTRACT
                                ASEADAL.CONTRACT_ASSIGNMENT
                                ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_DEFINITION
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.EFFECTIVITY
                                ASEADAL.EFFECTIVITY_ASSIGNMENT
                                ASEADAL.EXPERIENCE_INSTANCE
                                ASEADAL.EXPERIENCE_TYPE
                                ASEADAL.EXTERNAL_ITEM_IDENTIFICATION
                                ASEADAL.GROUP
                                ASEADAL.GROUP_RELATIONSHIP
                                ASEADAL.IDENTIFICATION_ASSIGNMENT
                                ASEADAL.INDEPENDENT_PROPERTY
                                ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP
                                ASEADAL.INDEPENDENT_PROPERTY_REPRESENTATION
                                ASEADAL.INFORMATION_RIGHT
                                ASEADAL.INFORMATION_USAGE_RIGHT
                                ASEADAL.INTERFACE_CONNECTOR_DEFINITION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.LOCATION
                                ASEADAL.LOCATION_ASSIGNMENT
                                ASEADAL.LOCATION_RELATIONSHIP
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.MARKET
                                ASEADAL.OBSERVATION
                                ASEADAL.OBSERVATION_CONSEQUENCE
                                ASEADAL.ORGANIZATION
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                                ASEADAL.ORGANIZATION_TYPE
                                ASEADAL.ORGANIZATIONAL_LOCATION_IDENTIFICATION
                                ASEADAL.PART
                                ASEADAL.PART_VERSION
                                ASEADAL.PART_VIEW_DEFINITION
                                ASEADAL.PERSON
                                ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
                                ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
                                ASEADAL.POSITION
                                ASEADAL.POSITION_GROUP
                                ASEADAL.POSITION_TYPE
                                ASEADAL.POSITION_TYPE_ASSIGNMENT
                                ASEADAL.POSITION_TYPE_ROLE
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_AS_PLANNED
                                ASEADAL.PRODUCT_AS_REALIZED
                                ASEADAL.PRODUCT_CATEGORY
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_DESIGN_TO_INDIVIDUAL
                                ASEADAL.PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_GROUP_MEMBERSHIP
                                ASEADAL.PRODUCT_GROUP_RELATIONSHIP
                                ASEADAL.PRODUCT_PLANNED_TO_REALIZED
                                ASEADAL.PRODUCT_RELATIONSHIP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VERSION_RELATIONSHIP
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.PROPERTY_REPRESENTATION
                                ASEADAL.QUALIFICATION_TYPE
                                ASEADAL.REGIONAL_GRID_LOCATION_REPRESENTATION
                                ASEADAL.REPRESENTATION
                                ASEADAL.REPRESENTATION_ITEM
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT
                                ASEADAL.REQUIRED_RESOURCE_RELATIONSHIP
                                ASEADAL.REQUIREMENT
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.REQUIREMENT_SOURCE
                                ASEADAL.REQUIREMENT_VERSION
                                ASEADAL.RESOURCE_AS_REALIZED
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RESOURCE_ITEM_RELATIONSHIP
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.RESOURCE_PROPERTY_REPRESENTATION
                                ASEADAL.RISK
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_CRITERIA
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.SECURITY_CLASSIFICATION
                                ASEADAL.SECURITY_CLASSIFICATION_ASSIGNMENT
                                ASEADAL.SELECTED_ITEM
                                ASEADAL.SHAPE_ELEMENT
                                ASEADAL.SHAPE_ELEMENT_RELATIONSHIP
                                ASEADAL.STATE
                                ASEADAL.STATE_ASSERTION
                                ASEADAL.STATE_ASSESSMENT
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.TASK_ELEMENT
                                ASEADAL.TASK_ELEMENT_RELATIONSHIP
                                ASEADAL.TASK_ELEMENT_STATE_RELATIONSHIP
                                ASEADAL.TASK_IO
                                ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_ASSIGNMENT
                                ASEADAL.TASK_METHOD_RELATIONSHIP
                                ASEADAL.TASK_METHOD_STATE_RELATIONSHIP
                                ASEADAL.TASK_METHOD_VERSION
                                ASEADAL.TASK_METHOD_VERSION_ASSIGNMENT
                                ASEADAL.TASK_METHOD_VERSION_RELATIONSHIP
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.TASK_OBJECTIVE_STATE_RELATIONSHIP
                                ASEADAL.TYPE_OF_PERSON
                                ASEADAL.TYPE_OF_PERSON_DEFINITION
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.EFFECTIVITY_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ADDRESS_ASSIGNMENT
                                ASEADAL.ALTERNATE_PART_RELATIONSHIP
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPLIED_INFORMATION_USAGE_RIGHT
                                ASEADAL.APPLIED_STATE_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_DEFINITION_ASSIGNMENT
                                ASEADAL.APPROVAL_ASSIGNMENT
                                ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.ATTRIBUTE_TRANSLATION_ASSIGNMENT
                                ASEADAL.BREAKDOWN
                                ASEADAL.BREAKDOWN_ELEMENT
                                ASEADAL.BREAKDOWN_ELEMENT_DEFINITION
                                ASEADAL.BREAKDOWN_ELEMENT_REALIZATION
                                ASEADAL.BREAKDOWN_ELEMENT_USAGE
                                ASEADAL.BREAKDOWN_ELEMENT_VERSION
                                ASEADAL.BREAKDOWN_OF
                                ASEADAL.BREAKDOWN_VERSION
                                ASEADAL.CERTIFICATION_ASSIGNMENT
                                ASEADAL.CONDITION_RELATIONSHIP
                                ASEADAL.CONSTRAINED_GENERAL_PARAMETER_RELATIONSHIP
                                ASEADAL.CONTRACT_ASSIGNMENT
                                ASEADAL.DATE_OR_DATE_TIME_ASSIGNMENT
                                ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_ASSIGNMENT
                                ASEADAL.DOCUMENT_DEFINITION
                                ASEADAL.DOCUMENT_DEFINITION_RELATIONSHIP
                                ASEADAL.DOCUMENT_LOCATION_IDENTIFICATION
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.EFFECTIVITY_ASSIGNMENT
                                ASEADAL.EVENT
                                ASEADAL.EVENT_ASSIGNMENT
                                ASEADAL.EXTERNAL_SOURCE_IDENTIFICATION
                                ASEADAL.FILE
                                ASEADAL.FILE_RELATIONSHIP
                                ASEADAL.IDENTIFICATION_ASSIGNMENT
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.ISSUE_CONSEQUENCE
                                ASEADAL.JUSTIFICATION
                                ASEADAL.JUSTIFICATION_ASSIGNMENT
                                ASEADAL.JUSTIFICATION_RELATIONSHIP
                                ASEADAL.JUSTIFICATION_SUPPORT_ASSIGNMENT
                                ASEADAL.LOCATION_ASSIGNMENT
                                ASEADAL.MANAGED_RESOURCE_RELATIONSHIP
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                                ASEADAL.ORGANIZATION_RELATIONSHIP
                                ASEADAL.PART
                                ASEADAL.PART_VERSION
                                ASEADAL.PART_VIEW_DEFINITION
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
                                ASEADAL.POSITION_ASSIGNMENT
                                ASEADAL.POSITION_GROUP_ASSIGNMENT
                                ASEADAL.POSITION_POSITION_TYPE_ASSIGNMENT
                                ASEADAL.POSITION_TYPE_ASSIGNMENT
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_AS_INDIVIDUAL
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VERSION
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VIEW
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_DESIGN_TO_INDIVIDUAL
                                ASEADAL.PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_GROUP_MEMBERSHIP
                                ASEADAL.PRODUCT_GROUP_RELATIONSHIP
                                ASEADAL.PRODUCT_PLANNED_TO_REALIZED
                                ASEADAL.PRODUCT_RELATIONSHIP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VERSION_RELATIONSHIP
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT_ASSIGNMENT
                                ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT
                                ASEADAL.REQUIRED_RESOURCE_RELATIONSHIP
                                ASEADAL.REQUIREMENT
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.REQUIREMENT_COLLECTION_RELATIONSHIP
                                ASEADAL.REQUIREMENT_SOURCE
                                ASEADAL.REQUIREMENT_VERSION
                                ASEADAL.REQUIREMENT_VERSION_RELATIONSHIP
                                ASEADAL.REQUIREMENT_VIEW_DEFINITION
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RESOURCE_ITEM_RELATIONSHIP
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.SECURITY_CLASSIFICATION_ASSIGNMENT
                                ASEADAL.SELECTED_ITEM_ASSIGNMENT
                                ASEADAL.STATE_DEFINITION_RELATIONSHIP
                                ASEADAL.TYPE_OF_PERSON_ASSIGNMENT
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT_ASSIGNMENT
                                ASEADAL.WORK_OUTPUT_RELATIONSHIP)))


(DEFTYPE-CLASS "ASEADAL.INFORMATION_USAGE_RIGHT_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ALTERNATE_PART_RELATIONSHIP
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.APPLIED_INFORMATION_USAGE_RIGHT
                                ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.BREAKDOWN
                                ASEADAL.BREAKDOWN_ELEMENT
                                ASEADAL.BREAKDOWN_ELEMENT_REALIZATION
                                ASEADAL.BREAKDOWN_ELEMENT_USAGE
                                ASEADAL.BREAKDOWN_VERSION
                                ASEADAL.CERTIFICATION
                                ASEADAL.CERTIFICATION_ASSIGNMENT
                                ASEADAL.CONTRACT
                                ASEADAL.DIGITAL_DOCUMENT_DEFINITION
                                ASEADAL.DIGITAL_FILE
                                ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.HARDCOPY
                                ASEADAL.IN_ZONE
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_CONNECTOR_VERSION
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.INTERFACE_SPECIFICATION
                                ASEADAL.INTERFACE_SPECIFICATION_DEFINITION
                                ASEADAL.INTERFACE_SPECIFICATION_VERSION
                                ASEADAL.JUSTIFICATION
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.PART
                                ASEADAL.PART_VERSION
                                ASEADAL.PART_VIEW_DEFINITION
                                ASEADAL.PHYSICAL_DOCUMENT_DEFINITION
                                ASEADAL.PRODUCT_AS_INDIVIDUAL
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VIEW
                                ASEADAL.PRODUCT_AS_PLANNED
                                ASEADAL.PRODUCT_AS_REALIZED
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PROJECT
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.REQUIREMENT
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.REQUIREMENT_VERSION
                                ASEADAL.REQUIREMENT_VIEW_DEFINITION
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.SECURITY_CLASSIFICATION
                                ASEADAL.SECURITY_CLASSIFICATION_ASSIGNMENT
                                ASEADAL.TASK_ELEMENT
                                ASEADAL.TASK_IO
                                ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_VERSION
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.WORK_OUTPUT)))


(DEFTYPE-CLASS "ASEADAL.CHARACTERIZED_ACTIVITY_DEFINITION"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_RELATIONSHIP
                                ASEADAL.ANALYSIS
                                ASEADAL.BREAKDOWN_OF
                                ASEADAL.CONDITION
                                ASEADAL.CONDITION_EVALUATION
                                ASEADAL.CONDITION_RELATIONSHIP
                                ASEADAL.EVENT
                                ASEADAL.PRODUCT
                                ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT
                                ASEADAL.RESOURCE_AS_REALIZED_ASSIGNMENT
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RISK
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.TASK_IO
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.VERIFICATION
                                ASEADAL.WORK_OUTPUT)))


(DEFTYPE-CLASS "ASEADAL.PROPERTY_ASSIGNMENT_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_HAPPENING
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ADDRESS
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPLIED_PROBABILITY_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_SOURCE_ASSIGNMENT
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.BEHAVIOUR_VIEW_DEFINITION
                                ASEADAL.BREAKDOWN_ELEMENT_REALIZATION
                                ASEADAL.BREAKDOWN_ELEMENT_USAGE
                                ASEADAL.CONDITION_EVALUATION
                                ASEADAL.CONDITION_EVALUATION_PARAMETER
                                ASEADAL.CONDITION_PARAMETER
                                ASEADAL.DOCUMENT_ASSIGNMENT
                                ASEADAL.DOCUMENT_DEFINITION
                                ASEADAL.EXPERIENCE_INSTANCE
                                ASEADAL.FILE
                                ASEADAL.GENERIC_EXPRESSION
                                ASEADAL.HIERARCHICAL_INTERFACE_CONNECTION
                                ASEADAL.IN_ZONE
                                ASEADAL.INDEPENDENT_PROPERTY
                                ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP
                                ASEADAL.INFORMATION_USAGE_RIGHT
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.LOCATION_ASSIGNMENT
                                ASEADAL.OBSERVATION
                                ASEADAL.OBSERVATION_CONSEQUENCE
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                                ASEADAL.PART_VIEW_DEFINITION
                                ASEADAL.PERSON
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_CATEGORY
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_GROUP_MEMBERSHIP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VERSION_RELATIONSHIP
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.PROPERTY_DEFINITION_REPRESENTATION
                                ASEADAL.RELATED_CONDITION_PARAMETER
                                ASEADAL.REPRESENTATION
                                ASEADAL.REPRESENTATION_CONTEXT
                                ASEADAL.REPRESENTATION_ITEM
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.REQUIREMENT_SOURCE
                                ASEADAL.RESOURCE_AS_REALIZED
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.RISK
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_ASSESSMENT
                                ASEADAL.RISK_CONSEQUENCE
                                ASEADAL.RISK_CONTROL
                                ASEADAL.RISK_ESTIMATION
                                ASEADAL.RISK_EVALUATION
                                ASEADAL.RISK_OBJECTIVE
                                ASEADAL.RISK_PERCEPTION
                                ASEADAL.RISK_REDUCTION
                                ASEADAL.RISK_RELATIONSHIP
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.SECURITY_CLASSIFICATION
                                ASEADAL.STATE_ASSERTION
                                ASEADAL.STATE_ASSESSMENT
                                ASEADAL.TASK_IO_HIERARCHY
                                ASEADAL.TASK_METHOD_STATE_RELATIONSHIP
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.TASK_OBJECTIVE_STATE_RELATIONSHIP
                                ASEADAL.TYPE_OF_PERSON_DEFINITION
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VERIFICATION_RELATIONSHIP
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.REPRESENTED_DEFINITION"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.INDEPENDENT_PROPERTY)))


(DEFTYPE-CLASS "ASEADAL.RESOURCE_AS_REALIZED_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY_ACTUAL
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.ACTIVITY_METHOD_REALIZATION
                                ASEADAL.ACTIVITY_METHOD_RELATIONSHIP
                                ASEADAL.AFFECTED_ITEMS_ASSIGNMENT
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT
                                ASEADAL.BEHAVIOUR_DESCRIPTION_ASSOCIATION
                                ASEADAL.CERTIFICATION
                                ASEADAL.CERTIFICATION_ASSIGNMENT
                                ASEADAL.COMPOSITION_OF_STATE_DEFINITION
                                ASEADAL.CONDITION_EVALUATION_ASSIGNMENT
                                ASEADAL.CONTRACT
                                ASEADAL.CONTRACT_ASSIGNMENT
                                ASEADAL.DIRECTED_ACTIVITY
                                ASEADAL.EVENT
                                ASEADAL.EVENT_ASSIGNMENT
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.LESSONS_LEARNED
                                ASEADAL.OBSERVATION
                                ASEADAL.OBSERVATION_CONSEQUENCE
                                ASEADAL.OBSERVATION_ITEM
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VERSION_RELATIONSHIP
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.PROJECT_ASSIGNMENT
                                ASEADAL.REPRESENTATION
                                ASEADAL.REPRESENTATION_ITEM
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP
                                ASEADAL.RESOURCE_EVENT_RELATIONSHIP
                                ASEADAL.RISK
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_ASSESSMENT
                                ASEADAL.RISK_COMMUNICATION
                                ASEADAL.RISK_CONTROL
                                ASEADAL.RISK_ESTIMATION
                                ASEADAL.RISK_EVALUATION
                                ASEADAL.RISK_IMPACT
                                ASEADAL.RISK_OBJECTIVE
                                ASEADAL.RISK_PERCEPTION
                                ASEADAL.RISK_REDUCTION
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.SECURITY_CLASSIFICATION_ASSIGNMENT
                                ASEADAL.STATE
                                ASEADAL.STATE_ASSESSMENT
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.STATE_DEFINITION_RELATIONSHIP
                                ASEADAL.STATE_RELATIONSHIP
                                ASEADAL.STATE_ROLE
                                ASEADAL.TASK_IO_HIERARCHY
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.WORK_OUTPUT_ASSIGNMENT)))


(DEFTYPE-CLASS "ASEADAL.RESOURCE_AS_REALIZED_RELATIONSHIP_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.RESOURCE_EVENT)))


(DEFTYPE-CLASS "ASEADAL.CHARACTERIZED_RESOURCE_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.MANAGED_RESOURCE
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RESOURCE_ITEM_RELATIONSHIP)))


(DEFTYPE-CLASS "ASEADAL.SCHEME_ENTRY_ITEM_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD_ITEM))


(DEFTYPE-CLASS "ASEADAL.SCHEME_SUBJECT_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD_ITEM))


(DEFTYPE-CLASS "ASEADAL.SCHEME_VERSION_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD_ITEM))


(DEFTYPE-CLASS "ASEADAL.CONSTRAINT_CONTEXT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.TASK_ELEMENT
                                ASEADAL.TASK_METHOD_VERSION)))


(DEFTYPE-CLASS "ASEADAL.METHOD_OR_METHOD_VERSION"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_VERSION)))


(DEFTYPE-CLASS "ASEADAL.STATE_OR_STATE_DEFINITION_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.APPLIED_STATE_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_DEFINITION_ASSIGNMENT
                                ASEADAL.STATE
                                ASEADAL.STATE_DEFINITION)))


(DEFTYPE-CLASS "ASEADAL.TIME_INTERVAL_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.AFFECTED_ITEMS_ASSIGNMENT
                                ASEADAL.DIRECTED_ACTIVITY
                                ASEADAL.OBSERVATION
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.WORK_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.EVENT
                                ASEADAL.PROJECT
                                ASEADAL.SCHEME
                                ASEADAL.SCHEME_ENTRY
                                ASEADAL.SCHEME_VERSION
                                ASEADAL.TASK_ELEMENT
                                ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_VERSION
                                ASEADAL.VERIFICATION)))


(DEFTYPE-CLASS "ASEADAL.WORK_OUTPUT_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.BEHAVIOUR_DESCRIPTION_ASSOCIATION
                                ASEADAL.BREAKDOWN
                                ASEADAL.BREAKDOWN_VERSION
                                ASEADAL.CONTRACT
                                ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_DEFINITION
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.FILE
                                ASEADAL.LOCATION
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.ORGANIZATION
                                ASEADAL.ORGANIZATION_TYPE
                                ASEADAL.PART
                                ASEADAL.PART_VERSION
                                ASEADAL.PART_VIEW_DEFINITION
                                ASEADAL.PERSON
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.POSITION
                                ASEADAL.POSITION_TYPE
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_AS_INDIVIDUAL
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VERSION
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VIEW
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT_ASSIGNMENT
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.RESOURCE_AS_REALIZED
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_ASSESSMENT
                                ASEADAL.RISK_EVALUATION
                                ASEADAL.RISK_REDUCTION
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.TASK_IO
                                ASEADAL.TYPE_OF_PERSON
                                ASEADAL.VERIFICATION_EVIDENCE)))


(DEFTYPE-CLASS "ASEADAL.SELECTED_ITEM_CONTEXT_ITEMS"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.BREAKDOWN
                                ASEADAL.CONTRACT
                                ASEADAL.PART
                                ASEADAL.PART_VERSION
                                ASEADAL.PRODUCT_AS_INDIVIDUAL
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VERSION
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PROJECT)))


(DEFTYPE-CLASS "ASEADAL.SELECTED_ITEM_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_DEFINITION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_VERSION)))


(DEFTYPE-CLASS "ASEADAL.ACTIVITY_METHOD_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT
                                ASEADAL.APPROVAL_ASSIGNMENT
                                ASEADAL.ASSIGNED_DOCUMENT_PROPERTY
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.BEHAVIOUR_DESCRIPTION_ASSOCIATION
                                ASEADAL.BREAKDOWN_ELEMENT
                                ASEADAL.BREAKDOWN_ELEMENT_DEFINITION
                                ASEADAL.BREAKDOWN_ELEMENT_USAGE
                                ASEADAL.BREAKDOWN_ELEMENT_VERSION
                                ASEADAL.CERTIFICATION
                                ASEADAL.CONDITION
                                ASEADAL.CONTRACT
                                ASEADAL.DATE_OR_DATE_TIME_ASSIGNMENT
                                ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.EVENT
                                ASEADAL.FILE
                                ASEADAL.IN_ZONE
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.JUSTIFICATION
                                ASEADAL.LOCATION
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.OBSERVATION
                                ASEADAL.OBSERVATION_CONSEQUENCE
                                ASEADAL.ORGANIZATION
                                ASEADAL.ORGANIZATION_TYPE
                                ASEADAL.PART
                                ASEADAL.PART_VERSION
                                ASEADAL.PART_VIEW_DEFINITION
                                ASEADAL.PERSON
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.POSITION
                                ASEADAL.POSITION_GROUP
                                ASEADAL.POSITION_TYPE
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_AS_INDIVIDUAL
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VERSION
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VIEW
                                ASEADAL.PRODUCT_BASED_LOCATION_IDENTIFICATION
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VERSION_RELATIONSHIP
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.RESOURCE_AS_REALIZED
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.RISK
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.SCHEME_ENTRY
                                ASEADAL.SECURITY_CLASSIFICATION
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.STATE_RELATIONSHIP
                                ASEADAL.TASK_IO
                                ASEADAL.TASK_IO_HIERARCHY
                                ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_VERSION
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.TYPE_OF_PERSON
                                ASEADAL.TYPE_OF_PERSON_DEFINITION
                                ASEADAL.VERIFICATION
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_OUTPUT
                                ASEADAL.WORK_OUTPUT_ASSIGNMENT)))


(DEFTYPE-CLASS "ASEADAL.CONDITION_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD_REALIZATION
                                ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                                ASEADAL.ACTIVITY_METHOD_RELATIONSHIP
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPROVAL
                                ASEADAL.APPROVAL_ASSIGNMENT
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.CERTIFICATION_ASSIGNMENT
                                ASEADAL.CONTRACT_ASSIGNMENT
                                ASEADAL.DATE_OR_DATE_TIME_ASSIGNMENT
                                ASEADAL.DOCUMENT_ASSIGNMENT
                                ASEADAL.EVENT_ASSIGNMENT
                                ASEADAL.HIERARCHICAL_INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.JUSTIFICATION_ASSIGNMENT
                                ASEADAL.LOCATION_ASSIGNMENT
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.MANAGED_RESOURCE_RELATIONSHIP
                                ASEADAL.PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_GROUP_MEMBERSHIP
                                ASEADAL.PRODUCT_GROUP_RELATIONSHIP
                                ASEADAL.PROJECT_ASSIGNMENT
                                ASEADAL.QUALIFICATION_ASSIGNMENT
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT
                                ASEADAL.REQUIRED_RESOURCE_RELATIONSHIP
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_EVENT_RELATIONSHIP
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RESOURCE_ITEM_RELATIONSHIP
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.RISK_STATUS
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.SECURITY_CLASSIFICATION_ASSIGNMENT
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.STATE_DEFINITION_RELATIONSHIP
                                ASEADAL.STATE_TRANSITION_DEFINITION
                                ASEADAL.TASK_ELEMENT_RELATIONSHIP
                                ASEADAL.TASK_METHOD_ASSIGNMENT
                                ASEADAL.TASK_METHOD_RELATIONSHIP
                                ASEADAL.TASK_METHOD_VERSION_ASSIGNMENT
                                ASEADAL.TASK_METHOD_VERSION_RELATIONSHIP
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.CONDITION_PARAMETER_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ACTIVITY_PROPERTY_REPRESENTATION
                                ASEADAL.ANALYSIS
                                ASEADAL.APPROVAL
                                ASEADAL.APPROVAL_ASSIGNMENT
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.CALENDAR_DATE
                                ASEADAL.CERTIFICATION_ASSIGNMENT
                                ASEADAL.CLASSIFICATION_ASSIGNMENT
                                ASEADAL.CONDITION_RELATIONSHIP
                                ASEADAL.CONTRACT_ASSIGNMENT
                                ASEADAL.DATE_OR_DATE_TIME_ASSIGNMENT
                                ASEADAL.DATE_TIME
                                ASEADAL.DOCUMENT_ASSIGNMENT
                                ASEADAL.HIERARCHICAL_INTERFACE_CONNECTION
                                ASEADAL.IDENTIFICATION_ASSIGNMENT
                                ASEADAL.INDEPENDENT_PROPERTY_REPRESENTATION
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.OBSERVATION
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                                ASEADAL.PARAMETER_VALUE_SELECT
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_AS_INDIVIDUAL
                                ASEADAL.PRODUCT_CATEGORY_ASSIGNMENT
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROPERTY_REPRESENTATION
                                ASEADAL.REPRESENTATION
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.RESOURCE_AS_REALIZED
                                ASEADAL.RESOURCE_AS_REALIZED_RELATIONSHIP
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.RESOURCE_PROPERTY_REPRESENTATION
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.STATE
                                ASEADAL.STATE_ASSESSMENT
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_OUTPUT)))


(DEFTYPE-CLASS "ASEADAL.DATE_OR_DATE_TIME_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.ACTIVITY_METHOD_REALIZATION
                                ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                                ASEADAL.ACTIVITY_METHOD_RELATIONSHIP
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ACTIVITY_PROPERTY_REPRESENTATION
                                ASEADAL.ACTIVITY_RELATIONSHIP
                                ASEADAL.ADDRESS_ASSIGNMENT
                                ASEADAL.AFFECTED_ITEMS_ASSIGNMENT
                                ASEADAL.ALIAS_IDENTIFICATION
                                ASEADAL.ALTERNATE_PART_RELATIONSHIP
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.ANALYSIS_DISCIPLINE_DEFINITION
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPLIED_INFORMATION_USAGE_RIGHT
                                ASEADAL.APPLIED_PROBABILITY_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_SOURCE_ASSIGNMENT
                                ASEADAL.APPROVAL
                                ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.BREAKDOWN
                                ASEADAL.BREAKDOWN_ELEMENT
                                ASEADAL.BREAKDOWN_ELEMENT_REALIZATION
                                ASEADAL.BREAKDOWN_ELEMENT_USAGE
                                ASEADAL.BREAKDOWN_ELEMENT_VERSION
                                ASEADAL.CERTIFICATION
                                ASEADAL.CERTIFICATION_ASSIGNMENT
                                ASEADAL.CLASSIFICATION_ASSIGNMENT
                                ASEADAL.CONDITION
                                ASEADAL.CONDITION_ASSIGNMENT
                                ASEADAL.CONDITION_EVALUATION
                                ASEADAL.CONDITION_EVALUATION_ASSIGNMENT
                                ASEADAL.CONTRACT
                                ASEADAL.CONTRACT_ASSIGNMENT
                                ASEADAL.DATE_OR_DATE_TIME_ASSIGNMENT
                                ASEADAL.DIGITAL_DOCUMENT_DEFINITION
                                ASEADAL.DIGITAL_FILE
                                ASEADAL.DIRECTED_ACTIVITY
                                ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_ASSIGNMENT
                                ASEADAL.DOCUMENT_DEFINITION_RELATIONSHIP
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.EFFECTIVITY
                                ASEADAL.EFFECTIVITY_ASSIGNMENT
                                ASEADAL.EVENT_ASSIGNMENT
                                ASEADAL.EXPERIENCE_INSTANCE
                                ASEADAL.HARDCOPY
                                ASEADAL.IDENTIFICATION_ASSIGNMENT
                                ASEADAL.INDEPENDENT_PROPERTY
                                ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP
                                ASEADAL.INDEPENDENT_PROPERTY_REPRESENTATION
                                ASEADAL.INFORMATION_USAGE_RIGHT
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_DEFINITION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_CONNECTOR_VERSION
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.INTERFACE_SPECIFICATION_DEFINITION
                                ASEADAL.INTERFACE_SPECIFICATION_VERSION
                                ASEADAL.JUSTIFICATION
                                ASEADAL.JUSTIFICATION_ASSIGNMENT
                                ASEADAL.JUSTIFICATION_RELATIONSHIP
                                ASEADAL.JUSTIFICATION_SUPPORT_ASSIGNMENT
                                ASEADAL.LOCATION_ASSIGNMENT
                                ASEADAL.LOCATION_REPRESENTATION
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.MANAGED_RESOURCE_RELATIONSHIP
                                ASEADAL.OBSERVATION
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                                ASEADAL.ORGANIZATION_ORGANIZATION_TYPE_RELATIONSHIP
                                ASEADAL.ORGANIZATION_RELATIONSHIP
                                ASEADAL.PART
                                ASEADAL.PART_VERSION
                                ASEADAL.PART_VIEW_DEFINITION
                                ASEADAL.PERSON
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
                                ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
                                ASEADAL.PHYSICAL_DOCUMENT_DEFINITION
                                ASEADAL.POSITION_GROUP_ASSIGNMENT
                                ASEADAL.POSITION_POSITION_TYPE_ASSIGNMENT
                                ASEADAL.POSITION_TYPE_ASSIGNMENT
                                ASEADAL.PRODUCT_AS_PLANNED
                                ASEADAL.PRODUCT_AS_REALIZED
                                ASEADAL.PRODUCT_CATEGORY_ASSIGNMENT
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_DESIGN_TO_INDIVIDUAL
                                ASEADAL.PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_GROUP_MEMBERSHIP
                                ASEADAL.PRODUCT_GROUP_RELATIONSHIP
                                ASEADAL.PRODUCT_PLANNED_TO_REALIZED
                                ASEADAL.PRODUCT_RELATIONSHIP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VERSION_RELATIONSHIP
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.PROJECT_ASSIGNMENT
                                ASEADAL.PROPERTY_REPRESENTATION
                                ASEADAL.QUALIFICATION_ASSIGNMENT
                                ASEADAL.REPRESENTATION
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT
                                ASEADAL.REQUIREMENT
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.REQUIREMENT_COLLECTION_RELATIONSHIP
                                ASEADAL.REQUIREMENT_SOURCE
                                ASEADAL.REQUIREMENT_VERSION
                                ASEADAL.REQUIREMENT_VERSION_RELATIONSHIP
                                ASEADAL.REQUIREMENT_VIEW_DEFINITION
                                ASEADAL.RESOURCE_AS_REALIZED
                                ASEADAL.RESOURCE_AS_REALIZED_ASSIGNMENT
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.RESOURCE_PROPERTY_REPRESENTATION
                                ASEADAL.RISK
                                ASEADAL.RISK_ATTITUDE
                                ASEADAL.RISK_CONSEQUENCE
                                ASEADAL.RISK_CONTEXT
                                ASEADAL.RISK_CRITERIA
                                ASEADAL.RISK_EVALUATION
                                ASEADAL.RISK_PERCEPTION
                                ASEADAL.RISK_PERCEPTION_RELATIONSHIP
                                ASEADAL.RISK_REDUCTION
                                ASEADAL.RISK_RELATIONSHIP
                                ASEADAL.RISK_STATUS
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.SCHEME_ENTRY
                                ASEADAL.SECURITY_CLASSIFICATION
                                ASEADAL.SECURITY_CLASSIFICATION_ASSIGNMENT
                                ASEADAL.SELECTED_ITEM
                                ASEADAL.TASK_ELEMENT
                                ASEADAL.TASK_ELEMENT_RELATIONSHIP
                                ASEADAL.TASK_ELEMENT_STATE_RELATIONSHIP
                                ASEADAL.TASK_IO
                                ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_ASSIGNMENT
                                ASEADAL.TASK_METHOD_RELATIONSHIP
                                ASEADAL.TASK_METHOD_STATE_RELATIONSHIP
                                ASEADAL.TASK_METHOD_VERSION
                                ASEADAL.TASK_METHOD_VERSION_ASSIGNMENT
                                ASEADAL.TASK_METHOD_VERSION_RELATIONSHIP
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.TASK_OBJECTIVE_STATE_RELATIONSHIP
                                ASEADAL.TRACING_RELATIONSHIP
                                ASEADAL.TYPE_OF_PERSON_ASSIGNMENT
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VIEW_DEFINITION_CONTEXT
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.DATE_OR_EVENT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.CALENDAR_DATE
                                ASEADAL.DATE_TIME
                                ASEADAL.EVENT)))


(DEFTYPE-CLASS "ASEADAL.ANY_NUMBER_VALUE"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               MAKE-INSTANCE
               'NUMBER-TYP)


(DEFTYPE-CLASS "ASEADAL.ANY_STRING_VALUE"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               MAKE-INSTANCE
               'STRING-TYP)


(DEFTYPE-CLASS "ASEADAL.LENGTH_MEASURE"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               MAKE-INSTANCE
               'REAL-TYP)


(DEFTYPE-CLASS "ASEADAL.MEASURE_VALUE"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ANY_NUMBER_VALUE
                                ASEADAL.ANY_STRING_VALUE
                                ASEADAL.LENGTH_MEASURE
                                ASEADAL.PLANE_ANGLE_MEASURE)))


(DEFTYPE-CLASS "ASEADAL.PLANE_ANGLE_MEASURE"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               MAKE-INSTANCE
               'REAL-TYP)


(DEFTYPE-CLASS "ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.ACTIVITY_METHOD_REALIZATION
                                ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                                ASEADAL.ACTIVITY_METHOD_RELATIONSHIP
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ACTIVITY_PROPERTY_REPRESENTATION
                                ASEADAL.ACTIVITY_RELATIONSHIP
                                ASEADAL.ADDRESS_ASSIGNMENT
                                ASEADAL.AFFECTED_ITEMS_ASSIGNMENT
                                ASEADAL.ALIAS_IDENTIFICATION
                                ASEADAL.ALTERNATE_PART_RELATIONSHIP
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.ANALYSIS
                                ASEADAL.ANALYSIS_DISCIPLINE_DEFINITION
                                ASEADAL.ANALYSIS_VERSION
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPLIED_INDEPENDENT_ACTIVITY_PROPERTY
                                ASEADAL.APPLIED_PROBABILITY_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_SOURCE_ASSIGNMENT
                                ASEADAL.APPROVAL
                                ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.BEHAVIOUR_VERSION
                                ASEADAL.BREAKDOWN
                                ASEADAL.BREAKDOWN_ELEMENT
                                ASEADAL.BREAKDOWN_ELEMENT_REALIZATION
                                ASEADAL.BREAKDOWN_ELEMENT_USAGE
                                ASEADAL.CERTIFICATION
                                ASEADAL.CERTIFICATION_ASSIGNMENT
                                ASEADAL.CLASSIFICATION_ASSIGNMENT
                                ASEADAL.CONDITION
                                ASEADAL.CONDITION_ASSIGNMENT
                                ASEADAL.CONDITION_EVALUATION
                                ASEADAL.CONDITION_EVALUATION_ASSIGNMENT
                                ASEADAL.CONTRACT
                                ASEADAL.CONTRACT_ASSIGNMENT
                                ASEADAL.DATE_OR_DATE_TIME_ASSIGNMENT
                                ASEADAL.DIGITAL_DOCUMENT_DEFINITION
                                ASEADAL.DIGITAL_FILE
                                ASEADAL.DIRECTED_ACTIVITY
                                ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_ASSIGNMENT
                                ASEADAL.DOCUMENT_DEFINITION
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.EFFECTIVITY
                                ASEADAL.EFFECTIVITY_ASSIGNMENT
                                ASEADAL.EVENT
                                ASEADAL.EVENT_ASSIGNMENT
                                ASEADAL.HARDCOPY
                                ASEADAL.IDENTIFICATION_ASSIGNMENT
                                ASEADAL.INDEPENDENT_PROPERTY
                                ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP
                                ASEADAL.INDEPENDENT_PROPERTY_REPRESENTATION
                                ASEADAL.INFORMATION_USAGE_RIGHT
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_DEFINITION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_CONNECTOR_VERSION
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.INTERFACE_SPECIFICATION
                                ASEADAL.INTERFACE_SPECIFICATION_DEFINITION
                                ASEADAL.INTERFACE_SPECIFICATION_VERSION
                                ASEADAL.ISSUE_CONSEQUENCE
                                ASEADAL.JUSTIFICATION
                                ASEADAL.JUSTIFICATION_ASSIGNMENT
                                ASEADAL.JUSTIFICATION_RELATIONSHIP
                                ASEADAL.JUSTIFICATION_SUPPORT_ASSIGNMENT
                                ASEADAL.LOCATION_ASSIGNMENT
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.MANAGED_RESOURCE_RELATIONSHIP
                                ASEADAL.OBSERVATION
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                                ASEADAL.PART
                                ASEADAL.PART_VERSION
                                ASEADAL.PART_VIEW_DEFINITION
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.PHYSICAL_DOCUMENT_DEFINITION
                                ASEADAL.POSITION_ASSIGNMENT
                                ASEADAL.POSITION_GROUP_ASSIGNMENT
                                ASEADAL.POSITION_POSITION_TYPE_ASSIGNMENT
                                ASEADAL.POSITION_TYPE
                                ASEADAL.POSITION_TYPE_ASSIGNMENT
                                ASEADAL.PRODUCT_AS_INDIVIDUAL
                                ASEADAL.PRODUCT_AS_PLANNED
                                ASEADAL.PRODUCT_AS_REALIZED
                                ASEADAL.PRODUCT_CATEGORY
                                ASEADAL.PRODUCT_CATEGORY_ASSIGNMENT
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_GROUP_MEMBERSHIP
                                ASEADAL.PRODUCT_GROUP_RELATIONSHIP
                                ASEADAL.PRODUCT_RELATIONSHIP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.PROJECT_ASSIGNMENT
                                ASEADAL.PROPERTY_REPRESENTATION
                                ASEADAL.QUALIFICATION_ASSIGNMENT
                                ASEADAL.QUALIFICATION_TYPE
                                ASEADAL.REPRESENTATION
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT
                                ASEADAL.REQUIREMENT
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.REQUIREMENT_COLLECTION_RELATIONSHIP
                                ASEADAL.REQUIREMENT_SOURCE
                                ASEADAL.REQUIREMENT_VERSION
                                ASEADAL.REQUIREMENT_VERSION_RELATIONSHIP
                                ASEADAL.REQUIREMENT_VIEW_DEFINITION
                                ASEADAL.RESOURCE_AS_REALIZED
                                ASEADAL.RESOURCE_AS_REALIZED_ASSIGNMENT
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.RESOURCE_PROPERTY_REPRESENTATION
                                ASEADAL.RISK
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_ASSESSMENT
                                ASEADAL.RISK_ATTITUDE
                                ASEADAL.RISK_COMMUNICATION
                                ASEADAL.RISK_CONSEQUENCE
                                ASEADAL.RISK_CONTEXT
                                ASEADAL.RISK_CONTROL
                                ASEADAL.RISK_CRITERIA
                                ASEADAL.RISK_ESTIMATION
                                ASEADAL.RISK_EVALUATION
                                ASEADAL.RISK_IDENTIFICATION
                                ASEADAL.RISK_OWNER_ASSIGNMENT
                                ASEADAL.RISK_PERCEPTION
                                ASEADAL.RISK_PERCEPTION_RELATIONSHIP
                                ASEADAL.RISK_REDUCTION
                                ASEADAL.RISK_RELATIONSHIP
                                ASEADAL.RISK_STAKEHOLDER
                                ASEADAL.RISK_STATUS
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.SCHEME
                                ASEADAL.SCHEME_ENTRY
                                ASEADAL.SECURITY_CLASSIFICATION
                                ASEADAL.SECURITY_CLASSIFICATION_ASSIGNMENT
                                ASEADAL.SELECTED_ITEM
                                ASEADAL.SELECTED_ITEM_ASSIGNMENT
                                ASEADAL.SUPPLIED_PART_RELATIONSHIP
                                ASEADAL.TASK_ELEMENT
                                ASEADAL.TASK_ELEMENT_RELATIONSHIP
                                ASEADAL.TASK_ELEMENT_STATE_RELATIONSHIP
                                ASEADAL.TASK_IO
                                ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_ASSIGNMENT
                                ASEADAL.TASK_METHOD_RELATIONSHIP
                                ASEADAL.TASK_METHOD_STATE_RELATIONSHIP
                                ASEADAL.TASK_METHOD_VERSION
                                ASEADAL.TASK_METHOD_VERSION_ASSIGNMENT
                                ASEADAL.TASK_METHOD_VERSION_RELATIONSHIP
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.TASK_OBJECTIVE_STATE_RELATIONSHIP
                                ASEADAL.TRACING_RELATIONSHIP
                                ASEADAL.TYPE_OF_PERSON_ASSIGNMENT
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VIEW_DEFINITION_CONTEXT
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.RESOURCE_ASSIGNMENT_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_SOURCE_ASSIGNMENT
                                ASEADAL.CONTRACT
                                ASEADAL.EVENT
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.LOCATION
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.PART
                                ASEADAL.PART_VERSION
                                ASEADAL.PART_VIEW_DEFINITION
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.POSITION_GROUP_ASSIGNMENT
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_AS_INDIVIDUAL
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VERSION
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VIEW
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_ASSESSMENT
                                ASEADAL.RISK_COMMUNICATION
                                ASEADAL.RISK_CONTROL
                                ASEADAL.RISK_ESTIMATION
                                ASEADAL.RISK_EVALUATION
                                ASEADAL.RISK_IDENTIFICATION
                                ASEADAL.RISK_REDUCTION
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.WORK_ORDER)))


(DEFTYPE-CLASS "ASEADAL.RESOURCE_ITEM_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_DEFINITION
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.FILE
                                ASEADAL.LOCATION
                                ASEADAL.ORGANIZATION
                                ASEADAL.ORGANIZATION_TYPE
                                ASEADAL.PART
                                ASEADAL.PART_VERSION
                                ASEADAL.PART_VIEW_DEFINITION
                                ASEADAL.PERSON
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.POSITION
                                ASEADAL.POSITION_TYPE
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_AS_INDIVIDUAL
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VERSION
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VIEW
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.TYPE_OF_PERSON
                                ASEADAL.WORK_ORDER)))


(DEFTYPE-CLASS "ASEADAL.STATE_DEFINITION_OF_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ALTERNATE_PART_RELATIONSHIP
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT
                                ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.BEHAVIOUR_DESCRIPTION_ASSOCIATION
                                ASEADAL.BREAKDOWN_ELEMENT_DEFINITION
                                ASEADAL.BREAKDOWN_ELEMENT_VERSION
                                ASEADAL.CERTIFICATION
                                ASEADAL.CONTRACT
                                ASEADAL.DIGITAL_DOCUMENT_DEFINITION
                                ASEADAL.DIGITAL_FILE
                                ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.EVENT
                                ASEADAL.FILE
                                ASEADAL.FILE_LOCATION_IDENTIFICATION
                                ASEADAL.HARDCOPY
                                ASEADAL.INTERFACE_CONNECTOR_DEFINITION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_CONNECTOR_VERSION
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_SPECIFICATION
                                ASEADAL.INTERFACE_SPECIFICATION_DEFINITION
                                ASEADAL.INTERFACE_SPECIFICATION_VERSION
                                ASEADAL.ISSUE_REFERENCE
                                ASEADAL.LESSONS_LEARNED
                                ASEADAL.LOCATION
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.OBSERVATION_CONSEQUENCE
                                ASEADAL.ORGANIZATION
                                ASEADAL.PART
                                ASEADAL.PART_VERSION
                                ASEADAL.PART_VIEW_DEFINITION
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.PHYSICAL_DOCUMENT_DEFINITION
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_AS_INDIVIDUAL
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VIEW
                                ASEADAL.PRODUCT_AS_PLANNED
                                ASEADAL.PRODUCT_AS_REALIZED
                                ASEADAL.PRODUCT_CATEGORY
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.RESOURCE_AS_REALIZED_ASSIGNMENT
                                ASEADAL.RESOURCE_AS_REALIZED_RELATIONSHIP
                                ASEADAL.RESOURCE_AS_REALIZED_RESOURCE_ITEM
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP
                                ASEADAL.RESOURCE_EVENT_RELATIONSHIP
                                ASEADAL.RESOURCE_GROUP_RELATIONSHIP
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RESOURCE_ITEM_RELATIONSHIP
                                ASEADAL.RISK
                                ASEADAL.RISK_ATTITUDE
                                ASEADAL.RISK_CONTROL
                                ASEADAL.RISK_IMPACT
                                ASEADAL.RISK_OBJECTIVE
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.SCHEME
                                ASEADAL.SCHEME_VERSION
                                ASEADAL.SECURITY_CLASSIFICATION
                                ASEADAL.STATE
                                ASEADAL.TASK_IO_HIERARCHY
                                ASEADAL.VERIFICATION
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.CONTRACT_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_REALIZATION
                                ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                                ASEADAL.ACTIVITY_METHOD_RELATIONSHIP
                                ASEADAL.ANALYSIS_VERSION
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.BREAKDOWN
                                ASEADAL.BREAKDOWN_ELEMENT
                                ASEADAL.BREAKDOWN_VERSION
                                ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.EXTERNAL_CLASS_LIBRARY
                                ASEADAL.INFORMATION_USAGE_RIGHT
                                ASEADAL.INTERFACE_CONNECTOR_VERSION
                                ASEADAL.INTERFACE_SPECIFICATION_VERSION
                                ASEADAL.ISSUE
                                ASEADAL.JUSTIFICATION
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ITEM
                                ASEADAL.PART
                                ASEADAL.PART_VERSION
                                ASEADAL.PRODUCT_AS_INDIVIDUAL
                                ASEADAL.PRODUCT_AS_PLANNED
                                ASEADAL.PRODUCT_AS_REALIZED
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_GROUP_RELATIONSHIP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PROJECT
                                ASEADAL.REQUIREMENT
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.REQUIREMENT_COLLECTION_RELATIONSHIP
                                ASEADAL.REQUIREMENT_SOURCE
                                ASEADAL.REQUIREMENT_VERSION
                                ASEADAL.REQUIREMENT_VERSION_RELATIONSHIP
                                ASEADAL.REQUIREMENT_VIEW_DEFINITION
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_CONTROL
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.SECURITY_CLASSIFICATION
                                ASEADAL.TASK_ELEMENT
                                ASEADAL.TASK_ELEMENT_RELATIONSHIP
                                ASEADAL.TASK_IO
                                ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_ASSIGNMENT
                                ASEADAL.TASK_METHOD_RELATIONSHIP
                                ASEADAL.TASK_METHOD_VERSION
                                ASEADAL.TASK_METHOD_VERSION_ASSIGNMENT
                                ASEADAL.TASK_METHOD_VERSION_RELATIONSHIP
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.TRACING_RELATIONSHIP
                                ASEADAL.VERIFICATION
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT)))


(DEFTYPE-CLASS "ASEADAL.SECURITY_CLASSIFICATION_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.ACTIVITY_METHOD_REALIZATION
                                ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                                ASEADAL.ACTIVITY_METHOD_RELATIONSHIP
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.AFFECTED_ITEMS_ASSIGNMENT
                                ASEADAL.ALTERNATE_PART_RELATIONSHIP
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.ANALYSIS_VERSION
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.BREAKDOWN
                                ASEADAL.BREAKDOWN_ELEMENT_DEFINITION
                                ASEADAL.BREAKDOWN_ELEMENT_REALIZATION
                                ASEADAL.BREAKDOWN_ELEMENT_USAGE
                                ASEADAL.BREAKDOWN_ELEMENT_VERSION
                                ASEADAL.DIGITAL_DOCUMENT_DEFINITION
                                ASEADAL.DIGITAL_FILE
                                ASEADAL.DIRECTED_ACTIVITY
                                ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_ASSIGNMENT
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.EVENT
                                ASEADAL.HARDCOPY
                                ASEADAL.IN_ZONE
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR
                                ASEADAL.INTERFACE_CONNECTOR_DEFINITION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.INTERFACE_SPECIFICATION_DEFINITION
                                ASEADAL.INTERFACE_SPECIFICATION_VERSION
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.OBSERVATION
                                ASEADAL.OBSERVATION_CONSEQUENCE
                                ASEADAL.OBSERVATION_ITEM
                                ASEADAL.OBSERVATION_RELATIONSHIP
                                ASEADAL.PART
                                ASEADAL.PART_VERSION
                                ASEADAL.PART_VIEW_DEFINITION
                                ASEADAL.PHYSICAL_DOCUMENT_DEFINITION
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_AS_INDIVIDUAL
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VIEW
                                ASEADAL.PRODUCT_AS_PLANNED
                                ASEADAL.PRODUCT_AS_REALIZED
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_DESIGN_TO_INDIVIDUAL
                                ASEADAL.PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_GROUP_MEMBERSHIP
                                ASEADAL.PRODUCT_GROUP_RELATIONSHIP
                                ASEADAL.PRODUCT_RELATIONSHIP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT_RELATIONSHIP
                                ASEADAL.PROMISSORY_USAGE
                                ASEADAL.REQUIREMENT
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.REQUIREMENT_COLLECTION_RELATIONSHIP
                                ASEADAL.REQUIREMENT_SOURCE
                                ASEADAL.REQUIREMENT_VERSION
                                ASEADAL.REQUIREMENT_VERSION_RELATIONSHIP
                                ASEADAL.REQUIREMENT_VIEW_DEFINITION
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RISK_COMMUNICATION
                                ASEADAL.RISK_IMPACT
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.TASK_ELEMENT
                                ASEADAL.TASK_ELEMENT_RELATIONSHIP
                                ASEADAL.TASK_ELEMENT_STATE_RELATIONSHIP
                                ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_ASSIGNMENT
                                ASEADAL.TASK_METHOD_RELATIONSHIP
                                ASEADAL.TASK_METHOD_VERSION
                                ASEADAL.TASK_METHOD_VERSION_ASSIGNMENT
                                ASEADAL.TASK_METHOD_VERSION_RELATIONSHIP
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.TASK_OBJECTIVE_STATE_RELATIONSHIP
                                ASEADAL.TRACING_RELATIONSHIP
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT
                                ASEADAL.WORK_OUTPUT_ASSIGNMENT
                                ASEADAL.WORK_OUTPUT_RELATIONSHIP
                                ASEADAL.WORK_REQUEST
                                ASEADAL.WORK_REQUEST_STATUS)))


(DEFTYPE-CLASS "ASEADAL.EXTERNAL_IDENTIFICATION_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.DOCUMENT_DEFINITION
                                ASEADAL.FILE
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.PRODUCT
                                ASEADAL.PROJECT
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.RISK_STAKEHOLDER
                                ASEADAL.WORK_OUTPUT)))


(DEFTYPE-CLASS "ASEADAL.DESCRIPTIVE_OR_NUMERICAL"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.DESCRIPTIVE_DOCUMENT_PROPERTY
                                ASEADAL.NUMERICAL_DOCUMENT_PROPERTY)))


(DEFTYPE-CLASS "ASEADAL.DOCUMENT_PROPERTY_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (SAFE-FIND-EU-CLASS 'ASEADAL.PROPERTY_ASSIGNMENT_SELECT))


(DEFTYPE-CLASS "ASEADAL.REQUIREMENT_ASSIGNMENT_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ALTERNATE_PART_RELATIONSHIP
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_DEFINITION_ASSIGNMENT
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.BREAKDOWN
                                ASEADAL.BREAKDOWN_ELEMENT
                                ASEADAL.BREAKDOWN_ELEMENT_REALIZATION
                                ASEADAL.BREAKDOWN_ELEMENT_USAGE
                                ASEADAL.BREAKDOWN_ELEMENT_VERSION
                                ASEADAL.BREAKDOWN_VERSION
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.IN_ZONE
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.INTERFACE_SPECIFICATION
                                ASEADAL.PART_VERSION
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VERSION
                                ASEADAL.PRODUCT_AS_PLANNED
                                ASEADAL.PRODUCT_AS_REALIZED
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.REQUIRED_RESOURCE_BY_SPECIFICATION
                                ASEADAL.STATE
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.VERIFICATION
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_OUTPUT)))


(DEFTYPE-CLASS "ASEADAL.REQUIREMENT_SOURCE_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_DEFINITION_ASSIGNMENT
                                ASEADAL.APPROVAL_ASSIGNMENT
                                ASEADAL.APPROVING_PERSON_ORGANIZATION
                                ASEADAL.CERTIFICATION_ASSIGNMENT
                                ASEADAL.CHARACTERIZABLE_OBJECT
                                ASEADAL.CONTRACT_ASSIGNMENT
                                ASEADAL.DIRECTED_ACTIVITY
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.IN_ZONE
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.OBSERVATION
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                                ASEADAL.PART_VERSION
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VERSION
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT_ASSIGNMENT
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_STAKEHOLDER
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.SHAPE_ELEMENT
                                ASEADAL.STATE
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.VERIFICATION
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP)))


(DEFTYPE-CLASS "ASEADAL.BEHAVIOUR_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.BEHAVIOUR_VIEW_DEFINITION)))


(DEFTYPE-CLASS "ASEADAL.BEHAVIOUR_MODEL"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.FUNCTION_BASED_BEHAVIOUR_MODEL
                                ASEADAL.STATE_BASED_BEHAVIOUR_MODEL)))


(DEFTYPE-CLASS "ASEADAL.EXPRESSION_ASSIGNMENT_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.CONDITION)))


(DEFTYPE-CLASS "ASEADAL.ASSIGNED_NAME_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ANALYSIS
                                ASEADAL.BREAKDOWN_ELEMENT_REALIZATION
                                ASEADAL.EVENT
                                ASEADAL.EXTERNAL_CLASS_LIBRARY
                                ASEADAL.GROUP
                                ASEADAL.GROUP_RELATIONSHIP
                                ASEADAL.OBSERVATION
                                ASEADAL.RISK)))


(DEFTYPE-CLASS "ASEADAL.PARAMETER_VALUE_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.GENERIC_EXPRESSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.REPRESENTATION
                                ASEADAL.REPRESENTATION_ITEM
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.STATE_RELATIONSHIP
                                ASEADAL.VALUE_WITH_UNIT)))


(DEFTYPE-CLASS "ASEADAL.REQUIRED_RESOURCE_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.CERTIFICATION_ASSIGNMENT
                                ASEADAL.CONDITION_EVALUATION_ASSIGNMENT
                                ASEADAL.CONTRACT_ASSIGNMENT
                                ASEADAL.EVENT
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.JUSTIFICATION
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.ORGANIZATION
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.POSITION
                                ASEADAL.POSITION_TYPE
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.SCHEME
                                ASEADAL.SCHEME_ENTRY
                                ASEADAL.SCHEME_VERSION
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.TASK_ELEMENT
                                ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_ASSIGNMENT
                                ASEADAL.TASK_METHOD_VERSION
                                ASEADAL.TASK_METHOD_VERSION_ASSIGNMENT
                                ASEADAL.TASK_STEP
                                ASEADAL.TYPE_OF_PERSON
                                ASEADAL.VERIFICATION
                                ASEADAL.WORK_ORDER)))


(DEFTYPE-CLASS "ASEADAL.LIST_OF_TEXT_BASED_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               MAKE-INSTANCE
               'LIST-TYP
               :L-BOUND
               1
               :U-BOUND
               :?
               :BASE-TYPE
               (SAFE-FIND-EU-CLASS 'ASEADAL.TEXTUAL_EXPRESSION_REPRESENTATION_ITEM)
               :UNIQUE
               NIL)


(DEFTYPE-CLASS "ASEADAL.LIST_OR_SET_OF_TEXT_BASED_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.LIST_OF_TEXT_BASED_ITEM
                                ASEADAL.SET_OF_TEXT_BASED_ITEM)))


(DEFTYPE-CLASS "ASEADAL.SET_OF_TEXT_BASED_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               MAKE-INSTANCE
               'SET-TYP
               :L-BOUND
               1
               :U-BOUND
               :?
               :BASE-TYPE
               (SAFE-FIND-EU-CLASS 'ASEADAL.TEXTUAL_EXPRESSION_REPRESENTATION_ITEM))


(DEFTYPE-CLASS "ASEADAL.TEXT_BASED_ITEM_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.INCLUDED_TEXT_BASED_REPRESENTATION
                                ASEADAL.TEXTUAL_EXPRESSION_COMPOSITION
                                ASEADAL.TEXTUAL_EXPRESSION_REPRESENTATION_ITEM)))


(DEFTYPE-CLASS "ASEADAL.ALIAS_IDENTIFICATION_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ADDRESS
                                ASEADAL.APPROVAL
                                ASEADAL.APPROVAL_STATUS
                                ASEADAL.BREAKDOWN
                                ASEADAL.BREAKDOWN_ELEMENT
                                ASEADAL.BREAKDOWN_ELEMENT_DEFINITION
                                ASEADAL.BREAKDOWN_ELEMENT_VERSION
                                ASEADAL.BREAKDOWN_VERSION
                                ASEADAL.CERTIFICATION
                                ASEADAL.CONTRACT
                                ASEADAL.DIGITAL_DOCUMENT_DEFINITION
                                ASEADAL.DIGITAL_FILE
                                ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.EVENT
                                ASEADAL.HARDCOPY
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR
                                ASEADAL.INTERFACE_CONNECTOR_DEFINITION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_CONNECTOR_VERSION
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.INTERFACE_SPECIFICATION
                                ASEADAL.INTERFACE_SPECIFICATION_DEFINITION
                                ASEADAL.INTERFACE_SPECIFICATION_VERSION
                                ASEADAL.ITEM_SHAPE
                                ASEADAL.JUSTIFICATION
                                ASEADAL.JUSTIFICATION_ASSIGNMENT
                                ASEADAL.JUSTIFICATION_RELATIONSHIP
                                ASEADAL.JUSTIFICATION_SUPPORT_ASSIGNMENT
                                ASEADAL.ORGANIZATION
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                                ASEADAL.PART
                                ASEADAL.PART_VERSION
                                ASEADAL.PART_VIEW_DEFINITION
                                ASEADAL.PERSON
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.PHYSICAL_DOCUMENT_DEFINITION
                                ASEADAL.PRODUCT_AS_INDIVIDUAL
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VIEW
                                ASEADAL.PRODUCT_AS_PLANNED
                                ASEADAL.PRODUCT_AS_REALIZED
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_RELATIONSHIP
                                ASEADAL.PROJECT
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.REQUIREMENT_COLLECTION_RELATIONSHIP
                                ASEADAL.REQUIREMENT_SOURCE
                                ASEADAL.REQUIREMENT_VERSION_RELATIONSHIP
                                ASEADAL.SECURITY_CLASSIFICATION
                                ASEADAL.SECURITY_CLASSIFICATION_ASSIGNMENT
                                ASEADAL.SHAPE_ELEMENT_RELATIONSHIP
                                ASEADAL.TRACING_RELATIONSHIP
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP)))


(DEFTYPE-CLASS "ASEADAL.DESCRIPTION_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ANALISED_ITEM
                                ASEADAL.ANALYSIS
                                ASEADAL.BEHAVIOUR
                                ASEADAL.BEHAVIOUR_MODEL
                                ASEADAL.BEHAVIOUR_VERSION
                                ASEADAL.BEHAVIOUR_VIEW_DEFINITION
                                ASEADAL.CONDITION
                                ASEADAL.EVENT
                                ASEADAL.GENERAL_MODEL_PARAMETER
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.OBSERVATION
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.REPRESENTATION
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.STATE_BASED_BEHAVIOUR_MODEL
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.STATE_DEFINITION_RELATIONSHIP
                                ASEADAL.TASK_IO)))


(DEFTYPE-CLASS "ASEADAL.STATE_BASED_BEHAVIOUR_ELEMENT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.STATE_DEFINITION
                                ASEADAL.STATE_DEFINITION_RELATIONSHIP)))


(DEFTYPE-CLASS "ASEADAL.CERTIFICATION_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPROVING_PERSON_ORGANIZATION
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.BEHAVIOUR_MODEL
                                ASEADAL.BREAKDOWN
                                ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_VERSION
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_SPECIFICATION_VERSION
                                ASEADAL.JUSTIFICATION
                                ASEADAL.LESSONS_LEARNED
                                ASEADAL.PART
                                ASEADAL.PART_VERSION
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_AS_INDIVIDUAL
                                ASEADAL.PRODUCT_AS_PLANNED
                                ASEADAL.PRODUCT_AS_REALIZED
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_GROUP_RELATIONSHIP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VERSION_RELATIONSHIP
                                ASEADAL.PROJECT
                                ASEADAL.QUALIFICATION_ASSIGNMENT
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.TASK_ELEMENT
                                ASEADAL.TASK_IO
                                ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_VERSION
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_OUTPUT)))


(DEFTYPE-CLASS "ASEADAL.EVENT_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.APPROVAL
                                ASEADAL.CERTIFICATION
                                ASEADAL.CONTRACT
                                ASEADAL.JUSTIFICATION
                                ASEADAL.OBSERVATION
                                ASEADAL.PRODUCT
                                ASEADAL.PROJECT
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.RISK
                                ASEADAL.VERIFICATION
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.STRING_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.ACTIVITY_METHOD_REALIZATION
                                ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP
                                ASEADAL.ACTIVITY_METHOD_RELATIONSHIP
                                ASEADAL.ACTIVITY_PROPERTY
                                ASEADAL.ACTIVITY_RELATIONSHIP
                                ASEADAL.ALTERNATE_PART_RELATIONSHIP
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.APPROVAL
                                ASEADAL.APPROVAL_RELATIONSHIP
                                ASEADAL.APPROVAL_STATUS
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.ASSIGNED_PROPERTY
                                ASEADAL.BREAKDOWN
                                ASEADAL.BREAKDOWN_ELEMENT
                                ASEADAL.BREAKDOWN_ELEMENT_REALIZATION
                                ASEADAL.BREAKDOWN_ELEMENT_USAGE
                                ASEADAL.BREAKDOWN_ELEMENT_VERSION
                                ASEADAL.CERTIFICATION
                                ASEADAL.CONDITION
                                ASEADAL.CONDITION_EVALUATION
                                ASEADAL.CONDITION_PARAMETER
                                ASEADAL.CONDITION_RELATIONSHIP
                                ASEADAL.CONTRACT
                                ASEADAL.DATE_OR_DATE_TIME_ASSIGNMENT
                                ASEADAL.DIGITAL_DOCUMENT_DEFINITION
                                ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_ASSIGNMENT
                                ASEADAL.DOCUMENT_DEFINITION_RELATIONSHIP
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.EVENT
                                ASEADAL.EXPERIENCE_GAINED
                                ASEADAL.EXPERIENCE_TYPE
                                ASEADAL.EXTERNAL_ITEM_IDENTIFICATION
                                ASEADAL.EXTERNAL_SOURCE_IDENTIFICATION
                                ASEADAL.FILE_RELATIONSHIP
                                ASEADAL.GLOBAL_LOCATION_REPRESENTATION
                                ASEADAL.IDENTIFICATION_ASSIGNMENT
                                ASEADAL.INDEPENDENT_PROPERTY
                                ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP
                                ASEADAL.INFORMATION_RIGHT
                                ASEADAL.INFORMATION_USAGE_RIGHT
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR
                                ASEADAL.INTERFACE_CONNECTOR_DEFINITION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_DEFINITION_FOR
                                ASEADAL.JUSTIFICATION
                                ASEADAL.JUSTIFICATION_ASSIGNMENT
                                ASEADAL.JUSTIFICATION_RELATIONSHIP
                                ASEADAL.JUSTIFICATION_SUPPORT_ASSIGNMENT
                                ASEADAL.LOCATION
                                ASEADAL.LOCATION_ASSIGNMENT
                                ASEADAL.LOCATION_RELATIONSHIP
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.MANAGED_RESOURCE_RELATIONSHIP
                                ASEADAL.OBSERVATION
                                ASEADAL.OBSERVATION_CONSEQUENCE
                                ASEADAL.OBSERVATION_RELATIONSHIP
                                ASEADAL.ORGANIZATION_RELATIONSHIP
                                ASEADAL.ORGANIZATION_TYPE
                                ASEADAL.ORGANIZATIONAL_LOCATION_IDENTIFICATION
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.PHYSICAL_DOCUMENT_DEFINITION
                                ASEADAL.POSITION
                                ASEADAL.POSITION_GROUP
                                ASEADAL.POSITION_RELATIONSHIP
                                ASEADAL.POSITION_ROLE
                                ASEADAL.POSITION_TYPE
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_AS_INDIVIDUAL
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VERSION
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VIEW
                                ASEADAL.PRODUCT_BASED_LOCATION_IDENTIFICATION
                                ASEADAL.PRODUCT_CATEGORY
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_GROUP_RELATIONSHIP
                                ASEADAL.PRODUCT_RELATIONSHIP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.PROJECT_ASSIGNMENT
                                ASEADAL.PROJECT_RELATIONSHIP
                                ASEADAL.QUALIFICATION_TYPE
                                ASEADAL.REGIONAL_COORDINATE
                                ASEADAL.REGIONAL_GRID_LOCATION_REPRESENTATION
                                ASEADAL.RELATED_CONDITION_PARAMETER
                                ASEADAL.REPRESENTATION_ITEM
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.REQUIRED_RESOURCE_RELATIONSHIP
                                ASEADAL.REQUIREMENT
                                ASEADAL.REQUIREMENT_ASSIGNMENT
                                ASEADAL.REQUIREMENT_COLLECTION_RELATIONSHIP
                                ASEADAL.REQUIREMENT_SOURCE
                                ASEADAL.REQUIREMENT_VERSION
                                ASEADAL.REQUIREMENT_VERSION_RELATIONSHIP
                                ASEADAL.REQUIREMENT_VIEW_DEFINITION
                                ASEADAL.RESOURCE_AS_REALIZED
                                ASEADAL.RESOURCE_AS_REALIZED_RELATIONSHIP
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP
                                ASEADAL.RESOURCE_EVENT_RELATIONSHIP
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RESOURCE_ITEM_RELATIONSHIP
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.TASK_ELEMENT
                                ASEADAL.TASK_ELEMENT_RELATIONSHIP
                                ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_ASSIGNMENT
                                ASEADAL.TASK_METHOD_RELATIONSHIP
                                ASEADAL.TASK_METHOD_VERSION
                                ASEADAL.TASK_METHOD_VERSION_ASSIGNMENT
                                ASEADAL.TASK_METHOD_VERSION_RELATIONSHIP
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.TRACING_RELATIONSHIP
                                ASEADAL.TYPE_OF_PERSON
                                ASEADAL.TYPE_OF_PERSON_ASSIGNMENT
                                ASEADAL.TYPE_OF_PERSON_DEFINITION
                                ASEADAL.TYPE_OF_PERSON_DEFINITION_RELATIONSHIP
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_OUTPUT
                                ASEADAL.WORK_OUTPUT_RELATIONSHIP
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.SHAPE_DEPENDENT_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ITEM_SHAPE
                                ASEADAL.SHAPE_ELEMENT)))


(DEFTYPE-CLASS "ASEADAL.SHAPE_MODEL"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.EXTERNAL_GEOMETRIC_MODEL
                                ASEADAL.GEOMETRIC_MODEL)))


(DEFTYPE-CLASS "ASEADAL.SHAPE_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ITEM_SHAPE
                                ASEADAL.SHAPE_ELEMENT
                                ASEADAL.SHAPE_ELEMENT_RELATIONSHIP)))


(DEFTYPE-CLASS "ASEADAL.SHAPEABLE_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.CHARACTERIZABLE_OBJECT
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.VIEW_DEFINITION_USAGE)))


(DEFTYPE-CLASS "ASEADAL.DEFINED_ACTIVITIES"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY_ACTUAL
                                ASEADAL.BEHAVIOUR_DESCRIPTION_ASSOCIATION
                                ASEADAL.EVENT_ASSIGNMENT
                                ASEADAL.LESSONS_LEARNED
                                ASEADAL.OBSERVATION_CONSEQUENCE
                                ASEADAL.PRODUCT
                                ASEADAL.PROJECT
                                ASEADAL.RESOURCE_AS_REALIZED
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.WORK_OUTPUT)))


(DEFTYPE-CLASS "ASEADAL.DEFINED_METHODS"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.BEHAVIOUR_MODEL
                                ASEADAL.EVENT
                                ASEADAL.ISSUE
                                ASEADAL.LESSONS_LEARNED
                                ASEADAL.OBSERVATION_CONSEQUENCE
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_ASSESSMENT
                                ASEADAL.WORK_OUTPUT_ASSIGNMENT)))


(DEFTYPE-CLASS "ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ORGANIZATION
                                ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT
                                ASEADAL.PERSON
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION
                                ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP
                                ASEADAL.RISK_STAKEHOLDER
                                ASEADAL.TYPE_OF_PERSON
                                ASEADAL.TYPE_OF_PERSON_DEFINITION_RELATIONSHIP)))


(DEFTYPE-CLASS "ASEADAL.QUALIFICATIONS_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ORGANIZATION
                                ASEADAL.PERSON
                                ASEADAL.PERSON_IN_ORGANIZATION)))


(DEFTYPE-CLASS "ASEADAL.STATE_OF_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ALTERNATE_PART_RELATIONSHIP
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT
                                ASEADAL.APPLIED_STATE_DEFINITION_ASSIGNMENT
                                ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.BEHAVIOUR_DESCRIPTION_ASSOCIATION
                                ASEADAL.BREAKDOWN
                                ASEADAL.BREAKDOWN_ELEMENT
                                ASEADAL.BREAKDOWN_ELEMENT_DEFINITION
                                ASEADAL.BREAKDOWN_ELEMENT_REALIZATION
                                ASEADAL.BREAKDOWN_ELEMENT_USAGE
                                ASEADAL.BREAKDOWN_ELEMENT_VERSION
                                ASEADAL.BREAKDOWN_VERSION
                                ASEADAL.CERTIFICATION
                                ASEADAL.CONTRACT
                                ASEADAL.DIGITAL_DOCUMENT_DEFINITION
                                ASEADAL.DIGITAL_FILE
                                ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.EVENT
                                ASEADAL.FILE
                                ASEADAL.FILE_LOCATION_IDENTIFICATION
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_DEFINITION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_CONNECTOR_VERSION
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.INTERFACE_SPECIFICATION
                                ASEADAL.INTERFACE_SPECIFICATION_DEFINITION
                                ASEADAL.INTERFACE_SPECIFICATION_VERSION
                                ASEADAL.LOCATION
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.OBSERVATION
                                ASEADAL.OBSERVATION_CONSEQUENCE
                                ASEADAL.ORGANIZATION
                                ASEADAL.PART
                                ASEADAL.PART_VERSION
                                ASEADAL.PART_VIEW_DEFINITION
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.PHYSICAL_DOCUMENT_DEFINITION
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_AS_INDIVIDUAL
                                ASEADAL.PRODUCT_AS_INDIVIDUAL_VIEW
                                ASEADAL.PRODUCT_AS_PLANNED
                                ASEADAL.PRODUCT_AS_REALIZED
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_CONFIGURATION
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.RESOURCE_AS_REALIZED
                                ASEADAL.RESOURCE_AS_REALIZED_ASSIGNMENT
                                ASEADAL.RESOURCE_AS_REALIZED_RELATIONSHIP
                                ASEADAL.RESOURCE_AS_REALIZED_RESOURCE_ITEM
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP
                                ASEADAL.RESOURCE_EVENT_RELATIONSHIP
                                ASEADAL.RESOURCE_GROUP_RELATIONSHIP
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RESOURCE_ITEM_RELATIONSHIP
                                ASEADAL.RISK_ANALYSIS
                                ASEADAL.RISK_ATTITUDE
                                ASEADAL.RISK_COMMUNICATION
                                ASEADAL.RISK_CONTROL
                                ASEADAL.RISK_EVALUATION
                                ASEADAL.RISK_IMPACT
                                ASEADAL.RISK_PERCEPTION
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.SCHEME
                                ASEADAL.SCHEME_VERSION
                                ASEADAL.SECURITY_CLASSIFICATION
                                ASEADAL.STATE
                                ASEADAL.STATE_ASSESSMENT
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.STATE_DEFINITION_RELATIONSHIP
                                ASEADAL.STATE_RELATIONSHIP
                                ASEADAL.STATE_ROLE
                                ASEADAL.TASK_METHOD_VERSION
                                ASEADAL.TASK_OBJECTIVE
                                ASEADAL.TYPE_OF_PERSON
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_ORDER
                                ASEADAL.WORK_REQUEST)))


(DEFTYPE-CLASS "ASEADAL.TASK_ITEM"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD_ITEM))


(DEFTYPE-CLASS "ASEADAL.CARTESIAN_TRANSFORMATION"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.CARTESIAN_TRANSFORMATION_2D
                                ASEADAL.CARTESIAN_TRANSFORMATION_3D)))


(DEFTYPE-CLASS "ASEADAL.TEMPLATE_DEFINITION_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.GEOMETRIC_MODEL)))


(DEFTYPE-CLASS "ASEADAL.LIMIT_QUALIFIER_LIST"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'ENUM-TYP
                              :ENUMERATION-LIST
                              '(MINIMUM MAXIMUM)))


(DEFTYPE-CLASS "ASEADAL.LOCATION_ASSIGNMENT_SELECT"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.ANALYSIS_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT
                                ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT
                                ASEADAL.DOCUMENT
                                ASEADAL.DOCUMENT_DEFINITION
                                ASEADAL.DOCUMENT_VERSION
                                ASEADAL.EVENT
                                ASEADAL.FILE
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.ORGANIZATION
                                ASEADAL.ORGANIZATION_TYPE
                                ASEADAL.PERSON
                                ASEADAL.PERSON_IN_ORGANIZATION
                                ASEADAL.POSITION
                                ASEADAL.POSITION_TYPE
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_GROUP
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PRODUCT_VIEW_DEFINITION
                                ASEADAL.PROJECT
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_ITEM_ASSIGNMENT
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.TASK_ELEMENT
                                ASEADAL.TASK_METHOD
                                ASEADAL.TASK_METHOD_ASSIGNMENT
                                ASEADAL.TASK_METHOD_VERSION
                                ASEADAL.TASK_METHOD_VERSION_ASSIGNMENT
                                ASEADAL.TYPE_OF_PERSON)))


(DEFTYPE-CLASS "ASEADAL.PRODUCT_BASED_LOCATION_REPRESENTATION"
               AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
               :TYPE-DESCRIPTOR
               (MAKE-INSTANCE 'SELECT-TYP
                              :SELECT-LIST
                              '(ASEADAL.ACTIVITY
                                ASEADAL.ACTIVITY_METHOD
                                ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                                ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                                ASEADAL.BREAKDOWN_OF
                                ASEADAL.CONDITION_EVALUATION_PARAMETER
                                ASEADAL.CONSTRAINED_GENERAL_PARAMETER_RELATIONSHIP
                                ASEADAL.EVENT
                                ASEADAL.INTERFACE_CONNECTION
                                ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE
                                ASEADAL.INTERFACE_DEFINITION_CONNECTION
                                ASEADAL.JUSTIFICATION
                                ASEADAL.LANGUAGE_INDICATION
                                ASEADAL.LESSONS_LEARNED
                                ASEADAL.MANAGED_RESOURCE
                                ASEADAL.MARKET
                                ASEADAL.OBSERVATION
                                ASEADAL.ORGANIZATION_STAKEHOLDER
                                ASEADAL.ORGANIZATION_TYPE
                                ASEADAL.PRODUCT
                                ASEADAL.PRODUCT_CONCEPT
                                ASEADAL.PRODUCT_VERSION
                                ASEADAL.PROJECT
                                ASEADAL.REPRESENTATION
                                ASEADAL.REQUIRED_RESOURCE
                                ASEADAL.RESOURCE_EVENT
                                ASEADAL.RESOURCE_ITEM
                                ASEADAL.RESOURCE_PROPERTY
                                ASEADAL.RISK
                                ASEADAL.RISK_ASSESSMENT
                                ASEADAL.RISK_ATTITUDE
                                ASEADAL.RISK_CONSEQUENCE
                                ASEADAL.RISK_ESTIMATION
                                ASEADAL.RISK_REDUCTION
                                ASEADAL.RISK_STAKEHOLDER
                                ASEADAL.RISK_TREATMENT
                                ASEADAL.STATE
                                ASEADAL.STATE_DEFINITION
                                ASEADAL.STATE_RELATIONSHIP
                                ASEADAL.TASK_IO
                                ASEADAL.VERIFICATION
                                ASEADAL.VERIFICATION_EVIDENCE
                                ASEADAL.VIEW_DEFINITION_RELATIONSHIP
                                ASEADAL.WORK_OUTPUT
                                ASEADAL.WORK_REQUEST)))




;;;=================
;;; EntityTypes
;;;=================
(DEFENTITY-CLASS "ASEADAL.RESOURCE_GROUP_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("quantity"
                   (:INITARG
                    :ASEADAL.RESOURCE_GROUP_RELATIONSHIP.QUANTITY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VALUE_WITH_UNIT))
                   (:OPTIONAL T))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.RESOURCE_GROUP_RELATIONSHIP))
      '(ASEADAL.RESOURCE_ITEM_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.GROUP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.GROUP.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("name"
                   (:INITARG :ASEADAL.GROUP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.GROUP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("elements"
                   (:INITARG :ASEADAL.GROUP.ELEMENTS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.GROUPABLE_ITEM)))
                   (:OPTIONAL NIL))
                  ("membership_meaning"
                   (:INITARG :ASEADAL.GROUP.MEMBERSHIP_MEANING)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.GROUP_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("description"
                   (:INITARG :ASEADAL.GROUP_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relation_type"
                   (:INITARG :ASEADAL.GROUP_RELATIONSHIP.RELATION_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("relating_group"
                   (:INITARG
                    :ASEADAL.GROUP_RELATIONSHIP.RELATING_GROUP)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.GROUP))
                   (:OPTIONAL NIL))
                  ("related_group"
                   (:INITARG :ASEADAL.GROUP_RELATIONSHIP.RELATED_GROUP)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.GROUP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.ACTIVITY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.ACTIVITY.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.ACTIVITY.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.ACTIVITY.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("chosen_method"
                   (:INITARG :ASEADAL.ACTIVITY.CHOSEN_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.ACTIVITY_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.ACTIVITY_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.ACTIVITY_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating_activity"
                   (:INITARG
                    :ASEADAL.ACTIVITY_RELATIONSHIP.RELATING_ACTIVITY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY))
                   (:OPTIONAL NIL))
                  ("related_activity"
                   (:INITARG
                    :ASEADAL.ACTIVITY_RELATIONSHIP.RELATED_ACTIVITY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.ACTIVITY_STATUS"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_activity"
                   (:INITARG
                    :ASEADAL.ACTIVITY_STATUS.ASSIGNED_ACTIVITY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY))
                   (:OPTIONAL NIL))
                  ("status"
                   (:INITARG :ASEADAL.ACTIVITY_STATUS.STATUS)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_activity"
                   (:INITARG
                    :ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT.ASSIGNED_ACTIVITY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG
                    :ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.ACTIVITY_ITEM)))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.APPLIED_ACTIVITY_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.ACTIVITY_METHOD"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.ACTIVITY_METHOD.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.ACTIVITY_METHOD.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("consequence"
                   (:INITARG :ASEADAL.ACTIVITY_METHOD.CONSEQUENCE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("purpose"
                   (:INITARG :ASEADAL.ACTIVITY_METHOD.PURPOSE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.ACTIVITY_ACTUAL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ACTIVITY_ACTUAL))
      '(ASEADAL.ACTIVITY))


(DEFENTITY-CLASS "ASEADAL.ACTIVITY_HAPPENING"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("actual"
                   (:INITARG :ASEADAL.ACTIVITY_HAPPENING.ACTUAL)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_ACTUAL))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING_ACTIVITY
                     INSTANCE
                     'ASEADAL.ACTIVITY_RELATIONSHIP)))
                  ("predicted"
                   (:INITARG :ASEADAL.ACTIVITY_HAPPENING.PREDICTED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED_ACTIVITY
                     INSTANCE
                     'ASEADAL.ACTIVITY_RELATIONSHIP)))
                  ("relating_activity"
                   (:INITARG
                    :ASEADAL.ACTIVITY_HAPPENING.RELATING_ACTIVITY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ACTIVITY_HAPPENING))
      '(ASEADAL.ACTIVITY_RELATIONSHIP))


(DEFDOMAIN-RULES ASEADAL.ACTIVITY_HAPPENING
                 ("WR1"
                  (EXPRESS-NOT (IN
                                "ACTIVITY_AS_REALIZED.ACTIVITY_ACTUAL"
                                (BI-TYPEOF
                                 (%PREDICTED INSTANCE NIL))))))


(DEFENTITY-CLASS "ASEADAL.APPROVAL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("status"
                   (:INITARG :ASEADAL.APPROVAL.STATUS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.APPROVAL_STATUS))
                   (:OPTIONAL NIL))
                  ("purpose"
                   (:INITARG :ASEADAL.APPROVAL.PURPOSE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("planned_date"
                   (:INITARG :ASEADAL.APPROVAL.PLANNED_DATE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DATE_OR_DATE_TIME_SELECT))
                   (:OPTIONAL T))
                  ("actual_date"
                   (:INITARG :ASEADAL.APPROVAL.ACTUAL_DATE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DATE_OR_DATE_TIME_SELECT))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.APPROVAL_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_approval"
                   (:INITARG
                    :ASEADAL.APPROVAL_ASSIGNMENT.ASSIGNED_APPROVAL)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.APPROVAL))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.APPROVAL_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.APPROVAL_ITEM)))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.APPROVAL_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.APPROVAL_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relation_type"
                   (:INITARG
                    :ASEADAL.APPROVAL_RELATIONSHIP.RELATION_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.APPROVAL_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating_approval"
                   (:INITARG
                    :ASEADAL.APPROVAL_RELATIONSHIP.RELATING_APPROVAL)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.APPROVAL))
                   (:OPTIONAL NIL))
                  ("related_approval"
                   (:INITARG
                    :ASEADAL.APPROVAL_RELATIONSHIP.RELATED_APPROVAL)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.APPROVAL))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.APPROVAL_STATUS"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("status_name"
                   (:INITARG :ASEADAL.APPROVAL_STATUS.STATUS_NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.APPROVING_PERSON_ORGANIZATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("person_organization"
                   (:INITARG
                    :ASEADAL.APPROVING_PERSON_ORGANIZATION.PERSON_ORGANIZATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_SELECT))
                   (:OPTIONAL NIL))
                  ("approval_date"
                   (:INITARG
                    :ASEADAL.APPROVING_PERSON_ORGANIZATION.APPROVAL_DATE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DATE_OR_DATE_TIME_SELECT))
                   (:OPTIONAL T))
                  ("authorized_approval"
                   (:INITARG
                    :ASEADAL.APPROVING_PERSON_ORGANIZATION.AUTHORIZED_APPROVAL)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.APPROVAL))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG
                    :ASEADAL.APPROVING_PERSON_ORGANIZATION.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.CALENDAR_DATE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("year_component"
                   (:INITARG :ASEADAL.CALENDAR_DATE.YEAR_COMPONENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.YEAR_NUMBER))
                   (:OPTIONAL NIL))
                  ("month_component"
                   (:INITARG :ASEADAL.CALENDAR_DATE.MONTH_COMPONENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.MONTH_IN_YEAR_NUMBER))
                   (:OPTIONAL NIL))
                  ("day_component"
                   (:INITARG :ASEADAL.CALENDAR_DATE.DAY_COMPONENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DAY_IN_MONTH_NUMBER))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.DATE_TIME"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("date_component"
                   (:INITARG :ASEADAL.DATE_TIME.DATE_COMPONENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CALENDAR_DATE))
                   (:OPTIONAL NIL))
                  ("time_component"
                   (:INITARG :ASEADAL.DATE_TIME.TIME_COMPONENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.LOCAL_TIME))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.LOCAL_TIME"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("hour_component"
                   (:INITARG :ASEADAL.LOCAL_TIME.HOUR_COMPONENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.HOUR_IN_DAY))
                   (:OPTIONAL NIL))
                  ("minute_component"
                   (:INITARG :ASEADAL.LOCAL_TIME.MINUTE_COMPONENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.MINUTE_IN_HOUR))
                   (:OPTIONAL T))
                  ("second_component"
                   (:INITARG :ASEADAL.LOCAL_TIME.SECOND_COMPONENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SECOND_IN_MINUTE))
                   (:OPTIONAL T))
                  ("zone"
                   (:INITARG :ASEADAL.LOCAL_TIME.ZONE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TIME_OFFSET))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.TIME_OFFSET"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("hour_offset"
                   (:INITARG :ASEADAL.TIME_OFFSET.HOUR_OFFSET)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'INTEGER-TYP))
                   (:OPTIONAL NIL))
                  ("minute_offset"
                   (:INITARG :ASEADAL.TIME_OFFSET.MINUTE_OFFSET)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'INTEGER-TYP))
                   (:OPTIONAL T))
                  ("sense"
                   (:INITARG :ASEADAL.TIME_OFFSET.SENSE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.OFFSET_ORIENTATION))
                   (:OPTIONAL NIL))
                  ("actual_minute_offset"
                   (:INITARG :ASEADAL.TIME_OFFSET.ACTUAL_MINUTE_OFFSET)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'INTEGER-TYP))
                   (:DERIVED T)
                   (:EXPRESSION
                    (BI-NVL (%MINUTE_OFFSET INSTANCE NIL) 0)))))


(DEFDOMAIN-RULES ASEADAL.TIME_OFFSET
                 ("WR1"
                  (EXPRESS-AND (EXPRESS-<=
                                0
                                (%HOUR_OFFSET INSTANCE NIL))
                               (EXPRESS-<
                                (%HOUR_OFFSET INSTANCE NIL)
                                24)))
                 ("WR2"
                  (EXPRESS-AND (EXPRESS-<=
                                0
                                (%ACTUAL_MINUTE_OFFSET INSTANCE NIL))
                               (EXPRESS-<=
                                (%ACTUAL_MINUTE_OFFSET INSTANCE NIL)
                                59)))
                 ("WR3"
                  (EXPRESS-NOT (EXPRESS-AND
                                (EXPRESS-OR
                                 (EXPRESS-NOT-EQUAL
                                  (%HOUR_OFFSET INSTANCE NIL)
                                  0)
                                 (EXPRESS-NOT-EQUAL
                                  (%ACTUAL_MINUTE_OFFSET INSTANCE NIL)
                                  0))
                                (EXPRESS-EQUAL
                                 (%SENSE INSTANCE NIL)
                                 :EXACT)))))


(DEFENTITY-CLASS "ASEADAL.ADDRESS"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.ADDRESS.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("street_number"
                   (:INITARG :ASEADAL.ADDRESS.STREET_NUMBER)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("street"
                   (:INITARG :ASEADAL.ADDRESS.STREET)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("postal_box"
                   (:INITARG :ASEADAL.ADDRESS.POSTAL_BOX)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("town"
                   (:INITARG :ASEADAL.ADDRESS.TOWN)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("region"
                   (:INITARG :ASEADAL.ADDRESS.REGION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("postal_code"
                   (:INITARG :ASEADAL.ADDRESS.POSTAL_CODE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("country"
                   (:INITARG :ASEADAL.ADDRESS.COUNTRY)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("internal_location"
                   (:INITARG :ASEADAL.ADDRESS.INTERNAL_LOCATION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("facsimile_number"
                   (:INITARG :ASEADAL.ADDRESS.FACSIMILE_NUMBER)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("telephone_number"
                   (:INITARG :ASEADAL.ADDRESS.TELEPHONE_NUMBER)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("electronic_mail_address"
                   (:INITARG :ASEADAL.ADDRESS.ELECTRONIC_MAIL_ADDRESS)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("telex_number"
                   (:INITARG :ASEADAL.ADDRESS.TELEX_NUMBER)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("url"
                   (:INITARG :ASEADAL.ADDRESS.URL)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFDOMAIN-RULES ASEADAL.ADDRESS
                 ("WR1"
                  (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR
                                           (EXPRESS-OR
                                            (EXPRESS-OR
                                             (EXPRESS-OR
                                              (EXPRESS-OR
                                               (EXPRESS-OR
                                                (EXPRESS-OR
                                                 (EXPRESS-OR
                                                  (EXPRESS-OR
                                                   (BI-EXISTS
                                                    (%STREET_NUMBER
                                                     INSTANCE
                                                     NIL))
                                                   (BI-EXISTS
                                                    (%STREET
                                                     INSTANCE
                                                     NIL)))
                                                  (BI-EXISTS
                                                   (%POSTAL_BOX
                                                    INSTANCE
                                                    NIL)))
                                                 (BI-EXISTS
                                                  (%TOWN
                                                   INSTANCE
                                                   NIL)))
                                                (BI-EXISTS
                                                 (%REGION
                                                  INSTANCE
                                                  NIL)))
                                               (BI-EXISTS
                                                (%POSTAL_CODE
                                                 INSTANCE
                                                 NIL)))
                                              (BI-EXISTS
                                               (%COUNTRY
                                                INSTANCE
                                                NIL)))
                                             (BI-EXISTS
                                              (%INTERNAL_LOCATION
                                               INSTANCE
                                               NIL)))
                                            (BI-EXISTS
                                             (%FACSIMILE_NUMBER
                                              INSTANCE
                                              NIL)))
                                           (BI-EXISTS
                                            (%TELEPHONE_NUMBER
                                             INSTANCE
                                             NIL)))
                                          (BI-EXISTS
                                           (%ELECTRONIC_MAIL_ADDRESS
                                            INSTANCE
                                            NIL)))
                              (BI-EXISTS (%TELEX_NUMBER
                                          INSTANCE
                                          NIL)))))


(DEFENTITY-CLASS "ASEADAL.ADDRESS_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("address_type"
                   (:INITARG :ASEADAL.ADDRESS_ASSIGNMENT.ADDRESS_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("assigned_address"
                   (:INITARG
                    :ASEADAL.ADDRESS_ASSIGNMENT.ASSIGNED_ADDRESS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ADDRESS))
                   (:OPTIONAL NIL))
                  ("located_person_organizations"
                   (:INITARG
                    :ASEADAL.ADDRESS_ASSIGNMENT.LOCATED_PERSON_ORGANIZATIONS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_SELECT)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.ORGANIZATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.ORGANIZATION.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("name"
                   (:INITARG :ASEADAL.ORGANIZATION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.ORGANIZATION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relation_type"
                   (:INITARG
                    :ASEADAL.ORGANIZATION_RELATIONSHIP.RELATION_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.ORGANIZATION_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating_organization"
                   (:INITARG
                    :ASEADAL.ORGANIZATION_RELATIONSHIP.RELATING_ORGANIZATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ORGANIZATION))
                   (:OPTIONAL NIL))
                  ("related_organization"
                   (:INITARG
                    :ASEADAL.ORGANIZATION_RELATIONSHIP.RELATED_ORGANIZATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ORGANIZATION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.PERSON"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("last_name"
                   (:INITARG :ASEADAL.PERSON.LAST_NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("first_name"
                   (:INITARG :ASEADAL.PERSON.FIRST_NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("middle_names"
                   (:INITARG :ASEADAL.PERSON.MIDDLE_NAMES)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'LIST-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (MAKE-INSTANCE 'STRING-TYP)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL T))
                  ("prefix_titles"
                   (:INITARG :ASEADAL.PERSON.PREFIX_TITLES)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'LIST-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (MAKE-INSTANCE 'STRING-TYP)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL T))
                  ("suffix_titles"
                   (:INITARG :ASEADAL.PERSON.SUFFIX_TITLES)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'LIST-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (MAKE-INSTANCE 'STRING-TYP)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.PERSON_IN_ORGANIZATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("concerned_person"
                   (:INITARG
                    :ASEADAL.PERSON_IN_ORGANIZATION.CONCERNED_PERSON)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.PERSON))
                   (:OPTIONAL NIL))
                  ("containing_organization"
                   (:INITARG
                    :ASEADAL.PERSON_IN_ORGANIZATION.CONTAINING_ORGANIZATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ORGANIZATION))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.PERSON_IN_ORGANIZATION.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.IDENTIFICATION_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("identifier"
                   (:INITARG
                    :ASEADAL.IDENTIFICATION_ASSIGNMENT.IDENTIFIER)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.IDENTIFICATION_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.IDENTIFICATION_ASSIGNMENT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("items"
                   (:INITARG :ASEADAL.IDENTIFICATION_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.IDENTIFICATION_ITEM)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.ISSUE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ISSUE))
      '(ASEADAL.OBSERVATION))


(DEFENTITY-CLASS "ASEADAL.ISSUE_CONSEQUENCE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ISSUE_CONSEQUENCE))
      '(ASEADAL.OBSERVATION_CONSEQUENCE))


(DEFENTITY-CLASS "ASEADAL.ISSUE_REFERENCE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("item"
                   (:INITARG :ASEADAL.ISSUE_REFERENCE.ITEM)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.ISSUE_REFERENCE_ITEM)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ISSUE_REFERENCE))
      '(ASEADAL.OBSERVATION_ITEM))


(DEFENTITY-CLASS "ASEADAL.DIRECTED_ACTIVITY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("directive"
                   (:INITARG :ASEADAL.DIRECTED_ACTIVITY.DIRECTIVE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.WORK_ORDER))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.DIRECTED_ACTIVITY))
      '(ASEADAL.ACTIVITY))


(DEFENTITY-CLASS "ASEADAL.WORK_ORDER"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.WORK_ORDER.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.WORK_ORDER.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("in_response_to"
                   (:INITARG :ASEADAL.WORK_ORDER.IN_RESPONSE_TO)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.WORK_REQUEST)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.ACTIVITY_METHOD_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relation_type"
                   (:INITARG
                    :ASEADAL.ACTIVITY_METHOD_ASSIGNMENT.RELATION_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("assigned_method"
                   (:INITARG
                    :ASEADAL.ACTIVITY_METHOD_ASSIGNMENT.ASSIGNED_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))
                  ("associated_request"
                   (:INITARG
                    :ASEADAL.ACTIVITY_METHOD_ASSIGNMENT.ASSOCIATED_REQUEST)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.WORK_REQUEST))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.AFFECTED_ITEMS_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_work_request"
                   (:INITARG
                    :ASEADAL.AFFECTED_ITEMS_ASSIGNMENT.ASSIGNED_WORK_REQUEST)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.WORK_REQUEST))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.AFFECTED_ITEMS_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.AFFECTED_ITEM_SELECT)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.WORK_REQUEST"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("request_id"
                   (:INITARG :ASEADAL.WORK_REQUEST.REQUEST_ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("version_id"
                   (:INITARG :ASEADAL.WORK_REQUEST.VERSION_ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.WORK_REQUEST.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("purpose"
                   (:INITARG :ASEADAL.WORK_REQUEST.PURPOSE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.WORK_REQUEST_STATUS"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("status"
                   (:INITARG :ASEADAL.WORK_REQUEST_STATUS.STATUS)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("work_request"
                   (:INITARG :ASEADAL.WORK_REQUEST_STATUS.WORK_REQUEST)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.WORK_REQUEST))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.APPLIED_PROBABILITY_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_probability"
                   (:INITARG
                    :ASEADAL.APPLIED_PROBABILITY_ASSIGNMENT.ASSIGNED_PROBABILITY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PROBABILITY_SELECT))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG
                    :ASEADAL.APPLIED_PROBABILITY_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.PROBABLE_ITEM)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_risk_impact"
                   (:INITARG
                    :ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT.ASSIGNED_RISK_IMPACT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_IMPACT))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG
                    :ASEADAL.APPLIED_RISK_IMPACT_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.RISK_IMPACT_ITEM)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.APPLIED_RISK_SOURCE_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_risk"
                   (:INITARG
                    :ASEADAL.APPLIED_RISK_SOURCE_ASSIGNMENT.ASSIGNED_RISK)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.RISK))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG
                    :ASEADAL.APPLIED_RISK_SOURCE_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.RISK_SOURCE_ITEM)))
                   (:OPTIONAL NIL))
                  ("risk_context"
                   (:INITARG
                    :ASEADAL.APPLIED_RISK_SOURCE_ASSIGNMENT.RISK_CONTEXT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_CONTEXT))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.APPLIED_RISK_STATUS_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("risk"
                   (:INITARG
                    :ASEADAL.APPLIED_RISK_STATUS_ASSIGNMENT.RISK)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS 'ASEADAL.RISK)))
                   (:OPTIONAL NIL))
                  ("risk_status"
                   (:INITARG
                    :ASEADAL.APPLIED_RISK_STATUS_ASSIGNMENT.RISK_STATUS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_STATUS))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.LESSONS_LEARNED"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("is_assigned_to"
                   (:INITARG :ASEADAL.LESSONS_LEARNED.IS_ASSIGNED_TO)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DOCUMENTED_ELEMENT_SELECT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.LESSONS_LEARNED))
      '(ASEADAL.DOCUMENT_ASSIGNMENT))


(DEFENTITY-CLASS "ASEADAL.ORGANIZATION_STAKEHOLDER"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ORGANIZATION_STAKEHOLDER))
      '(ASEADAL.ORGANIZATION ASEADAL.RISK_STAKEHOLDER))


(DEFENTITY-CLASS "ASEADAL.PERSON_IN_ORGANIZATION_STAKEHOLDER"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PERSON_IN_ORGANIZATION_STAKEHOLDER))
      '(ASEADAL.PERSON_IN_ORGANIZATION ASEADAL.RISK_STAKEHOLDER))


(DEFENTITY-CLASS "ASEADAL.RISK"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.RISK.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.RISK.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.RISK.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.RISK_ACCEPTANCE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.RISK_ACCEPTANCE))
      '(ASEADAL.RISK_TREATMENT))


(DEFENTITY-CLASS "ASEADAL.RISK_ANALYSIS"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("risk_identification"
                   (:INITARG
                    :ASEADAL.RISK_ANALYSIS.RISK_IDENTIFICATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_IDENTIFICATION))
                   (:OPTIONAL NIL))
                  ("risk_estimate"
                   (:INITARG :ASEADAL.RISK_ANALYSIS.RISK_ESTIMATE)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.RISK_ESTIMATION)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.RISK_ASSESSMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("risk_analysis"
                   (:INITARG :ASEADAL.RISK_ASSESSMENT.RISK_ANALYSIS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.RISK_ANALYSIS)))
                   (:OPTIONAL NIL))
                  ("risk_evaluation"
                   (:INITARG :ASEADAL.RISK_ASSESSMENT.RISK_EVALUATION)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.RISK_EVALUATION)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.RISK_ATTITUDE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("criticality_factor"
                   (:INITARG :ASEADAL.RISK_ATTITUDE.CRITICALITY_FACTOR)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'NUMBER-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.RISK_AVOIDANCE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.RISK_AVOIDANCE))
      '(ASEADAL.RISK_TREATMENT))


(DEFENTITY-CLASS "ASEADAL.RISK_COMMUNICATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("inputs"
                   (:INITARG :ASEADAL.RISK_COMMUNICATION.INPUTS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.RISK_COMMUNICATION_SELECT)))
                   (:OPTIONAL NIL))
                  ("communicator"
                   (:INITARG :ASEADAL.RISK_COMMUNICATION.COMMUNICATOR)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_STAKEHOLDER))
                   (:OPTIONAL NIL))
                  ("communicatee"
                   (:INITARG :ASEADAL.RISK_COMMUNICATION.COMMUNICATEE)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.RISK_STAKEHOLDER)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.RISK_CONSEQUENCE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.RISK_CONSEQUENCE.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.RISK_CONSEQUENCE.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.RISK_CONTAINMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.RISK_CONTAINMENT))
      '(ASEADAL.RISK_TREATMENT))


(DEFENTITY-CLASS "ASEADAL.RISK_CONTEXT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.RISK_CONTEXT.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.RISK_CONTEXT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.RISK_CONTROL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("monitor"
                   (:INITARG :ASEADAL.RISK_CONTROL.MONITOR)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.RISK_ASSESSMENT)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.RISK_CRITERIA"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.RISK_CRITERIA))
      '(ASEADAL.RISK_PERCEPTION))


(DEFENTITY-CLASS "ASEADAL.RISK_ESTIMATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("inputs"
                   (:INITARG :ASEADAL.RISK_ESTIMATION.INPUTS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.RISK_CONTEXT)))
                   (:OPTIONAL NIL))
                  ("outputs"
                   (:INITARG :ASEADAL.RISK_ESTIMATION.OUTPUTS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.RISK_ESTIMATION_SELECT)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.RISK_EVALUATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.RISK_EVALUATION.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("name"
                   (:INITARG :ASEADAL.RISK_EVALUATION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.RISK_EVALUATION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("items"
                   (:INITARG :ASEADAL.RISK_EVALUATION.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.RISK_EVALUATION_SELECT)))
                   (:OPTIONAL NIL))
                  ("risk_criteria"
                   (:INITARG :ASEADAL.RISK_EVALUATION.RISK_CRITERIA)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.RISK_CRITERIA)))
                   (:OPTIONAL NIL))
                  ("risk_treatment"
                   (:INITARG :ASEADAL.RISK_EVALUATION.RISK_TREATMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_TREATMENT))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.RISK_IDENTIFICATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("inputs"
                   (:INITARG :ASEADAL.RISK_IDENTIFICATION.INPUTS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.RISK_IDENTIFICATION_SELECT)))
                   (:OPTIONAL NIL))
                  ("risk_stakeholder"
                   (:INITARG
                    :ASEADAL.RISK_IDENTIFICATION.RISK_STAKEHOLDER)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_STAKEHOLDER))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.RISK_IMPACT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("causal_consequence"
                   (:INITARG :ASEADAL.RISK_IMPACT.CAUSAL_CONSEQUENCE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_CONSEQUENCE))
                   (:OPTIONAL T))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.RISK_IMPACT))
      '(ASEADAL.RISK_CONSEQUENCE))


(DEFENTITY-CLASS "ASEADAL.RISK_LEVEL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("risk_attitude"
                   (:INITARG :ASEADAL.RISK_LEVEL.RISK_ATTITUDE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_ATTITUDE))
                   (:OPTIONAL NIL))
                  ("risk_objective"
                   (:INITARG :ASEADAL.RISK_LEVEL.RISK_OBJECTIVE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_OBJECTIVE))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RISK_CONTEXT INSTANCE 'ASEADAL.RISK_PERCEPTION)))
                  ("risk_context"
                   (:INITARG :ASEADAL.RISK_LEVEL.RISK_CONTEXT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_CONTEXT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.RISK_LEVEL))
      '(ASEADAL.RISK_PERCEPTION))


(DEFENTITY-CLASS "ASEADAL.RISK_LEVEL_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("related_risk_level"
                   (:INITARG
                    :ASEADAL.RISK_LEVEL_RELATIONSHIP.RELATED_RISK_LEVEL)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_LEVEL))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED_RISK_PERCEPTION
                     INSTANCE
                     'ASEADAL.RISK_PERCEPTION_RELATIONSHIP)))
                  ("relating_risk_level"
                   (:INITARG
                    :ASEADAL.RISK_LEVEL_RELATIONSHIP.RELATING_RISK_LEVEL)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_LEVEL))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING_RISK_PERCEPTION
                     INSTANCE
                     'ASEADAL.RISK_PERCEPTION_RELATIONSHIP)))
                  ("relating_risk_perception"
                   (:INITARG
                    :ASEADAL.RISK_LEVEL_RELATIONSHIP.RELATING_RISK_PERCEPTION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_PERCEPTION))
                   (:OPTIONAL NIL))
                  ("related_risk_perception"
                   (:INITARG
                    :ASEADAL.RISK_LEVEL_RELATIONSHIP.RELATED_RISK_PERCEPTION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_PERCEPTION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.RISK_LEVEL_RELATIONSHIP))
      '(ASEADAL.RISK_PERCEPTION_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.RISK_OBJECTIVE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.RISK_OBJECTIVE))
      '(ASEADAL.RISK_CONTEXT))


(DEFENTITY-CLASS "ASEADAL.RISK_OPTIMIZATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.RISK_OPTIMIZATION))
      '(ASEADAL.RISK_TREATMENT))


(DEFENTITY-CLASS "ASEADAL.RISK_OWNER_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("risk"
                   (:INITARG :ASEADAL.RISK_OWNER_ASSIGNMENT.RISK)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS 'ASEADAL.RISK)))
                   (:OPTIONAL NIL))
                  ("risk_owner"
                   (:INITARG :ASEADAL.RISK_OWNER_ASSIGNMENT.RISK_OWNER)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_STAKEHOLDER))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.RISK_PERCEPTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.RISK_PERCEPTION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.RISK_PERCEPTION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("formation"
                   (:INITARG :ASEADAL.RISK_PERCEPTION.FORMATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_PERCEPTION_FORMATION))
                   (:OPTIONAL NIL))
                  ("perceived_probability"
                   (:INITARG
                    :ASEADAL.RISK_PERCEPTION.PERCEIVED_PROBABILITY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.APPLIED_PROBABILITY_ASSIGNMENT))
                   (:OPTIONAL NIL))
                  ("perceived_consequence"
                   (:INITARG
                    :ASEADAL.RISK_PERCEPTION.PERCEIVED_CONSEQUENCE)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.RISK_CONSEQUENCE)))
                   (:OPTIONAL NIL))
                  ("perceived_impact"
                   (:INITARG :ASEADAL.RISK_PERCEPTION.PERCEIVED_IMPACT)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.RISK_IMPACT)))
                   (:OPTIONAL NIL))
                  ("risk_context"
                   (:INITARG :ASEADAL.RISK_PERCEPTION.RISK_CONTEXT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_CONTEXT))
                   (:OPTIONAL NIL))
                  ("risk_status"
                   (:INITARG :ASEADAL.RISK_PERCEPTION.RISK_STATUS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_STATUS))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.RISK_PERCEPTION_FORMATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("of_risk"
                   (:INITARG
                    :ASEADAL.RISK_PERCEPTION_FORMATION.OF_RISK)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.RISK))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.RISK_PERCEPTION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG
                    :ASEADAL.RISK_PERCEPTION_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.RISK_PERCEPTION_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating_risk_perception"
                   (:INITARG
                    :ASEADAL.RISK_PERCEPTION_RELATIONSHIP.RELATING_RISK_PERCEPTION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_PERCEPTION))
                   (:OPTIONAL NIL))
                  ("related_risk_perception"
                   (:INITARG
                    :ASEADAL.RISK_PERCEPTION_RELATIONSHIP.RELATED_RISK_PERCEPTION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_PERCEPTION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.RISK_PERSON_STAKEHOLDER"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.RISK_PERSON_STAKEHOLDER))
      '(ASEADAL.PERSON ASEADAL.RISK_STAKEHOLDER))


(DEFENTITY-CLASS "ASEADAL.RISK_REDUCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.RISK_REDUCTION.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("name"
                   (:INITARG :ASEADAL.RISK_REDUCTION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.RISK_REDUCTION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("approach"
                   (:INITARG :ASEADAL.RISK_REDUCTION.APPROACH)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_TREATMENT))
                   (:OPTIONAL NIL))
                  ("resolves"
                   (:INITARG :ASEADAL.RISK_REDUCTION.RESOLVES)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.MITIGATION_SELECT)))
                   (:OPTIONAL NIL))
                  ("risk_evaluation"
                   (:INITARG :ASEADAL.RISK_REDUCTION.RISK_EVALUATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_EVALUATION))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.RISK_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.RISK_RELATIONSHIP.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.RISK_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.RISK_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating_risk"
                   (:INITARG :ASEADAL.RISK_RELATIONSHIP.RELATING_RISK)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.RISK))
                   (:OPTIONAL NIL))
                  ("related_risk"
                   (:INITARG :ASEADAL.RISK_RELATIONSHIP.RELATED_RISK)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.RISK))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.RISK_RETENTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.RISK_RETENTION))
      '(ASEADAL.RISK_TREATMENT))


(DEFENTITY-CLASS "ASEADAL.RISK_STAKEHOLDER"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.RISK_STAKEHOLDER)) T)


(DEFENTITY-CLASS "ASEADAL.RISK_STATUS"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.RISK_STATUS.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.RISK_STATUS.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.RISK_TRANSFER"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.RISK_TRANSFER))
      '(ASEADAL.RISK_TREATMENT))


(DEFENTITY-CLASS "ASEADAL.RISK_TREATMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.RISK_TREATMENT.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.RISK_TREATMENT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("risk_analysis"
                   (:INITARG :ASEADAL.RISK_TREATMENT.RISK_ANALYSIS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RISK_ANALYSIS))
                   (:OPTIONAL NIL))
                  ("primary_objective"
                   (:INITARG :ASEADAL.RISK_TREATMENT.PRIMARY_OBJECTIVE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.MITIGATION_SELECT))
                   (:OPTIONAL NIL))
                  ("secondary_objectives"
                   (:INITARG
                    :ASEADAL.RISK_TREATMENT.SECONDARY_OBJECTIVES)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.MITIGATION_SELECT)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.ANALYSIS_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("analysis"
                   (:INITARG :ASEADAL.ANALYSIS_ASSIGNMENT.ANALYSIS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ANALYSIS_VERSION))
                   (:OPTIONAL NIL))
                  ("applied_to"
                   (:INITARG :ASEADAL.ANALYSIS_ASSIGNMENT.APPLIED_TO)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ANALISED_ITEM))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.EXTERNAL_ANALYSIS_MODEL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("external_file"
                   (:INITARG
                    :ASEADAL.EXTERNAL_ANALYSIS_MODEL.EXTERNAL_FILE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DIGITAL_FILE))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.EXTERNAL_ANALYSIS_MODEL))
      '(ASEADAL.ANALYSIS_MODEL))


(DEFENTITY-CLASS "ASEADAL.JUSTIFICATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.JUSTIFICATION.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.JUSTIFICATION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("description"
                   (:INITARG :ASEADAL.JUSTIFICATION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("context_description"
                   (:INITARG
                    :ASEADAL.JUSTIFICATION.CONTEXT_DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.JUSTIFICATION_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("justification"
                   (:INITARG
                    :ASEADAL.JUSTIFICATION_ASSIGNMENT.JUSTIFICATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.JUSTIFICATION))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.JUSTIFICATION_ASSIGNMENT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("item"
                   (:INITARG :ASEADAL.JUSTIFICATION_ASSIGNMENT.ITEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.JUSTIFICATION_ITEM))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.JUSTIFICATION_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.JUSTIFICATION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.JUSTIFICATION_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.JUSTIFICATION_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating_justification"
                   (:INITARG
                    :ASEADAL.JUSTIFICATION_RELATIONSHIP.RELATING_JUSTIFICATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.JUSTIFICATION))
                   (:OPTIONAL NIL))
                  ("related_justification"
                   (:INITARG
                    :ASEADAL.JUSTIFICATION_RELATIONSHIP.RELATED_JUSTIFICATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.JUSTIFICATION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.JUSTIFICATION_SUPPORT_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("justification"
                   (:INITARG
                    :ASEADAL.JUSTIFICATION_SUPPORT_ASSIGNMENT.JUSTIFICATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.JUSTIFICATION))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.JUSTIFICATION_SUPPORT_ASSIGNMENT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("support_item"
                   (:INITARG
                    :ASEADAL.JUSTIFICATION_SUPPORT_ASSIGNMENT.SUPPORT_ITEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.JUSTIFICATION_SUPPORT_ITEM))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG
                    :ASEADAL.JUSTIFICATION_SUPPORT_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.MEASURE_OF_EFFECTIVENESS"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("optimization_direction"
                   (:INITARG
                    :ASEADAL.MEASURE_OF_EFFECTIVENESS.OPTIMIZATION_DIRECTION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.MAXIMIZE_OR_MINIMIZE))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.MEASURE_OF_EFFECTIVENESS))
      '(ASEADAL.REQUIREMENT_VIEW_DEFINITION))


(DEFENTITY-CLASS "ASEADAL.VERIFICATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("verifies"
                   (:INITARG :ASEADAL.VERIFICATION.VERIFIES)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REQUIREMENT_ASSIGNMENT))
                   (:OPTIONAL NIL))
                  ("verified_by"
                   (:INITARG :ASEADAL.VERIFICATION.VERIFIED_BY)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.VERIFICATION_EVIDENCE)))
                   (:INVERSE
                    (ASEADAL.VERIFICATION_EVIDENCE FOR_VERIFICATION)))))


(DEFENTITY-CLASS "ASEADAL.VERIFICATION_EVIDENCE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("for_verification"
                   (:INITARG
                    :ASEADAL.VERIFICATION_EVIDENCE.FOR_VERIFICATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VERIFICATION))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.VERIFICATION_EVIDENCE.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.VERIFICATION_EVIDENCE_ITEM)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.VERIFICATION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relating"
                   (:INITARG
                    :ASEADAL.VERIFICATION_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VERIFICATION))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG
                    :ASEADAL.VERIFICATION_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VERIFICATION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.HIERARCHICAL_INTERFACE_CONNECTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.HIERARCHICAL_INTERFACE_CONNECTION))
      '(ASEADAL.INTERFACE_CONNECTION))


(DEFENTITY-CLASS "ASEADAL.INTERFACE_CONNECTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.INTERFACE_CONNECTION.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.INTERFACE_CONNECTION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("connection_type"
                   (:INITARG
                    :ASEADAL.INTERFACE_CONNECTION.CONNECTION_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("connecting"
                   (:INITARG :ASEADAL.INTERFACE_CONNECTION.CONNECTING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONNECTION_ITEMS))
                   (:OPTIONAL NIL))
                  ("connected"
                   (:INITARG :ASEADAL.INTERFACE_CONNECTION.CONNECTED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONNECTION_ITEMS))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.INTERFACE_CONNECTOR"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.INTERFACE_CONNECTOR))
      '(ASEADAL.PRODUCT))


(DEFENTITY-CLASS "ASEADAL.INTERFACE_CONNECTOR_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("connector_on"
                   (:INITARG
                    :ASEADAL.INTERFACE_CONNECTOR_DEFINITION.CONNECTOR_ON)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VIEW_DEFINITION))
                   (:OPTIONAL NIL))
                  ("defined_version"
                   (:INITARG
                    :ASEADAL.INTERFACE_CONNECTOR_DEFINITION.DEFINED_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.INTERFACE_CONNECTOR_DEFINITION))
      '(ASEADAL.PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG
                    :ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG
                    :ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("occurrence_of"
                   (:INITARG
                    :ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE.OCCURRENCE_OF)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.INTERFACE_CONNECTOR_DEFINITION))
                   (:OPTIONAL NIL))
                  ("connector_on"
                   (:INITARG
                    :ASEADAL.INTERFACE_CONNECTOR_OCCURRENCE.CONNECTOR_ON)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONNECTOR_ON_ITEM))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.INTERFACE_CONNECTOR_VERSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("of_product"
                   (:INITARG
                    :ASEADAL.INTERFACE_CONNECTOR_VERSION.OF_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.INTERFACE_CONNECTOR_VERSION))
      '(ASEADAL.PRODUCT_VERSION))


(DEFENTITY-CLASS "ASEADAL.INTERFACE_DEFINITION_CONNECTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG
                    :ASEADAL.INTERFACE_DEFINITION_CONNECTION.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.INTERFACE_DEFINITION_CONNECTION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("connection_type"
                   (:INITARG
                    :ASEADAL.INTERFACE_DEFINITION_CONNECTION.CONNECTION_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("connecting"
                   (:INITARG
                    :ASEADAL.INTERFACE_DEFINITION_CONNECTION.CONNECTING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONNECTION_DEFINITION_ITEMS))
                   (:OPTIONAL NIL))
                  ("connected"
                   (:INITARG
                    :ASEADAL.INTERFACE_DEFINITION_CONNECTION.CONNECTED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONNECTION_DEFINITION_ITEMS))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.INTERFACE_DEFINITION_FOR"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.INTERFACE_DEFINITION_FOR.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.INTERFACE_DEFINITION_FOR.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.INTERFACE_DEFINITION_FOR.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("interface"
                   (:INITARG
                    :ASEADAL.INTERFACE_DEFINITION_FOR.INTERFACE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.INTERFACE_SPECIFICATION_DEFINITION))
                   (:OPTIONAL NIL))
                  ("interface_component"
                   (:INITARG
                    :ASEADAL.INTERFACE_DEFINITION_FOR.INTERFACE_COMPONENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.INTERFACE_DEFINITION_ITEM))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.INTERFACE_SPECIFICATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.INTERFACE_SPECIFICATION))
      '(ASEADAL.PRODUCT))


(DEFENTITY-CLASS "ASEADAL.INTERFACE_SPECIFICATION_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("defined_version"
                   (:INITARG
                    :ASEADAL.INTERFACE_SPECIFICATION_DEFINITION.DEFINED_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.INTERFACE_SPECIFICATION_DEFINITION))
      '(ASEADAL.PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "ASEADAL.INTERFACE_SPECIFICATION_VERSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("of_product"
                   (:INITARG
                    :ASEADAL.INTERFACE_SPECIFICATION_VERSION.OF_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.INTERFACE_SPECIFICATION_VERSION))
      '(ASEADAL.PRODUCT_VERSION))


(DEFENTITY-CLASS "ASEADAL.PHYSICAL_BREAKDOWN"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PHYSICAL_BREAKDOWN))
      '(ASEADAL.BREAKDOWN))


(DEFENTITY-CLASS "ASEADAL.PHYSICAL_BREAKDOWN_CONTEXT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("breakdown"
                   (:INITARG
                    :ASEADAL.PHYSICAL_BREAKDOWN_CONTEXT.BREAKDOWN)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.BREAKDOWN_VERSION))
                   (:OPTIONAL NIL))
                  ("breakdown_element"
                   (:INITARG
                    :ASEADAL.PHYSICAL_BREAKDOWN_CONTEXT.BREAKDOWN_ELEMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.BREAKDOWN_ELEMENT_DEFINITION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PHYSICAL_BREAKDOWN_CONTEXT))
      '(ASEADAL.BREAKDOWN_CONTEXT))


(DEFENTITY-CLASS "ASEADAL.PHYSICAL_BREAKDOWN_VERSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("of_product"
                   (:INITARG
                    :ASEADAL.PHYSICAL_BREAKDOWN_VERSION.OF_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PHYSICAL_BREAKDOWN_VERSION))
      '(ASEADAL.BREAKDOWN_VERSION))


(DEFENTITY-CLASS "ASEADAL.PHYSICAL_ELEMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PHYSICAL_ELEMENT))
      '(ASEADAL.BREAKDOWN_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.PHYSICAL_ELEMENT_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("defined_version"
                   (:INITARG
                    :ASEADAL.PHYSICAL_ELEMENT_DEFINITION.DEFINED_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PHYSICAL_ELEMENT_DEFINITION))
      '(ASEADAL.BREAKDOWN_ELEMENT_DEFINITION))


(DEFENTITY-CLASS "ASEADAL.PHYSICAL_ELEMENT_USAGE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relating_view"
                   (:INITARG
                    :ASEADAL.PHYSICAL_ELEMENT_USAGE.RELATING_VIEW)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VIEW_DEFINITION))
                   (:OPTIONAL NIL))
                  ("related_view"
                   (:INITARG
                    :ASEADAL.PHYSICAL_ELEMENT_USAGE.RELATED_VIEW)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VIEW_DEFINITION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PHYSICAL_ELEMENT_USAGE))
      '(ASEADAL.BREAKDOWN_ELEMENT_USAGE))


(DEFENTITY-CLASS "ASEADAL.PHYSICAL_ELEMENT_VERSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("of_product"
                   (:INITARG
                    :ASEADAL.PHYSICAL_ELEMENT_VERSION.OF_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PHYSICAL_ELEMENT_VERSION))
      '(ASEADAL.BREAKDOWN_ELEMENT_VERSION))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_AS_INDIVIDUAL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PRODUCT_AS_INDIVIDUAL))
      '(ASEADAL.PRODUCT))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_AS_INDIVIDUAL_VERSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("of_product"
                   (:INITARG
                    :ASEADAL.PRODUCT_AS_INDIVIDUAL_VERSION.OF_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PRODUCT_AS_INDIVIDUAL_VERSION))
      '(ASEADAL.PRODUCT_VERSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.PRODUCT_AS_INDIVIDUAL_VERSION))
      T)


(DEFENTITY-CLASS "ASEADAL.PRODUCT_AS_INDIVIDUAL_VIEW"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("defined_version"
                   (:INITARG
                    :ASEADAL.PRODUCT_AS_INDIVIDUAL_VIEW.DEFINED_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PRODUCT_AS_INDIVIDUAL_VIEW))
      '(ASEADAL.PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_AS_PLANNED"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PRODUCT_AS_PLANNED))
      '(ASEADAL.PRODUCT_AS_INDIVIDUAL_VERSION))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_AS_REALIZED"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PRODUCT_AS_REALIZED))
      '(ASEADAL.PRODUCT_AS_INDIVIDUAL_VERSION))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_DESIGN_TO_INDIVIDUAL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("product_design"
                   (:INITARG
                    :ASEADAL.PRODUCT_DESIGN_TO_INDIVIDUAL.PRODUCT_DESIGN)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))
                  ("individual_product"
                   (:INITARG
                    :ASEADAL.PRODUCT_DESIGN_TO_INDIVIDUAL.INDIVIDUAL_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_AS_INDIVIDUAL))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("product_design_version"
                   (:INITARG
                    :ASEADAL.PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL.PRODUCT_DESIGN_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))
                  ("individual_product"
                   (:INITARG
                    :ASEADAL.PRODUCT_DESIGN_VERSION_TO_INDIVIDUAL.INDIVIDUAL_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_AS_INDIVIDUAL_VERSION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_PLANNED_TO_REALIZED"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("planned_product"
                   (:INITARG
                    :ASEADAL.PRODUCT_PLANNED_TO_REALIZED.PLANNED_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_AS_PLANNED))
                   (:OPTIONAL NIL))
                  ("realized_product"
                   (:INITARG
                    :ASEADAL.PRODUCT_PLANNED_TO_REALIZED.REALIZED_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_AS_REALIZED))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.PRODUCT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.PRODUCT.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.PRODUCT.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("description"
                   (:INITARG :ASEADAL.PRODUCT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_CATEGORY_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("category"
                   (:INITARG
                    :ASEADAL.PRODUCT_CATEGORY_ASSIGNMENT.CATEGORY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_CATEGORY))
                   (:OPTIONAL NIL))
                  ("products"
                   (:INITARG
                    :ASEADAL.PRODUCT_CATEGORY_ASSIGNMENT.PRODUCTS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.PRODUCT)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_VERSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.PRODUCT_VERSION.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.PRODUCT_VERSION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("of_product"
                   (:INITARG :ASEADAL.PRODUCT_VERSION.OF_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_VIEW_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.PRODUCT_VIEW_DEFINITION.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("name"
                   (:INITARG :ASEADAL.PRODUCT_VIEW_DEFINITION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("additional_characterization"
                   (:INITARG
                    :ASEADAL.PRODUCT_VIEW_DEFINITION.ADDITIONAL_CHARACTERIZATION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("initial_context"
                   (:INITARG
                    :ASEADAL.PRODUCT_VIEW_DEFINITION.INITIAL_CONTEXT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VIEW_DEFINITION_CONTEXT))
                   (:OPTIONAL NIL))
                  ("additional_contexts"
                   (:INITARG
                    :ASEADAL.PRODUCT_VIEW_DEFINITION.ADDITIONAL_CONTEXTS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.VIEW_DEFINITION_CONTEXT)))
                   (:OPTIONAL NIL))
                  ("defined_version"
                   (:INITARG
                    :ASEADAL.PRODUCT_VIEW_DEFINITION.DEFINED_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))))


(DEFDOMAIN-RULES ASEADAL.PRODUCT_VIEW_DEFINITION
                 ("WR1"
                  (EXPRESS-NOT (IN
                                (%INITIAL_CONTEXT INSTANCE NIL)
                                (%ADDITIONAL_CONTEXTS INSTANCE NIL))))
                 ("WR2"
                  (EXPRESS-OR (BI-EXISTS (%ID INSTANCE NIL))
                              (EXPRESS-NOT-EQUAL (BI-TYPEOF INSTANCE)
                                                 (BI-TYPEOF
                                                  INSTANCE)))))


(DEFENTITY-CLASS "ASEADAL.VIEW_DEFINITION_CONTEXT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("application_domain"
                   (:INITARG
                    :ASEADAL.VIEW_DEFINITION_CONTEXT.APPLICATION_DOMAIN)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("life_cycle_stage"
                   (:INITARG
                    :ASEADAL.VIEW_DEFINITION_CONTEXT.LIFE_CYCLE_STAGE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.VIEW_DEFINITION_CONTEXT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFDOMAIN-RULES ASEADAL.VIEW_DEFINITION_CONTEXT
                 ("WR1"
                  (EXPRESS-OR (EXPRESS-> (BI-SIZEOF
                                          (BI-USEDIN
                                           INSTANCE
                                           (EXPRESS-PLUS
                                            "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF."
                                            "PRODUCT_VIEW_DEFINITION.INITIAL_CONTEXT")))
                                         0)
                              (EXPRESS-> (BI-SIZEOF
                                          (BI-USEDIN
                                           INSTANCE
                                           (EXPRESS-PLUS
                                            "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF."
                                            "PRODUCT_VIEW_DEFINITION.ADDITIONAL_CONTEXTS")))
                                         0))))


(DEFENTITY-CLASS "ASEADAL.SYSTEM_BREAKDOWN"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SYSTEM_BREAKDOWN))
      '(ASEADAL.BREAKDOWN))


(DEFENTITY-CLASS "ASEADAL.SYSTEM_BREAKDOWN_CONTEXT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("breakdown"
                   (:INITARG
                    :ASEADAL.SYSTEM_BREAKDOWN_CONTEXT.BREAKDOWN)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.BREAKDOWN_VERSION))
                   (:OPTIONAL NIL))
                  ("breakdown_element"
                   (:INITARG
                    :ASEADAL.SYSTEM_BREAKDOWN_CONTEXT.BREAKDOWN_ELEMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.BREAKDOWN_ELEMENT_DEFINITION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SYSTEM_BREAKDOWN_CONTEXT))
      '(ASEADAL.BREAKDOWN_CONTEXT))


(DEFENTITY-CLASS "ASEADAL.SYSTEM_BREAKDOWN_VERSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("of_product"
                   (:INITARG
                    :ASEADAL.SYSTEM_BREAKDOWN_VERSION.OF_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SYSTEM_BREAKDOWN_VERSION))
      '(ASEADAL.BREAKDOWN_VERSION))


(DEFENTITY-CLASS "ASEADAL.SYSTEM_ELEMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SYSTEM_ELEMENT))
      '(ASEADAL.BREAKDOWN_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.SYSTEM_ELEMENT_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("defined_version"
                   (:INITARG
                    :ASEADAL.SYSTEM_ELEMENT_DEFINITION.DEFINED_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SYSTEM_ELEMENT_DEFINITION))
      '(ASEADAL.BREAKDOWN_ELEMENT_DEFINITION))


(DEFENTITY-CLASS "ASEADAL.SYSTEM_ELEMENT_USAGE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relating_view"
                   (:INITARG
                    :ASEADAL.SYSTEM_ELEMENT_USAGE.RELATING_VIEW)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VIEW_DEFINITION))
                   (:OPTIONAL NIL))
                  ("related_view"
                   (:INITARG
                    :ASEADAL.SYSTEM_ELEMENT_USAGE.RELATED_VIEW)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VIEW_DEFINITION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SYSTEM_ELEMENT_USAGE))
      '(ASEADAL.BREAKDOWN_ELEMENT_USAGE))


(DEFENTITY-CLASS "ASEADAL.SYSTEM_ELEMENT_VERSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("of_product"
                   (:INITARG
                    :ASEADAL.SYSTEM_ELEMENT_VERSION.OF_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SYSTEM_ELEMENT_VERSION))
      '(ASEADAL.BREAKDOWN_ELEMENT_VERSION))


(DEFENTITY-CLASS "ASEADAL.SYSTEM_VIEW_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("defined_version"
                   (:INITARG
                    :ASEADAL.SYSTEM_VIEW_DEFINITION.DEFINED_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SYSTEM_VIEW_DEFINITION))
      '(ASEADAL.PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "ASEADAL.IN_ZONE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.IN_ZONE.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.IN_ZONE.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.IN_ZONE.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("located_item"
                   (:INITARG :ASEADAL.IN_ZONE.LOCATED_ITEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.IN_ZONE_ITEM))
                   (:OPTIONAL NIL))
                  ("zone"
                   (:INITARG :ASEADAL.IN_ZONE.ZONE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ZONE_ELEMENT_DEFINITION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.ZONE_BREAKDOWN"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ZONE_BREAKDOWN))
      '(ASEADAL.BREAKDOWN))


(DEFENTITY-CLASS "ASEADAL.ZONE_BREAKDOWN_CONTEXT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("breakdown"
                   (:INITARG :ASEADAL.ZONE_BREAKDOWN_CONTEXT.BREAKDOWN)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.BREAKDOWN_VERSION))
                   (:OPTIONAL NIL))
                  ("breakdown_element"
                   (:INITARG
                    :ASEADAL.ZONE_BREAKDOWN_CONTEXT.BREAKDOWN_ELEMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.BREAKDOWN_ELEMENT_DEFINITION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ZONE_BREAKDOWN_CONTEXT))
      '(ASEADAL.BREAKDOWN_CONTEXT))


(DEFENTITY-CLASS "ASEADAL.ZONE_BREAKDOWN_VERSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("of_product"
                   (:INITARG
                    :ASEADAL.ZONE_BREAKDOWN_VERSION.OF_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ZONE_BREAKDOWN_VERSION))
      '(ASEADAL.BREAKDOWN_VERSION))


(DEFENTITY-CLASS "ASEADAL.ZONE_ELEMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ZONE_ELEMENT))
      '(ASEADAL.BREAKDOWN_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.ZONE_ELEMENT_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("defined_version"
                   (:INITARG
                    :ASEADAL.ZONE_ELEMENT_DEFINITION.DEFINED_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ZONE_ELEMENT_DEFINITION))
      '(ASEADAL.BREAKDOWN_ELEMENT_DEFINITION))


(DEFENTITY-CLASS "ASEADAL.ZONE_ELEMENT_USAGE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relating_view"
                   (:INITARG :ASEADAL.ZONE_ELEMENT_USAGE.RELATING_VIEW)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VIEW_DEFINITION))
                   (:OPTIONAL NIL))
                  ("related_view"
                   (:INITARG :ASEADAL.ZONE_ELEMENT_USAGE.RELATED_VIEW)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VIEW_DEFINITION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ZONE_ELEMENT_USAGE))
      '(ASEADAL.BREAKDOWN_ELEMENT_USAGE))


(DEFENTITY-CLASS "ASEADAL.ZONE_ELEMENT_VERSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("of_product"
                   (:INITARG :ASEADAL.ZONE_ELEMENT_VERSION.OF_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ZONE_ELEMENT_VERSION))
      '(ASEADAL.BREAKDOWN_ELEMENT_VERSION))


(DEFENTITY-CLASS "ASEADAL.OBSERVATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.OBSERVATION.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.OBSERVATION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.OBSERVATION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("applies_to"
                   (:INITARG :ASEADAL.OBSERVATION.APPLIES_TO)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.OBSERVATION_ITEM)))
                   (:OPTIONAL NIL))
                  ("in_context"
                   (:INITARG :ASEADAL.OBSERVATION.IN_CONTEXT)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.OBSERVED_CONTEXT)))
                   (:OPTIONAL NIL))
                  ("observed_by"
                   (:INITARG :ASEADAL.OBSERVATION.OBSERVED_BY)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.OBSERVATION_RECORDER)))
                   (:OPTIONAL NIL))
                  ("observed_during"
                   (:INITARG :ASEADAL.OBSERVATION.OBSERVED_DURING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_ACTUAL))
                   (:OPTIONAL T))
                  ("related_records"
                   (:INITARG :ASEADAL.OBSERVATION.RELATED_RECORDS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.OBSERVATION_ITEM)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.OBSERVATION_CONSEQUENCE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.OBSERVATION_CONSEQUENCE.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.OBSERVATION_CONSEQUENCE.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("infered_from"
                   (:INITARG
                    :ASEADAL.OBSERVATION_CONSEQUENCE.INFERED_FROM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.OBSERVATION))
                   (:OPTIONAL NIL))
                  ("requests"
                   (:INITARG :ASEADAL.OBSERVATION_CONSEQUENCE.REQUESTS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.WORK_REQUEST))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.OBSERVATION_CONSEQUENCE.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.OBSERVATION_ITEM"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("access_comment"
                   (:INITARG :ASEADAL.OBSERVATION_ITEM.ACCESS_COMMENT)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("item_identifier"
                   (:INITARG :ASEADAL.OBSERVATION_ITEM.ITEM_IDENTIFIER)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("item_type"
                   (:INITARG :ASEADAL.OBSERVATION_ITEM.ITEM_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.OBSERVATION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relating"
                   (:INITARG
                    :ASEADAL.OBSERVATION_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.OBSERVATION))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG :ASEADAL.OBSERVATION_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.OBSERVATION))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.OBSERVATION_RELATIONSHIP.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.CLASSIFICATION_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_class"
                   (:INITARG
                    :ASEADAL.CLASSIFICATION_ASSIGNMENT.ASSIGNED_CLASS)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.CLASS))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.CLASSIFICATION_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.CLASSIFICATION_ITEM)))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.CLASSIFICATION_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.CLASS"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.CLASS.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.CLASS.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.CLASS.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.CLASS_BY_EXTENSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.CLASS_BY_EXTENSION))
      '(ASEADAL.CLASS))


(DEFENTITY-CLASS "ASEADAL.CLASS_BY_INTENSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.CLASS_BY_INTENSION))
      '(ASEADAL.CLASS))


(DEFENTITY-CLASS "ASEADAL.ORGANIZATION_ORGANIZATION_TYPE_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("organization"
                   (:INITARG
                    :ASEADAL.ORGANIZATION_ORGANIZATION_TYPE_RELATIONSHIP.ORGANIZATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ORGANIZATION))
                   (:OPTIONAL NIL))
                  ("organization_type"
                   (:INITARG
                    :ASEADAL.ORGANIZATION_ORGANIZATION_TYPE_RELATIONSHIP.ORGANIZATION_TYPE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ORGANIZATION_TYPE))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.ORGANIZATION_TYPE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.ORGANIZATION_TYPE.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.ORGANIZATION_TYPE.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.ITEM_DESIGN_ASSOCIATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("configuration"
                   (:INITARG
                    :ASEADAL.ITEM_DESIGN_ASSOCIATION.CONFIGURATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_CONFIGURATION))
                   (:OPTIONAL NIL))
                  ("design"
                   (:INITARG :ASEADAL.ITEM_DESIGN_ASSOCIATION.DESIGN)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VERSION_OR_DEFINITION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_CONFIGURATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.PRODUCT_CONFIGURATION.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.PRODUCT_CONFIGURATION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.PRODUCT_CONFIGURATION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("item_context"
                   (:INITARG
                    :ASEADAL.PRODUCT_CONFIGURATION.ITEM_CONTEXT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_CONCEPT))
                   (:OPTIONAL NIL))
                  ("corresponding_design"
                   (:INITARG
                    :ASEADAL.PRODUCT_CONFIGURATION.CORRESPONDING_DESIGN)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   1
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.ITEM_DESIGN_ASSOCIATION)))
                   (:INVERSE
                    (ASEADAL.ITEM_DESIGN_ASSOCIATION CONFIGURATION)))))


(DEFENTITY-CLASS "ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG
                    :ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("person_or_organization"
                   (:INITARG
                    :ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION.PERSON_OR_ORGANIZATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.POSITION_PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_SELECT))
                   (:OPTIONAL NIL))
                  ("position"
                   (:INITARG
                    :ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION.POSITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.POSITION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG
                    :ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating"
                   (:INITARG
                    :ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG
                    :ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_IN_POSITION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.POSITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.POSITION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.POSITION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("address"
                   (:INITARG :ASEADAL.POSITION.ADDRESS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ADDRESS))
                   (:OPTIONAL T))
                  ("position_context"
                   (:INITARG :ASEADAL.POSITION.POSITION_CONTEXT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.POSITION_CONTEXT_ITEM))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.POSITION_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("items"
                   (:INITARG :ASEADAL.POSITION_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.POSITION_ITEM)))
                   (:OPTIONAL NIL))
                  ("position"
                   (:INITARG :ASEADAL.POSITION_ASSIGNMENT.POSITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.POSITION))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.POSITION_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.POSITION_ROLE))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.POSITION_GROUP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.POSITION_GROUP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.POSITION_GROUP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.POSITION_GROUP_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("items"
                   (:INITARG :ASEADAL.POSITION_GROUP_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.POSITION_GROUP_ITEM)))
                   (:OPTIONAL NIL))
                  ("position_group"
                   (:INITARG
                    :ASEADAL.POSITION_GROUP_ASSIGNMENT.POSITION_GROUP)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.POSITION_GROUP))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.POSITION_GROUP_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.POSITION_GROUP_ROLE))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.POSITION_GROUP_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("group"
                   (:INITARG
                    :ASEADAL.POSITION_GROUP_RELATIONSHIP.GROUP)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.POSITION_GROUP))
                   (:OPTIONAL NIL))
                  ("position"
                   (:INITARG
                    :ASEADAL.POSITION_GROUP_RELATIONSHIP.POSITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.POSITION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.POSITION_GROUP_ROLE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.POSITION_GROUP_ROLE.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.POSITION_GROUP_ROLE.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.POSITION_POSITION_TYPE_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_position_type"
                   (:INITARG
                    :ASEADAL.POSITION_POSITION_TYPE_ASSIGNMENT.ASSIGNED_POSITION_TYPE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.POSITION_TYPE))
                   (:OPTIONAL NIL))
                  ("assigned_to"
                   (:INITARG
                    :ASEADAL.POSITION_POSITION_TYPE_ASSIGNMENT.ASSIGNED_TO)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.POSITION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.POSITION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.POSITION_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.POSITION_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating_position"
                   (:INITARG
                    :ASEADAL.POSITION_RELATIONSHIP.RELATING_POSITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.POSITION))
                   (:OPTIONAL NIL))
                  ("related_position"
                   (:INITARG
                    :ASEADAL.POSITION_RELATIONSHIP.RELATED_POSITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.POSITION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.POSITION_ROLE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.POSITION_ROLE.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.POSITION_ROLE.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.POSITION_TYPE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.POSITION_TYPE.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.POSITION_TYPE.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("defined_by"
                   (:INITARG :ASEADAL.POSITION_TYPE.DEFINED_BY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TYPE_OF_PERSON))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.POSITION_TYPE_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("items"
                   (:INITARG :ASEADAL.POSITION_TYPE_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.POSITION_TYPE_ITEM)))
                   (:OPTIONAL NIL))
                  ("position_type"
                   (:INITARG
                    :ASEADAL.POSITION_TYPE_ASSIGNMENT.POSITION_TYPE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.POSITION_TYPE))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.POSITION_TYPE_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.POSITION_TYPE_ROLE))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.POSITION_TYPE_ROLE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.POSITION_TYPE_ROLE.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.POSITION_TYPE_ROLE.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.PROJECT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.PROJECT.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.PROJECT.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.PROJECT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("responsible_organizations"
                   (:INITARG
                    :ASEADAL.PROJECT.RESPONSIBLE_ORGANIZATIONS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.ORGANIZATION)))
                   (:OPTIONAL NIL))
                  ("planned_start_date"
                   (:INITARG :ASEADAL.PROJECT.PLANNED_START_DATE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DATE_OR_EVENT))
                   (:OPTIONAL T))
                  ("planned_end_date"
                   (:INITARG :ASEADAL.PROJECT.PLANNED_END_DATE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DATE_OR_EVENT))
                   (:OPTIONAL T))
                  ("actual_start_date"
                   (:INITARG :ASEADAL.PROJECT.ACTUAL_START_DATE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DATE_OR_DATE_TIME_SELECT))
                   (:OPTIONAL T))
                  ("actual_end_date"
                   (:INITARG :ASEADAL.PROJECT.ACTUAL_END_DATE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DATE_OR_DATE_TIME_SELECT))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.PROJECT_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_project"
                   (:INITARG
                    :ASEADAL.PROJECT_ASSIGNMENT.ASSIGNED_PROJECT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PROJECT))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.PROJECT_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.PROJECT_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.PROJECT_ITEM)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.PROJECT_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relation_type"
                   (:INITARG
                    :ASEADAL.PROJECT_RELATIONSHIP.RELATION_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.PROJECT_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating_project"
                   (:INITARG
                    :ASEADAL.PROJECT_RELATIONSHIP.RELATING_PROJECT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PROJECT))
                   (:OPTIONAL NIL))
                  ("related_project"
                   (:INITARG
                    :ASEADAL.PROJECT_RELATIONSHIP.RELATED_PROJECT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PROJECT))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.TYPE_OF_PERSON"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.TYPE_OF_PERSON.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.TYPE_OF_PERSON.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("has"
                   (:INITARG :ASEADAL.TYPE_OF_PERSON.HAS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.TYPE_OF_PERSON_DEFINITION)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.TYPE_OF_PERSON_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_type_of_person"
                   (:INITARG
                    :ASEADAL.TYPE_OF_PERSON_ASSIGNMENT.ASSIGNED_TYPE_OF_PERSON)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TYPE_OF_PERSON))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.TYPE_OF_PERSON_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.TYPE_OF_PERSON_ITEM_SELECT)))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.TYPE_OF_PERSON_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.TYPE_OF_PERSON_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.TYPE_OF_PERSON_DEFINITION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.TYPE_OF_PERSON_DEFINITION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.TYPE_OF_PERSON_DEFINITION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG
                    :ASEADAL.TYPE_OF_PERSON_DEFINITION_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.TYPE_OF_PERSON_DEFINITION_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating"
                   (:INITARG
                    :ASEADAL.TYPE_OF_PERSON_DEFINITION_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TYPE_OF_PERSON_DEFINITION))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG
                    :ASEADAL.TYPE_OF_PERSON_DEFINITION_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TYPE_OF_PERSON_DEFINITION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.TYPE_OF_PERSON_DEFINITION_REQUIRED_ATTRIBUTES_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_required_attributes"
                   (:INITARG
                    :ASEADAL.TYPE_OF_PERSON_DEFINITION_REQUIRED_ATTRIBUTES_RELATIONSHIP.ASSIGNED_REQUIRED_ATTRIBUTES)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TYPE_OF_PERSON_DEFINITION))
                   (:OPTIONAL NIL))
                  ("required_attributes"
                   (:INITARG
                    :ASEADAL.TYPE_OF_PERSON_DEFINITION_REQUIRED_ATTRIBUTES_RELATIONSHIP.REQUIRED_ATTRIBUTES)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.DEFINED_ATTRIBUTES)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.BREAKDOWN"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.BREAKDOWN))
      '(ASEADAL.PRODUCT))


(DEFENTITY-CLASS "ASEADAL.BREAKDOWN_CONTEXT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.BREAKDOWN_CONTEXT.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.BREAKDOWN_CONTEXT.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.BREAKDOWN_CONTEXT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("breakdown"
                   (:INITARG :ASEADAL.BREAKDOWN_CONTEXT.BREAKDOWN)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.BREAKDOWN_VERSION))
                   (:OPTIONAL NIL))
                  ("breakdown_element"
                   (:INITARG
                    :ASEADAL.BREAKDOWN_CONTEXT.BREAKDOWN_ELEMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.BREAKDOWN_ELEMENT_DEFINITION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.BREAKDOWN_ELEMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.BREAKDOWN_ELEMENT))
      '(ASEADAL.PRODUCT))


(DEFENTITY-CLASS "ASEADAL.BREAKDOWN_ELEMENT_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("defined_version"
                   (:INITARG
                    :ASEADAL.BREAKDOWN_ELEMENT_DEFINITION.DEFINED_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.BREAKDOWN_ELEMENT_DEFINITION))
      '(ASEADAL.PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "ASEADAL.BREAKDOWN_ELEMENT_REALIZATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.BREAKDOWN_ELEMENT_REALIZATION))
      '(ASEADAL.PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.BREAKDOWN_ELEMENT_USAGE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.BREAKDOWN_ELEMENT_USAGE.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("child_element"
                   (:INITARG
                    :ASEADAL.BREAKDOWN_ELEMENT_USAGE.CHILD_ELEMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.BREAKDOWN_ELEMENT_DEFINITION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED_VIEW
                     INSTANCE
                     'ASEADAL.VIEW_DEFINITION_RELATIONSHIP)))
                  ("parent_element"
                   (:INITARG
                    :ASEADAL.BREAKDOWN_ELEMENT_USAGE.PARENT_ELEMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.BREAKDOWN_ELEMENT_DEFINITION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING_VIEW
                     INSTANCE
                     'ASEADAL.VIEW_DEFINITION_RELATIONSHIP)))
                  ("relating_view"
                   (:INITARG
                    :ASEADAL.BREAKDOWN_ELEMENT_USAGE.RELATING_VIEW)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VIEW_DEFINITION))
                   (:OPTIONAL NIL))
                  ("related_view"
                   (:INITARG
                    :ASEADAL.BREAKDOWN_ELEMENT_USAGE.RELATED_VIEW)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VIEW_DEFINITION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.BREAKDOWN_ELEMENT_USAGE))
      '(ASEADAL.VIEW_DEFINITION_USAGE))


(DEFENTITY-CLASS "ASEADAL.BREAKDOWN_ELEMENT_VERSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("of_product"
                   (:INITARG
                    :ASEADAL.BREAKDOWN_ELEMENT_VERSION.OF_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.BREAKDOWN_ELEMENT_VERSION))
      '(ASEADAL.PRODUCT_VERSION))


(DEFENTITY-CLASS "ASEADAL.BREAKDOWN_OF"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.BREAKDOWN_OF.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.BREAKDOWN_OF.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.BREAKDOWN_OF.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("breakdown"
                   (:INITARG :ASEADAL.BREAKDOWN_OF.BREAKDOWN)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.BREAKDOWN_VERSION))
                   (:OPTIONAL NIL))
                  ("of_view"
                   (:INITARG :ASEADAL.BREAKDOWN_OF.OF_VIEW)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VIEW_DEFINITION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.BREAKDOWN_VERSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("breakdown_of"
                   (:INITARG :ASEADAL.BREAKDOWN_VERSION.BREAKDOWN_OF)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.BREAKDOWN_OF)))
                   (:INVERSE (ASEADAL.BREAKDOWN_OF BREAKDOWN)))
                  ("of_product"
                   (:INITARG :ASEADAL.BREAKDOWN_VERSION.OF_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.BREAKDOWN_VERSION))
      '(ASEADAL.PRODUCT_VERSION))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG
                    :ASEADAL.PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG
                    :ASEADAL.PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("breakdown"
                   (:INITARG
                    :ASEADAL.PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP.BREAKDOWN)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.BREAKDOWN_ITEM))
                   (:OPTIONAL NIL))
                  ("product"
                   (:INITARG
                    :ASEADAL.PRODUCT_DEFINITION_ELEMENT_RELATIONSHIP.PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_ITEM))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_GROUP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.PRODUCT_GROUP.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.PRODUCT_GROUP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("purpose"
                   (:INITARG :ASEADAL.PRODUCT_GROUP.PURPOSE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("membership_rule"
                   (:INITARG :ASEADAL.PRODUCT_GROUP.MEMBERSHIP_RULE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("product_group_context"
                   (:INITARG
                    :ASEADAL.PRODUCT_GROUP.PRODUCT_GROUP_CONTEXT)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_GROUP_MEMBERSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("member"
                   (:INITARG :ASEADAL.PRODUCT_GROUP_MEMBERSHIP.MEMBER)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_SELECT))
                   (:OPTIONAL NIL))
                  ("of_group"
                   (:INITARG
                    :ASEADAL.PRODUCT_GROUP_MEMBERSHIP.OF_GROUP)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_GROUP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_GROUP_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("description"
                   (:INITARG
                    :ASEADAL.PRODUCT_GROUP_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating"
                   (:INITARG
                    :ASEADAL.PRODUCT_GROUP_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_GROUP))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG
                    :ASEADAL.PRODUCT_GROUP_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_GROUP))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.PRODUCT_GROUP_RELATIONSHIP.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relation_type"
                   (:INITARG
                    :ASEADAL.PRODUCT_RELATIONSHIP.RELATION_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.PRODUCT_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating_product"
                   (:INITARG
                    :ASEADAL.PRODUCT_RELATIONSHIP.RELATING_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))
                  ("related_product"
                   (:INITARG
                    :ASEADAL.PRODUCT_RELATIONSHIP.RELATED_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_VERSION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relation_type"
                   (:INITARG
                    :ASEADAL.PRODUCT_VERSION_RELATIONSHIP.RELATION_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("description"
                   (:INITARG
                    :ASEADAL.PRODUCT_VERSION_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating_version"
                   (:INITARG
                    :ASEADAL.PRODUCT_VERSION_RELATIONSHIP.RELATING_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))
                  ("related_version"
                   (:INITARG
                    :ASEADAL.PRODUCT_VERSION_RELATIONSHIP.RELATED_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))))


(DEFDOMAIN-RULES ASEADAL.PRODUCT_VERSION_RELATIONSHIP
                 ("WR1"
                  (EXPRESS-INSTANCE-NOT-EQUAL (%RELATING_VERSION
                                               INSTANCE
                                               NIL)
                                              (%RELATED_VERSION
                                               INSTANCE
                                               NIL)))
                 ("WR2"
                  (EXPRESS-OR (BI-EXISTS (%RELATION_TYPE INSTANCE NIL))
                              (EXPRESS-NOT-EQUAL (BI-TYPEOF INSTANCE)
                                                 (BI-TYPEOF
                                                  INSTANCE)))))


(DEFENTITY-CLASS "ASEADAL.SUPPLIED_PART_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SUPPLIED_PART_RELATIONSHIP))
      '(ASEADAL.PRODUCT_VERSION_RELATIONSHIP))


(DEFDOMAIN-RULES ASEADAL.SUPPLIED_PART_RELATIONSHIP
                 ("WR1"
                  (IN (%RELATION_TYPE
                       INSTANCE
                       'ASEADAL.PRODUCT_VERSION_RELATIONSHIP)
                      (MAKE-INSTANCE 'EXPRESS-BAG
                                     :VALUE
                                     (LIST
                                      "supplied item"
                                      "supplied document")
                                     :TYPE-DESCRIPTOR
                                     (MAKE-INSTANCE
                                      'BAG-TYP
                                      :L-BOUND
                                      0
                                      :U-BOUND
                                      :?
                                      :BASE-TYPE
                                      T)))))


(DEFENTITY-CLASS "ASEADAL.ACTIVITY_METHOD_REALIZATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.ACTIVITY_METHOD_REALIZATION.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.ACTIVITY_METHOD_REALIZATION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.ACTIVITY_METHOD_REALIZATION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("activity_method"
                   (:INITARG
                    :ASEADAL.ACTIVITY_METHOD_REALIZATION.ACTIVITY_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))
                  ("realized_by"
                   (:INITARG
                    :ASEADAL.ACTIVITY_METHOD_REALIZATION.REALIZED_BY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_REALIZATION_SELECT))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG
                    :ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG
                    :ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating"
                   (:INITARG
                    :ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD_REALIZATION))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG
                    :ASEADAL.ACTIVITY_METHOD_REALIZATION_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD_REALIZATION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.ATTRIBUTE_CLASSIFICATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("allowed_value"
                   (:INITARG
                    :ASEADAL.ATTRIBUTE_CLASSIFICATION.ALLOWED_VALUE)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.CLASS))
                   (:OPTIONAL NIL))
                  ("attribute_name"
                   (:INITARG
                    :ASEADAL.ATTRIBUTE_CLASSIFICATION.ATTRIBUTE_NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("classified_entity"
                   (:INITARG
                    :ASEADAL.ATTRIBUTE_CLASSIFICATION.CLASSIFIED_ENTITY)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.CLASSIFIED_ATTRIBUTE_SELECT)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.CONDITION_EVALUATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.CONDITION_EVALUATION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.CONDITION_EVALUATION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("result"
                   (:INITARG :ASEADAL.CONDITION_EVALUATION.RESULT)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'LOGICAL-TYP))
                   (:OPTIONAL NIL))
                  ("condition"
                   (:INITARG :ASEADAL.CONDITION_EVALUATION.CONDITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONDITION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.CONDITION_EVALUATION_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_condition_evaluation"
                   (:INITARG
                    :ASEADAL.CONDITION_EVALUATION_ASSIGNMENT.ASSIGNED_CONDITION_EVALUATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONDITION_EVALUATION))
                   (:OPTIONAL NIL))
                  ("item"
                   (:INITARG
                    :ASEADAL.CONDITION_EVALUATION_ASSIGNMENT.ITEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONDITION_EVALUATION_ITEM))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.CONDITION_EVALUATION_PARAMETER"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG
                    :ASEADAL.CONDITION_EVALUATION_PARAMETER.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.CONDITION_EVALUATION_PARAMETER.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("condition_evaluation"
                   (:INITARG
                    :ASEADAL.CONDITION_EVALUATION_PARAMETER.CONDITION_EVALUATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONDITION_EVALUATION))
                   (:OPTIONAL NIL))
                  ("evaluation_parameter"
                   (:INITARG
                    :ASEADAL.CONDITION_EVALUATION_PARAMETER.EVALUATION_PARAMETER)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONDITION_EVALUATION_PARAMETER_ITEM))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.RELATED_CONDITION_PARAMETER"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.RELATED_CONDITION_PARAMETER.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.RELATED_CONDITION_PARAMETER.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("conditon_evaluation_parameter"
                   (:INITARG
                    :ASEADAL.RELATED_CONDITION_PARAMETER.CONDITON_EVALUATION_PARAMETER)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONDITION_EVALUATION_PARAMETER))
                   (:OPTIONAL NIL))
                  ("condition_parameter"
                   (:INITARG
                    :ASEADAL.RELATED_CONDITION_PARAMETER.CONDITION_PARAMETER)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONDITION_PARAMETER))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.DOCUMENT_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_document"
                   (:INITARG
                    :ASEADAL.DOCUMENT_ASSIGNMENT.ASSIGNED_DOCUMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ASSIGNED_DOCUMENT_SELECT))
                   (:OPTIONAL NIL))
                  ("is_assigned_to"
                   (:INITARG
                    :ASEADAL.DOCUMENT_ASSIGNMENT.IS_ASSIGNED_TO)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DOCUMENTED_ELEMENT_SELECT))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.DOCUMENT_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.PARTIAL_DOCUMENT_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("document_portion"
                   (:INITARG
                    :ASEADAL.PARTIAL_DOCUMENT_ASSIGNMENT.DOCUMENT_PORTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PARTIAL_DOCUMENT_ASSIGNMENT))
      '(ASEADAL.DOCUMENT_ASSIGNMENT))


(DEFENTITY-CLASS "ASEADAL.EFFECTIVITY_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_effectivity"
                   (:INITARG
                    :ASEADAL.EFFECTIVITY_ASSIGNMENT.ASSIGNED_EFFECTIVITY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.EFFECTIVITY))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.EFFECTIVITY_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.EFFECTIVITY_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.EFFECTIVITY_ITEM)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.APPLIED_INFORMATION_USAGE_RIGHT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("item"
                   (:INITARG
                    :ASEADAL.APPLIED_INFORMATION_USAGE_RIGHT.ITEM)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.INFORMATION_USAGE_RIGHT_ITEM)))
                   (:OPTIONAL NIL))
                  ("right_applied"
                   (:INITARG
                    :ASEADAL.APPLIED_INFORMATION_USAGE_RIGHT.RIGHT_APPLIED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.INFORMATION_USAGE_RIGHT))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.INFORMATION_RIGHT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.INFORMATION_RIGHT.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.INFORMATION_RIGHT.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.INFORMATION_RIGHT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("restriction"
                   (:INITARG :ASEADAL.INFORMATION_RIGHT.RESTRICTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.INFORMATION_USAGE_RIGHT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.INFORMATION_USAGE_RIGHT.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.INFORMATION_USAGE_RIGHT.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("comment"
                   (:INITARG :ASEADAL.INFORMATION_USAGE_RIGHT.COMMENT)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("grants_right"
                   (:INITARG
                    :ASEADAL.INFORMATION_USAGE_RIGHT.GRANTS_RIGHT)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.INFORMATION_RIGHT)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.INFORMATION_USAGE_RIGHT_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relating"
                   (:INITARG
                    :ASEADAL.INFORMATION_USAGE_RIGHT_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.INFORMATION_USAGE_RIGHT))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG
                    :ASEADAL.INFORMATION_USAGE_RIGHT_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.INFORMATION_USAGE_RIGHT))
                   (:OPTIONAL NIL))
                  ("relation_type"
                   (:INITARG
                    :ASEADAL.INFORMATION_USAGE_RIGHT_RELATIONSHIP.RELATION_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.ACTIVITY_PROPERTY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.ACTIVITY_PROPERTY.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.ACTIVITY_PROPERTY.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("described_element"
                   (:INITARG
                    :ASEADAL.ACTIVITY_PROPERTY.DESCRIBED_ELEMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CHARACTERIZED_ACTIVITY_DEFINITION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.ACTIVITY_PROPERTY_REPRESENTATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("description"
                   (:INITARG
                    :ASEADAL.ACTIVITY_PROPERTY_REPRESENTATION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("property"
                   (:INITARG
                    :ASEADAL.ACTIVITY_PROPERTY_REPRESENTATION.PROPERTY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_PROPERTY))
                   (:OPTIONAL NIL))
                  ("rep"
                   (:INITARG
                    :ASEADAL.ACTIVITY_PROPERTY_REPRESENTATION.REP)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REPRESENTATION))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG
                    :ASEADAL.ACTIVITY_PROPERTY_REPRESENTATION.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.APPLIED_INDEPENDENT_ACTIVITY_PROPERTY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("base_element_property"
                   (:INITARG
                    :ASEADAL.APPLIED_INDEPENDENT_ACTIVITY_PROPERTY.BASE_ELEMENT_PROPERTY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.INDEPENDENT_PROPERTY))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG
                    :ASEADAL.APPLIED_INDEPENDENT_ACTIVITY_PROPERTY.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%PROPERTY_TYPE
                     (%BASE_ELEMENT_PROPERTY INSTANCE NIL)
                     NIL))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.APPLIED_INDEPENDENT_ACTIVITY_PROPERTY))
      '(ASEADAL.ACTIVITY_PROPERTY))


(DEFENTITY-CLASS "ASEADAL.APPLIED_INDEPENDENT_PROPERTY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("base_independent_property"
                   (:INITARG
                    :ASEADAL.APPLIED_INDEPENDENT_PROPERTY.BASE_INDEPENDENT_PROPERTY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.INDEPENDENT_PROPERTY))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG
                    :ASEADAL.APPLIED_INDEPENDENT_PROPERTY.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%PROPERTY_TYPE
                     (%BASE_INDEPENDENT_PROPERTY INSTANCE NIL)
                     NIL))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.APPLIED_INDEPENDENT_PROPERTY))
      '(ASEADAL.ASSIGNED_PROPERTY))


(DEFENTITY-CLASS "ASEADAL.ASSIGNED_PROPERTY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.ASSIGNED_PROPERTY.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("name"
                   (:INITARG :ASEADAL.ASSIGNED_PROPERTY.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.ASSIGNED_PROPERTY.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("described_element"
                   (:INITARG
                    :ASEADAL.ASSIGNED_PROPERTY.DESCRIBED_ELEMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PROPERTY_ASSIGNMENT_SELECT))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.PROPERTY_DEFINITION_REPRESENTATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("description"
                   (:INITARG
                    :ASEADAL.PROPERTY_DEFINITION_REPRESENTATION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("definition"
                   (:INITARG
                    :ASEADAL.PROPERTY_DEFINITION_REPRESENTATION.DEFINITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REPRESENTED_DEFINITION))
                   (:OPTIONAL NIL))
                  ("rep"
                   (:INITARG
                    :ASEADAL.PROPERTY_DEFINITION_REPRESENTATION.REP)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REPRESENTATION))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG
                    :ASEADAL.PROPERTY_DEFINITION_REPRESENTATION.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.PROPERTY_DEFINITION_REPRESENTATION))
      T)


(DEFENTITY-CLASS "ASEADAL.PROPERTY_REPRESENTATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("property"
                   (:INITARG :ASEADAL.PROPERTY_REPRESENTATION.PROPERTY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ASSIGNED_PROPERTY))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%DEFINITION
                     INSTANCE
                     'ASEADAL.PROPERTY_DEFINITION_REPRESENTATION)))
                  ("definition"
                   (:INITARG
                    :ASEADAL.PROPERTY_REPRESENTATION.DEFINITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REPRESENTED_DEFINITION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PROPERTY_REPRESENTATION))
      '(ASEADAL.PROPERTY_DEFINITION_REPRESENTATION))


(DEFENTITY-CLASS "ASEADAL.RESOURCE_AS_REALIZED"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.RESOURCE_AS_REALIZED.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.RESOURCE_AS_REALIZED.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("quantity"
                   (:INITARG :ASEADAL.RESOURCE_AS_REALIZED.QUANTITY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VALUE_WITH_UNIT))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.RESOURCE_AS_REALIZED_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_resource"
                   (:INITARG
                    :ASEADAL.RESOURCE_AS_REALIZED_ASSIGNMENT.ASSIGNED_RESOURCE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RESOURCE_AS_REALIZED))
                   (:OPTIONAL NIL))
                  ("item"
                   (:INITARG
                    :ASEADAL.RESOURCE_AS_REALIZED_ASSIGNMENT.ITEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RESOURCE_AS_REALIZED_ITEM))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.RESOURCE_AS_REALIZED_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG
                    :ASEADAL.RESOURCE_AS_REALIZED_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.RESOURCE_AS_REALIZED_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating"
                   (:INITARG
                    :ASEADAL.RESOURCE_AS_REALIZED_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RESOURCE_AS_REALIZED))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG
                    :ASEADAL.RESOURCE_AS_REALIZED_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RESOURCE_AS_REALIZED_RELATIONSHIP_SELECT))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.RESOURCE_AS_REALIZED_RESOURCE_ITEM"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("resource_item"
                   (:INITARG
                    :ASEADAL.RESOURCE_AS_REALIZED_RESOURCE_ITEM.RESOURCE_ITEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RESOURCE_ITEM))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.RESOURCE_AS_REALIZED_RESOURCE_ITEM))
      '(ASEADAL.RESOURCE_AS_REALIZED))


(DEFENTITY-CLASS "ASEADAL.APPLIED_INDEPENDENT_RESOURCE_PROPERTY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("base_element_property"
                   (:INITARG
                    :ASEADAL.APPLIED_INDEPENDENT_RESOURCE_PROPERTY.BASE_ELEMENT_PROPERTY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.INDEPENDENT_PROPERTY))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG
                    :ASEADAL.APPLIED_INDEPENDENT_RESOURCE_PROPERTY.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%PROPERTY_TYPE
                     (%BASE_ELEMENT_PROPERTY INSTANCE NIL)
                     NIL))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.APPLIED_INDEPENDENT_RESOURCE_PROPERTY))
      '(ASEADAL.RESOURCE_PROPERTY))


(DEFENTITY-CLASS "ASEADAL.RESOURCE_PROPERTY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.RESOURCE_PROPERTY.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.RESOURCE_PROPERTY.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("described_element"
                   (:INITARG
                    :ASEADAL.RESOURCE_PROPERTY.DESCRIBED_ELEMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CHARACTERIZED_RESOURCE_SELECT))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.RESOURCE_PROPERTY_REPRESENTATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("description"
                   (:INITARG
                    :ASEADAL.RESOURCE_PROPERTY_REPRESENTATION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("property"
                   (:INITARG
                    :ASEADAL.RESOURCE_PROPERTY_REPRESENTATION.PROPERTY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RESOURCE_PROPERTY))
                   (:OPTIONAL NIL))
                  ("rep"
                   (:INITARG
                    :ASEADAL.RESOURCE_PROPERTY_REPRESENTATION.REP)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REPRESENTATION))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG
                    :ASEADAL.RESOURCE_PROPERTY_REPRESENTATION.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.SCHEME"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SCHEME))
      '(ASEADAL.ACTIVITY_METHOD))


(DEFENTITY-CLASS "ASEADAL.SCHEME_ENTRY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("scheme"
                   (:INITARG :ASEADAL.SCHEME_ENTRY.SCHEME)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SCHEME_VERSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SCHEME_ENTRY))
      '(ASEADAL.ACTIVITY_METHOD))


(DEFENTITY-CLASS "ASEADAL.SCHEME_ENTRY_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_entry"
                   (:INITARG
                    :ASEADAL.SCHEME_ENTRY_ASSIGNMENT.ASSIGNED_ENTRY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SCHEME_ENTRY))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%ASSIGNED_ACTIVITY_METHOD
                     INSTANCE
                     'ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT)))
                  ("assigned_activity_method"
                   (:INITARG
                    :ASEADAL.SCHEME_ENTRY_ASSIGNMENT.ASSIGNED_ACTIVITY_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.SCHEME_ENTRY_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.ACTIVITY_METHOD_ITEM)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SCHEME_ENTRY_ASSIGNMENT))
      '(ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT))


(DEFENTITY-CLASS "ASEADAL.SCHEME_ENTRY_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("related_entry"
                   (:INITARG
                    :ASEADAL.SCHEME_ENTRY_RELATIONSHIP.RELATED_ENTRY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SCHEME_ENTRY))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED_METHOD
                     INSTANCE
                     'ASEADAL.ACTIVITY_METHOD_RELATIONSHIP)))
                  ("relating_entry"
                   (:INITARG
                    :ASEADAL.SCHEME_ENTRY_RELATIONSHIP.RELATING_ENTRY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SCHEME_ENTRY))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING_METHOD
                     INSTANCE
                     'ASEADAL.ACTIVITY_METHOD_RELATIONSHIP)))
                  ("relating_method"
                   (:INITARG
                    :ASEADAL.SCHEME_ENTRY_RELATIONSHIP.RELATING_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))
                  ("related_method"
                   (:INITARG
                    :ASEADAL.SCHEME_ENTRY_RELATIONSHIP.RELATED_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SCHEME_ENTRY_RELATIONSHIP))
      '(ASEADAL.ACTIVITY_METHOD_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.SCHEME_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("related_scheme"
                   (:INITARG
                    :ASEADAL.SCHEME_RELATIONSHIP.RELATED_SCHEME)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.SCHEME))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED_METHOD
                     INSTANCE
                     'ASEADAL.ACTIVITY_METHOD_RELATIONSHIP)))
                  ("relating_scheme"
                   (:INITARG
                    :ASEADAL.SCHEME_RELATIONSHIP.RELATING_SCHEME)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.SCHEME))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING_METHOD
                     INSTANCE
                     'ASEADAL.ACTIVITY_METHOD_RELATIONSHIP)))
                  ("relating_method"
                   (:INITARG
                    :ASEADAL.SCHEME_RELATIONSHIP.RELATING_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))
                  ("related_method"
                   (:INITARG
                    :ASEADAL.SCHEME_RELATIONSHIP.RELATED_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SCHEME_RELATIONSHIP))
      '(ASEADAL.ACTIVITY_METHOD_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.SCHEME_SUBJECT_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_scheme"
                   (:INITARG
                    :ASEADAL.SCHEME_SUBJECT_ASSIGNMENT.ASSIGNED_SCHEME)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.SCHEME))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%ASSIGNED_ACTIVITY_METHOD
                     INSTANCE
                     'ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT)))
                  ("assigned_activity_method"
                   (:INITARG
                    :ASEADAL.SCHEME_SUBJECT_ASSIGNMENT.ASSIGNED_ACTIVITY_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.SCHEME_SUBJECT_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.ACTIVITY_METHOD_ITEM)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SCHEME_SUBJECT_ASSIGNMENT))
      '(ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT))


(DEFENTITY-CLASS "ASEADAL.SCHEME_VERSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("of_scheme"
                   (:INITARG :ASEADAL.SCHEME_VERSION.OF_SCHEME)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.SCHEME))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SCHEME_VERSION))
      '(ASEADAL.ACTIVITY_METHOD))


(DEFENTITY-CLASS "ASEADAL.SCHEME_VERSION_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_scheme_version"
                   (:INITARG
                    :ASEADAL.SCHEME_VERSION_ASSIGNMENT.ASSIGNED_SCHEME_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SCHEME_VERSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%ASSIGNED_ACTIVITY_METHOD
                     INSTANCE
                     'ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT)))
                  ("assigned_activity_method"
                   (:INITARG
                    :ASEADAL.SCHEME_VERSION_ASSIGNMENT.ASSIGNED_ACTIVITY_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.SCHEME_VERSION_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.ACTIVITY_METHOD_ITEM)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SCHEME_VERSION_ASSIGNMENT))
      '(ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT))


(DEFENTITY-CLASS "ASEADAL.SCHEME_VERSION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("related_scheme_version"
                   (:INITARG
                    :ASEADAL.SCHEME_VERSION_RELATIONSHIP.RELATED_SCHEME_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SCHEME_VERSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED_METHOD
                     INSTANCE
                     'ASEADAL.ACTIVITY_METHOD_RELATIONSHIP)))
                  ("relating_scheme_version"
                   (:INITARG
                    :ASEADAL.SCHEME_VERSION_RELATIONSHIP.RELATING_SCHEME_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SCHEME_VERSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING_METHOD
                     INSTANCE
                     'ASEADAL.ACTIVITY_METHOD_RELATIONSHIP)))
                  ("relating_method"
                   (:INITARG
                    :ASEADAL.SCHEME_VERSION_RELATIONSHIP.RELATING_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))
                  ("related_method"
                   (:INITARG
                    :ASEADAL.SCHEME_VERSION_RELATIONSHIP.RELATED_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SCHEME_VERSION_RELATIONSHIP))
      '(ASEADAL.ACTIVITY_METHOD_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.SEQUENCING_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("sequencing_type"
                   (:INITARG
                    :ASEADAL.SEQUENCING_RELATIONSHIP.SEQUENCING_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("time_lag"
                   (:INITARG :ASEADAL.SEQUENCING_RELATIONSHIP.TIME_LAG)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TIME_INTERVAL))
                   (:OPTIONAL T))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SEQUENCING_RELATIONSHIP))
      '(ASEADAL.SCHEME_ENTRY_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.ELEMENT_CONSTRAINT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("applies_in"
                   (:INITARG :ASEADAL.ELEMENT_CONSTRAINT.APPLIES_IN)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONSTRAINT_CONTEXT))
                   (:OPTIONAL T))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ELEMENT_CONSTRAINT))
      '(ASEADAL.TASK_ELEMENT_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.SIMULTANEOUS_ELEMENTS"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SIMULTANEOUS_ELEMENTS))
      '(ASEADAL.CONCURRENT_ELEMENTS))


(DEFENTITY-CLASS "ASEADAL.TASK_ELEMENT_LEVELS"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("alternatives"
                   (:INITARG :ASEADAL.TASK_ELEMENT_LEVELS.ALTERNATIVES)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   2
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.TASK_ELEMENT)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TASK_ELEMENT_LEVELS))
      '(ASEADAL.TASK_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.TASK_ELEMENT_STATE_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("state"
                   (:INITARG
                    :ASEADAL.TASK_ELEMENT_STATE_RELATIONSHIP.STATE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.STATE_OR_STATE_DEFINITION_SELECT))
                   (:OPTIONAL NIL))
                  ("task_element"
                   (:INITARG
                    :ASEADAL.TASK_ELEMENT_STATE_RELATIONSHIP.TASK_ELEMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TASK_ELEMENT))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.TASK_INVOCATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("task_method"
                   (:INITARG :ASEADAL.TASK_INVOCATION.TASK_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.METHOD_OR_METHOD_VERSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TASK_INVOCATION))
      '(ASEADAL.TASK_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.TASK_METHOD"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("objective"
                   (:INITARG :ASEADAL.TASK_METHOD.OBJECTIVE)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.TASK_OBJECTIVE)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TASK_METHOD))
      '(ASEADAL.ACTIVITY_METHOD))


(DEFENTITY-CLASS "ASEADAL.TASK_METHOD_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_activity_method"
                   (:INITARG
                    :ASEADAL.TASK_METHOD_ASSIGNMENT.ASSIGNED_ACTIVITY_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.TASK_METHOD_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.ACTIVITY_METHOD_ITEM)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TASK_METHOD_ASSIGNMENT))
      '(ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT))


(DEFENTITY-CLASS "ASEADAL.TASK_METHOD_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relating_method"
                   (:INITARG
                    :ASEADAL.TASK_METHOD_RELATIONSHIP.RELATING_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))
                  ("related_method"
                   (:INITARG
                    :ASEADAL.TASK_METHOD_RELATIONSHIP.RELATED_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TASK_METHOD_RELATIONSHIP))
      '(ASEADAL.ACTIVITY_METHOD_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.TASK_METHOD_STATE_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("state"
                   (:INITARG
                    :ASEADAL.TASK_METHOD_STATE_RELATIONSHIP.STATE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.STATE_OR_STATE_DEFINITION_SELECT))
                   (:OPTIONAL NIL))
                  ("task_method"
                   (:INITARG
                    :ASEADAL.TASK_METHOD_STATE_RELATIONSHIP.TASK_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TASK_METHOD_VERSION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.TASK_METHOD_VERSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("content"
                   (:INITARG :ASEADAL.TASK_METHOD_VERSION.CONTENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TASK_ELEMENT))
                   (:OPTIONAL T))
                  ("of_task_method"
                   (:INITARG
                    :ASEADAL.TASK_METHOD_VERSION.OF_TASK_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TASK_METHOD))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TASK_METHOD_VERSION))
      '(ASEADAL.ACTIVITY_METHOD))


(DEFENTITY-CLASS "ASEADAL.TASK_METHOD_VERSION_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_task_method"
                   (:INITARG
                    :ASEADAL.TASK_METHOD_VERSION_ASSIGNMENT.ASSIGNED_TASK_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TASK_METHOD_VERSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%ASSIGNED_ACTIVITY_METHOD
                     INSTANCE
                     'ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT)))
                  ("assigned_activity_method"
                   (:INITARG
                    :ASEADAL.TASK_METHOD_VERSION_ASSIGNMENT.ASSIGNED_ACTIVITY_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG
                    :ASEADAL.TASK_METHOD_VERSION_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.ACTIVITY_METHOD_ITEM)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TASK_METHOD_VERSION_ASSIGNMENT))
      '(ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT))


(DEFENTITY-CLASS "ASEADAL.TASK_METHOD_VERSION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("related_task_method"
                   (:INITARG
                    :ASEADAL.TASK_METHOD_VERSION_RELATIONSHIP.RELATED_TASK_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TASK_METHOD_VERSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED_METHOD
                     INSTANCE
                     'ASEADAL.ACTIVITY_METHOD_RELATIONSHIP)))
                  ("relating_task_method"
                   (:INITARG
                    :ASEADAL.TASK_METHOD_VERSION_RELATIONSHIP.RELATING_TASK_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TASK_METHOD_VERSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING_METHOD
                     INSTANCE
                     'ASEADAL.ACTIVITY_METHOD_RELATIONSHIP)))
                  ("relating_method"
                   (:INITARG
                    :ASEADAL.TASK_METHOD_VERSION_RELATIONSHIP.RELATING_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))
                  ("related_method"
                   (:INITARG
                    :ASEADAL.TASK_METHOD_VERSION_RELATIONSHIP.RELATED_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TASK_METHOD_VERSION_RELATIONSHIP))
      '(ASEADAL.ACTIVITY_METHOD_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.TASK_OBJECTIVE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.TASK_OBJECTIVE.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.TASK_OBJECTIVE.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.TASK_OBJECTIVE_STATE_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("state"
                   (:INITARG
                    :ASEADAL.TASK_OBJECTIVE_STATE_RELATIONSHIP.STATE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.STATE_OR_STATE_DEFINITION_SELECT))
                   (:OPTIONAL NIL))
                  ("task_objective"
                   (:INITARG
                    :ASEADAL.TASK_OBJECTIVE_STATE_RELATIONSHIP.TASK_OBJECTIVE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TASK_OBJECTIVE))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.TIME_INTERVAL_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_time_interval"
                   (:INITARG
                    :ASEADAL.TIME_INTERVAL_ASSIGNMENT.ASSIGNED_TIME_INTERVAL)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TIME_INTERVAL))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.TIME_INTERVAL_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TIME_INTERVAL_ROLE))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.TIME_INTERVAL_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.TIME_INTERVAL_ITEM)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.TIME_INTERVAL_ROLE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.TIME_INTERVAL_ROLE.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.TIME_INTERVAL_ROLE.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.WORK_OUTPUT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.WORK_OUTPUT.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.WORK_OUTPUT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("quantity"
                   (:INITARG :ASEADAL.WORK_OUTPUT.QUANTITY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VALUE_WITH_UNIT))
                   (:OPTIONAL T))
                  ("output_item"
                   (:INITARG :ASEADAL.WORK_OUTPUT.OUTPUT_ITEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.WORK_OUTPUT_ITEM))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.WORK_OUTPUT_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_output"
                   (:INITARG
                    :ASEADAL.WORK_OUTPUT_ASSIGNMENT.ASSIGNED_OUTPUT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.WORK_OUTPUT))
                   (:OPTIONAL NIL))
                  ("item"
                   (:INITARG :ASEADAL.WORK_OUTPUT_ASSIGNMENT.ITEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.WORK_ITEM))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.WORK_OUTPUT_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.WORK_OUTPUT_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.WORK_OUTPUT_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating"
                   (:INITARG
                    :ASEADAL.WORK_OUTPUT_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.WORK_OUTPUT))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG :ASEADAL.WORK_OUTPUT_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.WORK_OUTPUT))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.SELECTED_ITEM"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SELECTED_ITEM))
      '(ASEADAL.CLASS))


(DEFENTITY-CLASS "ASEADAL.SELECTED_ITEM_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_class"
                   (:INITARG
                    :ASEADAL.SELECTED_ITEM_ASSIGNMENT.ASSIGNED_CLASS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SELECTED_ITEM))
                   (:OPTIONAL NIL))
                  ("item"
                   (:INITARG :ASEADAL.SELECTED_ITEM_ASSIGNMENT.ITEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SELECTED_ITEM_SELECT))
                   (:OPTIONAL NIL))
                  ("item_context"
                   (:INITARG
                    :ASEADAL.SELECTED_ITEM_ASSIGNMENT.ITEM_CONTEXT)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.SELECTED_ITEM_CONTEXT_ITEMS)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.DOCUMENT_DEFINITION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relation_type"
                   (:INITARG
                    :ASEADAL.DOCUMENT_DEFINITION_RELATIONSHIP.RELATION_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.DOCUMENT_DEFINITION_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating_document_definition"
                   (:INITARG
                    :ASEADAL.DOCUMENT_DEFINITION_RELATIONSHIP.RELATING_DOCUMENT_DEFINITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DOCUMENT_DEFINITION))
                   (:OPTIONAL NIL))
                  ("related_document_definition"
                   (:INITARG
                    :ASEADAL.DOCUMENT_DEFINITION_RELATIONSHIP.RELATED_DOCUMENT_DEFINITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DOCUMENT_DEFINITION))
                   (:OPTIONAL NIL))))


(DEFDOMAIN-RULES ASEADAL.DOCUMENT_DEFINITION_RELATIONSHIP
                 ("WR1"
                  (EXPRESS-INSTANCE-NOT-EQUAL (%RELATING_DOCUMENT_DEFINITION
                                               INSTANCE
                                               NIL)
                                              (%RELATED_DOCUMENT_DEFINITION
                                               INSTANCE
                                               NIL))))


(DEFENTITY-CLASS "ASEADAL.FILE_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relation_type"
                   (:INITARG :ASEADAL.FILE_RELATIONSHIP.RELATION_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.FILE_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating_document_file"
                   (:INITARG
                    :ASEADAL.FILE_RELATIONSHIP.RELATING_DOCUMENT_FILE)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.FILE))
                   (:OPTIONAL NIL))
                  ("related_document_file"
                   (:INITARG
                    :ASEADAL.FILE_RELATIONSHIP.RELATED_DOCUMENT_FILE)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.FILE))
                   (:OPTIONAL NIL))))


(DEFDOMAIN-RULES ASEADAL.FILE_RELATIONSHIP
                 ("WR1"
                  (EXPRESS-INSTANCE-NOT-EQUAL (%RELATING_DOCUMENT_FILE
                                               INSTANCE
                                               NIL)
                                              (%RELATED_DOCUMENT_FILE
                                               INSTANCE
                                               NIL))))


(DEFENTITY-CLASS "ASEADAL.EXTERNAL_CLASS"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("external_source"
                   (:INITARG :ASEADAL.EXTERNAL_CLASS.EXTERNAL_SOURCE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.EXTERNAL_CLASS_LIBRARY))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.EXTERNAL_CLASS))
      '(ASEADAL.CLASS))


(DEFENTITY-CLASS "ASEADAL.EXTERNAL_CLASS_LIBRARY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.EXTERNAL_CLASS_LIBRARY.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.EXTERNAL_CLASS_LIBRARY.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.ACTIVITY_METHOD_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG
                    :ASEADAL.ACTIVITY_METHOD_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.ACTIVITY_METHOD_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating_method"
                   (:INITARG
                    :ASEADAL.ACTIVITY_METHOD_RELATIONSHIP.RELATING_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))
                  ("related_method"
                   (:INITARG
                    :ASEADAL.ACTIVITY_METHOD_RELATIONSHIP.RELATED_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_activity_method"
                   (:INITARG
                    :ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT.ASSIGNED_ACTIVITY_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG
                    :ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.ACTIVITY_METHOD_ITEM)))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG
                    :ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.CONDITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.CONDITION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.CONDITION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.CONDITION_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_condition"
                   (:INITARG
                    :ASEADAL.CONDITION_ASSIGNMENT.ASSIGNED_CONDITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONDITION))
                   (:OPTIONAL NIL))
                  ("item"
                   (:INITARG :ASEADAL.CONDITION_ASSIGNMENT.ITEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONDITION_ITEM))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.CONDITION_PARAMETER"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.CONDITION_PARAMETER.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.CONDITION_PARAMETER.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("condition"
                   (:INITARG :ASEADAL.CONDITION_PARAMETER.CONDITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONDITION))
                   (:OPTIONAL NIL))
                  ("parameter"
                   (:INITARG :ASEADAL.CONDITION_PARAMETER.PARAMETER)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONDITION_PARAMETER_ITEM))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.CONDITION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.CONDITION_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.CONDITION_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating_condition"
                   (:INITARG
                    :ASEADAL.CONDITION_RELATIONSHIP.RELATING_CONDITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONDITION))
                   (:OPTIONAL NIL))
                  ("related_condition"
                   (:INITARG
                    :ASEADAL.CONDITION_RELATIONSHIP.RELATED_CONDITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONDITION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.DATE_OR_DATE_TIME_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_date"
                   (:INITARG
                    :ASEADAL.DATE_OR_DATE_TIME_ASSIGNMENT.ASSIGNED_DATE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DATE_OR_DATE_TIME_SELECT))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG
                    :ASEADAL.DATE_OR_DATE_TIME_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG
                    :ASEADAL.DATE_OR_DATE_TIME_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.DATE_OR_DATE_TIME_ITEM)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.DOCUMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.DOCUMENT)) '(ASEADAL.PRODUCT))


(DEFENTITY-CLASS "ASEADAL.DOCUMENT_VERSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("of_product"
                   (:INITARG :ASEADAL.DOCUMENT_VERSION.OF_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.DOCUMENT_VERSION))
      '(ASEADAL.PRODUCT_VERSION))


(DEFENTITY-CLASS "ASEADAL.DIGITAL_DOCUMENT_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("files"
                   (:INITARG
                    :ASEADAL.DIGITAL_DOCUMENT_DEFINITION.FILES)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.DIGITAL_FILE)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.DIGITAL_DOCUMENT_DEFINITION))
      '(ASEADAL.DOCUMENT_DEFINITION))


(DEFENTITY-CLASS "ASEADAL.DOCUMENT_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("associated_document_version"
                   (:INITARG
                    :ASEADAL.DOCUMENT_DEFINITION.ASSOCIATED_DOCUMENT_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DOCUMENT_VERSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%DEFINED_VERSION
                     INSTANCE
                     'ASEADAL.PRODUCT_VIEW_DEFINITION)))
                  ("description"
                   (:INITARG :ASEADAL.DOCUMENT_DEFINITION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%NAME INSTANCE 'ASEADAL.PRODUCT_VIEW_DEFINITION)))
                  ("defined_version"
                   (:INITARG
                    :ASEADAL.DOCUMENT_DEFINITION.DEFINED_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.DOCUMENT_DEFINITION))
      '(ASEADAL.PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "ASEADAL.DOCUMENT_LOCATION_IDENTIFICATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.DOCUMENT_LOCATION_IDENTIFICATION))
      '(ASEADAL.EXTERNAL_SOURCE_IDENTIFICATION))


(DEFDOMAIN-RULES ASEADAL.DOCUMENT_LOCATION_IDENTIFICATION
                 ("WR1"
                  (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.DOCUMENT_DEFINITION"
                      (BI-TYPEOF (%ITEM
                                  INSTANCE
                                  'ASEADAL.EXTERNAL_SOURCE_IDENTIFICATION)))))


(DEFENTITY-CLASS "ASEADAL.PHYSICAL_DOCUMENT_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("components"
                   (:INITARG
                    :ASEADAL.PHYSICAL_DOCUMENT_DEFINITION.COMPONENTS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.HARDCOPY)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PHYSICAL_DOCUMENT_DEFINITION))
      '(ASEADAL.DOCUMENT_DEFINITION))


(DEFENTITY-CLASS "ASEADAL.DIGITAL_FILE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.DIGITAL_FILE))
      '(ASEADAL.FILE))


(DEFENTITY-CLASS "ASEADAL.FILE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.FILE.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("version"
                   (:INITARG :ASEADAL.FILE.VERSION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("contained_data_type"
                   (:INITARG :ASEADAL.FILE.CONTAINED_DATA_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.FILE)) T)


(DEFENTITY-CLASS "ASEADAL.HARDCOPY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.HARDCOPY)) '(ASEADAL.FILE))


(DEFENTITY-CLASS "ASEADAL.FILE_LOCATION_IDENTIFICATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.FILE_LOCATION_IDENTIFICATION))
      '(ASEADAL.EXTERNAL_ITEM_IDENTIFICATION))


(DEFDOMAIN-RULES ASEADAL.FILE_LOCATION_IDENTIFICATION
                 ("WR1"
                  (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.FILE"
                      (BI-TYPEOF (%ITEM
                                  INSTANCE
                                  'ASEADAL.EXTERNAL_SOURCE_IDENTIFICATION)))))


(DEFENTITY-CLASS "ASEADAL.EVENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.EVENT.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.EVENT.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.EVENT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("actual_start_date"
                   (:INITARG :ASEADAL.EVENT.ACTUAL_START_DATE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DATE_OR_DATE_TIME_SELECT))
                   (:OPTIONAL T))
                  ("planned_start_date"
                   (:INITARG :ASEADAL.EVENT.PLANNED_START_DATE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DATE_OR_DATE_TIME_SELECT))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.EVENT_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relation_type"
                   (:INITARG :ASEADAL.EVENT_RELATIONSHIP.RELATION_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.EVENT_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating_event"
                   (:INITARG
                    :ASEADAL.EVENT_RELATIONSHIP.RELATING_EVENT)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.EVENT))
                   (:OPTIONAL NIL))
                  ("related_event"
                   (:INITARG :ASEADAL.EVENT_RELATIONSHIP.RELATED_EVENT)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.EVENT))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.RELATIVE_EVENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("base_event"
                   (:INITARG :ASEADAL.RELATIVE_EVENT.BASE_EVENT)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.EVENT))
                   (:OPTIONAL NIL))
                  ("offset"
                   (:INITARG :ASEADAL.RELATIVE_EVENT.OFFSET)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DURATION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.RELATIVE_EVENT))
      '(ASEADAL.EVENT))


(DEFENTITY-CLASS "ASEADAL.AMOUNT_OF_SUBSTANCE_UNIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.AMOUNT_OF_SUBSTANCE_UNIT))
      '(ASEADAL.UNIT))


(DEFENTITY-CLASS "ASEADAL.CONTEXT_DEPENDENT_UNIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.CONTEXT_DEPENDENT_UNIT))
      '(ASEADAL.UNIT))


(DEFDOMAIN-RULES ASEADAL.CONTEXT_DEPENDENT_UNIT
                 ("WR1" (BI-EXISTS (%NAME INSTANCE 'ASEADAL.UNIT))))


(DEFENTITY-CLASS "ASEADAL.CONVERSION_BASED_UNIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("conversion_factor"
                   (:INITARG
                    :ASEADAL.CONVERSION_BASED_UNIT.CONVERSION_FACTOR)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VALUE_WITH_UNIT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.CONVERSION_BASED_UNIT))
      '(ASEADAL.UNIT))


(DEFDOMAIN-RULES ASEADAL.CONVERSION_BASED_UNIT
                 ("WR1" (BI-EXISTS (%NAME INSTANCE 'ASEADAL.UNIT))))


(DEFENTITY-CLASS "ASEADAL.DERIVED_UNIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("elements"
                   (:INITARG :ASEADAL.DERIVED_UNIT.ELEMENTS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.DERIVED_UNIT_ELEMENT)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.DERIVED_UNIT))
      '(ASEADAL.UNIT))


(DEFENTITY-CLASS "ASEADAL.DERIVED_UNIT_ELEMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("base_unit"
                   (:INITARG :ASEADAL.DERIVED_UNIT_ELEMENT.BASE_UNIT)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.UNIT))
                   (:OPTIONAL NIL))
                  ("exponent"
                   (:INITARG :ASEADAL.DERIVED_UNIT_ELEMENT.EXPONENT)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'REAL-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.DURATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.DURATION))
      '(ASEADAL.VALUE_WITH_UNIT))


(DEFDOMAIN-RULES ASEADAL.DURATION
                 ("WR1"
                  (IN (EXPRESS-PLUS "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF."
                                    "TIME_UNIT")
                      (BI-TYPEOF (%UNIT
                                  INSTANCE
                                  'ASEADAL.VALUE_WITH_UNIT)))))


(DEFENTITY-CLASS "ASEADAL.ELECTRIC_CURRENT_UNIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ELECTRIC_CURRENT_UNIT))
      '(ASEADAL.UNIT))


(DEFENTITY-CLASS "ASEADAL.LENGTH_UNIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.LENGTH_UNIT)) '(ASEADAL.UNIT))


(DEFENTITY-CLASS "ASEADAL.LUMINOUS_INTENSITY_UNIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.LUMINOUS_INTENSITY_UNIT))
      '(ASEADAL.UNIT))


(DEFENTITY-CLASS "ASEADAL.MASS_UNIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.MASS_UNIT)) '(ASEADAL.UNIT))


(DEFENTITY-CLASS "ASEADAL.PLANE_ANGLE_UNIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PLANE_ANGLE_UNIT))
      '(ASEADAL.UNIT))


(DEFENTITY-CLASS "ASEADAL.RATIO_UNIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.RATIO_UNIT)) '(ASEADAL.UNIT))


(DEFENTITY-CLASS "ASEADAL.SOLID_ANGLE_UNIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SOLID_ANGLE_UNIT))
      '(ASEADAL.UNIT))


(DEFENTITY-CLASS "ASEADAL.THERMODYNAMIC_TEMPERATURE_UNIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.THERMODYNAMIC_TEMPERATURE_UNIT))
      '(ASEADAL.UNIT))


(DEFENTITY-CLASS "ASEADAL.TIME_UNIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TIME_UNIT)) '(ASEADAL.UNIT))


(DEFENTITY-CLASS "ASEADAL.UNCERTAINTY_WITH_UNIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.UNCERTAINTY_WITH_UNIT.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.UNCERTAINTY_WITH_UNIT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.UNCERTAINTY_WITH_UNIT))
      '(ASEADAL.VALUE_WITH_UNIT))


(DEFENTITY-CLASS "ASEADAL.UNIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.UNIT.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("si_unit"
                   (:INITARG :ASEADAL.UNIT.SI_UNIT)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'BOOLEAN-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.VALUE_WITH_UNIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("unit"
                   (:INITARG :ASEADAL.VALUE_WITH_UNIT.UNIT)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.UNIT))
                   (:OPTIONAL NIL))
                  ("value_component"
                   (:INITARG :ASEADAL.VALUE_WITH_UNIT.VALUE_COMPONENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.MEASURE_VALUE))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_entity"
                   (:INITARG
                    :ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT.ASSIGNED_ENTITY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_SELECT))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG
                    :ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG
                    :ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.ORGANIZATION_OR_PERSON_IN_ORGANIZATION_ITEM)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.PROBABILITY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PROBABILITY))
      '(ASEADAL.REPRESENTATION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.PROBABILITY)) T)


(DEFENTITY-CLASS "ASEADAL.PROBABILITY_BY_NAME"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("has_value"
                   (:INITARG :ASEADAL.PROBABILITY_BY_NAME.HAS_VALUE)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   1
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.PROBABILITY_NAMED_VALUE)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%ITEMS INSTANCE 'ASEADAL.REPRESENTATION)))
                  ("items"
                   (:INITARG :ASEADAL.PROBABILITY_BY_NAME.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.REPRESENTATION_ITEM)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PROBABILITY_BY_NAME))
      '(ASEADAL.PROBABILITY))


(DEFENTITY-CLASS "ASEADAL.PROBABILITY_DERIVATION_PARAMETER"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PROBABILITY_DERIVATION_PARAMETER))
      '(ASEADAL.NUMERICAL_ITEM_WITH_GLOBAL_UNIT))


(DEFENTITY-CLASS "ASEADAL.PROBABILITY_DERIVED"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("derives_from"
                   (:INITARG :ASEADAL.PROBABILITY_DERIVED.DERIVES_FROM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PROBABILITY_GENERATOR))
                   (:OPTIONAL NIL))
                  ("has_parameter"
                   (:INITARG
                    :ASEADAL.PROBABILITY_DERIVED.HAS_PARAMETER)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'LIST-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.PROBABILITY_DERIVATION_PARAMETER)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PROBABILITY_DERIVED))
      '(ASEADAL.PROBABILITY_NUMERIC))


(DEFENTITY-CLASS "ASEADAL.PROBABILITY_GENERATOR"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PROBABILITY_GENERATOR))
      '(ASEADAL.REPRESENTATION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.PROBABILITY_GENERATOR)) T)


(DEFENTITY-CLASS "ASEADAL.PROBABILITY_NAMED_VALUE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PROBABILITY_NAMED_VALUE))
      '(ASEADAL.REPRESENTATION_ITEM))


(DEFENTITY-CLASS "ASEADAL.PROBABILITY_NUMERIC"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("has_value"
                   (:INITARG :ASEADAL.PROBABILITY_NUMERIC.HAS_VALUE)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   1
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.PROBABILITY_NUMERIC_VALUE)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%ITEMS INSTANCE 'ASEADAL.REPRESENTATION)))
                  ("items"
                   (:INITARG :ASEADAL.PROBABILITY_NUMERIC.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.REPRESENTATION_ITEM)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PROBABILITY_NUMERIC))
      '(ASEADAL.PROBABILITY))


(DEFENTITY-CLASS "ASEADAL.PROBABILITY_NUMERIC_VALUE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PROBABILITY_NUMERIC_VALUE))
      '(ASEADAL.NUMERICAL_ITEM_WITH_GLOBAL_UNIT))


(DEFENTITY-CLASS "ASEADAL.DISTRIBUTION_BY_VALUE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("defined_function"
                   (:INITARG
                    :ASEADAL.DISTRIBUTION_BY_VALUE.DEFINED_FUNCTION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VALUE_FUNCTION))
                   (:OPTIONAL NIL))
                  ("distribution_function"
                   (:INITARG
                    :ASEADAL.DISTRIBUTION_BY_VALUE.DISTRIBUTION_FUNCTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.DISTRIBUTION_BY_VALUE))
      '(ASEADAL.PROBABILITY_DISTRIBUTION))


(DEFENTITY-CLASS "ASEADAL.FUNCTION_VALUE_PAIR"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("function_value"
                   (:INITARG
                    :ASEADAL.FUNCTION_VALUE_PAIR.FUNCTION_VALUE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PROBABILITY_FUNCTION_VALUE))
                   (:OPTIONAL NIL))
                  ("variable_value"
                   (:INITARG
                    :ASEADAL.FUNCTION_VALUE_PAIR.VARIABLE_VALUE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RANDOM_VARIABLE))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.PARAMETERIZED_DISTRIBUTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("has_parameters"
                   (:INITARG
                    :ASEADAL.PARAMETERIZED_DISTRIBUTION.HAS_PARAMETERS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'LIST-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.PROBABILITY_DISTRIBUTION_PARAMETER)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL NIL))
                  ("parameterization_name"
                   (:INITARG
                    :ASEADAL.PARAMETERIZED_DISTRIBUTION.PARAMETERIZATION_NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PARAMETERIZED_DISTRIBUTION))
      '(ASEADAL.PROBABILITY_DISTRIBUTION))


(DEFENTITY-CLASS "ASEADAL.PROBABILITY_DISTRIBUTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("distribution_name"
                   (:INITARG
                    :ASEADAL.PROBABILITY_DISTRIBUTION.DISTRIBUTION_NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("is_continuous"
                   (:INITARG
                    :ASEADAL.PROBABILITY_DISTRIBUTION.IS_CONTINUOUS)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("mean"
                   (:INITARG :ASEADAL.PROBABILITY_DISTRIBUTION.MEAN)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'REAL-TYP))
                   (:OPTIONAL NIL))
                  ("variance"
                   (:INITARG
                    :ASEADAL.PROBABILITY_DISTRIBUTION.VARIANCE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'REAL-TYP))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PROBABILITY_DISTRIBUTION))
      '(ASEADAL.PROBABILITY_GENERATOR))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.PROBABILITY_DISTRIBUTION)) T)


(DEFENTITY-CLASS "ASEADAL.PROBABILITY_DISTRIBUTION_PARAMETER"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PROBABILITY_DISTRIBUTION_PARAMETER))
      '(ASEADAL.NUMERICAL_ITEM_WITH_GLOBAL_UNIT))


(DEFENTITY-CLASS "ASEADAL.PROBABILITY_FUNCTION_VALUE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PROBABILITY_FUNCTION_VALUE))
      '(ASEADAL.NUMERICAL_ITEM_WITH_GLOBAL_UNIT))


(DEFENTITY-CLASS "ASEADAL.RANDOM_VARIABLE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.RANDOM_VARIABLE))
      '(ASEADAL.NUMERICAL_ITEM_WITH_GLOBAL_UNIT))


(DEFENTITY-CLASS "ASEADAL.VALUE_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("function_element"
                   (:INITARG :ASEADAL.VALUE_FUNCTION.FUNCTION_ELEMENT)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'LIST-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.FUNCTION_VALUE_PAIR)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_CATEGORY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.PRODUCT_CATEGORY.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("name"
                   (:INITARG :ASEADAL.PRODUCT_CATEGORY.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.PRODUCT_CATEGORY.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_CATEGORY_HIERARCHY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("super_category"
                   (:INITARG
                    :ASEADAL.PRODUCT_CATEGORY_HIERARCHY.SUPER_CATEGORY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_CATEGORY))
                   (:OPTIONAL NIL))
                  ("sub_category"
                   (:INITARG
                    :ASEADAL.PRODUCT_CATEGORY_HIERARCHY.SUB_CATEGORY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_CATEGORY))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.NUMERICAL_REPRESENTATION_CONTEXT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("units"
                   (:INITARG
                    :ASEADAL.NUMERICAL_REPRESENTATION_CONTEXT.UNITS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS 'ASEADAL.UNIT)))
                   (:OPTIONAL T))
                  ("accuracies"
                   (:INITARG
                    :ASEADAL.NUMERICAL_REPRESENTATION_CONTEXT.ACCURACIES)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.UNCERTAINTY_WITH_UNIT)))
                   (:OPTIONAL T))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.NUMERICAL_REPRESENTATION_CONTEXT))
      '(ASEADAL.REPRESENTATION_CONTEXT))


(DEFENTITY-CLASS "ASEADAL.REPRESENTATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.REPRESENTATION.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("name"
                   (:INITARG :ASEADAL.REPRESENTATION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("description"
                   (:INITARG :ASEADAL.REPRESENTATION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("context_of_items"
                   (:INITARG :ASEADAL.REPRESENTATION.CONTEXT_OF_ITEMS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REPRESENTATION_CONTEXT))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.REPRESENTATION.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.REPRESENTATION_ITEM)))
                   (:OPTIONAL NIL))))


(DEFDOMAIN-RULES ASEADAL.REPRESENTATION
                 ("WR1"
                  (EXPRESS-OR (BI-EXISTS (%NAME INSTANCE NIL))
                              (EXPRESS-NOT-EQUAL (BI-TYPEOF INSTANCE)
                                                 (BI-TYPEOF
                                                  INSTANCE)))))


(DEFENTITY-CLASS "ASEADAL.REPRESENTATION_CONTEXT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.REPRESENTATION_CONTEXT.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("kind"
                   (:INITARG :ASEADAL.REPRESENTATION_CONTEXT.KIND)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("representations_in_context"
                   (:INITARG
                    :ASEADAL.REPRESENTATION_CONTEXT.REPRESENTATIONS_IN_CONTEXT)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.REPRESENTATION)))
                   (:INVERSE
                    (ASEADAL.REPRESENTATION CONTEXT_OF_ITEMS)))))


(DEFENTITY-CLASS "ASEADAL.REPRESENTATION_ITEM"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.REPRESENTATION_ITEM.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.REPRESENTATION_ITEM)) T)


(DEFENTITY-CLASS "ASEADAL.REPRESENTATION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relation_type"
                   (:INITARG
                    :ASEADAL.REPRESENTATION_RELATIONSHIP.RELATION_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("description"
                   (:INITARG
                    :ASEADAL.REPRESENTATION_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("rep_1"
                   (:INITARG
                    :ASEADAL.REPRESENTATION_RELATIONSHIP.REP_1)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REPRESENTATION))
                   (:OPTIONAL NIL))
                  ("rep_2"
                   (:INITARG
                    :ASEADAL.REPRESENTATION_RELATIONSHIP.REP_2)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REPRESENTATION))
                   (:OPTIONAL NIL))))


(DEFDOMAIN-RULES ASEADAL.REPRESENTATION_RELATIONSHIP
                 ("WR1"
                  (EXPRESS-OR (BI-EXISTS (%RELATION_TYPE INSTANCE NIL))
                              (EXPRESS-NOT-EQUAL (BI-TYPEOF INSTANCE)
                                                 (BI-TYPEOF
                                                  INSTANCE))))
                 ("WR2"
                  (EXPRESS-OR (BI-EXISTS (%DESCRIPTION INSTANCE NIL))
                              (EXPRESS-NOT-EQUAL (BI-TYPEOF INSTANCE)
                                                 (BI-TYPEOF
                                                  INSTANCE)))))


(DEFENTITY-CLASS "ASEADAL.STRING_REPRESENTATION_ITEM"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("string_value"
                   (:INITARG
                    :ASEADAL.STRING_REPRESENTATION_ITEM.STRING_VALUE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.STRING_REPRESENTATION_ITEM))
      '(ASEADAL.REPRESENTATION_ITEM))


(DEFENTITY-CLASS "ASEADAL.INDEPENDENT_PROPERTY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.INDEPENDENT_PROPERTY.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("property_type"
                   (:INITARG
                    :ASEADAL.INDEPENDENT_PROPERTY.PROPERTY_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.INDEPENDENT_PROPERTY.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relation_type"
                   (:INITARG
                    :ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP.RELATION_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating"
                   (:INITARG
                    :ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.INDEPENDENT_PROPERTY))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG
                    :ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.INDEPENDENT_PROPERTY))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.DISPOSITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.DISPOSITION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.DISPOSITION))
      '(ASEADAL.APPROVAL))


(DEFENTITY-CLASS "ASEADAL.RESOURCE_ITEM"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.RESOURCE_ITEM.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.RESOURCE_ITEM.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("resource_items"
                   (:INITARG :ASEADAL.RESOURCE_ITEM.RESOURCE_ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.RESOURCE_ITEM_SELECT)))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.RESOURCE_ITEM_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_resource"
                   (:INITARG
                    :ASEADAL.RESOURCE_ITEM_ASSIGNMENT.ASSIGNED_RESOURCE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RESOURCE_ITEM))
                   (:OPTIONAL NIL))
                  ("item"
                   (:INITARG :ASEADAL.RESOURCE_ITEM_ASSIGNMENT.ITEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RESOURCE_ASSIGNMENT_ITEM))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.RESOURCE_ITEM_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.RESOURCE_ITEM_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.RESOURCE_ITEM_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating"
                   (:INITARG
                    :ASEADAL.RESOURCE_ITEM_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RESOURCE_ITEM))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG
                    :ASEADAL.RESOURCE_ITEM_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RESOURCE_ITEM))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.AND_STATE_CAUSE_EFFECT_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.AND_STATE_CAUSE_EFFECT_DEFINITION))
      '(ASEADAL.STATE_CAUSE_EFFECT_DEFINITION))


(DEFENTITY-CLASS "ASEADAL.OR_STATE_CAUSE_EFFECT_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.OR_STATE_CAUSE_EFFECT_DEFINITION))
      '(ASEADAL.STATE_CAUSE_EFFECT_DEFINITION))


(DEFENTITY-CLASS "ASEADAL.SEQUENCE_OF_STATE_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("predecessor"
                   (:INITARG
                    :ASEADAL.SEQUENCE_OF_STATE_DEFINITION.PREDECESSOR)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_DEFINITION)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED
                     INSTANCE
                     'ASEADAL.STATE_DEFINITION_RELATIONSHIP)))
                  ("successor"
                   (:INITARG
                    :ASEADAL.SEQUENCE_OF_STATE_DEFINITION.SUCCESSOR)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_DEFINITION)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING
                     INSTANCE
                     'ASEADAL.STATE_DEFINITION_RELATIONSHIP)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SEQUENCE_OF_STATE_DEFINITION))
      '(ASEADAL.STATE_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.STATE_CAUSE_EFFECT_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("cause"
                   (:INITARG
                    :ASEADAL.STATE_CAUSE_EFFECT_DEFINITION.CAUSE)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_DEFINITION)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED
                     INSTANCE
                     'ASEADAL.STATE_DEFINITION_RELATIONSHIP)))
                  ("effect"
                   (:INITARG
                    :ASEADAL.STATE_CAUSE_EFFECT_DEFINITION.EFFECT)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_DEFINITION)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING
                     INSTANCE
                     'ASEADAL.STATE_DEFINITION_RELATIONSHIP)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.STATE_CAUSE_EFFECT_DEFINITION))
      '(ASEADAL.STATE_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.STATE_COMPLEMENT_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("set_2"
                   (:INITARG
                    :ASEADAL.STATE_COMPLEMENT_DEFINITION.SET_2)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_DEFINITION)))
                   (:OPTIONAL NIL))
                  ("set_1"
                   (:INITARG
                    :ASEADAL.STATE_COMPLEMENT_DEFINITION.SET_1)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_DEFINITION)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED
                     INSTANCE
                     'ASEADAL.STATE_DEFINITION_RELATIONSHIP)))
                  ("universe"
                   (:INITARG
                    :ASEADAL.STATE_COMPLEMENT_DEFINITION.UNIVERSE)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_DEFINITION)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING
                     INSTANCE
                     'ASEADAL.STATE_DEFINITION_RELATIONSHIP)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.STATE_COMPLEMENT_DEFINITION))
      '(ASEADAL.STATE_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.STATE_PROPER_SUBSET_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("proper_subset"
                   (:INITARG
                    :ASEADAL.STATE_PROPER_SUBSET_DEFINITION.PROPER_SUBSET)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_DEFINITION)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED
                     INSTANCE
                     'ASEADAL.STATE_DEFINITION_RELATIONSHIP)))
                  ("proper_superset"
                   (:INITARG
                    :ASEADAL.STATE_PROPER_SUBSET_DEFINITION.PROPER_SUPERSET)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_DEFINITION)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING
                     INSTANCE
                     'ASEADAL.STATE_DEFINITION_RELATIONSHIP)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.STATE_PROPER_SUBSET_DEFINITION))
      '(ASEADAL.STATE_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.STATE_SUBSET_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("subset"
                   (:INITARG :ASEADAL.STATE_SUBSET_DEFINITION.SUBSET)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_DEFINITION)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED
                     INSTANCE
                     'ASEADAL.STATE_DEFINITION_RELATIONSHIP)))
                  ("superset"
                   (:INITARG :ASEADAL.STATE_SUBSET_DEFINITION.SUPERSET)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_DEFINITION)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING
                     INSTANCE
                     'ASEADAL.STATE_DEFINITION_RELATIONSHIP)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.STATE_SUBSET_DEFINITION))
      '(ASEADAL.STATE_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.STATE_SYMPTOM_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("symptom_cause"
                   (:INITARG
                    :ASEADAL.STATE_SYMPTOM_DEFINITION.SYMPTOM_CAUSE)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_DEFINITION)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED
                     INSTANCE
                     'ASEADAL.STATE_DEFINITION_RELATIONSHIP)))
                  ("symptom_effect"
                   (:INITARG
                    :ASEADAL.STATE_SYMPTOM_DEFINITION.SYMPTOM_EFFECT)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_DEFINITION)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING
                     INSTANCE
                     'ASEADAL.STATE_DEFINITION_RELATIONSHIP)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.STATE_SYMPTOM_DEFINITION))
      '(ASEADAL.STATE_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.XOR_STATE_CAUSE_EFFECT_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.XOR_STATE_CAUSE_EFFECT_DEFINITION))
      '(ASEADAL.STATE_CAUSE_EFFECT_DEFINITION))


(DEFENTITY-CLASS "ASEADAL.APPLIED_STATE_DEFINITION_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_to"
                   (:INITARG
                    :ASEADAL.APPLIED_STATE_DEFINITION_ASSIGNMENT.ASSIGNED_TO)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.STATE_DEFINITION_OF_ITEM))
                   (:OPTIONAL NIL))
                  ("described_state_definition"
                   (:INITARG
                    :ASEADAL.APPLIED_STATE_DEFINITION_ASSIGNMENT.DESCRIBED_STATE_DEFINITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.STATE_DEFINITION))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG
                    :ASEADAL.APPLIED_STATE_DEFINITION_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.STATE_DEFINITION_ROLE))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.COMPOSITION_OF_STATE_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("part"
                   (:INITARG
                    :ASEADAL.COMPOSITION_OF_STATE_DEFINITION.PART)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_DEFINITION)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED
                     INSTANCE
                     'ASEADAL.STATE_DEFINITION_RELATIONSHIP)))
                  ("whole"
                   (:INITARG
                    :ASEADAL.COMPOSITION_OF_STATE_DEFINITION.WHOLE)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_DEFINITION)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING
                     INSTANCE
                     'ASEADAL.STATE_DEFINITION_RELATIONSHIP)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.COMPOSITION_OF_STATE_DEFINITION))
      '(ASEADAL.STATE_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.STATE_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.STATE_DEFINITION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.STATE_DEFINITION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.STATE_DEFINITION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG
                    :ASEADAL.STATE_DEFINITION_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("relating"
                   (:INITARG
                    :ASEADAL.STATE_DEFINITION_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_DEFINITION)))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.STATE_DEFINITION_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("related"
                   (:INITARG
                    :ASEADAL.STATE_DEFINITION_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_DEFINITION)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.STATE_DEFINITION_ROLE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.STATE_DEFINITION_ROLE.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.STATE_DEFINITION_ROLE.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.STATE_TRANSITION_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("end_state"
                   (:INITARG
                    :ASEADAL.STATE_TRANSITION_DEFINITION.END_STATE)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_DEFINITION)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING
                     INSTANCE
                     'ASEADAL.STATE_DEFINITION_RELATIONSHIP)))
                  ("start_state"
                   (:INITARG
                    :ASEADAL.STATE_TRANSITION_DEFINITION.START_STATE)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_DEFINITION)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED
                     INSTANCE
                     'ASEADAL.STATE_DEFINITION_RELATIONSHIP)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.STATE_TRANSITION_DEFINITION))
      '(ASEADAL.STATE_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.ANALYSIS"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ANALYSIS)) '(ASEADAL.PRODUCT))


(DEFENTITY-CLASS "ASEADAL.ANALYSIS_DISCIPLINE_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("defined_version"
                   (:INITARG
                    :ASEADAL.ANALYSIS_DISCIPLINE_DEFINITION.DEFINED_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ANALYSIS_DISCIPLINE_DEFINITION))
      '(ASEADAL.PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "ASEADAL.ANALYSIS_VERSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("of_product"
                   (:INITARG :ASEADAL.ANALYSIS_VERSION.OF_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ANALYSIS_VERSION))
      '(ASEADAL.PRODUCT_VERSION))


(DEFENTITY-CLASS "ASEADAL.CONTRACT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.CONTRACT.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("purpose"
                   (:INITARG :ASEADAL.CONTRACT.PURPOSE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("kind"
                   (:INITARG :ASEADAL.CONTRACT.KIND)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.CONTRACT_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_contract"
                   (:INITARG
                    :ASEADAL.CONTRACT_ASSIGNMENT.ASSIGNED_CONTRACT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONTRACT))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.CONTRACT_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.CONTRACT_ITEM)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.SECURITY_CLASSIFICATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("classification_level"
                   (:INITARG
                    :ASEADAL.SECURITY_CLASSIFICATION.CLASSIFICATION_LEVEL)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.SECURITY_CLASSIFICATION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.SECURITY_CLASSIFICATION_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("classification"
                   (:INITARG
                    :ASEADAL.SECURITY_CLASSIFICATION_ASSIGNMENT.CLASSIFICATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SECURITY_CLASSIFICATION))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG
                    :ASEADAL.SECURITY_CLASSIFICATION_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.SECURITY_CLASSIFICATION_ITEM)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.ANALYSIS_MODEL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("context_of_items"
                   (:INITARG :ASEADAL.ANALYSIS_MODEL.CONTEXT_OF_ITEMS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REPRESENTATION_CONTEXT))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.ANALYSIS_MODEL.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.REPRESENTATION_ITEM)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ANALYSIS_MODEL))
      '(ASEADAL.REPRESENTATION))


(DEFENTITY-CLASS "ASEADAL.ANALYSIS_REPRESENTATION_CONTEXT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ANALYSIS_REPRESENTATION_CONTEXT))
      '(ASEADAL.REPRESENTATION_CONTEXT))


(DEFENTITY-CLASS "ASEADAL.ANALYSIS_REPRESENTATION_ITEM"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ANALYSIS_REPRESENTATION_ITEM))
      '(ASEADAL.REPRESENTATION_ITEM))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.ANALYSIS_REPRESENTATION_ITEM))
      T)


(DEFENTITY-CLASS "ASEADAL.EXTERNAL_ITEM_IDENTIFICATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("external_id"
                   (:INITARG
                    :ASEADAL.EXTERNAL_ITEM_IDENTIFICATION.EXTERNAL_ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.EXTERNAL_ITEM_IDENTIFICATION))
      '(ASEADAL.EXTERNAL_SOURCE_IDENTIFICATION))


(DEFENTITY-CLASS "ASEADAL.EXTERNAL_SOURCE_IDENTIFICATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("source_id"
                   (:INITARG
                    :ASEADAL.EXTERNAL_SOURCE_IDENTIFICATION.SOURCE_ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("source_type"
                   (:INITARG
                    :ASEADAL.EXTERNAL_SOURCE_IDENTIFICATION.SOURCE_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("item"
                   (:INITARG
                    :ASEADAL.EXTERNAL_SOURCE_IDENTIFICATION.ITEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.EXTERNAL_IDENTIFICATION_ITEM))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.EXTERNAL_SOURCE_IDENTIFICATION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.REQUIREMENT_VIEW_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("defined_version"
                   (:INITARG
                    :ASEADAL.REQUIREMENT_VIEW_DEFINITION.DEFINED_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.REQUIREMENT_VIEW_DEFINITION))
      '(ASEADAL.PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "ASEADAL.ASSIGNED_DOCUMENT_PROPERTY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.ASSIGNED_DOCUMENT_PROPERTY.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:DERIVED T)
                   (:EXPRESSION "document property")
                   (:OPTIONAL NIL))
                  ("described_element"
                   (:INITARG
                    :ASEADAL.ASSIGNED_DOCUMENT_PROPERTY.DESCRIBED_ELEMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PROPERTY_ASSIGNMENT_SELECT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ASSIGNED_DOCUMENT_PROPERTY))
      '(ASEADAL.ASSIGNED_PROPERTY))


(DEFDOMAIN-RULES ASEADAL.ASSIGNED_DOCUMENT_PROPERTY
                 ("WR1"
                  (EXPRESS-EQUAL (BI-SIZEOF
                                  (EXPRESS-MULT
                                   (MAKE-INSTANCE
                                    'EXPRESS-BAG
                                    :VALUE
                                    (LIST
                                     "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.DOCUMENT_DEFINITION"
                                     "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.FILE")
                                    :TYPE-DESCRIPTOR
                                    (MAKE-INSTANCE
                                     'BAG-TYP
                                     :L-BOUND
                                     0
                                     :U-BOUND
                                     :?
                                     :BASE-TYPE
                                     T))
                                   (BI-TYPEOF
                                    (%DESCRIBED_ELEMENT
                                     INSTANCE
                                     'ASEADAL.ASSIGNED_PROPERTY))))
                                 1)))


(DEFENTITY-CLASS "ASEADAL.DESCRIPTIVE_DOCUMENT_PROPERTY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("valued_characteristic"
                   (:INITARG
                    :ASEADAL.DESCRIPTIVE_DOCUMENT_PROPERTY.VALUED_CHARACTERISTIC)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   1
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.DOCUMENT_PROPERTY_REPRESENTATION)))
                   (:INVERSE (ASEADAL.REPRESENTATION ITEMS)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.DESCRIPTIVE_DOCUMENT_PROPERTY))
      '(ASEADAL.STRING_REPRESENTATION_ITEM))


(DEFENTITY-CLASS "ASEADAL.DOCUMENT_PROPERTY_REPRESENTATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("items"
                   (:INITARG
                    :ASEADAL.DOCUMENT_PROPERTY_REPRESENTATION.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.REPRESENTATION_ITEM)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.DOCUMENT_PROPERTY_REPRESENTATION))
      '(ASEADAL.REPRESENTATION))


(DEFDOMAIN-RULES ASEADAL.DOCUMENT_PROPERTY_REPRESENTATION
                 ("WR1"
                  (EXPRESS-> (BI-SIZEOF (QUERY
                                         (BI-USEDIN
                                          INSTANCE
                                          "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.PROPERTY_DEFINITION_REPRESENTATION.REP")
                                         #'(LAMBDA
                                            (ASEADAL.PR)
                                            (IN
                                             "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.ASSIGNED_PROPERTY"
                                             (BI-TYPEOF
                                              (%PROPERTY
                                               ASEADAL.PR
                                               'ASEADAL.PROPERTY_REPRESENTATION))))))
                             0))
                 ("WR2"
                  (EXPRESS-INSTANCE-EQUAL (%KIND
                                           (%CONTEXT_OF_ITEMS
                                            INSTANCE
                                            NIL)
                                           NIL)
                                          "document parameters"))
                 ("WR3"
                  (VALID_DOCUMENT_PROPERTY_REPRESENTATION INSTANCE))
                 ("WR4"
                  (EXPRESS-EQUAL (BI-SIZEOF
                                  (QUERY
                                   (%ITEMS
                                    INSTANCE
                                    'ASEADAL.REPRESENTATION)
                                   #'(LAMBDA
                                      (ASEADAL.IT1)
                                      (EXPRESS->
                                       (BI-SIZEOF
                                        (QUERY
                                         (%ITEMS
                                          INSTANCE
                                          'ASEADAL.REPRESENTATION)
                                         #'(LAMBDA
                                            (ASEADAL.IT2)
                                            (EXPRESS-INSTANCE-EQUAL
                                             (%NAME ASEADAL.IT1 NIL)
                                             (%NAME
                                              ASEADAL.IT2
                                              NIL)))))
                                       1))))
                                 0)))


(DEFENTITY-CLASS "ASEADAL.NUMERICAL_DOCUMENT_PROPERTY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("valued_characteristic"
                   (:INITARG
                    :ASEADAL.NUMERICAL_DOCUMENT_PROPERTY.VALUED_CHARACTERISTIC)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   1
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.DOCUMENT_PROPERTY_REPRESENTATION)))
                   (:INVERSE (ASEADAL.REPRESENTATION ITEMS)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.NUMERICAL_DOCUMENT_PROPERTY))
      '(ASEADAL.NUMERICAL_ITEM_WITH_UNIT))


(DEFENTITY-CLASS "ASEADAL.DATED_EFFECTIVITY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("start_bound"
                   (:INITARG :ASEADAL.DATED_EFFECTIVITY.START_BOUND)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DATE_OR_EVENT))
                   (:OPTIONAL NIL))
                  ("end_bound"
                   (:INITARG :ASEADAL.DATED_EFFECTIVITY.END_BOUND)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DATE_OR_EVENT))
                   (:OPTIONAL T))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.DATED_EFFECTIVITY))
      '(ASEADAL.EFFECTIVITY))


(DEFENTITY-CLASS "ASEADAL.EFFECTIVITY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.EFFECTIVITY.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.EFFECTIVITY.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.EFFECTIVITY.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.EFFECTIVITY_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relation_type"
                   (:INITARG
                    :ASEADAL.EFFECTIVITY_RELATIONSHIP.RELATION_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.EFFECTIVITY_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating_effectivity"
                   (:INITARG
                    :ASEADAL.EFFECTIVITY_RELATIONSHIP.RELATING_EFFECTIVITY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.EFFECTIVITY))
                   (:OPTIONAL NIL))
                  ("related_effectivity"
                   (:INITARG
                    :ASEADAL.EFFECTIVITY_RELATIONSHIP.RELATED_EFFECTIVITY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.EFFECTIVITY))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.LOT_EFFECTIVITY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("lot_id"
                   (:INITARG :ASEADAL.LOT_EFFECTIVITY.LOT_ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("lot_size"
                   (:INITARG :ASEADAL.LOT_EFFECTIVITY.LOT_SIZE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VALUE_WITH_UNIT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.LOT_EFFECTIVITY))
      '(ASEADAL.EFFECTIVITY))


(DEFENTITY-CLASS "ASEADAL.SERIAL_EFFECTIVITY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("start_id"
                   (:INITARG :ASEADAL.SERIAL_EFFECTIVITY.START_ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("end_id"
                   (:INITARG :ASEADAL.SERIAL_EFFECTIVITY.END_ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SERIAL_EFFECTIVITY))
      '(ASEADAL.EFFECTIVITY))


(DEFENTITY-CLASS "ASEADAL.TIME_INTERVAL_EFFECTIVITY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("effectivity_period"
                   (:INITARG
                    :ASEADAL.TIME_INTERVAL_EFFECTIVITY.EFFECTIVITY_PERIOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TIME_INTERVAL))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TIME_INTERVAL_EFFECTIVITY))
      '(ASEADAL.EFFECTIVITY))


(DEFENTITY-CLASS "ASEADAL.REQUIREMENT_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.REQUIREMENT_ASSIGNMENT.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.REQUIREMENT_ASSIGNMENT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("assigned_requirement"
                   (:INITARG
                    :ASEADAL.REQUIREMENT_ASSIGNMENT.ASSIGNED_REQUIREMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REQUIREMENT_VIEW_DEFINITION))
                   (:OPTIONAL NIL))
                  ("assigned_to"
                   (:INITARG
                    :ASEADAL.REQUIREMENT_ASSIGNMENT.ASSIGNED_TO)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REQUIREMENT_ASSIGNMENT_ITEM))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.REQUIREMENT_SOURCE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.REQUIREMENT_SOURCE.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.REQUIREMENT_SOURCE.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("source"
                   (:INITARG :ASEADAL.REQUIREMENT_SOURCE.SOURCE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REQUIREMENT_SOURCE_ITEM))
                   (:OPTIONAL NIL))
                  ("sourced_requirement"
                   (:INITARG
                    :ASEADAL.REQUIREMENT_SOURCE.SOURCED_REQUIREMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REQUIREMENT_VIEW_DEFINITION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.REQUIREMENT_COLLECTION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("collection"
                   (:INITARG
                    :ASEADAL.REQUIREMENT_COLLECTION_RELATIONSHIP.COLLECTION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REQUIREMENT_VIEW_DEFINITION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING_VIEW
                     INSTANCE
                     'ASEADAL.VIEW_DEFINITION_RELATIONSHIP)))
                  ("member"
                   (:INITARG
                    :ASEADAL.REQUIREMENT_COLLECTION_RELATIONSHIP.MEMBER)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REQUIREMENT_VIEW_DEFINITION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED_VIEW
                     INSTANCE
                     'ASEADAL.VIEW_DEFINITION_RELATIONSHIP)))
                  ("relating_view"
                   (:INITARG
                    :ASEADAL.REQUIREMENT_COLLECTION_RELATIONSHIP.RELATING_VIEW)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VIEW_DEFINITION))
                   (:OPTIONAL NIL))
                  ("related_view"
                   (:INITARG
                    :ASEADAL.REQUIREMENT_COLLECTION_RELATIONSHIP.RELATED_VIEW)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VIEW_DEFINITION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.REQUIREMENT_COLLECTION_RELATIONSHIP))
      '(ASEADAL.VIEW_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.TRACING_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("traces_from"
                   (:INITARG :ASEADAL.TRACING_RELATIONSHIP.TRACES_FROM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REQUIREMENT_VIEW_DEFINITION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING_VIEW
                     INSTANCE
                     'ASEADAL.VIEW_DEFINITION_RELATIONSHIP)))
                  ("traces_to"
                   (:INITARG :ASEADAL.TRACING_RELATIONSHIP.TRACES_TO)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REQUIREMENT_VIEW_DEFINITION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED_VIEW
                     INSTANCE
                     'ASEADAL.VIEW_DEFINITION_RELATIONSHIP)))
                  ("relating_view"
                   (:INITARG
                    :ASEADAL.TRACING_RELATIONSHIP.RELATING_VIEW)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VIEW_DEFINITION))
                   (:OPTIONAL NIL))
                  ("related_view"
                   (:INITARG
                    :ASEADAL.TRACING_RELATIONSHIP.RELATED_VIEW)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VIEW_DEFINITION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TRACING_RELATIONSHIP))
      '(ASEADAL.VIEW_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.BEHAVIOUR_DESCRIPTION_ASSOCIATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("description"
                   (:INITARG
                    :ASEADAL.BEHAVIOUR_DESCRIPTION_ASSOCIATION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("representation"
                   (:INITARG
                    :ASEADAL.BEHAVIOUR_DESCRIPTION_ASSOCIATION.REPRESENTATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.BEHAVIOUR_MODEL))
                   (:OPTIONAL NIL))
                  ("represented_item"
                   (:INITARG
                    :ASEADAL.BEHAVIOUR_DESCRIPTION_ASSOCIATION.REPRESENTED_ITEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.BEHAVIOUR_ITEM))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG
                    :ASEADAL.BEHAVIOUR_DESCRIPTION_ASSOCIATION.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.BEHAVIOUR_VIEW_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("defined_version"
                   (:INITARG
                    :ASEADAL.BEHAVIOUR_VIEW_DEFINITION.DEFINED_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.BEHAVIOUR_VIEW_DEFINITION))
      '(ASEADAL.PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "ASEADAL.EXPRESSION_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("expression"
                   (:INITARG :ASEADAL.EXPRESSION_ASSIGNMENT.EXPRESSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.EXPRESSION))
                   (:OPTIONAL NIL))
                  ("item"
                   (:INITARG :ASEADAL.EXPRESSION_ASSIGNMENT.ITEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.EXPRESSION_ASSIGNMENT_ITEM))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.AND_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.AND_EXPRESSION))
      '(ASEADAL.MULTIPLE_ARITY_BOOLEAN_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.BINARY_BOOLEAN_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.BINARY_BOOLEAN_EXPRESSION))
      '(ASEADAL.BOOLEAN_EXPRESSION ASEADAL.BINARY_GENERIC_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.BINARY_BOOLEAN_EXPRESSION)) T)


(DEFENTITY-CLASS "ASEADAL.BINARY_NUMERIC_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("operands"
                   (:INITARG
                    :ASEADAL.BINARY_NUMERIC_EXPRESSION.OPERANDS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'LIST-TYP
                                   :L-BOUND
                                   2
                                   :U-BOUND
                                   2
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.GENERIC_EXPRESSION)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.BINARY_NUMERIC_EXPRESSION))
      '(ASEADAL.NUMERIC_EXPRESSION ASEADAL.BINARY_GENERIC_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.BINARY_NUMERIC_EXPRESSION)) T)


(DEFENTITY-CLASS "ASEADAL.BOOLEAN_DEFINED_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.BOOLEAN_DEFINED_FUNCTION))
      '(ASEADAL.DEFINED_FUNCTION ASEADAL.BOOLEAN_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.BOOLEAN_DEFINED_FUNCTION)) T)


(DEFENTITY-CLASS "ASEADAL.BOOLEAN_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.BOOLEAN_EXPRESSION))
      '(ASEADAL.EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.BOOLEAN_EXPRESSION)) T)


(DEFENTITY-CLASS "ASEADAL.BOOLEAN_LITERAL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("the_value"
                   (:INITARG :ASEADAL.BOOLEAN_LITERAL.THE_VALUE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'BOOLEAN-TYP))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.BOOLEAN_LITERAL))
      '(ASEADAL.SIMPLE_BOOLEAN_EXPRESSION ASEADAL.GENERIC_LITERAL))


(DEFENTITY-CLASS "ASEADAL.BOOLEAN_VARIABLE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.BOOLEAN_VARIABLE))
      '(ASEADAL.SIMPLE_BOOLEAN_EXPRESSION ASEADAL.VARIABLE))


(DEFENTITY-CLASS "ASEADAL.COMPARISON_EQUAL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.COMPARISON_EQUAL))
      '(ASEADAL.COMPARISON_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.COMPARISON_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("operands"
                   (:INITARG :ASEADAL.COMPARISON_EXPRESSION.OPERANDS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'LIST-TYP
                                   :L-BOUND
                                   2
                                   :U-BOUND
                                   2
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.GENERIC_EXPRESSION)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.COMPARISON_EXPRESSION))
      '(ASEADAL.BOOLEAN_EXPRESSION ASEADAL.BINARY_GENERIC_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.COMPARISON_EXPRESSION)) T)


(DEFDOMAIN-RULES ASEADAL.COMPARISON_EXPRESSION
                 ("WR1"
                  (EXPRESS-OR (EXPRESS-OR (EXPRESS-AND
                                           (IN
                                            "NUMERIC_EXPRESSION_ARM.NUMERIC_EXPRESSION"
                                            (BI-TYPEOF
                                             (EXPRESS-AREF
                                              (%OPERANDS
                                               INSTANCE
                                               'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                              1)))
                                           (IN
                                            "NUMERIC_EXPRESSION_ARM.NUMERIC_EXPRESSION"
                                            (BI-TYPEOF
                                             (EXPRESS-AREF
                                              (%OPERANDS
                                               INSTANCE
                                               'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                              2))))
                                          (EXPRESS-AND
                                           (IN
                                            "BOOLEAN_EXPRESSION_ARM.BOOLEAN_EXPRESSION"
                                            (BI-TYPEOF
                                             (EXPRESS-AREF
                                              (%OPERANDS
                                               INSTANCE
                                               'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                              1)))
                                           (IN
                                            "BOOLEAN_EXPRESSION_ARM.BOOLEAN_EXPRESSION"
                                            (BI-TYPEOF
                                             (EXPRESS-AREF
                                              (%OPERANDS
                                               INSTANCE
                                               'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                              2)))))
                              (EXPRESS-AND (IN
                                            "STRING_EXPRESSION_ARM.STRING_EXPRESSION"
                                            (BI-TYPEOF
                                             (EXPRESS-AREF
                                              (%OPERANDS
                                               INSTANCE
                                               'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                              1)))
                                           (IN
                                            "STRING_EXPRESSION_ARM.STRING_EXPRESSION"
                                            (BI-TYPEOF
                                             (EXPRESS-AREF
                                              (%OPERANDS
                                               INSTANCE
                                               'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                              2)))))))


(DEFENTITY-CLASS "ASEADAL.COMPARISON_GREATER"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.COMPARISON_GREATER))
      '(ASEADAL.COMPARISON_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.COMPARISON_GREATER_EQUAL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.COMPARISON_GREATER_EQUAL))
      '(ASEADAL.COMPARISON_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.COMPARISON_LESS"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.COMPARISON_LESS))
      '(ASEADAL.COMPARISON_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.COMPARISON_LESS_EQUAL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.COMPARISON_LESS_EQUAL))
      '(ASEADAL.COMPARISON_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.COMPARISON_NOT_EQUAL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.COMPARISON_NOT_EQUAL))
      '(ASEADAL.COMPARISON_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.CONCAT_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("operands"
                   (:INITARG :ASEADAL.CONCAT_EXPRESSION.OPERANDS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'LIST-TYP
                                   :L-BOUND
                                   2
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.GENERIC_EXPRESSION)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.CONCAT_EXPRESSION))
      '(ASEADAL.STRING_EXPRESSION
        ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.DEFINED_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.DEFINED_FUNCTION)) T)


(DEFENTITY-CLASS "ASEADAL.DIV_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.DIV_EXPRESSION))
      '(ASEADAL.BINARY_NUMERIC_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.EQUALS_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.EQUALS_EXPRESSION))
      '(ASEADAL.BINARY_BOOLEAN_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.EXPRESSION))
      '(ASEADAL.GENERIC_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.EXPRESSION)) T)


(DEFENTITY-CLASS "ASEADAL.FORMAT_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("value_to_format"
                   (:INITARG :ASEADAL.FORMAT_FUNCTION.VALUE_TO_FORMAT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GENERIC_EXPRESSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (EXPRESS-AREF (%OPERANDS
                                   INSTANCE
                                   'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                  1)))
                  ("format_string"
                   (:INITARG :ASEADAL.FORMAT_FUNCTION.FORMAT_STRING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GENERIC_EXPRESSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (EXPRESS-AREF (%OPERANDS
                                   INSTANCE
                                   'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                  2)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.FORMAT_FUNCTION))
      '(ASEADAL.STRING_EXPRESSION ASEADAL.BINARY_GENERIC_EXPRESSION))


(DEFDOMAIN-RULES ASEADAL.FORMAT_FUNCTION
                 ("WR1"
                  (EXPRESS-AND (IN
                                "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.NUMERIC_EXPRESSION"
                                (BI-TYPEOF
                                 (%VALUE_TO_FORMAT INSTANCE NIL)))
                               (IN
                                "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.STRING_EXPRESSION"
                                (BI-TYPEOF
                                 (%FORMAT_STRING INSTANCE NIL))))))


(DEFENTITY-CLASS "ASEADAL.INDEX_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("operand"
                   (:INITARG :ASEADAL.INDEX_EXPRESSION.OPERAND)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GENERIC_EXPRESSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (EXPRESS-AREF (%OPERANDS
                                   INSTANCE
                                   'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                  1)))
                  ("index"
                   (:INITARG :ASEADAL.INDEX_EXPRESSION.INDEX)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GENERIC_EXPRESSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (EXPRESS-AREF (%OPERANDS
                                   INSTANCE
                                   'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                  2)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.INDEX_EXPRESSION))
      '(ASEADAL.STRING_EXPRESSION ASEADAL.BINARY_GENERIC_EXPRESSION))


(DEFDOMAIN-RULES ASEADAL.INDEX_EXPRESSION
                 ("WR1"
                  (EXPRESS-AND (IN
                                "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.STRING_EXPRESSION"
                                (BI-TYPEOF (%OPERAND INSTANCE NIL)))
                               (IN
                                "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.NUMERIC_EXPRESSION"
                                (BI-TYPEOF (%INDEX INSTANCE NIL)))))
                 ("WR2" (IS_INT_EXPR (%INDEX INSTANCE NIL))))


(DEFENTITY-CLASS "ASEADAL.INT_LITERAL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("the_value"
                   (:INITARG :ASEADAL.INT_LITERAL.THE_VALUE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'NUMBER-TYP))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.INT_LITERAL))
      '(ASEADAL.LITERAL_NUMBER))


(DEFENTITY-CLASS "ASEADAL.INT_NUMERIC_VARIABLE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.INT_NUMERIC_VARIABLE))
      '(ASEADAL.NUMERIC_VARIABLE))


(DEFENTITY-CLASS "ASEADAL.INTERVAL_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("interval_low"
                   (:INITARG :ASEADAL.INTERVAL_EXPRESSION.INTERVAL_LOW)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GENERIC_EXPRESSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (EXPRESS-AREF (%OPERANDS
                                   INSTANCE
                                   'ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION)
                                  1)))
                  ("interval_item"
                   (:INITARG
                    :ASEADAL.INTERVAL_EXPRESSION.INTERVAL_ITEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GENERIC_EXPRESSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (EXPRESS-AREF (%OPERANDS
                                   INSTANCE
                                   'ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION)
                                  2)))
                  ("interval_high"
                   (:INITARG
                    :ASEADAL.INTERVAL_EXPRESSION.INTERVAL_HIGH)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GENERIC_EXPRESSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (EXPRESS-AREF (%OPERANDS
                                   INSTANCE
                                   'ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION)
                                  3)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.INTERVAL_EXPRESSION))
      '(ASEADAL.BOOLEAN_EXPRESSION
        ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION))


(DEFDOMAIN-RULES ASEADAL.INTERVAL_EXPRESSION
                 ("WR1"
                  (EXPRESS-AND (EXPRESS-AND
                                (IN
                                 "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.EXPRESSION"
                                 (BI-TYPEOF
                                  (%INTERVAL_LOW INSTANCE NIL)))
                                (IN
                                 "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.EXPRESSION"
                                 (BI-TYPEOF
                                  (%INTERVAL_ITEM INSTANCE NIL))))
                               (IN
                                "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.EXPRESSION"
                                (BI-TYPEOF
                                 (%INTERVAL_HIGH INSTANCE NIL)))))
                 ("WR2"
                  (EXPRESS-OR (EXPRESS-AND (EXPRESS-AND
                                            (IN
                                             "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.STRING_EXPRESSION"
                                             (BI-TYPEOF
                                              (%INTERVAL_LOW
                                               INSTANCE
                                               NIL)))
                                            (IN
                                             "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.STRING_EXPRESSION"
                                             (BI-TYPEOF
                                              (%INTERVAL_HIGH
                                               INSTANCE
                                               NIL))))
                                           (IN
                                            "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.STRING_EXPRESSION"
                                            (BI-TYPEOF
                                             (%INTERVAL_ITEM
                                              INSTANCE
                                              NIL))))
                              (EXPRESS-AND (EXPRESS-AND
                                            (IN
                                             "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.STRING_EXPRESSION"
                                             (BI-TYPEOF
                                              (%INTERVAL_LOW
                                               INSTANCE
                                               NIL)))
                                            (IN
                                             "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.NUMERIC_EXPRESSION"
                                             (BI-TYPEOF
                                              (%INTERVAL_ITEM
                                               INSTANCE
                                               NIL))))
                                           (IN
                                            "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.NUMERIC_EXPRESSION"
                                            (BI-TYPEOF
                                             (%INTERVAL_HIGH
                                              INSTANCE
                                              NIL)))))))


(DEFENTITY-CLASS "ASEADAL.LIKE_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.LIKE_EXPRESSION))
      '(ASEADAL.COMPARISON_EXPRESSION))


(DEFDOMAIN-RULES ASEADAL.LIKE_EXPRESSION
                 ("WR1"
                  (EXPRESS-AND (IN
                                "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.STRING_EXPRESSION"
                                (BI-TYPEOF
                                 (EXPRESS-AREF
                                  (%OPERANDS
                                   INSTANCE
                                   'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                  1)))
                               (IN
                                "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.STRING_EXPRESSION"
                                (BI-TYPEOF
                                 (EXPRESS-AREF
                                  (%OPERANDS
                                   INSTANCE
                                   'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                  2))))))


(DEFENTITY-CLASS "ASEADAL.LITERAL_NUMBER"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("the_value"
                   (:INITARG :ASEADAL.LITERAL_NUMBER.THE_VALUE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'NUMBER-TYP))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.LITERAL_NUMBER))
      '(ASEADAL.SIMPLE_NUMERIC_EXPRESSION ASEADAL.GENERIC_LITERAL))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.LITERAL_NUMBER)) T)


(DEFENTITY-CLASS "ASEADAL.MINUS_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.MINUS_EXPRESSION))
      '(ASEADAL.BINARY_NUMERIC_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.MOD_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.MOD_EXPRESSION))
      '(ASEADAL.BINARY_NUMERIC_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.MULT_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.MULT_EXPRESSION))
      '(ASEADAL.MULTIPLE_ARITY_NUMERIC_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.MULTIPLE_ARITY_BOOLEAN_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("operands"
                   (:INITARG
                    :ASEADAL.MULTIPLE_ARITY_BOOLEAN_EXPRESSION.OPERANDS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'LIST-TYP
                                   :L-BOUND
                                   2
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.GENERIC_EXPRESSION)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.MULTIPLE_ARITY_BOOLEAN_EXPRESSION))
      '(ASEADAL.BOOLEAN_EXPRESSION
        ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.MULTIPLE_ARITY_BOOLEAN_EXPRESSION))
      T)


(DEFENTITY-CLASS "ASEADAL.MULTIPLE_ARITY_FUNCTION_CALL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.MULTIPLE_ARITY_FUNCTION_CALL))
      '(ASEADAL.MULTIPLE_ARITY_NUMERIC_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.MULTIPLE_ARITY_FUNCTION_CALL))
      T)


(DEFENTITY-CLASS "ASEADAL.MULTIPLE_ARITY_NUMERIC_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("operands"
                   (:INITARG
                    :ASEADAL.MULTIPLE_ARITY_NUMERIC_EXPRESSION.OPERANDS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'LIST-TYP
                                   :L-BOUND
                                   2
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.GENERIC_EXPRESSION)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.MULTIPLE_ARITY_NUMERIC_EXPRESSION))
      '(ASEADAL.NUMERIC_EXPRESSION
        ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.MULTIPLE_ARITY_NUMERIC_EXPRESSION))
      T)


(DEFENTITY-CLASS "ASEADAL.NOT_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("operand"
                   (:INITARG :ASEADAL.NOT_EXPRESSION.OPERAND)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GENERIC_EXPRESSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.NOT_EXPRESSION))
      '(ASEADAL.UNARY_BOOLEAN_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.NUMERIC_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("is_int"
                   (:INITARG :ASEADAL.NUMERIC_EXPRESSION.IS_INT)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'BOOLEAN-TYP))
                   (:DERIVED T)
                   (:EXPRESSION (IS_INT_EXPR INSTANCE)))
                  ("sql_mappable"
                   (:INITARG :ASEADAL.NUMERIC_EXPRESSION.SQL_MAPPABLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'BOOLEAN-TYP))
                   (:DERIVED T)
                   (:EXPRESSION (IS_SQL_MAPPABLE INSTANCE)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.NUMERIC_EXPRESSION))
      '(ASEADAL.EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.NUMERIC_EXPRESSION)) T)


(DEFENTITY-CLASS "ASEADAL.NUMERIC_VARIABLE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.NUMERIC_VARIABLE))
      '(ASEADAL.SIMPLE_NUMERIC_EXPRESSION ASEADAL.VARIABLE))


(DEFDOMAIN-RULES ASEADAL.NUMERIC_VARIABLE
                 ("WR1"
                  (EXPRESS-OR (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.INT_NUMERIC_VARIABLE"
                                  (BI-TYPEOF INSTANCE))
                              (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.REAL_NUMERIC_VARIABLE"
                                  (BI-TYPEOF INSTANCE)))))


(DEFENTITY-CLASS "ASEADAL.OR_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.OR_EXPRESSION))
      '(ASEADAL.MULTIPLE_ARITY_BOOLEAN_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.PLUS_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PLUS_EXPRESSION))
      '(ASEADAL.MULTIPLE_ARITY_NUMERIC_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.POWER_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.POWER_EXPRESSION))
      '(ASEADAL.BINARY_NUMERIC_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.REAL_LITERAL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("the_value"
                   (:INITARG :ASEADAL.REAL_LITERAL.THE_VALUE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'NUMBER-TYP))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.REAL_LITERAL))
      '(ASEADAL.LITERAL_NUMBER))


(DEFENTITY-CLASS "ASEADAL.REAL_NUMERIC_VARIABLE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.REAL_NUMERIC_VARIABLE))
      '(ASEADAL.NUMERIC_VARIABLE))


(DEFENTITY-CLASS "ASEADAL.SIMPLE_BOOLEAN_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SIMPLE_BOOLEAN_EXPRESSION))
      '(ASEADAL.BOOLEAN_EXPRESSION ASEADAL.SIMPLE_GENERIC_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.SIMPLE_BOOLEAN_EXPRESSION)) T)


(DEFENTITY-CLASS "ASEADAL.SIMPLE_NUMERIC_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SIMPLE_NUMERIC_EXPRESSION))
      '(ASEADAL.NUMERIC_EXPRESSION ASEADAL.SIMPLE_GENERIC_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.SIMPLE_NUMERIC_EXPRESSION)) T)


(DEFENTITY-CLASS "ASEADAL.SIMPLE_STRING_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SIMPLE_STRING_EXPRESSION))
      '(ASEADAL.STRING_EXPRESSION ASEADAL.SIMPLE_GENERIC_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.SIMPLE_STRING_EXPRESSION)) T)


(DEFENTITY-CLASS "ASEADAL.SLASH_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SLASH_EXPRESSION))
      '(ASEADAL.BINARY_NUMERIC_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.SQL_MAPPABLE_DEFINED_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SQL_MAPPABLE_DEFINED_FUNCTION))
      '(ASEADAL.DEFINED_FUNCTION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.SQL_MAPPABLE_DEFINED_FUNCTION))
      T)


(DEFENTITY-CLASS "ASEADAL.STRING_DEFINED_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.STRING_DEFINED_FUNCTION))
      '(ASEADAL.DEFINED_FUNCTION ASEADAL.STRING_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.STRING_DEFINED_FUNCTION)) T)


(DEFENTITY-CLASS "ASEADAL.STRING_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.STRING_EXPRESSION))
      '(ASEADAL.EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.STRING_EXPRESSION)) T)


(DEFENTITY-CLASS "ASEADAL.STRING_LITERAL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("the_value"
                   (:INITARG :ASEADAL.STRING_LITERAL.THE_VALUE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.STRING_LITERAL))
      '(ASEADAL.SIMPLE_STRING_EXPRESSION ASEADAL.GENERIC_LITERAL))


(DEFENTITY-CLASS "ASEADAL.STRING_VARIABLE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.STRING_VARIABLE))
      '(ASEADAL.SIMPLE_STRING_EXPRESSION ASEADAL.VARIABLE))


(DEFENTITY-CLASS "ASEADAL.SUBSTRING_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("operand"
                   (:INITARG :ASEADAL.SUBSTRING_EXPRESSION.OPERAND)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GENERIC_EXPRESSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (EXPRESS-AREF (%OPERANDS
                                   INSTANCE
                                   'ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION)
                                  1)))
                  ("index1"
                   (:INITARG :ASEADAL.SUBSTRING_EXPRESSION.INDEX1)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GENERIC_EXPRESSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (EXPRESS-AREF (%OPERANDS
                                   INSTANCE
                                   'ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION)
                                  2)))
                  ("index2"
                   (:INITARG :ASEADAL.SUBSTRING_EXPRESSION.INDEX2)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GENERIC_EXPRESSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (EXPRESS-AREF (%OPERANDS
                                   INSTANCE
                                   'ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION)
                                  3)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SUBSTRING_EXPRESSION))
      '(ASEADAL.STRING_EXPRESSION
        ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION))


(DEFDOMAIN-RULES ASEADAL.SUBSTRING_EXPRESSION
                 ("WR1"
                  (EXPRESS-AND (EXPRESS-AND
                                (IN
                                 "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.STRING_EXPRESSION"
                                 (BI-TYPEOF (%OPERAND INSTANCE NIL)))
                                (IN
                                 "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.NUMERIC_EXPRESSION"
                                 (BI-TYPEOF (%INDEX1 INSTANCE NIL))))
                               (IN
                                "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.NUMERIC_EXPRESSION"
                                (BI-TYPEOF (%INDEX2 INSTANCE NIL)))))
                 ("WR2"
                  (EXPRESS-EQUAL (BI-SIZEOF
                                  (%OPERANDS
                                   INSTANCE
                                   'ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION))
                                 3))
                 ("WR3" (IS_INT_EXPR (%INDEX1 INSTANCE NIL)))
                 ("WR4" (IS_INT_EXPR (%INDEX2 INSTANCE NIL))))


(DEFENTITY-CLASS "ASEADAL.UNARY_BOOLEAN_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.UNARY_BOOLEAN_EXPRESSION))
      '(ASEADAL.BOOLEAN_EXPRESSION ASEADAL.UNARY_GENERIC_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.UNARY_BOOLEAN_EXPRESSION)) T)


(DEFENTITY-CLASS "ASEADAL.UNARY_NUMERIC_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("operand"
                   (:INITARG :ASEADAL.UNARY_NUMERIC_EXPRESSION.OPERAND)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GENERIC_EXPRESSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.UNARY_NUMERIC_EXPRESSION))
      '(ASEADAL.NUMERIC_EXPRESSION ASEADAL.UNARY_GENERIC_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.UNARY_NUMERIC_EXPRESSION)) T)


(DEFENTITY-CLASS "ASEADAL.XOR_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("operands"
                   (:INITARG :ASEADAL.XOR_EXPRESSION.OPERANDS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'LIST-TYP
                                   :L-BOUND
                                   2
                                   :U-BOUND
                                   2
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.GENERIC_EXPRESSION)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.XOR_EXPRESSION))
      '(ASEADAL.BINARY_BOOLEAN_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.BINARY_GENERIC_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("operands"
                   (:INITARG
                    :ASEADAL.BINARY_GENERIC_EXPRESSION.OPERANDS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'LIST-TYP
                                   :L-BOUND
                                   2
                                   :U-BOUND
                                   2
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.GENERIC_EXPRESSION)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.BINARY_GENERIC_EXPRESSION))
      '(ASEADAL.GENERIC_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.BINARY_GENERIC_EXPRESSION)) T)


(DEFENTITY-CLASS "ASEADAL.ENVIRONMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("syntactic_representation"
                   (:INITARG
                    :ASEADAL.ENVIRONMENT.SYNTACTIC_REPRESENTATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GENERIC_VARIABLE))
                   (:OPTIONAL NIL))
                  ("semantics"
                   (:INITARG :ASEADAL.ENVIRONMENT.SEMANTICS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VARIABLE_SEMANTICS))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.GENERIC_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.GENERIC_EXPRESSION)) T)


(DEFDOMAIN-RULES ASEADAL.GENERIC_EXPRESSION
                 ("WR1" (IS_ACYCLIC INSTANCE)))


(DEFENTITY-CLASS "ASEADAL.GENERIC_LITERAL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.GENERIC_LITERAL))
      '(ASEADAL.SIMPLE_GENERIC_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.GENERIC_LITERAL)) T)


(DEFENTITY-CLASS "ASEADAL.GENERIC_VARIABLE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("interpretation"
                   (:INITARG :ASEADAL.GENERIC_VARIABLE.INTERPRETATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ENVIRONMENT))
                   (:INVERSE
                    (ASEADAL.ENVIRONMENT SYNTACTIC_REPRESENTATION)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.GENERIC_VARIABLE))
      '(ASEADAL.SIMPLE_GENERIC_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.GENERIC_VARIABLE)) T)


(DEFENTITY-CLASS "ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("operands"
                   (:INITARG
                    :ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION.OPERANDS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'LIST-TYP
                                   :L-BOUND
                                   2
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.GENERIC_EXPRESSION)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION))
      '(ASEADAL.GENERIC_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION))
      T)


(DEFENTITY-CLASS "ASEADAL.SIMPLE_GENERIC_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SIMPLE_GENERIC_EXPRESSION))
      '(ASEADAL.GENERIC_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.SIMPLE_GENERIC_EXPRESSION)) T)


(DEFENTITY-CLASS "ASEADAL.UNARY_GENERIC_EXPRESSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("operand"
                   (:INITARG :ASEADAL.UNARY_GENERIC_EXPRESSION.OPERAND)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GENERIC_EXPRESSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.UNARY_GENERIC_EXPRESSION))
      '(ASEADAL.GENERIC_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.UNARY_GENERIC_EXPRESSION)) T)


(DEFENTITY-CLASS "ASEADAL.VARIABLE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.VARIABLE))
      '(ASEADAL.GENERIC_VARIABLE))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.VARIABLE)) T)


(DEFENTITY-CLASS "ASEADAL.VARIABLE_SEMANTICS"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.VARIABLE_SEMANTICS)) T)


(DEFENTITY-CLASS "ASEADAL.EXTERNAL_FUNCTIONAL_MODEL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("external_file"
                   (:INITARG
                    :ASEADAL.EXTERNAL_FUNCTIONAL_MODEL.EXTERNAL_FILE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DIGITAL_FILE))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.EXTERNAL_FUNCTIONAL_MODEL))
      '(ASEADAL.FUNCTION_BASED_BEHAVIOUR_MODEL))


(DEFENTITY-CLASS "ASEADAL.CONSTRAINED_GENERAL_PARAMETER_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("required_class"
                   (:INITARG
                    :ASEADAL.CONSTRAINED_GENERAL_PARAMETER_RELATIONSHIP.REQUIRED_CLASS)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.CLASS))
                   (:OPTIONAL NIL))
                  ("relating"
                   (:INITARG
                    :ASEADAL.CONSTRAINED_GENERAL_PARAMETER_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.INDEPENDENT_PROPERTY))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG
                    :ASEADAL.CONSTRAINED_GENERAL_PARAMETER_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.INDEPENDENT_PROPERTY))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.CONSTRAINED_GENERAL_PARAMETER_RELATIONSHIP))
      '(ASEADAL.INDEPENDENT_PROPERTY_RELATIONSHIP))


(DEFDOMAIN-RULES ASEADAL.CONSTRAINED_GENERAL_PARAMETER_RELATIONSHIP
                 ("WR1"
                  (EXPRESS-AND (IN
                                (%ID
                                 (%REQUIRED_CLASS INSTANCE NIL)
                                 NIL)
                                (CLASSOF (%RELATED INSTANCE NIL)))
                               (IN
                                (%ID
                                 (%REQUIRED_CLASS INSTANCE NIL)
                                 NIL)
                                (CLASSOF (%RELATING INSTANCE NIL))))))


(DEFENTITY-CLASS "ASEADAL.GENERAL_MODEL_PARAMETER"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.GENERAL_MODEL_PARAMETER))
      '(ASEADAL.INDEPENDENT_PROPERTY))


(DEFENTITY-CLASS "ASEADAL.PARAMETER_VALUE_REPRESENTATION_ITEM"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("parameter_value"
                   (:INITARG
                    :ASEADAL.PARAMETER_VALUE_REPRESENTATION_ITEM.PARAMETER_VALUE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PARAMETER_VALUE_SELECT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PARAMETER_VALUE_REPRESENTATION_ITEM))
      '(ASEADAL.REPRESENTATION_ITEM))


(DEFENTITY-CLASS "ASEADAL.NAME_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.NAME_ASSIGNMENT.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.NAME_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.NAME_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ASSIGNED_NAME_SELECT))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.INDEPENDENT_PROPERTY_REPRESENTATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("property"
                   (:INITARG
                    :ASEADAL.INDEPENDENT_PROPERTY_REPRESENTATION.PROPERTY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.INDEPENDENT_PROPERTY))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%DEFINITION
                     INSTANCE
                     'ASEADAL.PROPERTY_DEFINITION_REPRESENTATION)))
                  ("definition"
                   (:INITARG
                    :ASEADAL.INDEPENDENT_PROPERTY_REPRESENTATION.DEFINITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REPRESENTED_DEFINITION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.INDEPENDENT_PROPERTY_REPRESENTATION))
      '(ASEADAL.PROPERTY_DEFINITION_REPRESENTATION))


(DEFENTITY-CLASS "ASEADAL.NAMED_VARIABLE_SEMANTICS"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.NAMED_VARIABLE_SEMANTICS.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("variable_context"
                   (:INITARG
                    :ASEADAL.NAMED_VARIABLE_SEMANTICS.VARIABLE_CONTEXT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GENERIC_EXPRESSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.NAMED_VARIABLE_SEMANTICS))
      '(ASEADAL.VARIABLE_SEMANTICS))


(DEFENTITY-CLASS "ASEADAL.REQUIRED_RESOURCE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.REQUIRED_RESOURCE.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.REQUIRED_RESOURCE.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("required_quantity"
                   (:INITARG
                    :ASEADAL.REQUIRED_RESOURCE.REQUIRED_QUANTITY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VALUE_WITH_UNIT))
                   (:OPTIONAL T))))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.REQUIRED_RESOURCE)) T)


(DEFENTITY-CLASS "ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_resource"
                   (:INITARG
                    :ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT.ASSIGNED_RESOURCE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REQUIRED_RESOURCE))
                   (:OPTIONAL NIL))
                  ("item"
                   (:INITARG
                    :ASEADAL.REQUIRED_RESOURCE_ASSIGNMENT.ITEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REQUIRED_RESOURCE_ITEM))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.REQUIRED_RESOURCE_BY_RESOURCE_ITEM"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("resource_item"
                   (:INITARG
                    :ASEADAL.REQUIRED_RESOURCE_BY_RESOURCE_ITEM.RESOURCE_ITEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RESOURCE_ITEM))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.REQUIRED_RESOURCE_BY_RESOURCE_ITEM))
      '(ASEADAL.REQUIRED_RESOURCE))


(DEFENTITY-CLASS "ASEADAL.REQUIRED_RESOURCE_BY_SPECIFICATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.REQUIRED_RESOURCE_BY_SPECIFICATION))
      '(ASEADAL.REQUIRED_RESOURCE))


(DEFENTITY-CLASS "ASEADAL.REQUIRED_RESOURCE_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG
                    :ASEADAL.REQUIRED_RESOURCE_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.REQUIRED_RESOURCE_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating"
                   (:INITARG
                    :ASEADAL.REQUIRED_RESOURCE_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REQUIRED_RESOURCE))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG
                    :ASEADAL.REQUIRED_RESOURCE_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REQUIRED_RESOURCE))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.INCLUDED_TEXT_BASED_REPRESENTATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("source"
                   (:INITARG
                    :ASEADAL.INCLUDED_TEXT_BASED_REPRESENTATION.SOURCE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TEXT_BASED_REPRESENTATION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.INCLUDED_TEXT_BASED_REPRESENTATION))
      '(ASEADAL.REPRESENTATION_ITEM))


(DEFENTITY-CLASS "ASEADAL.TEXT_BASED_REPRESENTATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("context_of_items"
                   (:INITARG
                    :ASEADAL.TEXT_BASED_REPRESENTATION.CONTEXT_OF_ITEMS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REPRESENTATION_CONTEXT))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.TEXT_BASED_REPRESENTATION.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.REPRESENTATION_ITEM)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TEXT_BASED_REPRESENTATION))
      '(ASEADAL.REPRESENTATION))


(DEFENTITY-CLASS "ASEADAL.TEXT_BASED_REPRESENTATION_CONTEXT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TEXT_BASED_REPRESENTATION_CONTEXT))
      '(ASEADAL.REPRESENTATION_CONTEXT))


(DEFENTITY-CLASS "ASEADAL.TEXTUAL_EXPRESSION_COMPOSITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("content"
                   (:INITARG
                    :ASEADAL.TEXTUAL_EXPRESSION_COMPOSITION.CONTENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.LIST_OR_SET_OF_TEXT_BASED_ITEM))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TEXTUAL_EXPRESSION_COMPOSITION))
      '(ASEADAL.REPRESENTATION_ITEM))


(DEFENTITY-CLASS "ASEADAL.TEXTUAL_EXPRESSION_REPRESENTATION_ITEM"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TEXTUAL_EXPRESSION_REPRESENTATION_ITEM))
      '(ASEADAL.STRING_REPRESENTATION_ITEM))


(DEFENTITY-CLASS "ASEADAL.ALIAS_IDENTIFICATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("role"
                   (:INITARG :ASEADAL.ALIAS_IDENTIFICATION.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:DERIVED T)
                   (:EXPRESSION "alias")
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.ALIAS_IDENTIFICATION.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.IDENTIFICATION_ITEM)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ALIAS_IDENTIFICATION))
      '(ASEADAL.IDENTIFICATION_ASSIGNMENT))


(DEFENTITY-CLASS "ASEADAL.BEHAVIOUR"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.BEHAVIOUR))
      '(ASEADAL.PRODUCT))


(DEFENTITY-CLASS "ASEADAL.BEHAVIOUR_VERSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("of_product"
                   (:INITARG :ASEADAL.BEHAVIOUR_VERSION.OF_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.BEHAVIOUR_VERSION))
      '(ASEADAL.PRODUCT_VERSION))


(DEFENTITY-CLASS "ASEADAL.BEHAVIOUR_VERSION_SEQUENCE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("predecessor"
                   (:INITARG
                    :ASEADAL.BEHAVIOUR_VERSION_SEQUENCE.PREDECESSOR)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.BEHAVIOUR_VERSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING_VERSION
                     INSTANCE
                     'ASEADAL.PRODUCT_VERSION_RELATIONSHIP)))
                  ("successor"
                   (:INITARG
                    :ASEADAL.BEHAVIOUR_VERSION_SEQUENCE.SUCCESSOR)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.BEHAVIOUR_VERSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED_VERSION
                     INSTANCE
                     'ASEADAL.PRODUCT_VERSION_RELATIONSHIP)))
                  ("relating_version"
                   (:INITARG
                    :ASEADAL.BEHAVIOUR_VERSION_SEQUENCE.RELATING_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))
                  ("related_version"
                   (:INITARG
                    :ASEADAL.BEHAVIOUR_VERSION_SEQUENCE.RELATED_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.BEHAVIOUR_VERSION_SEQUENCE))
      '(ASEADAL.PRODUCT_VERSION_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.DESCRIPTION_TEXT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("description"
                   (:INITARG :ASEADAL.DESCRIPTION_TEXT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.DESCRIPTION_TEXT_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("description"
                   (:INITARG
                    :ASEADAL.DESCRIPTION_TEXT_ASSIGNMENT.DESCRIPTION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DESCRIPTION_TEXT))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG
                    :ASEADAL.DESCRIPTION_TEXT_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.DESCRIPTION_ITEM)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.EXTERNAL_STATE_BASED_BEHAVIOUR_MODEL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("external_file"
                   (:INITARG
                    :ASEADAL.EXTERNAL_STATE_BASED_BEHAVIOUR_MODEL.EXTERNAL_FILE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DIGITAL_FILE))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.EXTERNAL_STATE_BASED_BEHAVIOUR_MODEL))
      '(ASEADAL.STATE_BASED_BEHAVIOUR_MODEL))


(DEFENTITY-CLASS "ASEADAL.ABS_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ABS_FUNCTION))
      '(ASEADAL.UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "ASEADAL.ACOS_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ACOS_FUNCTION))
      '(ASEADAL.UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "ASEADAL.ASIN_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ASIN_FUNCTION))
      '(ASEADAL.UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "ASEADAL.ATAN_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ATAN_FUNCTION))
      '(ASEADAL.BINARY_FUNCTION_CALL))


(DEFENTITY-CLASS "ASEADAL.BINARY_FUNCTION_CALL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.BINARY_FUNCTION_CALL))
      '(ASEADAL.BINARY_NUMERIC_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.BINARY_FUNCTION_CALL)) T)


(DEFENTITY-CLASS "ASEADAL.COS_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.COS_FUNCTION))
      '(ASEADAL.UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "ASEADAL.EXP_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.EXP_FUNCTION))
      '(ASEADAL.UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "ASEADAL.FUNCTION_PARAMETER_VALUE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("operand"
                   (:INITARG :ASEADAL.FUNCTION_PARAMETER_VALUE.OPERAND)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GENERIC_EXPRESSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.FUNCTION_PARAMETER_VALUE))
      '(ASEADAL.NUMERIC_EXPRESSION ASEADAL.UNARY_GENERIC_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.INT_VALUE_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.INT_VALUE_FUNCTION))
      '(ASEADAL.FUNCTION_PARAMETER_VALUE))


(DEFENTITY-CLASS "ASEADAL.INTEGER_DEFINED_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.INTEGER_DEFINED_FUNCTION))
      '(ASEADAL.NUMERIC_DEFINED_FUNCTION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.INTEGER_DEFINED_FUNCTION)) T)


(DEFENTITY-CLASS "ASEADAL.LENGTH_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("operand"
                   (:INITARG :ASEADAL.LENGTH_FUNCTION.OPERAND)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GENERIC_EXPRESSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.LENGTH_FUNCTION))
      '(ASEADAL.NUMERIC_EXPRESSION ASEADAL.UNARY_GENERIC_EXPRESSION))


(DEFENTITY-CLASS "ASEADAL.LOG10_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.LOG10_FUNCTION))
      '(ASEADAL.UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "ASEADAL.LOG2_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.LOG2_FUNCTION))
      '(ASEADAL.UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "ASEADAL.LOG_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.LOG_FUNCTION))
      '(ASEADAL.UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "ASEADAL.MAXIMUM_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.MAXIMUM_FUNCTION))
      '(ASEADAL.MULTIPLE_ARITY_FUNCTION_CALL))


(DEFENTITY-CLASS "ASEADAL.MINIMUM_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.MINIMUM_FUNCTION))
      '(ASEADAL.MULTIPLE_ARITY_FUNCTION_CALL))


(DEFENTITY-CLASS "ASEADAL.MINUS_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.MINUS_FUNCTION))
      '(ASEADAL.UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "ASEADAL.NUMERIC_DEFINED_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.NUMERIC_DEFINED_FUNCTION))
      '(ASEADAL.NUMERIC_EXPRESSION ASEADAL.DEFINED_FUNCTION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.NUMERIC_DEFINED_FUNCTION)) T)


(DEFENTITY-CLASS "ASEADAL.ODD_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("operand"
                   (:INITARG :ASEADAL.ODD_FUNCTION.OPERAND)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GENERIC_EXPRESSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ODD_FUNCTION))
      '(ASEADAL.UNARY_BOOLEAN_EXPRESSION))


(DEFDOMAIN-RULES ASEADAL.ODD_FUNCTION ("WR1" (IS_INT_EXPR INSTANCE)))


(DEFENTITY-CLASS "ASEADAL.REAL_DEFINED_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.REAL_DEFINED_FUNCTION))
      '(ASEADAL.NUMERIC_DEFINED_FUNCTION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.REAL_DEFINED_FUNCTION)) T)


(DEFENTITY-CLASS "ASEADAL.SIN_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SIN_FUNCTION))
      '(ASEADAL.UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "ASEADAL.SQUARE_ROOT_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SQUARE_ROOT_FUNCTION))
      '(ASEADAL.UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "ASEADAL.TAN_FUNCTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TAN_FUNCTION))
      '(ASEADAL.UNARY_FUNCTION_CALL))


(DEFENTITY-CLASS "ASEADAL.UNARY_FUNCTION_CALL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.UNARY_FUNCTION_CALL))
      '(ASEADAL.UNARY_NUMERIC_EXPRESSION))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.UNARY_FUNCTION_CALL)) T)


(DEFENTITY-CLASS "ASEADAL.STATE_BASED_BEHAVIOUR_MODEL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("context_of_items"
                   (:INITARG
                    :ASEADAL.STATE_BASED_BEHAVIOUR_MODEL.CONTEXT_OF_ITEMS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REPRESENTATION_CONTEXT))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG
                    :ASEADAL.STATE_BASED_BEHAVIOUR_MODEL.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.REPRESENTATION_ITEM)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.STATE_BASED_BEHAVIOUR_MODEL))
      '(ASEADAL.REPRESENTATION))


(DEFENTITY-CLASS "ASEADAL.STATE_BASED_BEHAVIOUR_REPRESENTATION_CONTEXT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.STATE_BASED_BEHAVIOUR_REPRESENTATION_CONTEXT))
      '(ASEADAL.REPRESENTATION_CONTEXT))


(DEFENTITY-CLASS "ASEADAL.STATE_BASED_BEHAVIOUR_REPRESENTATION_ITEM"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("item"
                   (:INITARG
                    :ASEADAL.STATE_BASED_BEHAVIOUR_REPRESENTATION_ITEM.ITEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.STATE_BASED_BEHAVIOUR_ELEMENT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.STATE_BASED_BEHAVIOUR_REPRESENTATION_ITEM))
      '(ASEADAL.REPRESENTATION_ITEM))


(DEFENTITY-CLASS "ASEADAL.VIEW_DEFINITION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.VIEW_DEFINITION_RELATIONSHIP.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relation_type"
                   (:INITARG
                    :ASEADAL.VIEW_DEFINITION_RELATIONSHIP.RELATION_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("description"
                   (:INITARG
                    :ASEADAL.VIEW_DEFINITION_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating_view"
                   (:INITARG
                    :ASEADAL.VIEW_DEFINITION_RELATIONSHIP.RELATING_VIEW)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VIEW_DEFINITION))
                   (:OPTIONAL NIL))
                  ("related_view"
                   (:INITARG
                    :ASEADAL.VIEW_DEFINITION_RELATIONSHIP.RELATED_VIEW)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VIEW_DEFINITION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.VIEW_DEFINITION_USAGE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.VIEW_DEFINITION_USAGE))
      '(ASEADAL.VIEW_DEFINITION_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("quantity"
                   (:INITARG
                    :ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP.QUANTITY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VALUE_WITH_UNIT))
                   (:OPTIONAL T))
                  ("location_indicator"
                   (:INITARG
                    :ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP.LOCATION_INDICATOR)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP))
      '(ASEADAL.VIEW_DEFINITION_USAGE))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP))
      T)


(DEFDOMAIN-RULES ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP
                 ("WR1"
                  (EXPRESS-OR (EXPRESS-NOT (BI-EXISTS
                                            (%QUANTITY INSTANCE NIL)))
                              (EXPRESS-XOR (EXPRESS-NOT
                                            (IN
                                             "NUMBER"
                                             (BI-TYPEOF
                                              (%VALUE_COMPONENT
                                               (%QUANTITY INSTANCE NIL)
                                               NIL))))
                                           (EXPRESS->
                                            (%VALUE_COMPONENT
                                             (%QUANTITY INSTANCE NIL)
                                             NIL)
                                            0)))))


(DEFENTITY-CLASS "ASEADAL.NEXT_ASSEMBLY_USAGE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.NEXT_ASSEMBLY_USAGE))
      '(ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.PROMISSORY_USAGE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PROMISSORY_USAGE))
      '(ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.COMPONENT_UPPER_LEVEL_IDENTIFICATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("upper_assembly_relationship"
                   (:INITARG
                    :ASEADAL.COMPONENT_UPPER_LEVEL_IDENTIFICATION.UPPER_ASSEMBLY_RELATIONSHIP)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP))
                   (:OPTIONAL NIL))
                  ("sub_assembly_relationship"
                   (:INITARG
                    :ASEADAL.COMPONENT_UPPER_LEVEL_IDENTIFICATION.SUB_ASSEMBLY_RELATIONSHIP)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.NEXT_ASSEMBLY_USAGE))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.COMPONENT_UPPER_LEVEL_IDENTIFICATION))
      '(ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP))


(DEFDOMAIN-RULES ASEADAL.COMPONENT_UPPER_LEVEL_IDENTIFICATION
                 ("WR1"
                  (EXPRESS-INSTANCE-NOT-EQUAL INSTANCE
                                              (%UPPER_ASSEMBLY_RELATIONSHIP
                                               INSTANCE
                                               NIL)))
                 ("WR2"
                  (EXPRESS-INSTANCE-EQUAL (%RELATING_VIEW
                                           INSTANCE
                                           'ASEADAL.VIEW_DEFINITION_RELATIONSHIP)
                                          (%RELATING_VIEW
                                           (%UPPER_ASSEMBLY_RELATIONSHIP
                                            INSTANCE
                                            NIL)
                                           'ASEADAL.VIEW_DEFINITION_RELATIONSHIP)))
                 ("WR3"
                  (EXPRESS-INSTANCE-EQUAL (%RELATED_VIEW
                                           INSTANCE
                                           'ASEADAL.VIEW_DEFINITION_RELATIONSHIP)
                                          (%RELATED_VIEW
                                           (%SUB_ASSEMBLY_RELATIONSHIP
                                            INSTANCE
                                            NIL)
                                           'ASEADAL.VIEW_DEFINITION_RELATIONSHIP)))
                 ("WR4"
                  (EXPRESS-OR (EXPRESS-INSTANCE-EQUAL (%RELATED_VIEW
                                                       (%UPPER_ASSEMBLY_RELATIONSHIP
                                                        INSTANCE
                                                        NIL)
                                                       'ASEADAL.VIEW_DEFINITION_RELATIONSHIP)
                                                      (%RELATING_VIEW
                                                       (%SUB_ASSEMBLY_RELATIONSHIP
                                                        INSTANCE
                                                        NIL)
                                                       'ASEADAL.VIEW_DEFINITION_RELATIONSHIP))
                              (EXPRESS-EQUAL (BI-SIZEOF
                                              (QUERY
                                               (BI-USEDIN
                                                (%RELATED_VIEW
                                                 (%UPPER_ASSEMBLY_RELATIONSHIP
                                                  INSTANCE
                                                  NIL)
                                                 'ASEADAL.VIEW_DEFINITION_RELATIONSHIP)
                                                "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.VIEW_DEFINITION_RELATIONSHIP.RELATED_VIEW")
                                               #'(LAMBDA
                                                  (ASEADAL.PDR)
                                                  (EXPRESS-INSTANCE-EQUAL
                                                   (%RELATING_VIEW
                                                    ASEADAL.PDR
                                                    NIL)
                                                   (%RELATING_VIEW
                                                    (%SUB_ASSEMBLY_RELATIONSHIP
                                                     INSTANCE
                                                     NIL)
                                                    'ASEADAL.VIEW_DEFINITION_RELATIONSHIP)))))
                                             1)))
                 ("WR5"
                  (EXPRESS-EQUAL (BI-SIZEOF
                                  (EXPRESS-MULT
                                   (MAKE-INSTANCE
                                    'EXPRESS-BAG
                                    :VALUE
                                    (LIST
                                     "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.NEXT_ASSEMBLY_USAGE"
                                     "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.COMPONENT_UPPER_LEVEL_IDENTIFICATION")
                                    :TYPE-DESCRIPTOR
                                    (MAKE-INSTANCE
                                     'BAG-TYP
                                     :L-BOUND
                                     0
                                     :U-BOUND
                                     :?
                                     :BASE-TYPE
                                     T))
                                   (BI-TYPEOF
                                    (%UPPER_ASSEMBLY_RELATIONSHIP
                                     INSTANCE
                                     NIL))))
                                 1)))


(DEFENTITY-CLASS "ASEADAL.CERTIFICATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.CERTIFICATION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.CERTIFICATION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("kind"
                   (:INITARG :ASEADAL.CERTIFICATION.KIND)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.CERTIFICATION_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_certification"
                   (:INITARG
                    :ASEADAL.CERTIFICATION_ASSIGNMENT.ASSIGNED_CERTIFICATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CERTIFICATION))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.CERTIFICATION_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.CERTIFICATION_ITEM)))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.CERTIFICATION_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.ITEM_USAGE_EFFECTIVITY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("effectivity_domain"
                   (:INITARG
                    :ASEADAL.ITEM_USAGE_EFFECTIVITY.EFFECTIVITY_DOMAIN)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.EFFECTIVITY))
                   (:OPTIONAL NIL))
                  ("item_usage_relationship"
                   (:INITARG
                    :ASEADAL.ITEM_USAGE_EFFECTIVITY.ITEM_USAGE_RELATIONSHIP)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VIEW_DEFINITION_USAGE))
                   (:OPTIONAL NIL))
                  ("resolved_configuration"
                   (:INITARG
                    :ASEADAL.ITEM_USAGE_EFFECTIVITY.RESOLVED_CONFIGURATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ITEM_DESIGN_ASSOCIATION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.MARKET"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.MARKET.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("market_segment_type"
                   (:INITARG :ASEADAL.MARKET.MARKET_SEGMENT_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_CONCEPT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.PRODUCT_CONCEPT.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.PRODUCT_CONCEPT.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.PRODUCT_CONCEPT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("target_market"
                   (:INITARG :ASEADAL.PRODUCT_CONCEPT.TARGET_MARKET)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.MARKET))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.TIME_INTERVAL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.TIME_INTERVAL.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("name"
                   (:INITARG :ASEADAL.TIME_INTERVAL.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.TIME_INTERVAL.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.TIME_INTERVAL_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relation_type"
                   (:INITARG
                    :ASEADAL.TIME_INTERVAL_RELATIONSHIP.RELATION_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.TIME_INTERVAL_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("relating_time_interval"
                   (:INITARG
                    :ASEADAL.TIME_INTERVAL_RELATIONSHIP.RELATING_TIME_INTERVAL)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TIME_INTERVAL))
                   (:OPTIONAL NIL))
                  ("related_time_interval"
                   (:INITARG
                    :ASEADAL.TIME_INTERVAL_RELATIONSHIP.RELATED_TIME_INTERVAL)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TIME_INTERVAL))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.TIME_INTERVAL_WITH_BOUNDS"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("primary_bound"
                   (:INITARG
                    :ASEADAL.TIME_INTERVAL_WITH_BOUNDS.PRIMARY_BOUND)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DATE_OR_EVENT))
                   (:OPTIONAL T))
                  ("secondary_bound"
                   (:INITARG
                    :ASEADAL.TIME_INTERVAL_WITH_BOUNDS.SECONDARY_BOUND)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DATE_OR_EVENT))
                   (:OPTIONAL T))
                  ("duration_from_primary_bound"
                   (:INITARG
                    :ASEADAL.TIME_INTERVAL_WITH_BOUNDS.DURATION_FROM_PRIMARY_BOUND)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DURATION))
                   (:OPTIONAL T))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TIME_INTERVAL_WITH_BOUNDS))
      '(ASEADAL.TIME_INTERVAL))


(DEFDOMAIN-RULES ASEADAL.TIME_INTERVAL_WITH_BOUNDS
                 ("WR1"
                  (EXPRESS-NOT (EXPRESS-AND
                                (BI-EXISTS
                                 (%SECONDARY_BOUND INSTANCE NIL))
                                (BI-EXISTS
                                 (%DURATION_FROM_PRIMARY_BOUND
                                  INSTANCE
                                  NIL)))))
                 ("WR2"
                  (EXPRESS-OR (BI-EXISTS (%PRIMARY_BOUND INSTANCE NIL))
                              (BI-EXISTS (%SECONDARY_BOUND
                                          INSTANCE
                                          NIL)))))


(DEFENTITY-CLASS "ASEADAL.EVENT_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_event"
                   (:INITARG :ASEADAL.EVENT_ASSIGNMENT.ASSIGNED_EVENT)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.EVENT))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.EVENT_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.EVENT_ITEM)))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.EVENT_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.EXTERNAL_GEOMETRIC_MODEL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("external_file"
                   (:INITARG
                    :ASEADAL.EXTERNAL_GEOMETRIC_MODEL.EXTERNAL_FILE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DIGITAL_FILE))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.EXTERNAL_GEOMETRIC_MODEL.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.REPRESENTATION_ITEM)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.EXTERNAL_GEOMETRIC_MODEL))
      '(ASEADAL.GEOMETRIC_MODEL))


(DEFDOMAIN-RULES ASEADAL.EXTERNAL_GEOMETRIC_MODEL
                 ("WR1"
                  (EXPRESS-EQUAL (%DIMENSION_COUNT
                                  (%CONTEXT_OF_ITEMS
                                   INSTANCE
                                   'ASEADAL.REPRESENTATION)
                                  'ASEADAL.GEOMETRIC_COORDINATE_SPACE)
                                 3))
                 ("WR2"
                  (EXPRESS-INSTANCE-EQUAL (%KIND
                                           (%CONTEXT_OF_ITEMS
                                            INSTANCE
                                            NIL)
                                           NIL)
                                          "external")))


(DEFENTITY-CLASS "ASEADAL.INCOMPLETE_REFERENCE_MARKING"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.INCOMPLETE_REFERENCE_MARKING))
      '(ASEADAL.CLASSIFICATION_ASSIGNMENT))


(DEFDOMAIN-RULES ASEADAL.INCOMPLETE_REFERENCE_MARKING
                 ("WR1"
                  (EXPRESS-EQUAL (BI-SIZEOF
                                  (QUERY
                                   (%ITEMS
                                    INSTANCE
                                    'ASEADAL.CLASSIFICATION_ASSIGNMENT)
                                   #'(LAMBDA
                                      (ASEADAL.ITEM)
                                      (EXPRESS-NOT
                                       (IN
                                        "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.CLASSIFICATION_ITEM"
                                        (BI-TYPEOF ASEADAL.ITEM))))))
                                 0))
                 ("WR2"
                  (EXPRESS-INSTANCE-EQUAL (%ID
                                           (%ASSIGNED_CLASS
                                            INSTANCE
                                            NIL)
                                           NIL)
                                          "reference")))


(DEFENTITY-CLASS "ASEADAL.LANGUAGE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("language_code"
                   (:INITARG :ASEADAL.LANGUAGE.LANGUAGE_CODE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("country_code"
                   (:INITARG :ASEADAL.LANGUAGE.COUNTRY_CODE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.LANGUAGE_INDICATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("considered_instance"
                   (:INITARG
                    :ASEADAL.LANGUAGE_INDICATION.CONSIDERED_INSTANCE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.STRING_SELECT))
                   (:OPTIONAL NIL))
                  ("considered_attribute"
                   (:INITARG
                    :ASEADAL.LANGUAGE_INDICATION.CONSIDERED_ATTRIBUTE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("used_language"
                   (:INITARG
                    :ASEADAL.LANGUAGE_INDICATION.USED_LANGUAGE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.LANGUAGE))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.ATTRIBUTE_TRANSLATION_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("considered_instance"
                   (:INITARG
                    :ASEADAL.ATTRIBUTE_TRANSLATION_ASSIGNMENT.CONSIDERED_INSTANCE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.STRING_SELECT))
                   (:OPTIONAL NIL))
                  ("considered_attribute"
                   (:INITARG
                    :ASEADAL.ATTRIBUTE_TRANSLATION_ASSIGNMENT.CONSIDERED_ATTRIBUTE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("translation_text"
                   (:INITARG
                    :ASEADAL.ATTRIBUTE_TRANSLATION_ASSIGNMENT.TRANSLATION_TEXT)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("translation_language"
                   (:INITARG
                    :ASEADAL.ATTRIBUTE_TRANSLATION_ASSIGNMENT.TRANSLATION_LANGUAGE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.LANGUAGE))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.MEASURE_ITEM"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.MEASURE_ITEM))
      '(ASEADAL.REPRESENTATION_ITEM))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.MEASURE_ITEM)) T)


(DEFDOMAIN-RULES ASEADAL.MEASURE_ITEM
                 ("WR1"
                  (EXPRESS-> (BI-SIZEOF (BI-USEDIN
                                         INSTANCE
                                         "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.REPRESENTATION.ITEMS"))
                             0)))


(DEFENTITY-CLASS "ASEADAL.NUMERICAL_ITEM_WITH_GLOBAL_UNIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("value_component"
                   (:INITARG
                    :ASEADAL.NUMERICAL_ITEM_WITH_GLOBAL_UNIT.VALUE_COMPONENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.MEASURE_VALUE))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.NUMERICAL_ITEM_WITH_GLOBAL_UNIT))
      '(ASEADAL.MEASURE_ITEM))


(DEFDOMAIN-RULES ASEADAL.NUMERICAL_ITEM_WITH_GLOBAL_UNIT
                 ("WR1"
                  (EXPRESS-> (BI-SIZEOF (QUERY
                                         (QUERY
                                          (BI-USEDIN
                                           INSTANCE
                                           "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.REPRESENTATION.ITEMS")
                                          #'(LAMBDA
                                             (ASEADAL.R)
                                             (IN
                                              "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.PROPERTY_VALUE_REPRESENTATION"
                                              (BI-TYPEOF ASEADAL.R))))
                                         #'(LAMBDA
                                            (ASEADAL.PVR)
                                            (BI-EXISTS
                                             (%UNITS
                                              (%CONTEXT_OF_ITEMS
                                               ASEADAL.PVR
                                               NIL)
                                              'ASEADAL.NUMERICAL_REPRESENTATION_CONTEXT)))))
                             0)))


(DEFENTITY-CLASS "ASEADAL.NUMERICAL_ITEM_WITH_UNIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.NUMERICAL_ITEM_WITH_UNIT))
      '(ASEADAL.MEASURE_ITEM ASEADAL.VALUE_WITH_UNIT))


(DEFENTITY-CLASS "ASEADAL.PROPERTY_VALUE_REPRESENTATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("context_of_items"
                   (:INITARG
                    :ASEADAL.PROPERTY_VALUE_REPRESENTATION.CONTEXT_OF_ITEMS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REPRESENTATION_CONTEXT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PROPERTY_VALUE_REPRESENTATION))
      '(ASEADAL.REPRESENTATION))


(DEFENTITY-CLASS "ASEADAL.MAKE_FROM_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("quantity"
                   (:INITARG :ASEADAL.MAKE_FROM_RELATIONSHIP.QUANTITY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VALUE_WITH_UNIT))
                   (:OPTIONAL T))
                  ("priority"
                   (:INITARG :ASEADAL.MAKE_FROM_RELATIONSHIP.PRIORITY)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'INTEGER-TYP))
                   (:OPTIONAL T))
                  ("relating_view"
                   (:INITARG
                    :ASEADAL.MAKE_FROM_RELATIONSHIP.RELATING_VIEW)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VIEW_DEFINITION))
                   (:OPTIONAL NIL))
                  ("related_view"
                   (:INITARG
                    :ASEADAL.MAKE_FROM_RELATIONSHIP.RELATED_VIEW)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VIEW_DEFINITION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.MAKE_FROM_RELATIONSHIP))
      '(ASEADAL.VIEW_DEFINITION_USAGE))


(DEFDOMAIN-RULES ASEADAL.MAKE_FROM_RELATIONSHIP
                 ("WR1"
                  (EXPRESS-INSTANCE-NOT-EQUAL (%RELATING_VIEW
                                               INSTANCE
                                               'ASEADAL.VIEW_DEFINITION_RELATIONSHIP)
                                              (%RELATED_VIEW
                                               INSTANCE
                                               'ASEADAL.VIEW_DEFINITION_RELATIONSHIP)))
                 ("WR2"
                  (EXPRESS-XOR (EXPRESS-NOT
                                (BI-EXISTS (%QUANTITY INSTANCE NIL)))
                               (EXPRESS-XOR
                                (EXPRESS-NOT
                                 (IN
                                  "NUMBER"
                                  (BI-TYPEOF
                                   (%VALUE_COMPONENT
                                    (%QUANTITY INSTANCE NIL)
                                    NIL))))
                                (EXPRESS->
                                 (%VALUE_COMPONENT
                                  (%QUANTITY INSTANCE NIL)
                                  NIL)
                                 0)))))


(DEFENTITY-CLASS "ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG
                    :ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("description"
                   (:INITARG
                    :ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("alternate_product"
                   (:INITARG
                    :ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP.ALTERNATE_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))
                  ("base_product"
                   (:INITARG
                    :ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP.BASE_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))
                  ("criteria"
                   (:INITARG
                    :ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP.CRITERIA)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFDOMAIN-RULES ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP
                 ("WR1"
                  (EXPRESS-INSTANCE-NOT-EQUAL (%ALTERNATE_PRODUCT
                                               INSTANCE
                                               NIL)
                                              (%BASE_PRODUCT
                                               INSTANCE
                                               NIL)))
                 ("WR2"
                  (EXPRESS-OR (BI-EXISTS (%CRITERIA INSTANCE NIL))
                              (EXPRESS-NOT-EQUAL (BI-TYPEOF INSTANCE)
                                                 (BI-TYPEOF
                                                  INSTANCE)))))


(DEFENTITY-CLASS "ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG
                    :ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("description"
                   (:INITARG
                    :ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("base_relationship"
                   (:INITARG
                    :ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION.BASE_RELATIONSHIP)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP))
                   (:OPTIONAL NIL))
                  ("substitute_relationship"
                   (:INITARG
                    :ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION.SUBSTITUTE_RELATIONSHIP)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ASSEMBLY_COMPONENT_RELATIONSHIP))
                   (:OPTIONAL NIL))))


(DEFDOMAIN-RULES ASEADAL.ASSEMBLY_RELATIONSHIP_SUBSTITUTION
                 ("WR1"
                  (EXPRESS-INSTANCE-EQUAL (%RELATING_VIEW
                                           (%BASE_RELATIONSHIP
                                            INSTANCE
                                            NIL)
                                           NIL)
                                          (%RELATING_VIEW
                                           (%SUBSTITUTE_RELATIONSHIP
                                            INSTANCE
                                            NIL)
                                           NIL)))
                 ("WR2"
                  (EXPRESS-INSTANCE-NOT-EQUAL (%BASE_RELATIONSHIP
                                               INSTANCE
                                               NIL)
                                              (%SUBSTITUTE_RELATIONSHIP
                                               INSTANCE
                                               NIL))))


(DEFENTITY-CLASS "ASEADAL.ALTERNATE_PART_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("alternate_product"
                   (:INITARG
                    :ASEADAL.ALTERNATE_PART_RELATIONSHIP.ALTERNATE_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))
                  ("base_product"
                   (:INITARG
                    :ASEADAL.ALTERNATE_PART_RELATIONSHIP.BASE_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ALTERNATE_PART_RELATIONSHIP))
      '(ASEADAL.ALTERNATE_PRODUCT_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.CONTEXTUAL_ITEM_SHAPE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("shaped_product"
                   (:INITARG
                    :ASEADAL.CONTEXTUAL_ITEM_SHAPE.SHAPED_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VIEW_DEFINITION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED_VIEW
                     (%DESCRIBED_ELEMENT INSTANCE NIL)
                     'ASEADAL.VIEW_DEFINITION_RELATIONSHIP)))
                  ("described_element"
                   (:INITARG
                    :ASEADAL.CONTEXTUAL_ITEM_SHAPE.DESCRIBED_ELEMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SHAPEABLE_ITEM))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.CONTEXTUAL_ITEM_SHAPE))
      '(ASEADAL.ITEM_SHAPE))


(DEFENTITY-CLASS "ASEADAL.ITEM_SHAPE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.ITEM_SHAPE.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("description"
                   (:INITARG :ASEADAL.ITEM_SHAPE.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("described_element"
                   (:INITARG :ASEADAL.ITEM_SHAPE.DESCRIBED_ELEMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SHAPEABLE_ITEM))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.SHAPE_DEPENDENT_PROPERTY_REPRESENTATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("characteristic_type"
                   (:INITARG
                    :ASEADAL.SHAPE_DEPENDENT_PROPERTY_REPRESENTATION.CHARACTERISTIC_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.SHAPE_DEPENDENT_PROPERTY_REPRESENTATION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("described_element"
                   (:INITARG
                    :ASEADAL.SHAPE_DEPENDENT_PROPERTY_REPRESENTATION.DESCRIBED_ELEMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SHAPE_DEPENDENT_SELECT))
                   (:OPTIONAL NIL))
                  ("property_representation"
                   (:INITARG
                    :ASEADAL.SHAPE_DEPENDENT_PROPERTY_REPRESENTATION.PROPERTY_REPRESENTATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REPRESENTATION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.SHAPE_DESCRIPTION_ASSOCIATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("represented_characteristic"
                   (:INITARG
                    :ASEADAL.SHAPE_DESCRIPTION_ASSOCIATION.REPRESENTED_CHARACTERISTIC)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SHAPE_SELECT))
                   (:OPTIONAL NIL))
                  ("representation"
                   (:INITARG
                    :ASEADAL.SHAPE_DESCRIPTION_ASSOCIATION.REPRESENTATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SHAPE_MODEL))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG
                    :ASEADAL.SHAPE_DESCRIPTION_ASSOCIATION.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("description"
                   (:INITARG
                    :ASEADAL.SHAPE_DESCRIPTION_ASSOCIATION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.SHAPE_ELEMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("id"
                   (:INITARG :ASEADAL.SHAPE_ELEMENT.ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("element_name"
                   (:INITARG :ASEADAL.SHAPE_ELEMENT.ELEMENT_NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("description"
                   (:INITARG :ASEADAL.SHAPE_ELEMENT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("containing_shape"
                   (:INITARG :ASEADAL.SHAPE_ELEMENT.CONTAINING_SHAPE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ITEM_SHAPE))
                   (:OPTIONAL NIL))))


(DEFDOMAIN-RULES ASEADAL.SHAPE_ELEMENT
                 ("WR1"
                  (EXPRESS-OR (BI-EXISTS (%ELEMENT_NAME INSTANCE NIL))
                              (EXPRESS-NOT-EQUAL (BI-TYPEOF INSTANCE)
                                                 (BI-TYPEOF
                                                  INSTANCE)))))


(DEFENTITY-CLASS "ASEADAL.SHAPE_ELEMENT_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relation_type"
                   (:INITARG
                    :ASEADAL.SHAPE_ELEMENT_RELATIONSHIP.RELATION_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("description"
                   (:INITARG
                    :ASEADAL.SHAPE_ELEMENT_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating"
                   (:INITARG
                    :ASEADAL.SHAPE_ELEMENT_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SHAPE_ELEMENT))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG
                    :ASEADAL.SHAPE_ELEMENT_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SHAPE_ELEMENT))
                   (:OPTIONAL NIL))))


(DEFDOMAIN-RULES ASEADAL.SHAPE_ELEMENT_RELATIONSHIP
                 ("WR1"
                  (EXPRESS-OR (BI-EXISTS (%RELATION_TYPE INSTANCE NIL))
                              (EXPRESS-NOT-EQUAL (BI-TYPEOF INSTANCE)
                                                 (BI-TYPEOF
                                                  INSTANCE)))))


(DEFENTITY-CLASS "ASEADAL.SYSTEM"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SYSTEM)) '(ASEADAL.PRODUCT))


(DEFENTITY-CLASS "ASEADAL.SYSTEM_VERSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("of_product"
                   (:INITARG :ASEADAL.SYSTEM_VERSION.OF_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SYSTEM_VERSION))
      '(ASEADAL.PRODUCT_VERSION))


(DEFENTITY-CLASS "ASEADAL.SYSTEM_VERSION_SEQUENCE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("predecessor"
                   (:INITARG
                    :ASEADAL.SYSTEM_VERSION_SEQUENCE.PREDECESSOR)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SYSTEM_VERSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING_VERSION
                     INSTANCE
                     'ASEADAL.PRODUCT_VERSION_RELATIONSHIP)))
                  ("successor"
                   (:INITARG
                    :ASEADAL.SYSTEM_VERSION_SEQUENCE.SUCCESSOR)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SYSTEM_VERSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED_VERSION
                     INSTANCE
                     'ASEADAL.PRODUCT_VERSION_RELATIONSHIP)))
                  ("relating_version"
                   (:INITARG
                    :ASEADAL.SYSTEM_VERSION_SEQUENCE.RELATING_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))
                  ("related_version"
                   (:INITARG
                    :ASEADAL.SYSTEM_VERSION_SEQUENCE.RELATED_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SYSTEM_VERSION_SEQUENCE))
      '(ASEADAL.PRODUCT_VERSION_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.EXPERIENCE_GAINED"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("experience_of"
                   (:INITARG :ASEADAL.EXPERIENCE_GAINED.EXPERIENCE_OF)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.EXPERIENCE_INSTANCE))
                   (:OPTIONAL NIL))
                  ("gained_by"
                   (:INITARG :ASEADAL.EXPERIENCE_GAINED.GAINED_BY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PERSON_OR_ORGANIZATION_OR_PERSON_IN_ORGANIZATION_SELECT))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.EXPERIENCE_GAINED.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.EXPERIENCE_INSTANCE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("description"
                   (:INITARG :ASEADAL.EXPERIENCE_INSTANCE.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("is_defined_by"
                   (:INITARG
                    :ASEADAL.EXPERIENCE_INSTANCE.IS_DEFINED_BY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.EXPERIENCE_TYPE))
                   (:OPTIONAL NIL))
                  ("consists_of"
                   (:INITARG :ASEADAL.EXPERIENCE_INSTANCE.CONSISTS_OF)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DEFINED_ACTIVITIES))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.EXPERIENCE_TYPE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.EXPERIENCE_TYPE.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.EXPERIENCE_TYPE.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("consists_of"
                   (:INITARG :ASEADAL.EXPERIENCE_TYPE.CONSISTS_OF)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DEFINED_METHODS))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.EXPERIENCE_TYPE_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("compound_experience"
                   (:INITARG
                    :ASEADAL.EXPERIENCE_TYPE_RELATIONSHIP.COMPOUND_EXPERIENCE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.EXPERIENCE_TYPE))
                   (:OPTIONAL NIL))
                  ("component_experience"
                   (:INITARG
                    :ASEADAL.EXPERIENCE_TYPE_RELATIONSHIP.COMPONENT_EXPERIENCE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.EXPERIENCE_TYPE))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.QUALIFICATION_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_qualification_type"
                   (:INITARG
                    :ASEADAL.QUALIFICATION_ASSIGNMENT.ASSIGNED_QUALIFICATION_TYPE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.QUALIFICATION_TYPE))
                   (:OPTIONAL NIL))
                  ("received_by"
                   (:INITARG
                    :ASEADAL.QUALIFICATION_ASSIGNMENT.RECEIVED_BY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.QUALIFICATIONS_SELECT))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.QUALIFICATION_TYPE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.QUALIFICATION_TYPE.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.QUALIFICATION_TYPE.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.QUALIFICATION_TYPE_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG
                    :ASEADAL.QUALIFICATION_TYPE_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.QUALIFICATION_TYPE_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating"
                   (:INITARG
                    :ASEADAL.QUALIFICATION_TYPE_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.QUALIFICATION_TYPE))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG
                    :ASEADAL.QUALIFICATION_TYPE_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.QUALIFICATION_TYPE))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.DECREASING_RESOURCE_EVENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.DECREASING_RESOURCE_EVENT))
      '(ASEADAL.RESOURCE_EVENT))


(DEFENTITY-CLASS "ASEADAL.INCREASING_RESOURCE_EVENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.INCREASING_RESOURCE_EVENT))
      '(ASEADAL.RESOURCE_EVENT))


(DEFENTITY-CLASS "ASEADAL.MANAGED_RESOURCE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.MANAGED_RESOURCE.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.MANAGED_RESOURCE.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("quantity"
                   (:INITARG :ASEADAL.MANAGED_RESOURCE.QUANTITY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VALUE_WITH_UNIT))
                   (:OPTIONAL T))
                  ("item"
                   (:INITARG :ASEADAL.MANAGED_RESOURCE.ITEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RESOURCE_ITEM))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.MANAGED_RESOURCE_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG
                    :ASEADAL.MANAGED_RESOURCE_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.MANAGED_RESOURCE_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating"
                   (:INITARG
                    :ASEADAL.MANAGED_RESOURCE_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.MANAGED_RESOURCE))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG
                    :ASEADAL.MANAGED_RESOURCE_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.MANAGED_RESOURCE))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.RESOURCE_EVENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.RESOURCE_EVENT.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.RESOURCE_EVENT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("quantity"
                   (:INITARG :ASEADAL.RESOURCE_EVENT.QUANTITY)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VALUE_WITH_UNIT))
                   (:OPTIONAL T))
                  ("resource"
                   (:INITARG :ASEADAL.RESOURCE_EVENT.RESOURCE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.MANAGED_RESOURCE))
                   (:OPTIONAL NIL))))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.RESOURCE_EVENT)) T)


(DEFENTITY-CLASS "ASEADAL.RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG
                    :ASEADAL.RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating"
                   (:INITARG
                    :ASEADAL.RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RESOURCE_EVENT))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG
                    :ASEADAL.RESOURCE_EVENT_CORRESPONDENCE_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REQUIRED_RESOURCE))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.RESOURCE_EVENT_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.RESOURCE_EVENT_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.RESOURCE_EVENT_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating"
                   (:INITARG
                    :ASEADAL.RESOURCE_EVENT_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RESOURCE_EVENT))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG
                    :ASEADAL.RESOURCE_EVENT_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.RESOURCE_EVENT))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.APPLIED_STATE_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("described_state"
                   (:INITARG
                    :ASEADAL.APPLIED_STATE_ASSIGNMENT.DESCRIBED_STATE)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.STATE))
                   (:OPTIONAL NIL))
                  ("assigned_to"
                   (:INITARG
                    :ASEADAL.APPLIED_STATE_ASSIGNMENT.ASSIGNED_TO)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.STATE_OF_ITEM))
                   (:OPTIONAL NIL))
                  ("role"
                   (:INITARG :ASEADAL.APPLIED_STATE_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.STATE_ROLE))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.COMPOSITION_OF_STATE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("part"
                   (:INITARG :ASEADAL.COMPOSITION_OF_STATE.PART)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED INSTANCE 'ASEADAL.STATE_RELATIONSHIP)))
                  ("whole"
                   (:INITARG :ASEADAL.COMPOSITION_OF_STATE.WHOLE)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING INSTANCE 'ASEADAL.STATE_RELATIONSHIP)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.COMPOSITION_OF_STATE))
      '(ASEADAL.STATE_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.DEFINED_STATE_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.DEFINED_STATE_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.DEFINED_STATE_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("definitive_state"
                   (:INITARG
                    :ASEADAL.DEFINED_STATE_RELATIONSHIP.DEFINITIVE_STATE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.STATE_ASSERTION))
                   (:OPTIONAL NIL))
                  ("defined_state"
                   (:INITARG
                    :ASEADAL.DEFINED_STATE_RELATIONSHIP.DEFINED_STATE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.STATE_ASSESSMENT))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.SEQUENCE_OF_STATE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("predecessor"
                   (:INITARG :ASEADAL.SEQUENCE_OF_STATE.PREDECESSOR)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED INSTANCE 'ASEADAL.STATE_RELATIONSHIP)))
                  ("successor"
                   (:INITARG :ASEADAL.SEQUENCE_OF_STATE.SUCCESSOR)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING INSTANCE 'ASEADAL.STATE_RELATIONSHIP)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SEQUENCE_OF_STATE))
      '(ASEADAL.STATE_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.STATE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.STATE.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.STATE.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.STATE_ASSERTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.STATE_ASSERTION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.STATE_ASSERTION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("asserted_state"
                   (:INITARG :ASEADAL.STATE_ASSERTION.ASSERTED_STATE)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.STATE))
                   (:OPTIONAL NIL))
                  ("conformance_state"
                   (:INITARG
                    :ASEADAL.STATE_ASSERTION.CONFORMANCE_STATE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.STATE_DEFINITION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.STATE_ASSESSMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.STATE_ASSESSMENT.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.STATE_ASSESSMENT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("assessed_state"
                   (:INITARG :ASEADAL.STATE_ASSESSMENT.ASSESSED_STATE)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.STATE))
                   (:OPTIONAL NIL))
                  ("comparable_state"
                   (:INITARG
                    :ASEADAL.STATE_ASSESSMENT.COMPARABLE_STATE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.STATE_DEFINITION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.STATE_CAUSE_EFFECT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("cause"
                   (:INITARG :ASEADAL.STATE_CAUSE_EFFECT.CAUSE)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED INSTANCE 'ASEADAL.STATE_RELATIONSHIP)))
                  ("effect"
                   (:INITARG :ASEADAL.STATE_CAUSE_EFFECT.EFFECT)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING INSTANCE 'ASEADAL.STATE_RELATIONSHIP)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.STATE_CAUSE_EFFECT))
      '(ASEADAL.STATE_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.STATE_OBSERVED"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.STATE_OBSERVED))
      '(ASEADAL.STATE))


(DEFENTITY-CLASS "ASEADAL.STATE_PREDICTED"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.STATE_PREDICTED))
      '(ASEADAL.STATE))


(DEFENTITY-CLASS "ASEADAL.STATE_PREDICTED_TO_OBSERVED"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("observed_state"
                   (:INITARG
                    :ASEADAL.STATE_PREDICTED_TO_OBSERVED.OBSERVED_STATE)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_OBSERVED)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING INSTANCE 'ASEADAL.STATE_RELATIONSHIP)))
                  ("predicted_state"
                   (:INITARG
                    :ASEADAL.STATE_PREDICTED_TO_OBSERVED.PREDICTED_STATE)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE_PREDICTED)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED INSTANCE 'ASEADAL.STATE_RELATIONSHIP)))
                  ("relating"
                   (:INITARG
                    :ASEADAL.STATE_PREDICTED_TO_OBSERVED.RELATING)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE)))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG
                    :ASEADAL.STATE_PREDICTED_TO_OBSERVED.RELATED)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.STATE_PREDICTED_TO_OBSERVED))
      '(ASEADAL.STATE_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.STATE_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.STATE_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.STATE_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating"
                   (:INITARG :ASEADAL.STATE_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE)))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG :ASEADAL.STATE_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.STATE_ROLE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.STATE_ROLE.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.STATE_ROLE.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.STATE_TRANSITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("end_state"
                   (:INITARG :ASEADAL.STATE_TRANSITION.END_STATE)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING INSTANCE 'ASEADAL.STATE_RELATIONSHIP)))
                  ("start_state"
                   (:INITARG :ASEADAL.STATE_TRANSITION.START_STATE)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.STATE)))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED INSTANCE 'ASEADAL.STATE_RELATIONSHIP)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.STATE_TRANSITION))
      '(ASEADAL.STATE_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.CONCURRENT_ELEMENTS"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("elements"
                   (:INITARG :ASEADAL.CONCURRENT_ELEMENTS.ELEMENTS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   2
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.TASK_ELEMENT)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.CONCURRENT_ELEMENTS))
      '(ASEADAL.STRUCTURED_TASK_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.DECISION_POINT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("condition"
                   (:INITARG :ASEADAL.DECISION_POINT.CONDITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONDITION))
                   (:OPTIONAL NIL))
                  ("true_case_element"
                   (:INITARG :ASEADAL.DECISION_POINT.TRUE_CASE_ELEMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TASK_ELEMENT))
                   (:OPTIONAL T))
                  ("false_case_element"
                   (:INITARG
                    :ASEADAL.DECISION_POINT.FALSE_CASE_ELEMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TASK_ELEMENT))
                   (:OPTIONAL T))
                  ("unknown_case_element"
                   (:INITARG
                    :ASEADAL.DECISION_POINT.UNKNOWN_CASE_ELEMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TASK_ELEMENT))
                   (:OPTIONAL T))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.DECISION_POINT))
      '(ASEADAL.STRUCTURED_TASK_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.END_TASK"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.END_TASK))
      '(ASEADAL.TASK_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.EXIT_LOOP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.EXIT_LOOP))
      '(ASEADAL.TASK_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.LOOPING_ELEMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("repeated_element"
                   (:INITARG :ASEADAL.LOOPING_ELEMENT.REPEATED_ELEMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TASK_ELEMENT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.LOOPING_ELEMENT))
      '(ASEADAL.STRUCTURED_TASK_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.REPEAT_COUNT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("count"
                   (:INITARG :ASEADAL.REPEAT_COUNT.COUNT)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'INTEGER-TYP))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.REPEAT_COUNT))
      '(ASEADAL.LOOPING_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.REPEAT_UNTIL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("condition"
                   (:INITARG :ASEADAL.REPEAT_UNTIL.CONDITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONDITION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.REPEAT_UNTIL))
      '(ASEADAL.LOOPING_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.REPEAT_WHILE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("condition"
                   (:INITARG :ASEADAL.REPEAT_WHILE.CONDITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONDITION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.REPEAT_WHILE))
      '(ASEADAL.LOOPING_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.STRUCTURED_TASK_ELEMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.STRUCTURED_TASK_ELEMENT))
      '(ASEADAL.TASK_ELEMENT))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.STRUCTURED_TASK_ELEMENT)) T)


(DEFENTITY-CLASS "ASEADAL.TASK_ELEMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TASK_ELEMENT))
      '(ASEADAL.ACTIVITY_METHOD))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.TASK_ELEMENT)) T)


(DEFENTITY-CLASS "ASEADAL.TASK_ELEMENT_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_task_element"
                   (:INITARG
                    :ASEADAL.TASK_ELEMENT_ASSIGNMENT.ASSIGNED_TASK_ELEMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TASK_ELEMENT))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%ASSIGNED_ACTIVITY_METHOD
                     INSTANCE
                     'ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT)))
                  ("assigned_activity_method"
                   (:INITARG
                    :ASEADAL.TASK_ELEMENT_ASSIGNMENT.ASSIGNED_ACTIVITY_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.TASK_ELEMENT_ASSIGNMENT.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.ACTIVITY_METHOD_ITEM)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TASK_ELEMENT_ASSIGNMENT))
      '(ASEADAL.APPLIED_ACTIVITY_METHOD_ASSIGNMENT))


(DEFENTITY-CLASS "ASEADAL.TASK_ELEMENT_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("relating_method"
                   (:INITARG
                    :ASEADAL.TASK_ELEMENT_RELATIONSHIP.RELATING_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))
                  ("related_method"
                   (:INITARG
                    :ASEADAL.TASK_ELEMENT_RELATIONSHIP.RELATED_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TASK_ELEMENT_RELATIONSHIP))
      '(ASEADAL.ACTIVITY_METHOD_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.TASK_ELEMENT_SEQUENCE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("elements"
                   (:INITARG :ASEADAL.TASK_ELEMENT_SEQUENCE.ELEMENTS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'LIST-TYP
                                   :L-BOUND
                                   2
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.TASK_ELEMENT)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TASK_ELEMENT_SEQUENCE))
      '(ASEADAL.STRUCTURED_TASK_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.TASK_STEP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("step_text"
                   (:INITARG :ASEADAL.TASK_STEP.STEP_TEXT)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%DESCRIPTION INSTANCE 'ASEADAL.ACTIVITY_METHOD)))
                  ("description"
                   (:INITARG :ASEADAL.TASK_STEP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TASK_STEP))
      '(ASEADAL.TASK_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.REQUIREMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.REQUIREMENT))
      '(ASEADAL.PRODUCT))


(DEFENTITY-CLASS "ASEADAL.REQUIREMENT_VERSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("of_product"
                   (:INITARG :ASEADAL.REQUIREMENT_VERSION.OF_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.REQUIREMENT_VERSION))
      '(ASEADAL.PRODUCT_VERSION))


(DEFENTITY-CLASS "ASEADAL.REQUIREMENT_VERSION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("predecessor"
                   (:INITARG
                    :ASEADAL.REQUIREMENT_VERSION_RELATIONSHIP.PREDECESSOR)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REQUIREMENT_VERSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING_VERSION
                     INSTANCE
                     'ASEADAL.PRODUCT_VERSION_RELATIONSHIP)))
                  ("successor"
                   (:INITARG
                    :ASEADAL.REQUIREMENT_VERSION_RELATIONSHIP.SUCCESSOR)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REQUIREMENT_VERSION))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED_VERSION
                     INSTANCE
                     'ASEADAL.PRODUCT_VERSION_RELATIONSHIP)))
                  ("relating_version"
                   (:INITARG
                    :ASEADAL.REQUIREMENT_VERSION_RELATIONSHIP.RELATING_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))
                  ("related_version"
                   (:INITARG
                    :ASEADAL.REQUIREMENT_VERSION_RELATIONSHIP.RELATED_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.REQUIREMENT_VERSION_RELATIONSHIP))
      '(ASEADAL.PRODUCT_VERSION_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.FUNCTION_BASED_BEHAVIOUR_MODEL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("context_of_items"
                   (:INITARG
                    :ASEADAL.FUNCTION_BASED_BEHAVIOUR_MODEL.CONTEXT_OF_ITEMS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REPRESENTATION_CONTEXT))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG
                    :ASEADAL.FUNCTION_BASED_BEHAVIOUR_MODEL.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.REPRESENTATION_ITEM)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.FUNCTION_BASED_BEHAVIOUR_MODEL))
      '(ASEADAL.REPRESENTATION))


(DEFENTITY-CLASS "ASEADAL.FUNCTIONAL_REPRESENTATION_CONTEXT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.FUNCTIONAL_REPRESENTATION_CONTEXT))
      '(ASEADAL.REPRESENTATION_CONTEXT))


(DEFENTITY-CLASS "ASEADAL.FUNCTIONAL_REPRESENTATION_ITEM"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("item"
                   (:INITARG
                    :ASEADAL.FUNCTIONAL_REPRESENTATION_ITEM.ITEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TASK_ELEMENT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.FUNCTIONAL_REPRESENTATION_ITEM))
      '(ASEADAL.REPRESENTATION_ITEM))


(DEFENTITY-CLASS "ASEADAL.GEOMETRIC_COORDINATE_SPACE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("dimension_count"
                   (:INITARG
                    :ASEADAL.GEOMETRIC_COORDINATE_SPACE.DIMENSION_COUNT)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'INTEGER-TYP))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.GEOMETRIC_COORDINATE_SPACE))
      '(ASEADAL.NUMERICAL_REPRESENTATION_CONTEXT))


(DEFDOMAIN-RULES ASEADAL.GEOMETRIC_COORDINATE_SPACE
                 ("WR1" (EXPRESS-> (%DIMENSION_COUNT INSTANCE NIL) 0)))


(DEFENTITY-CLASS "ASEADAL.GEOMETRIC_MODEL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("version_id"
                   (:INITARG :ASEADAL.GEOMETRIC_MODEL.VERSION_ID)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("model_extent"
                   (:INITARG :ASEADAL.GEOMETRIC_MODEL.MODEL_EXTENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.LENGTH_MEASURE))
                   (:OPTIONAL T))
                  ("context_of_items"
                   (:INITARG :ASEADAL.GEOMETRIC_MODEL.CONTEXT_OF_ITEMS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REPRESENTATION_CONTEXT))
                   (:OPTIONAL NIL))
                  ("items"
                   (:INITARG :ASEADAL.GEOMETRIC_MODEL.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.REPRESENTATION_ITEM)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.GEOMETRIC_MODEL))
      '(ASEADAL.REPRESENTATION))


(DEFENTITY-CLASS "ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT))
      '(ASEADAL.REPRESENTATION_ITEM))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT))
      T)


(DEFENTITY-CLASS "ASEADAL.CARTESIAN_POINT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("coordinates"
                   (:INITARG :ASEADAL.CARTESIAN_POINT.COORDINATES)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'LIST-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   3
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.LENGTH_MEASURE)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.CARTESIAN_POINT))
      '(ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.DIRECTION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("coordinates"
                   (:INITARG :ASEADAL.DIRECTION.COORDINATES)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'LIST-TYP
                                   :L-BOUND
                                   2
                                   :U-BOUND
                                   3
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.LENGTH_MEASURE)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.DIRECTION))
      '(ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.AXIS_PLACEMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("origin"
                   (:INITARG :ASEADAL.AXIS_PLACEMENT.ORIGIN)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CARTESIAN_POINT))
                   (:OPTIONAL NIL))
                  ("x_axis"
                   (:INITARG :ASEADAL.AXIS_PLACEMENT.X_AXIS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DIRECTION))
                   (:OPTIONAL NIL))
                  ("y_axis"
                   (:INITARG :ASEADAL.AXIS_PLACEMENT.Y_AXIS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DIRECTION))
                   (:OPTIONAL NIL))
                  ("dim"
                   (:INITARG :ASEADAL.AXIS_PLACEMENT.DIM)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'INTEGER-TYP))
                   (:DERIVED T)
                   (:EXPRESSION
                    (BI-SIZEOF (%COORDINATES
                                (%ORIGIN INSTANCE NIL)
                                NIL))))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.AXIS_PLACEMENT))
      '(ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT))


(DEFDOMAIN-RULES ASEADAL.AXIS_PLACEMENT
                 ("WR1" (EXPRESS-> (%DIM INSTANCE NIL) 1))
                 ("WR2"
                  (EXPRESS-EQUAL (%DIM INSTANCE NIL)
                                 (BI-SIZEOF
                                  (%COORDINATES
                                   (%X_AXIS INSTANCE NIL)
                                   NIL))))
                 ("WR3"
                  (EXPRESS-EQUAL (%DIM INSTANCE NIL)
                                 (BI-SIZEOF
                                  (%COORDINATES
                                   (%Y_AXIS INSTANCE NIL)
                                   NIL)))))


(DEFENTITY-CLASS "ASEADAL.CARTESIAN_TRANSFORMATION_2D"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("multiplication_matrix"
                   (:INITARG
                    :ASEADAL.CARTESIAN_TRANSFORMATION_2D.MULTIPLICATION_MATRIX)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'ARRAY-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   2
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.DIRECTION)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL NIL))
                  ("translation"
                   (:INITARG
                    :ASEADAL.CARTESIAN_TRANSFORMATION_2D.TRANSLATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CARTESIAN_POINT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.CARTESIAN_TRANSFORMATION_2D))
      '(ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT))


(DEFDOMAIN-RULES ASEADAL.CARTESIAN_TRANSFORMATION_2D
                 ("WR1"
                  (EXPRESS-EQUAL (BI-SIZEOF
                                  (%COORDINATES
                                   (EXPRESS-AREF
                                    (%MULTIPLICATION_MATRIX
                                     INSTANCE
                                     NIL)
                                    1)
                                   'ASEADAL.DIRECTION))
                                 2))
                 ("WR2"
                  (EXPRESS-EQUAL (BI-SIZEOF
                                  (%COORDINATES
                                   (EXPRESS-AREF
                                    (%MULTIPLICATION_MATRIX
                                     INSTANCE
                                     NIL)
                                    2)
                                   'ASEADAL.DIRECTION))
                                 2))
                 ("WR3"
                  (EXPRESS-EQUAL (BI-SIZEOF
                                  (%COORDINATES
                                   (%TRANSLATION INSTANCE NIL)
                                   NIL))
                                 2)))


(DEFENTITY-CLASS "ASEADAL.CARTESIAN_TRANSFORMATION_3D"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("multiplication_matrix"
                   (:INITARG
                    :ASEADAL.CARTESIAN_TRANSFORMATION_3D.MULTIPLICATION_MATRIX)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'ARRAY-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   3
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.DIRECTION)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL NIL))
                  ("translation"
                   (:INITARG
                    :ASEADAL.CARTESIAN_TRANSFORMATION_3D.TRANSLATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CARTESIAN_POINT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.CARTESIAN_TRANSFORMATION_3D))
      '(ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT))


(DEFDOMAIN-RULES ASEADAL.CARTESIAN_TRANSFORMATION_3D
                 ("WR1"
                  (EXPRESS-EQUAL (BI-SIZEOF
                                  (%COORDINATES
                                   (EXPRESS-AREF
                                    (%MULTIPLICATION_MATRIX
                                     INSTANCE
                                     NIL)
                                    1)
                                   'ASEADAL.DIRECTION))
                                 3))
                 ("WR2"
                  (EXPRESS-EQUAL (BI-SIZEOF
                                  (%COORDINATES
                                   (EXPRESS-AREF
                                    (%MULTIPLICATION_MATRIX
                                     INSTANCE
                                     NIL)
                                    2)
                                   'ASEADAL.DIRECTION))
                                 3))
                 ("WR3"
                  (EXPRESS-EQUAL (BI-SIZEOF
                                  (%COORDINATES
                                   (EXPRESS-AREF
                                    (%MULTIPLICATION_MATRIX
                                     INSTANCE
                                     NIL)
                                    3)
                                   'ASEADAL.DIRECTION))
                                 3))
                 ("WR4"
                  (EXPRESS-EQUAL (BI-SIZEOF
                                  (%COORDINATES
                                   (%TRANSLATION INSTANCE NIL)
                                   NIL))
                                 3)))


(DEFENTITY-CLASS "ASEADAL.AXIS_PLACEMENT_MAPPING"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("source"
                   (:INITARG :ASEADAL.AXIS_PLACEMENT_MAPPING.SOURCE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.AXIS_PLACEMENT))
                   (:OPTIONAL NIL))
                  ("target"
                   (:INITARG :ASEADAL.AXIS_PLACEMENT_MAPPING.TARGET)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.AXIS_PLACEMENT))
                   (:OPTIONAL NIL))))


(DEFDOMAIN-RULES ASEADAL.AXIS_PLACEMENT_MAPPING
                 ("WR1"
                  (EXPRESS-EQUAL (%DIM
                                  (%SOURCE INSTANCE NIL)
                                  'ASEADAL.AXIS_PLACEMENT)
                                 (%DIM
                                  (%TARGET INSTANCE NIL)
                                  'ASEADAL.AXIS_PLACEMENT))))


(DEFENTITY-CLASS "ASEADAL.PART_VIEW_DEFINITION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("defined_version"
                   (:INITARG
                    :ASEADAL.PART_VIEW_DEFINITION.DEFINED_VERSION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_VERSION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PART_VIEW_DEFINITION))
      '(ASEADAL.PRODUCT_VIEW_DEFINITION))


(DEFENTITY-CLASS "ASEADAL.PART"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PART)) '(ASEADAL.PRODUCT))


(DEFDOMAIN-RULES ASEADAL.PART
                 ("WR1"
                  (EXPRESS-EQUAL (BI-SIZEOF
                                  (EXPRESS-MULT
                                   (MAKE-INSTANCE
                                    'EXPRESS-BAG
                                    :VALUE
                                    (LIST "part" "raw material" "tool")
                                    :TYPE-DESCRIPTOR
                                    (MAKE-INSTANCE
                                     'BAG-TYP
                                     :L-BOUND
                                     0
                                     :U-BOUND
                                     :?
                                     :BASE-TYPE
                                     T))
                                   (TYPES_OF_PRODUCT INSTANCE)))
                                 1)))


(DEFENTITY-CLASS "ASEADAL.PART_VERSION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("of_product"
                   (:INITARG :ASEADAL.PART_VERSION.OF_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PART_VERSION))
      '(ASEADAL.PRODUCT_VERSION))


(DEFENTITY-CLASS "ASEADAL.CONTEXTUAL_SHAPE_REPRESENTATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("contextual_shape"
                   (:INITARG
                    :ASEADAL.CONTEXTUAL_SHAPE_REPRESENTATION.CONTEXTUAL_SHAPE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONTEXTUAL_ITEM_SHAPE))
                   (:OPTIONAL NIL))
                  ("representing_relationship"
                   (:INITARG
                    :ASEADAL.CONTEXTUAL_SHAPE_REPRESENTATION.REPRESENTING_RELATIONSHIP)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GEOMETRIC_MODEL_RELATIONSHIP))
                   (:OPTIONAL NIL))
                  ("context_representation"
                   (:INITARG
                    :ASEADAL.CONTEXTUAL_SHAPE_REPRESENTATION.CONTEXT_REPRESENTATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GEOMETRIC_MODEL))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%REP_2
                     (%REPRESENTING_RELATIONSHIP INSTANCE NIL)
                     NIL)))
                  ("positioned_representation"
                   (:INITARG
                    :ASEADAL.CONTEXTUAL_SHAPE_REPRESENTATION.POSITIONED_REPRESENTATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.GEOMETRIC_MODEL))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%REP_1
                     (%REPRESENTING_RELATIONSHIP INSTANCE NIL)
                     NIL)))))


(DEFENTITY-CLASS "ASEADAL.GEOMETRIC_COMPOSITION_WITH_OPERATOR_TRANSFORMATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.GEOMETRIC_COMPOSITION_WITH_OPERATOR_TRANSFORMATION))
      '(ASEADAL.GEOMETRIC_RELATIONSHIP_WITH_OPERATOR_TRANSFORMATION
        ASEADAL.DEFINITIONAL_REPRESENTATION_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.GEOMETRIC_COMPOSITION_WITH_PLACEMENT_TRANSFORMATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.GEOMETRIC_COMPOSITION_WITH_PLACEMENT_TRANSFORMATION))
      '(ASEADAL.GEOMETRIC_RELATIONSHIP_WITH_PLACEMENT_TRANSFORMATION
        ASEADAL.DEFINITIONAL_REPRESENTATION_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.GEOMETRIC_PLACEMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("target"
                   (:INITARG :ASEADAL.GEOMETRIC_PLACEMENT.TARGET)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.AXIS_PLACEMENT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.GEOMETRIC_PLACEMENT))
      '(ASEADAL.GEOMETRIC_PLACEMENT_OPERATION))


(DEFENTITY-CLASS "ASEADAL.GEOMETRIC_PLACEMENT_MODEL"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("items"
                   (:INITARG :ASEADAL.GEOMETRIC_PLACEMENT_MODEL.ITEMS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.REPRESENTATION_ITEM)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.GEOMETRIC_PLACEMENT_MODEL))
      '(ASEADAL.GEOMETRIC_MODEL))


(DEFENTITY-CLASS "ASEADAL.GEOMETRIC_PLACEMENT_OPERATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("source"
                   (:INITARG
                    :ASEADAL.GEOMETRIC_PLACEMENT_OPERATION.SOURCE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.AXIS_PLACEMENT))
                   (:OPTIONAL NIL))
                  ("template_definition"
                   (:INITARG
                    :ASEADAL.GEOMETRIC_PLACEMENT_OPERATION.TEMPLATE_DEFINITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TEMPLATE_DEFINITION_SELECT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.GEOMETRIC_PLACEMENT_OPERATION))
      '(ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.GEOMETRIC_PLACEMENT_OPERATION))
      T)


(DEFENTITY-CLASS "ASEADAL.GEOMETRIC_MODEL_RELATIONSHIP_WITH_TRANSFORMATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.GEOMETRIC_MODEL_RELATIONSHIP_WITH_TRANSFORMATION))
      '(ASEADAL.GEOMETRIC_MODEL_RELATIONSHIP))
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.GEOMETRIC_MODEL_RELATIONSHIP_WITH_TRANSFORMATION))
      T)


(DEFDOMAIN-RULES ASEADAL.GEOMETRIC_MODEL_RELATIONSHIP_WITH_TRANSFORMATION
                 ("WR1"
                  (EXPRESS-NOT-EQUAL (%CONTEXT_OF_ITEMS
                                      (%REP_1 INSTANCE NIL)
                                      NIL)
                                     (%CONTEXT_OF_ITEMS
                                      (%REP_2 INSTANCE NIL)
                                      NIL))))


(DEFENTITY-CLASS "ASEADAL.GEOMETRIC_OPERATOR_TRANSFORMATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("target"
                   (:INITARG
                    :ASEADAL.GEOMETRIC_OPERATOR_TRANSFORMATION.TARGET)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CARTESIAN_TRANSFORMATION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.GEOMETRIC_OPERATOR_TRANSFORMATION))
      '(ASEADAL.GEOMETRIC_PLACEMENT_OPERATION))


(DEFENTITY-CLASS "ASEADAL.GEOMETRIC_RELATIONSHIP_WITH_OPERATOR_TRANSFORMATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("transformation"
                   (:INITARG
                    :ASEADAL.GEOMETRIC_RELATIONSHIP_WITH_OPERATOR_TRANSFORMATION.TRANSFORMATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CARTESIAN_TRANSFORMATION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.GEOMETRIC_RELATIONSHIP_WITH_OPERATOR_TRANSFORMATION))
      '(ASEADAL.GEOMETRIC_MODEL_RELATIONSHIP_WITH_TRANSFORMATION))


(DEFDOMAIN-RULES ASEADAL.GEOMETRIC_RELATIONSHIP_WITH_OPERATOR_TRANSFORMATION
                 ("WR1"
                  (EXPRESS-INSTANCE-EQUAL (%DIMENSION_COUNT
                                           (%CONTEXT_OF_ITEMS
                                            (%REP_1 INSTANCE NIL)
                                            NIL)
                                           'ASEADAL.GEOMETRIC_COORDINATE_SPACE)
                                          (%DIMENSION_COUNT
                                           (%CONTEXT_OF_ITEMS
                                            (%REP_2 INSTANCE NIL)
                                            NIL)
                                           'ASEADAL.GEOMETRIC_COORDINATE_SPACE))))


(DEFENTITY-CLASS "ASEADAL.GEOMETRIC_RELATIONSHIP_WITH_PLACEMENT_TRANSFORMATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("transformation"
                   (:INITARG
                    :ASEADAL.GEOMETRIC_RELATIONSHIP_WITH_PLACEMENT_TRANSFORMATION.TRANSFORMATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.AXIS_PLACEMENT_MAPPING))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.GEOMETRIC_RELATIONSHIP_WITH_PLACEMENT_TRANSFORMATION))
      '(ASEADAL.GEOMETRIC_MODEL_RELATIONSHIP_WITH_TRANSFORMATION))


(DEFDOMAIN-RULES ASEADAL.GEOMETRIC_RELATIONSHIP_WITH_PLACEMENT_TRANSFORMATION
                 ("WR1"
                  (EXPRESS-INSTANCE-EQUAL (%DIMENSION_COUNT
                                           (%CONTEXT_OF_ITEMS
                                            (%REP_1 INSTANCE NIL)
                                            NIL)
                                           'ASEADAL.GEOMETRIC_COORDINATE_SPACE)
                                          (%DIMENSION_COUNT
                                           (%CONTEXT_OF_ITEMS
                                            (%REP_2 INSTANCE NIL)
                                            NIL)
                                           'ASEADAL.GEOMETRIC_COORDINATE_SPACE))))


(DEFENTITY-CLASS "ASEADAL.SHAPE_PLACEMENT_ASSOCIATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("represented_characteristic"
                   (:INITARG
                    :ASEADAL.SHAPE_PLACEMENT_ASSOCIATION.REPRESENTED_CHARACTERISTIC)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SHAPE_SELECT))
                   (:OPTIONAL NIL))
                  ("representation"
                   (:INITARG
                    :ASEADAL.SHAPE_PLACEMENT_ASSOCIATION.REPRESENTATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SHAPE_MODEL))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SHAPE_PLACEMENT_ASSOCIATION))
      '(ASEADAL.SHAPE_DESCRIPTION_ASSOCIATION))


(DEFENTITY-CLASS "ASEADAL.CHARACTERIZABLE_OBJECT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.CHARACTERIZABLE_OBJECT.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.CHARACTERIZABLE_OBJECT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))


(DEFENTITY-CLASS "ASEADAL.MEASURE_ITEM_WITH_PRECISION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("significant_digits"
                   (:INITARG
                    :ASEADAL.MEASURE_ITEM_WITH_PRECISION.SIGNIFICANT_DIGITS)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'INTEGER-TYP))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.MEASURE_ITEM_WITH_PRECISION))
      '(ASEADAL.MEASURE_ITEM))


(DEFENTITY-CLASS "ASEADAL.QUALIFIED_PROPERTY_VALUE_REPRESENTATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("value_determination"
                   (:INITARG
                    :ASEADAL.QUALIFIED_PROPERTY_VALUE_REPRESENTATION.VALUE_DETERMINATION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("qualifier"
                   (:INITARG
                    :ASEADAL.QUALIFIED_PROPERTY_VALUE_REPRESENTATION.QUALIFIER)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.QUALIFIED_PROPERTY_VALUE_REPRESENTATION))
      '(ASEADAL.PROPERTY_VALUE_REPRESENTATION))


(DEFENTITY-CLASS "ASEADAL.VALUE_LIMIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("limit_qualifier"
                   (:INITARG :ASEADAL.VALUE_LIMIT.LIMIT_QUALIFIER)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.LIMIT_QUALIFIER_LIST))
                   (:OPTIONAL NIL))
                  ("limit"
                   (:INITARG :ASEADAL.VALUE_LIMIT.LIMIT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VALUE_WITH_UNIT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.VALUE_LIMIT))
      '(ASEADAL.MEASURE_ITEM))


(DEFENTITY-CLASS "ASEADAL.VALUE_LIMIT_WITH_GLOBAL_UNIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("limit"
                   (:INITARG
                    :ASEADAL.VALUE_LIMIT_WITH_GLOBAL_UNIT.LIMIT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.NUMERICAL_ITEM_WITH_GLOBAL_UNIT))
                   (:OPTIONAL NIL))
                  ("limit_qualifier"
                   (:INITARG
                    :ASEADAL.VALUE_LIMIT_WITH_GLOBAL_UNIT.LIMIT_QUALIFIER)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.LIMIT_QUALIFIER_LIST))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.VALUE_LIMIT_WITH_GLOBAL_UNIT))
      '(ASEADAL.MEASURE_ITEM))


(DEFENTITY-CLASS "ASEADAL.VALUE_LIST"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("values"
                   (:INITARG :ASEADAL.VALUE_LIST.VALUES)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'LIST-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.MEASURE_ITEM)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.VALUE_LIST))
      '(ASEADAL.MEASURE_ITEM))


(DEFENTITY-CLASS "ASEADAL.VALUE_RANGE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("lower_limit"
                   (:INITARG :ASEADAL.VALUE_RANGE.LOWER_LIMIT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.NUMERICAL_ITEM_WITH_UNIT))
                   (:OPTIONAL NIL))
                  ("upper_limit"
                   (:INITARG :ASEADAL.VALUE_RANGE.UPPER_LIMIT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.NUMERICAL_ITEM_WITH_UNIT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.VALUE_RANGE))
      '(ASEADAL.MEASURE_ITEM))


(DEFENTITY-CLASS "ASEADAL.VALUE_RANGE_WITH_GLOBAL_UNIT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("lower_limit"
                   (:INITARG
                    :ASEADAL.VALUE_RANGE_WITH_GLOBAL_UNIT.LOWER_LIMIT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.NUMERICAL_ITEM_WITH_GLOBAL_UNIT))
                   (:OPTIONAL NIL))
                  ("upper_limit"
                   (:INITARG
                    :ASEADAL.VALUE_RANGE_WITH_GLOBAL_UNIT.UPPER_LIMIT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.NUMERICAL_ITEM_WITH_GLOBAL_UNIT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.VALUE_RANGE_WITH_GLOBAL_UNIT))
      '(ASEADAL.MEASURE_ITEM))


(DEFENTITY-CLASS "ASEADAL.VALUE_SET"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("values"
                   (:INITARG :ASEADAL.VALUE_SET.VALUES)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.MEASURE_ITEM)))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.VALUE_SET))
      '(ASEADAL.MEASURE_ITEM))


(DEFENTITY-CLASS "ASEADAL.VALUE_WITH_TOLERANCES"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("item_value"
                   (:INITARG :ASEADAL.VALUE_WITH_TOLERANCES.ITEM_VALUE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.NUMERICAL_ITEM_WITH_UNIT))
                   (:OPTIONAL NIL))
                  ("lower_limit"
                   (:INITARG
                    :ASEADAL.VALUE_WITH_TOLERANCES.LOWER_LIMIT)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'REAL-TYP))
                   (:OPTIONAL NIL))
                  ("upper_limit"
                   (:INITARG
                    :ASEADAL.VALUE_WITH_TOLERANCES.UPPER_LIMIT)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'REAL-TYP))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.VALUE_WITH_TOLERANCES))
      '(ASEADAL.MEASURE_ITEM))


(DEFENTITY-CLASS "ASEADAL.LOCATION_ASSIGNMENT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("description"
                   (:INITARG :ASEADAL.LOCATION_ASSIGNMENT.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("role"
                   (:INITARG :ASEADAL.LOCATION_ASSIGNMENT.ROLE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("entity_for_location"
                   (:INITARG
                    :ASEADAL.LOCATION_ASSIGNMENT.ENTITY_FOR_LOCATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.LOCATION_ASSIGNMENT_SELECT))
                   (:OPTIONAL NIL))
                  ("location_for_assignment"
                   (:INITARG
                    :ASEADAL.LOCATION_ASSIGNMENT.LOCATION_FOR_ASSIGNMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.LOCATION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.DECISION_PATH"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("condition"
                   (:INITARG :ASEADAL.DECISION_PATH.CONDITION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.CONDITION))
                   (:OPTIONAL NIL))
                  ("defined_in"
                   (:INITARG :ASEADAL.DECISION_PATH.DEFINED_IN)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.MULTIPLE_DECISION_POINT))
                   (:OPTIONAL NIL))
                  ("path_element"
                   (:INITARG :ASEADAL.DECISION_PATH.PATH_ELEMENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TASK_ELEMENT))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.MULTIPLE_DECISION_POINT"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("paths"
                   (:INITARG :ASEADAL.MULTIPLE_DECISION_POINT.PATHS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   2
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.DECISION_PATH)))
                   (:INVERSE (ASEADAL.DECISION_PATH DEFINED_IN)))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.MULTIPLE_DECISION_POINT))
      '(ASEADAL.STRUCTURED_TASK_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.TASK_IO"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("assigned_activity_method"
                   (:INITARG :ASEADAL.TASK_IO.ASSIGNED_ACTIVITY_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TASK_IO))
      '(ASEADAL.TASK_ELEMENT_ASSIGNMENT))


(DEFENTITY-CLASS "ASEADAL.TASK_IO_HIERARCHY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("child"
                   (:INITARG :ASEADAL.TASK_IO_HIERARCHY.CHILD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TASK_IO))
                   (:OPTIONAL NIL))
                  ("parent"
                   (:INITARG :ASEADAL.TASK_IO_HIERARCHY.PARENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TASK_IO))
                   (:OPTIONAL NIL))))


(DEFDOMAIN-RULES ASEADAL.TASK_IO_HIERARCHY
                 ("wr1"
                  (EXPRESS-INSTANCE-EQUAL (%ROLE
                                           (%CHILD INSTANCE NIL)
                                           NIL)
                                          (%ROLE
                                           (%PARENT INSTANCE NIL)
                                           NIL))))


(DEFENTITY-CLASS "ASEADAL.TASK_STEP_HIERARCHY"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("child"
                   (:INITARG :ASEADAL.TASK_STEP_HIERARCHY.CHILD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TASK_STEP))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATED_METHOD
                     INSTANCE
                     'ASEADAL.ACTIVITY_METHOD_RELATIONSHIP)))
                  ("parent"
                   (:INITARG :ASEADAL.TASK_STEP_HIERARCHY.PARENT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.TASK_STEP))
                   (:DERIVED T)
                   (:EXPRESSION
                    (%RELATING_METHOD
                     INSTANCE
                     'ASEADAL.ACTIVITY_METHOD_RELATIONSHIP)))
                  ("relating_method"
                   (:INITARG
                    :ASEADAL.TASK_STEP_HIERARCHY.RELATING_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))
                  ("related_method"
                   (:INITARG
                    :ASEADAL.TASK_STEP_HIERARCHY.RELATED_METHOD)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ACTIVITY_METHOD))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.TASK_STEP_HIERARCHY))
      '(ASEADAL.TASK_ELEMENT_RELATIONSHIP))


(DEFENTITY-CLASS "ASEADAL.AXIS_PLACEMENT_2D"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.AXIS_PLACEMENT_2D))
      '(ASEADAL.AXIS_PLACEMENT))


(DEFENTITY-CLASS "ASEADAL.AXIS_PLACEMENT_3D"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.AXIS_PLACEMENT_3D))
      '(ASEADAL.AXIS_PLACEMENT))


(DEFENTITY-CLASS "ASEADAL.DEFINITIONAL_REPRESENTATION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.DEFINITIONAL_REPRESENTATION_RELATIONSHIP))
      '(ASEADAL.REPRESENTATION_RELATIONSHIP))


(DEFDOMAIN-RULES ASEADAL.DEFINITIONAL_REPRESENTATION_RELATIONSHIP
                 ("WR1"
                  (ACYCLIC_REPRESENTATION_RELATIONSHIP
                   INSTANCE
                   (MAKE-INSTANCE 'EXPRESS-BAG
                                  :VALUE
                                  (LIST
                                   (%REP_2
                                    INSTANCE
                                    'ASEADAL.REPRESENTATION_RELATIONSHIP))
                                  :TYPE-DESCRIPTOR
                                  (MAKE-INSTANCE
                                   'BAG-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   T))
                   (EXPRESS-PLUS "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF."
                                 "REPRESENTATION"))))


(DEFENTITY-CLASS "ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("item_1"
                   (:INITARG
                    :ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT_RELATIONSHIP.ITEM_1)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT))
                   (:OPTIONAL NIL))
                  ("item_2"
                   (:INITARG
                    :ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT_RELATIONSHIP.ITEM_2)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT))
                   (:OPTIONAL NIL))))


(DEFDOMAIN-RULES ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT_RELATIONSHIP
                 ("WR1"
                  (EXPRESS-NOT-EQUAL (%ITEM_1 INSTANCE NIL)
                                     (%ITEM_2 INSTANCE NIL))))


(DEFENTITY-CLASS "ASEADAL.GEOMETRIC_MODEL_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("rep_1"
                   (:INITARG
                    :ASEADAL.GEOMETRIC_MODEL_RELATIONSHIP.REP_1)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REPRESENTATION))
                   (:OPTIONAL NIL))
                  ("rep_2"
                   (:INITARG
                    :ASEADAL.GEOMETRIC_MODEL_RELATIONSHIP.REP_2)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REPRESENTATION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.GEOMETRIC_MODEL_RELATIONSHIP))
      '(ASEADAL.REPRESENTATION_RELATIONSHIP))


(DEFDOMAIN-RULES ASEADAL.GEOMETRIC_MODEL_RELATIONSHIP
                 ("WR1"
                  (EXPRESS-NOT-EQUAL (%REP_1 INSTANCE NIL)
                                     (%REP_2 INSTANCE NIL))))


(DEFENTITY-CLASS "ASEADAL.GEOMETRIC_MODEL_ELEMENT_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.GEOMETRIC_MODEL_ELEMENT_RELATIONSHIP))
      '(ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT_RELATIONSHIP
        ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.VECTOR"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("orientation"
                   (:INITARG :ASEADAL.VECTOR.ORIENTATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.DIRECTION))
                   (:OPTIONAL NIL))
                  ("magnitude"
                   (:INITARG :ASEADAL.VECTOR.MAGNITUDE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.LENGTH_MEASURE))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.VECTOR))
      '(ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT))


(DEFDOMAIN-RULES ASEADAL.VECTOR
                 ("WR1" (EXPRESS->= (%MAGNITUDE INSTANCE NIL) 0.0)))


(DEFENTITY-CLASS "ASEADAL.ADDRESS_BASED_LOCATION_REPRESENTATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("postal_address"
                   (:INITARG
                    :ASEADAL.ADDRESS_BASED_LOCATION_REPRESENTATION.POSTAL_ADDRESS)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ADDRESS))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ADDRESS_BASED_LOCATION_REPRESENTATION))
      '(ASEADAL.LOCATION_REPRESENTATION))


(DEFENTITY-CLASS "ASEADAL.GLOBAL_LOCATION_REPRESENTATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("altitude"
                   (:INITARG
                    :ASEADAL.GLOBAL_LOCATION_REPRESENTATION.ALTITUDE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VALUE_WITH_UNIT))
                   (:OPTIONAL T))
                  ("geographical_area"
                   (:INITARG
                    :ASEADAL.GLOBAL_LOCATION_REPRESENTATION.GEOGRAPHICAL_AREA)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("latitude"
                   (:INITARG
                    :ASEADAL.GLOBAL_LOCATION_REPRESENTATION.LATITUDE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VALUE_WITH_UNIT))
                   (:OPTIONAL NIL))
                  ("longitude"
                   (:INITARG
                    :ASEADAL.GLOBAL_LOCATION_REPRESENTATION.LONGITUDE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VALUE_WITH_UNIT))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.GLOBAL_LOCATION_REPRESENTATION))
      '(ASEADAL.LOCATION_REPRESENTATION))


(DEFENTITY-CLASS "ASEADAL.LOCATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.LOCATION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG :ASEADAL.LOCATION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("alternative_location_representations"
                   (:INITARG
                    :ASEADAL.LOCATION.ALTERNATIVE_LOCATION_REPRESENTATIONS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.LOCATION_REPRESENTATION)))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.LOCATION_RELATIONSHIP"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.LOCATION_RELATIONSHIP.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.LOCATION_RELATIONSHIP.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("relating"
                   (:INITARG :ASEADAL.LOCATION_RELATIONSHIP.RELATING)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.LOCATION))
                   (:OPTIONAL NIL))
                  ("related"
                   (:INITARG :ASEADAL.LOCATION_RELATIONSHIP.RELATED)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.LOCATION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.LOCATION_REPRESENTATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (ABSTRACT-P (FIND-EU-CLASS 'ASEADAL.LOCATION_REPRESENTATION)) T)


(DEFENTITY-CLASS "ASEADAL.ORGANIZATION_BASED_LOCATION_REPRESENTATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("location_identifications"
                   (:INITARG
                    :ASEADAL.ORGANIZATION_BASED_LOCATION_REPRESENTATION.LOCATION_IDENTIFICATIONS)
                   (:EXPRESS-TYPE
                    (MAKE-INSTANCE 'LIST-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.ORGANIZATIONAL_LOCATION_IDENTIFICATION)
                                   :UNIQUE
                                   NIL))
                   (:OPTIONAL NIL))
                  ("organization_for_location"
                   (:INITARG
                    :ASEADAL.ORGANIZATION_BASED_LOCATION_REPRESENTATION.ORGANIZATION_FOR_LOCATION)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.ORGANIZATION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.ORGANIZATION_BASED_LOCATION_REPRESENTATION))
      '(ASEADAL.LOCATION_REPRESENTATION))


(DEFENTITY-CLASS "ASEADAL.ORGANIZATIONAL_LOCATION_IDENTIFICATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("identification_type"
                   (:INITARG
                    :ASEADAL.ORGANIZATIONAL_LOCATION_IDENTIFICATION.IDENTIFICATION_TYPE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("location_value"
                   (:INITARG
                    :ASEADAL.ORGANIZATIONAL_LOCATION_IDENTIFICATION.LOCATION_VALUE)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.PRODUCT_BASED_LOCATION_IDENTIFICATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("location_identification"
                   (:INITARG
                    :ASEADAL.PRODUCT_BASED_LOCATION_IDENTIFICATION.LOCATION_IDENTIFICATION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("location_name"
                   (:INITARG
                    :ASEADAL.PRODUCT_BASED_LOCATION_IDENTIFICATION.LOCATION_NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))
                  ("referenced_product"
                   (:INITARG
                    :ASEADAL.PRODUCT_BASED_LOCATION_IDENTIFICATION.REFERENCED_PRODUCT)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT_BASED_LOCATION_REPRESENTATION))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PRODUCT_BASED_LOCATION_IDENTIFICATION))
      '(ASEADAL.LOCATION_REPRESENTATION))


(DEFENTITY-CLASS "ASEADAL.REGIONAL_COORDINATE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG :ASEADAL.REGIONAL_COORDINATE.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("coordinate_value"
                   (:INITARG
                    :ASEADAL.REGIONAL_COORDINATE.COORDINATE_VALUE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.VALUE_WITH_UNIT))
                   (:OPTIONAL NIL))
                  ("grid_system"
                   (:INITARG :ASEADAL.REGIONAL_COORDINATE.GRID_SYSTEM)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.REGIONAL_GRID_LOCATION_REPRESENTATION))
                   (:OPTIONAL NIL))))


(DEFENTITY-CLASS "ASEADAL.REGIONAL_GRID_LOCATION_REPRESENTATION"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("name"
                   (:INITARG
                    :ASEADAL.REGIONAL_GRID_LOCATION_REPRESENTATION.NAME)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL NIL))
                  ("description"
                   (:INITARG
                    :ASEADAL.REGIONAL_GRID_LOCATION_REPRESENTATION.DESCRIPTION)
                   (:EXPRESS-TYPE (MAKE-INSTANCE 'STRING-TYP))
                   (:OPTIONAL T))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.REGIONAL_GRID_LOCATION_REPRESENTATION))
      '(ASEADAL.LOCATION_REPRESENTATION))


(DEFENTITY-CLASS "ASEADAL.CURVE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.CURVE))
      '(ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.LINE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.LINE)) '(ASEADAL.CURVE))


(DEFENTITY-CLASS "ASEADAL.PLANE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.PLANE)) '(ASEADAL.SURFACE))


(DEFENTITY-CLASS "ASEADAL.POINT_ON_CURVE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("supporting_curve"
                   (:INITARG :ASEADAL.POINT_ON_CURVE.SUPPORTING_CURVE)
                   (:EXPRESS-TYPE (SAFE-FIND-EU-CLASS 'ASEADAL.CURVE))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.POINT_ON_CURVE))
      '(ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.POINT_ON_SURFACE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 (("supporting_surface"
                   (:INITARG
                    :ASEADAL.POINT_ON_SURFACE.SUPPORTING_SURFACE)
                   (:EXPRESS-TYPE
                    (SAFE-FIND-EU-CLASS 'ASEADAL.SURFACE))
                   (:OPTIONAL NIL))))
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.POINT_ON_SURFACE))
      '(ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT))


(DEFENTITY-CLASS "ASEADAL.SURFACE"
                 AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF
                 NIL)
(SETF (SUBTYPE-OF (FIND-EU-CLASS 'ASEADAL.SURFACE))
      '(ASEADAL.DETAILED_GEOMETRIC_MODEL_ELEMENT))




;;;=================
;;; GlobalRules
;;;=================
(DEFGLOBAL-RULE ASEADAL.DOCUMENT_DEFINITION_CONSTRAINT
                (ASEADAL.PRODUCT_VIEW_DEFINITION)
                ("WR1"
                 (EXPRESS-EQUAL (BI-SIZEOF
                                 (QUERY
                                  ASEADAL.PRODUCT_VIEW_DEFINITION
                                  #'(LAMBDA
                                     (ASEADAL.DD)
                                     (EXPRESS-AND
                                      (EXPRESS-NOT
                                       (IN
                                        (EXPRESS-PLUS
                                         "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF."
                                         "DOCUMENT_DEFINITION")
                                        (BI-TYPEOF ASEADAL.DD)))
                                      (IN
                                       (EXPRESS-PLUS
                                        "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF."
                                        "DOCUMENT_VERSION")
                                       (BI-TYPEOF
                                        (%DEFINED_VERSION
                                         ASEADAL.DD
                                         NIL)))))))
                                0)))


(DEFGLOBAL-RULE ASEADAL.PART_VERSION_CONSTRAINT
                (ASEADAL.PRODUCT_VERSION)
                ("WR1"
                 (EXPRESS-EQUAL (BI-SIZEOF
                                 (QUERY
                                  ASEADAL.PRODUCT_VERSION
                                  #'(LAMBDA
                                     (ASEADAL.PV)
                                     (EXPRESS-AND
                                      (EXPRESS-NOT
                                       (IN
                                        (EXPRESS-PLUS
                                         "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF."
                                         "PART_VERSION")
                                        (BI-TYPEOF ASEADAL.PV)))
                                      (IN
                                       (EXPRESS-PLUS
                                        "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF."
                                        "PART")
                                       (BI-TYPEOF
                                        (%OF_PRODUCT
                                         ASEADAL.PV
                                         NIL)))))))
                                0)))


(DEFGLOBAL-RULE ASEADAL.PART_VIEW_DEFINITION_CONSTRAINT
                (ASEADAL.PRODUCT_VIEW_DEFINITION)
                ("WR1"
                 (EXPRESS-EQUAL (BI-SIZEOF
                                 (QUERY
                                  ASEADAL.PRODUCT_VIEW_DEFINITION
                                  #'(LAMBDA
                                     (ASEADAL.PVD)
                                     (EXPRESS-AND
                                      (EXPRESS-NOT
                                       (IN
                                        (EXPRESS-PLUS
                                         "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF."
                                         "PART_VIEW_DEFINITION")
                                        (BI-TYPEOF ASEADAL.PVD)))
                                      (IN
                                       (EXPRESS-PLUS
                                        "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF."
                                        "PART_VERSION")
                                       (BI-TYPEOF
                                        (%DEFINED_VERSION
                                         ASEADAL.PVD
                                         NIL)))))))
                                0)))


(DEFGLOBAL-RULE ASEADAL.DOCUMENT_VERSION_CONSTRAINT
                (ASEADAL.PRODUCT_VERSION)
                ("WR1"
                 (EXPRESS-EQUAL (BI-SIZEOF
                                 (QUERY
                                  ASEADAL.PRODUCT_VERSION
                                  #'(LAMBDA
                                     (ASEADAL.PV)
                                     (EXPRESS-AND
                                      (EXPRESS-NOT
                                       (IN
                                        (EXPRESS-PLUS
                                         "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF."
                                         "DOCUMENT_VERSION")
                                        (BI-TYPEOF ASEADAL.PV)))
                                      (IN
                                       (EXPRESS-PLUS
                                        "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF."
                                        "DOCUMENT")
                                       (BI-TYPEOF
                                        (%OF_PRODUCT
                                         ASEADAL.PV
                                         NIL)))))))
                                0)))




;;;=================
;;; Functions
;;;=================
(DEFUN ASEADAL.ACYCLIC (ASEADAL.ARG1 ASEADAL.ARG2)
  (BLOCK THIS-FUNCTION
    (EXPRESS-ASSERT (SAFE-FIND-EU-CLASS 'ASEADAL.GENERIC_EXPRESSION)
                    ASEADAL.ARG1)
    (EXPRESS-ASSERT (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.GENERIC_EXPRESSION))
                    ASEADAL.ARG2)
    (WHEN (OR (EXPO::INDETERMINATE-P ASEADAL.ARG1)
              (EXPO::INDETERMINATE-P ASEADAL.ARG2))
      (RETURN-FROM ASEADAL.ACYCLIC :?))
    (LET ((ASEADAL.RESULT (MAKE-ONE (MAKE-INSTANCE 'BOOLEAN-TYP) NIL)))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.SIMPLE_GENERIC_EXPRESSION"
              (BI-TYPEOF ASEADAL.ARG1))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:TRUE))
        (PROGN))
      (IF (IN ASEADAL.ARG1 ASEADAL.ARG2)
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.UNARY_GENERIC_EXPRESSION"
              (BI-TYPEOF ASEADAL.ARG1))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              (ACYCLIC
               (%OPERAND
                ASEADAL.ARG1
                'ASEADAL.UNARY_GENERIC_EXPRESSION)
               (EXPRESS-PLUS ASEADAL.ARG2
                             (MAKE-INSTANCE 'EXPRESS-BAG
                                            :VALUE
                                            (LIST ASEADAL.ARG1)
                                            :TYPE-DESCRIPTOR
                                            (MAKE-INSTANCE
                                             'BAG-TYP
                                             :L-BOUND
                                             0
                                             :U-BOUND
                                             :?
                                             :BASE-TYPE
                                             T))))))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.BINARY_GENERIC_EXPRESSION"
              (BI-TYPEOF ASEADAL.ARG1))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              (EXPRESS-AND (ACYCLIC
                            (EXPRESS-AREF (%OPERANDS
                                           ASEADAL.ARG1
                                           'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                          1)
                            (EXPRESS-PLUS ASEADAL.ARG2
                                          (MAKE-INSTANCE
                                           'EXPRESS-BAG
                                           :VALUE
                                           (LIST ASEADAL.ARG1)
                                           :TYPE-DESCRIPTOR
                                           (MAKE-INSTANCE
                                            'BAG-TYP
                                            :L-BOUND
                                            0
                                            :U-BOUND
                                            :?
                                            :BASE-TYPE
                                            T))))
                           (ACYCLIC
                            (EXPRESS-AREF (%OPERANDS
                                           ASEADAL.ARG1
                                           'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                          2)
                            (EXPRESS-PLUS ASEADAL.ARG2
                                          (MAKE-INSTANCE
                                           'EXPRESS-BAG
                                           :VALUE
                                           (LIST ASEADAL.ARG1)
                                           :TYPE-DESCRIPTOR
                                           (MAKE-INSTANCE
                                            'BAG-TYP
                                            :L-BOUND
                                            0
                                            :U-BOUND
                                            :?
                                            :BASE-TYPE
                                            T)))))))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.MULTIPLE_ARITY_GENERIC_EXPRESSION"
              (BI-TYPEOF ASEADAL.ARG1))
          (PROGN
            (SETF ASEADAL.RESULT P11U:TRUE)
            (LOOP
              (FOR
               ASEADAL.I
               FROM
               1
               TO
               (BI-SIZEOF (%OPERANDS
                           ASEADAL.ARG1
                           'ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION)))
              DO
              (SETF ASEADAL.RESULT
                    (EXPRESS-AND ASEADAL.RESULT
                                 (ACYCLIC
                                  (EXPRESS-AREF
                                   (%OPERANDS
                                    ASEADAL.ARG1
                                    'ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION)
                                   ASEADAL.I)
                                  (EXPRESS-PLUS
                                   ASEADAL.ARG2
                                   (MAKE-INSTANCE
                                    'EXPRESS-BAG
                                    :VALUE
                                    (LIST ASEADAL.ARG1)
                                    :TYPE-DESCRIPTOR
                                    (MAKE-INSTANCE
                                     'BAG-TYP
                                     :L-BOUND
                                     0
                                     :U-BOUND
                                     :?
                                     :BASE-TYPE
                                     T)))))))
            (RETURN-FROM THIS-FUNCTION ASEADAL.RESULT))
        (PROGN)))))


(DEFUN ASEADAL.IS_INT_EXPR (ASEADAL.ARG)
  (BLOCK THIS-FUNCTION
    (EXPRESS-ASSERT (SAFE-FIND-EU-CLASS 'ASEADAL.NUMERIC_EXPRESSION)
                    ASEADAL.ARG)
    (WHEN (OR (EXPO::INDETERMINATE-P ASEADAL.ARG))
      (RETURN-FROM ASEADAL.IS_INT_EXPR :?))
    (LET ((ASEADAL.I (MAKE-ONE (MAKE-INSTANCE 'INTEGER-TYP) NIL)))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.INT_LITERAL"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:TRUE))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.REAL_LITERAL"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.INT_NUMERIC_VARIABLE"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:TRUE))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.REAL_NUMERIC_VARIABLE"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.ABS_FUNCTION"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              (IS_INT_EXPR
               (%OPERAND
                ASEADAL.ARG
                'ASEADAL.UNARY_GENERIC_EXPRESSION))))
        (PROGN))
      (IF (IN "NUMERIC_FUNCTION.MINUS_FUNCTION"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              (IS_INT_EXPR
               (%OPERAND
                ASEADAL.ARG
                'ASEADAL.UNARY_GENERIC_EXPRESSION))))
        (PROGN))
      (IF (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR
                                   (EXPRESS-OR
                                    (EXPRESS-OR
                                     (EXPRESS-OR
                                      (EXPRESS-OR
                                       (EXPRESS-OR
                                        (EXPRESS-OR
                                         (EXPRESS-OR
                                          (IN
                                           "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.SIN_FUNCTION"
                                           (BI-TYPEOF ASEADAL.ARG))
                                          (IN
                                           "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.COS_FUNCTION"
                                           (BI-TYPEOF ASEADAL.ARG)))
                                         (IN
                                          "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.TAN_FUNCTION"
                                          (BI-TYPEOF ASEADAL.ARG)))
                                        (IN
                                         "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.ASIN_FUNCTION"
                                         (BI-TYPEOF ASEADAL.ARG)))
                                       (IN
                                        "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.ACOS_FUNCTION"
                                        (BI-TYPEOF ASEADAL.ARG)))
                                      (IN
                                       "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.Atan_function"
                                       (BI-TYPEOF ASEADAL.ARG)))
                                     (IN
                                      "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.EXP_FUNCTION"
                                      (BI-TYPEOF ASEADAL.ARG)))
                                    (IN
                                     "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.LOG_FUNCTION"
                                     (BI-TYPEOF ASEADAL.ARG)))
                                   (IN
                                    "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.LOG2_FUNCTION"
                                    (BI-TYPEOF ASEADAL.ARG)))
                                  (IN
                                   "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.LOG10_FUNCTION"
                                   (BI-TYPEOF ASEADAL.ARG)))
                      (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.SQUARE_ROOT_FUNCTION"
                          (BI-TYPEOF ASEADAL.ARG)))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))
        (PROGN))
      (IF (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR
                                   (IN
                                    "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.PLUS_EXPRESSION"
                                    (BI-TYPEOF ASEADAL.ARG))
                                   (IN
                                    "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.MULT_EXPRESSION"
                                    (BI-TYPEOF ASEADAL.ARG)))
                                  (IN
                                   "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.MAXIMUM_FUNCTION"
                                   (BI-TYPEOF ASEADAL.ARG)))
                      (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.MINIMUM_FUNCTION"
                          (BI-TYPEOF ASEADAL.ARG)))
          (PROGN
            (LOOP
              (FOR
               ASEADAL.I
               FROM
               1
               TO
               (BI-SIZEOF (%OPERANDS
                           ASEADAL.ARG
                           'ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION)))
              DO
              (IF (EXPRESS-NOT (IS_INT_EXPR
                                (EXPRESS-AREF
                                 (%OPERANDS
                                  ASEADAL.ARG
                                  'ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION)
                                 ASEADAL.I)))
                  (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))
                (PROGN)))
            (RETURN-FROM THIS-FUNCTION P11U:TRUE))
        (PROGN))
      (IF (EXPRESS-OR (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.MINUS_EXPRESSION"
                          (BI-TYPEOF ASEADAL.ARG))
                      (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.POWER_EXPRESSION"
                          (BI-TYPEOF ASEADAL.ARG)))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              (EXPRESS-AND (IS_INT_EXPR
                            (EXPRESS-AREF (%OPERANDS
                                           ASEADAL.ARG
                                           'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                          1))
                           (IS_INT_EXPR
                            (EXPRESS-AREF (%OPERANDS
                                           ASEADAL.ARG
                                           'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                          2)))))
        (PROGN))
      (IF (EXPRESS-OR (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.DIV_EXPRESSION"
                          (BI-TYPEOF ASEADAL.ARG))
                      (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.MOD_EXPRESSION"
                          (BI-TYPEOF ASEADAL.ARG)))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:TRUE))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.SLASH_EXPRESSION"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.LENGTH_FUNCTION"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:TRUE))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.VALUE_FUNCTION"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN
            (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.INT_VALUE_FUNCTION"
                    (BI-TYPEOF ASEADAL.ARG))
                (PROGN (RETURN-FROM THIS-FUNCTION P11U:TRUE))
              (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.INTEGER_DEFINED_FUNCTION"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:TRUE))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.REAL_DEFINED_FUNCTION"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.BOOLEAN_DEFINED_FUNCTION"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.STRING_DEFINED_FUNCTION"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))
        (PROGN))
      (RETURN-FROM THIS-FUNCTION P11U:FALSE))))


(DEFUN ASEADAL.IS_SQL_MAPPABLE (ASEADAL.ARG)
  (BLOCK THIS-FUNCTION
    (EXPRESS-ASSERT (SAFE-FIND-EU-CLASS 'ASEADAL.EXPRESSION)
                    ASEADAL.ARG)
    (WHEN (OR (EXPO::INDETERMINATE-P ASEADAL.ARG))
      (RETURN-FROM ASEADAL.IS_SQL_MAPPABLE :?))
    (LET ((ASEADAL.I (MAKE-ONE (MAKE-INSTANCE 'INTEGER-TYP) NIL)))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.SIMPLE_NUMERIC_EXPRESSION"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:TRUE))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.SQL_MAPPABLE_DEFINED_FUNCTION"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:TRUE))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.MINUS_FUNCTION"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              (IS_SQL_MAPPABLE
               (%OPERAND
                ASEADAL.ARG
                'ASEADAL.UNARY_GENERIC_EXPRESSION))))
        (PROGN))
      (IF (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR
                                   (EXPRESS-OR
                                    (EXPRESS-OR
                                     (EXPRESS-OR
                                      (EXPRESS-OR
                                       (EXPRESS-OR
                                        (EXPRESS-OR
                                         (EXPRESS-OR
                                          (EXPRESS-OR
                                           (EXPRESS-OR
                                            (EXPRESS-OR
                                             (IN
                                              "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.ABS_FUNCTION"
                                              (BI-TYPEOF ASEADAL.ARG))
                                             (IN
                                              "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.SIN_FUNCTION"
                                              (BI-TYPEOF ASEADAL.ARG)))
                                            (IN
                                             "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.COS_FUNCTION"
                                             (BI-TYPEOF ASEADAL.ARG)))
                                           (IN
                                            "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.TAN_FUNCTION"
                                            (BI-TYPEOF ASEADAL.ARG)))
                                          (IN
                                           "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.ASIN_FUNCTION"
                                           (BI-TYPEOF ASEADAL.ARG)))
                                         (IN
                                          "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.ACOS_FUNCTION"
                                          (BI-TYPEOF ASEADAL.ARG)))
                                        (IN
                                         "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.ATAN_FUNCTION"
                                         (BI-TYPEOF ASEADAL.ARG)))
                                       (IN
                                        "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.EXP_FUNCTION"
                                        (BI-TYPEOF ASEADAL.ARG)))
                                      (IN
                                       "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.LOG_FUNCTION"
                                       (BI-TYPEOF ASEADAL.ARG)))
                                     (IN
                                      "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.LOG2_FUNCTION"
                                      (BI-TYPEOF ASEADAL.ARG)))
                                    (IN
                                     "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.LOG10_FUNCTION"
                                     (BI-TYPEOF ASEADAL.ARG)))
                                   (IN
                                    "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.SQUARE_ROOT_FUNCTION"
                                    (BI-TYPEOF ASEADAL.ARG)))
                                  (IN
                                   "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.VALUE_FUNCTION"
                                   (BI-TYPEOF ASEADAL.ARG)))
                      (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.LENGTH_FUNCTION"
                          (BI-TYPEOF ASEADAL.ARG)))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))
        (PROGN))
      (IF (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR
                                   (IN
                                    "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.PLUS_EXPRESSION"
                                    (BI-TYPEOF ASEADAL.ARG))
                                   (IN
                                    "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.MULT_EXPRESSION"
                                    (BI-TYPEOF ASEADAL.ARG)))
                                  (IN
                                   "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.MAXIMUM_FUNCTION"
                                   (BI-TYPEOF ASEADAL.ARG)))
                      (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.MAXIMUM_FUNCTION"
                          (BI-TYPEOF ASEADAL.ARG)))
          (PROGN
            (LOOP
              (FOR
               ASEADAL.I
               FROM
               1
               TO
               (BI-SIZEOF (%OPERANDS
                           ASEADAL.ARG
                           'ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION)))
              DO
              (IF (EXPRESS-NOT (IS_SQL_MAPPABLE
                                (EXPRESS-AREF
                                 (%OPERANDS
                                  ASEADAL.ARG
                                  'ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION)
                                 ASEADAL.I)))
                  (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))
                (PROGN)))
            (RETURN-FROM THIS-FUNCTION P11U:TRUE))
        (PROGN))
      (IF (EXPRESS-OR (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.MINUS_EXPRESSION"
                          (BI-TYPEOF ASEADAL.ARG))
                      (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.SLASH_EXPRESSION"
                          (BI-TYPEOF ASEADAL.ARG)))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              (EXPRESS-AND (IS_SQL_MAPPABLE
                            (EXPRESS-AREF (%OPERANDS
                                           ASEADAL.ARG
                                           'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                          1))
                           (IS_SQL_MAPPABLE
                            (EXPRESS-AREF (%OPERANDS
                                           ASEADAL.ARG
                                           'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                          2)))))
        (PROGN))
      (IF (EXPRESS-OR (EXPRESS-OR (IN
                                   "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.DIV_EXPRESSION"
                                   (BI-TYPEOF ASEADAL.ARG))
                                  (IN
                                   "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.MOD_EXPRESSION"
                                   (BI-TYPEOF ASEADAL.ARG)))
                      (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.POWER_EXPRESSION"
                          (BI-TYPEOF ASEADAL.ARG)))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.SIMPLE_BOOLEAN_EXPRESSION"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:TRUE))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.NOT_EXPRESSION"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              (IS_SQL_MAPPABLE
               (%OPERAND
                ASEADAL.ARG
                'ASEADAL.UNARY_GENERIC_EXPRESSION))))
        (PROGN))
      (IF (EXPRESS-OR (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.ODD_FUNCTION"
                          (BI-TYPEOF ASEADAL.ARG))
                      (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.XOR_EXPRESSION"
                          (BI-TYPEOF ASEADAL.ARG)))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))
        (PROGN))
      (IF (EXPRESS-OR (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.AND_EXPRESSION"
                          (BI-TYPEOF ASEADAL.ARG))
                      (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.OR_EXPRESSION"
                          (BI-TYPEOF ASEADAL.ARG)))
          (PROGN
            (LOOP
              (FOR
               ASEADAL.I
               FROM
               1
               TO
               (BI-SIZEOF (%OPERANDS
                           ASEADAL.ARG
                           'ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION)))
              DO
              (IF (EXPRESS-NOT (IS_SQL_MAPPABLE
                                (EXPRESS-AREF
                                 (%OPERANDS
                                  ASEADAL.ARG
                                  'ASEADAL.MULTIPLE_ARITY_GENERIC_EXPRESSION)
                                 ASEADAL.I)))
                  (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))
                (PROGN)))
            (RETURN-FROM THIS-FUNCTION P11U:TRUE))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.EQUALS_EXPRESSION"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              (EXPRESS-AND (IS_SQL_MAPPABLE
                            (EXPRESS-AREF (%OPERANDS
                                           ASEADAL.ARG
                                           'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                          1))
                           (IS_SQL_MAPPABLE
                            (EXPRESS-AREF (%OPERANDS
                                           ASEADAL.ARG
                                           'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                          2)))))
        (PROGN))
      (IF (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR
                                   (EXPRESS-OR
                                    (EXPRESS-OR
                                     (EXPRESS-OR
                                      (IN
                                       "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.COMPARISON_EQUAL"
                                       (BI-TYPEOF ASEADAL.ARG))
                                      (IN
                                       "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.COMPARISON_GREATER"
                                       (BI-TYPEOF ASEADAL.ARG)))
                                     (IN
                                      "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.COMPARISON_GREATER_EQUAL"
                                      (BI-TYPEOF ASEADAL.ARG)))
                                    (IN
                                     "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.COMPARISON_LESS"
                                     (BI-TYPEOF ASEADAL.ARG)))
                                   (IN
                                    "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.COMPARISON_LESS_EQUAL"
                                    (BI-TYPEOF ASEADAL.ARG)))
                                  (IN
                                   "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.COMPARISON_NOT_EQUAL"
                                   (BI-TYPEOF ASEADAL.ARG)))
                      (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.LIKE_EXPRESSION"
                          (BI-TYPEOF ASEADAL.ARG)))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              (EXPRESS-AND (IS_SQL_MAPPABLE
                            (EXPRESS-AREF (%OPERANDS
                                           ASEADAL.ARG
                                           'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                          1))
                           (IS_SQL_MAPPABLE
                            (EXPRESS-AREF (%OPERANDS
                                           ASEADAL.ARG
                                           'ASEADAL.BINARY_GENERIC_EXPRESSION)
                                          2)))))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.INTERVAL_EXPRESSION"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN
            (RETURN-FROM THIS-FUNCTION
              (EXPRESS-AND (EXPRESS-AND (IS_SQL_MAPPABLE
                                         (%INTERVAL_LOW
                                          ASEADAL.ARG
                                          'ASEADAL.INTERVAL_EXPRESSION))
                                        (IS_SQL_MAPPABLE
                                         (%INTERVAL_HIGH
                                          ASEADAL.ARG
                                          'ASEADAL.INTERVAL_EXPRESSION)))
                           (IS_SQL_MAPPABLE
                            (%INTERVAL_ITEM
                             ASEADAL.ARG
                             'ASEADAL.INTERVAL_EXPRESSION)))))
        (PROGN))
      (IF (EXPRESS-OR (EXPRESS-OR (IN
                                   "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.NUMERIC_DEFINED_FUNCTION"
                                   (BI-TYPEOF ASEADAL.ARG))
                                  (IN
                                   "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.BOOLEAN_DEFINED_FUNCTION"
                                   (BI-TYPEOF ASEADAL.ARG)))
                      (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.STRING_DEFINED_FUNCTION"
                          (BI-TYPEOF ASEADAL.ARG)))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))
        (PROGN))
      (IF (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.SIMPLE_STRING_EXPRESSION"
              (BI-TYPEOF ASEADAL.ARG))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:TRUE))
        (PROGN))
      (IF (EXPRESS-OR (EXPRESS-OR (EXPRESS-OR
                                   (IN
                                    "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.INDEX_EXPRESSION"
                                    (BI-TYPEOF ASEADAL.ARG))
                                   (IN
                                    "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.SUBSTRING_EXPRESSION"
                                    (BI-TYPEOF ASEADAL.ARG)))
                                  (IN
                                   "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.CONCAT_EXPRESSION"
                                   (BI-TYPEOF ASEADAL.ARG)))
                      (IN "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.FORMAT_FUNCTION"
                          (BI-TYPEOF ASEADAL.ARG)))
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))
        (PROGN))
      (RETURN-FROM THIS-FUNCTION P11U:FALSE))))


(DEFUN ASEADAL.IS_ACYCLIC (ASEADAL.ARG)
  (BLOCK THIS-FUNCTION
    (EXPRESS-ASSERT (SAFE-FIND-EU-CLASS 'ASEADAL.GENERIC_EXPRESSION)
                    ASEADAL.ARG)
    (WHEN (OR (EXPO::INDETERMINATE-P ASEADAL.ARG))
      (RETURN-FROM ASEADAL.IS_ACYCLIC :?))
    (LET ()
      (RETURN-FROM THIS-FUNCTION
        (ACYCLIC
         ASEADAL.ARG
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


(DEFUN ASEADAL.VALID_DOCUMENT_PROPERTY_REPRESENTATION (ASEADAL.REP)
  (BLOCK THIS-FUNCTION
    (EXPRESS-ASSERT (SAFE-FIND-EU-CLASS 'ASEADAL.DOCUMENT_PROPERTY_REPRESENTATION)
                    ASEADAL.REP)
    (WHEN (OR (EXPO::INDETERMINATE-P ASEADAL.REP))
      (RETURN-FROM ASEADAL.VALID_DOCUMENT_PROPERTY_REPRESENTATION :?))
    (LET ()
      (LET ((CASE-SELECTOR7505 (%NAME ASEADAL.REP NIL)))
        (COND (((FIND CASE-SELECTOR7505
                      ("document content")
                      :TEST
                      #'EXPRESS-EQUAL)
                (PROGN
                  (RETURN-FROM THIS-FUNCTION
                    (EXPRESS-EQUAL (BI-SIZEOF
                                    (QUERY
                                     (%ITEMS
                                      ASEADAL.REP
                                      'ASEADAL.REPRESENTATION)
                                     #'(LAMBDA
                                        (ASEADAL.ITEMS)
                                        (EXPRESS-NOT
                                         (IN
                                          (%NAME ASEADAL.ITEMS NIL)
                                          (MAKE-INSTANCE
                                           'EXPRESS-BAG
                                           :VALUE
                                           (LIST
                                            "detail level"
                                            "geometry type"
                                            "real world scale")
                                           :TYPE-DESCRIPTOR
                                           (MAKE-INSTANCE
                                            'BAG-TYP
                                            :L-BOUND
                                            0
                                            :U-BOUND
                                            :?
                                            :BASE-TYPE
                                            T)))))))
                                   0))))
               ((FIND CASE-SELECTOR7505
                      ("document creation")
                      :TEST
                      #'EXPRESS-EQUAL)
                (PROGN
                  (IF (EXPRESS-NOT (EXPRESS-EQUAL
                                    (BI-SIZEOF
                                     (QUERY
                                      (%ITEMS
                                       ASEADAL.REP
                                       'ASEADAL.REPRESENTATION)
                                      #'(LAMBDA
                                         (ASEADAL.ITEMS)
                                         (EXPRESS-NOT
                                          (IN
                                           (%NAME ASEADAL.ITEMS NIL)
                                           (MAKE-INSTANCE
                                            'EXPRESS-BAG
                                            :VALUE
                                            (LIST
                                             "creating interface"
                                             "creating system"
                                             "operating system")
                                            :TYPE-DESCRIPTOR
                                            (MAKE-INSTANCE
                                             'BAG-TYP
                                             :L-BOUND
                                             0
                                             :U-BOUND
                                             :?
                                             :BASE-TYPE
                                             T)))))))
                                    0))
                      (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))
                    (PROGN))
                  (IF (EXPRESS-NOT (EXPRESS-EQUAL
                                    (BI-SIZEOF
                                     (QUERY
                                      (%ITEMS
                                       ASEADAL.REP
                                       'ASEADAL.REPRESENTATION)
                                      #'(LAMBDA
                                         (ASEADAL.ITEMS)
                                         (EXPRESS-NOT
                                          (IN
                                           (%NAME ASEADAL.ITEMS NIL)
                                           (MAKE-INSTANCE
                                            'EXPRESS-BAG
                                            :VALUE
                                            (LIST "creating system")
                                            :TYPE-DESCRIPTOR
                                            (MAKE-INSTANCE
                                             'BAG-TYP
                                             :L-BOUND
                                             0
                                             :U-BOUND
                                             :?
                                             :BASE-TYPE
                                             T)))))))
                                    1))
                      (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))
                    (PROGN (RETURN-FROM THIS-FUNCTION P11U:TRUE)))))
               ((FIND CASE-SELECTOR7505
                      ("document format")
                      :TEST
                      #'EXPRESS-EQUAL)
                (PROGN
                  (RETURN-FROM THIS-FUNCTION
                    (EXPRESS-EQUAL (BI-SIZEOF
                                    (QUERY
                                     (%ITEMS
                                      ASEADAL.REP
                                      'ASEADAL.REPRESENTATION)
                                     #'(LAMBDA
                                        (ASEADAL.ITEMS)
                                        (EXPRESS-NOT
                                         (IN
                                          (%NAME ASEADAL.ITEMS NIL)
                                          (MAKE-INSTANCE
                                           'EXPRESS-BAG
                                           :VALUE
                                           (LIST
                                            "character code"
                                            "data format"
                                            "size format"
                                            "size format standard")
                                           :TYPE-DESCRIPTOR
                                           (MAKE-INSTANCE
                                            'BAG-TYP
                                            :L-BOUND
                                            0
                                            :U-BOUND
                                            :?
                                            :BASE-TYPE
                                            T)))))))
                                   0))))
               ((FIND CASE-SELECTOR7505
                      ("document size")
                      :TEST
                      #'EXPRESS-EQUAL)
                (PROGN
                  (RETURN-FROM THIS-FUNCTION
                    (EXPRESS-EQUAL (BI-SIZEOF
                                    (QUERY
                                     (%ITEMS
                                      ASEADAL.REP
                                      'ASEADAL.REPRESENTATION)
                                     #'(LAMBDA
                                        (ASEADAL.ITEMS)
                                        (EXPRESS-NOT
                                         (IN
                                          (%NAME ASEADAL.ITEMS NIL)
                                          (MAKE-INSTANCE
                                           'EXPRESS-BAG
                                           :VALUE
                                           (LIST
                                            "file size"
                                            "page count")
                                           :TYPE-DESCRIPTOR
                                           (MAKE-INSTANCE
                                            'BAG-TYP
                                            :L-BOUND
                                            0
                                            :U-BOUND
                                            :?
                                            :BASE-TYPE
                                            T)))))))
                                   0))))
               ((FIND CASE-SELECTOR7505 (T) :TEST #'EXPRESS-EQUAL)
                (RETURN-FROM THIS-FUNCTION P11U:UNKNOWN))))))))


(DEFUN ASEADAL.CLASSOF (ASEADAL.THE_INSTANCE)
  (BLOCK THIS-FUNCTION
    (EXPRESS-ASSERT T ASEADAL.THE_INSTANCE)
    (WHEN (OR (EXPO::INDETERMINATE-P ASEADAL.THE_INSTANCE))
      (RETURN-FROM ASEADAL.CLASSOF :?))
    (LET ((ASEADAL.CLASSIFICATIONS
           (MAKE-ONE (MAKE-INSTANCE 'BAG-TYP
                                    :L-BOUND
                                    0
                                    :U-BOUND
                                    :?
                                    :BASE-TYPE
                                    (SAFE-FIND-EU-CLASS
                                     'ASEADAL.CLASSIFICATION_ASSIGNMENT))
                     NIL))
          (ASEADAL.RESULT
           (MAKE-ONE (MAKE-INSTANCE 'SET-TYP
                                    :L-BOUND
                                    0
                                    :U-BOUND
                                    :?
                                    :BASE-TYPE
                                    (MAKE-INSTANCE 'STRING-TYP))
                     NIL)))
      (SETF ASEADAL.RESULT (BI-TYPEOF ASEADAL.THE_INSTANCE))
      (SETF ASEADAL.CLASSIFICATIONS
            (BI-USEDIN ASEADAL.THE_INSTANCE
                       "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF.CLASSIFICATION_ASSIGNMENT.ITEMS"))
      (LOOP
        (FOR
         ASEADAL.I
         FROM
         (BI-LOINDEX ASEADAL.CLASSIFICATIONS)
         TO
         (BI-HIINDEX ASEADAL.CLASSIFICATIONS))
        DO
        (SETF ASEADAL.RESULT
              (EXPRESS-PLUS ASEADAL.RESULT
                            (%ID
                             (%ASSIGNED_CLASS
                              (EXPRESS-AREF ASEADAL.CLASSIFICATIONS
                                            ASEADAL.I)
                              NIL)
                             NIL))))
      (RETURN-FROM THIS-FUNCTION ASEADAL.RESULT))))


(DEFUN ASEADAL.TYPES_OF_PRODUCT (ASEADAL.OBJ)
  (BLOCK THIS-FUNCTION
    (EXPRESS-ASSERT (SAFE-FIND-EU-CLASS 'ASEADAL.PRODUCT) ASEADAL.OBJ)
    (WHEN (OR (EXPO::INDETERMINATE-P ASEADAL.OBJ))
      (RETURN-FROM ASEADAL.TYPES_OF_PRODUCT :?))
    (LET ((ASEADAL.I (MAKE-ONE (MAKE-INSTANCE 'INTEGER-TYP) NIL))
          (ASEADAL.CATEGORIES
           (MAKE-ONE (MAKE-INSTANCE 'SET-TYP
                                    :L-BOUND
                                    0
                                    :U-BOUND
                                    :?
                                    :BASE-TYPE
                                    (MAKE-INSTANCE 'STRING-TYP))
                     (MAKE-INSTANCE 'EXPRESS-BAG
                                    :VALUE
                                    (LIST)
                                    :TYPE-DESCRIPTOR
                                    (MAKE-INSTANCE
                                     'BAG-TYP
                                     :L-BOUND
                                     0
                                     :U-BOUND
                                     :?
                                     :BASE-TYPE
                                     T))))
          (ASEADAL.CATEGORY_ASSIGNMENTS
           (MAKE-ONE (MAKE-INSTANCE 'BAG-TYP
                                    :L-BOUND
                                    0
                                    :U-BOUND
                                    :?
                                    :BASE-TYPE
                                    (SAFE-FIND-EU-CLASS
                                     'ASEADAL.PRODUCT_CATEGORY_ASSIGNMENT))
                     NIL)))
      (SETF ASEADAL.CATEGORY_ASSIGNMENTS
            (BI-USEDIN ASEADAL.OBJ
                       (EXPRESS-PLUS "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF."
                                     "PRODUCT_CATEGORY_ASSIGNMENT.PRODUCTS")))
      (LOOP
        (FOR
         ASEADAL.I
         FROM
         (BI-LOINDEX ASEADAL.CATEGORY_ASSIGNMENTS)
         TO
         (BI-HIINDEX ASEADAL.CATEGORY_ASSIGNMENTS)
         BY
         1)
        DO
        (SETF ASEADAL.CATEGORIES
              (EXPRESS-PLUS ASEADAL.CATEGORIES
                            (%NAME
                             (%CATEGORY
                              (EXPRESS-AREF ASEADAL.CATEGORY_ASSIGNMENTS
                                            ASEADAL.I)
                              NIL)
                             NIL))))
      (RETURN-FROM THIS-FUNCTION ASEADAL.CATEGORIES))))


(DEFUN ASEADAL.ACYCLIC_REPRESENTATION_RELATIONSHIP
       (ASEADAL.RELATION ASEADAL.RELATIVES ASEADAL.SPECIFIC_RELATION)
  (BLOCK THIS-FUNCTION
    (EXPRESS-ASSERT (SAFE-FIND-EU-CLASS 'ASEADAL.REPRESENTATION_RELATIONSHIP)
                    ASEADAL.RELATION)
    (EXPRESS-ASSERT (MAKE-INSTANCE 'SET-TYP
                                   :L-BOUND
                                   1
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   (SAFE-FIND-EU-CLASS
                                    'ASEADAL.REPRESENTATION))
                    ASEADAL.RELATIVES)
    (EXPRESS-ASSERT (MAKE-INSTANCE 'STRING-TYP)
                    ASEADAL.SPECIFIC_RELATION)
    (WHEN (OR (EXPO::INDETERMINATE-P ASEADAL.RELATION)
              (EXPO::INDETERMINATE-P ASEADAL.RELATIVES)
              (EXPO::INDETERMINATE-P ASEADAL.SPECIFIC_RELATION))
      (RETURN-FROM ASEADAL.ACYCLIC_REPRESENTATION_RELATIONSHIP :?))
    (LET ((ASEADAL.X
           (MAKE-ONE (MAKE-INSTANCE 'SET-TYP
                                    :L-BOUND
                                    0
                                    :U-BOUND
                                    :?
                                    :BASE-TYPE
                                    (SAFE-FIND-EU-CLASS
                                     'ASEADAL.REPRESENTATION_RELATIONSHIP))
                     NIL)))
      (IF (IN (%REP_1 ASEADAL.RELATION NIL) ASEADAL.RELATIVES)
          (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))
        (PROGN))
      (SETF ASEADAL.X
            (QUERY (BAG_TO_SET
                    (BI-USEDIN (%REP_1 ASEADAL.RELATION NIL)
                               (EXPRESS-PLUS
                                (EXPRESS-PLUS
                                 "AP233_SYSTEM_ENGINEERING_AND_DESIGN_ARM_LF."
                                 "REPRESENTATION_RELATIONSHIP.")
                                "REP_2")))
                   #'(LAMBDA (ASEADAL.R)
                       (IN ASEADAL.SPECIFIC_RELATION
                           (BI-TYPEOF ASEADAL.R)))))
      (LOOP
        (FOR ASEADAL.I FROM 1 TO (BI-HIINDEX ASEADAL.X))
        DO
        (IF (EXPRESS-NOT (ACYCLIC_REPRESENTATION_RELATIONSHIP
                          (EXPRESS-AREF ASEADAL.X ASEADAL.I)
                          (EXPRESS-PLUS ASEADAL.RELATIVES
                                        (%REP_1 ASEADAL.RELATION NIL))
                          ASEADAL.SPECIFIC_RELATION))
            (PROGN (RETURN-FROM THIS-FUNCTION P11U:FALSE))
          (PROGN)))
      (RETURN-FROM THIS-FUNCTION P11U:TRUE))))


(DEFUN ASEADAL.BAG_TO_SET (ASEADAL.THE_BAG)
  (BLOCK THIS-FUNCTION
    (EXPRESS-ASSERT (MAKE-INSTANCE 'BAG-TYP
                                   :L-BOUND
                                   0
                                   :U-BOUND
                                   :?
                                   :BASE-TYPE
                                   T)
                    ASEADAL.THE_BAG)
    (WHEN (OR (EXPO::INDETERMINATE-P ASEADAL.THE_BAG))
      (RETURN-FROM ASEADAL.BAG_TO_SET :?))
    (LET ((ASEADAL.I (MAKE-ONE (MAKE-INSTANCE 'INTEGER-TYP) NIL))
          (ASEADAL.THE_SET
           (MAKE-ONE (MAKE-INSTANCE 'SET-TYP
                                    :L-BOUND
                                    0
                                    :U-BOUND
                                    :?
                                    :BASE-TYPE
                                    T)
                     (MAKE-INSTANCE 'EXPRESS-BAG
                                    :VALUE
                                    (LIST)
                                    :TYPE-DESCRIPTOR
                                    (MAKE-INSTANCE
                                     'BAG-TYP
                                     :L-BOUND
                                     0
                                     :U-BOUND
                                     :?
                                     :BASE-TYPE
                                     T)))))
      (IF (EXPRESS-> (BI-SIZEOF ASEADAL.THE_BAG) 0)
          (PROGN
            (LOOP
              (FOR ASEADAL.I FROM 1 TO (BI-HIINDEX ASEADAL.THE_BAG))
              DO
              (SETF ASEADAL.THE_SET
                    (EXPRESS-PLUS ASEADAL.THE_SET
                                  (EXPRESS-AREF
                                   ASEADAL.THE_BAG
                                   ASEADAL.I)))))
        (PROGN))
      (RETURN-FROM THIS-FUNCTION ASEADAL.THE_SET))))



;;; END OF OUTPUT