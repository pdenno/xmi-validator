;;; Automatically created by pop-gen at 2012-11-09 17:19:33.
;;; Source file is NIL

(in-package :UPDM21)



(def-meta-enum |ActualPropertySetKind| (:model :UPDM21 :superclasses NIL 
   :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Measurements-ActualPropertySetKind")
   (|Actual| |Required| |Estimate|)
   "Possible kinds of ActualMeasurementSet intention, derived from DoDAF.")



(def-meta-enum |ArchitectureFrameworkKind| (:model :UPDM21 :superclasses NIL 
   :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Views-ArchitectureFrameworkKind")
   (|DoDAF| MODAF NAF)
   "Enumeration of the possible types of architectural framework that the architecture
    is being developed for.")



(def-meta-enum |DevelopmentStatus| (:model :UPDM21 :superclasses NIL 
   :xmi-id "UPDM-UPDM_L1-UPDM_L0-SwAF-DevelopmentStatus")
   (|Identified| |Draft| |Proposal| |Verified| |Rejected| |Obsolete|)
   "Enumeration of development statuses, used to support the status tag of
    the DesignRule stereotype.")



(def-meta-enum |ExchangeElementKind| (:model :UPDM21 :superclasses NIL 
   :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Structure-ExchangeElementKind")
   (|InformationElement| |DataElement|)
   "Enumeration of the types of element being exchanged on an information exchange.")



(def-meta-enum |GeoPoliticalExtentKind| (:model :UPDM21 :superclasses NIL 
   :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AllElements-Environment-GeoPoliticalExtentKind")
   (|Other| |GeoFeature| |RegionOfCountry| |Country| |RegionOfWorld| |Facility| |Site| |Installation|)
   "Enumeration of geopolitical extent kinds, used to support the geoPoliticalExtentKind
    tag of the geoPoliticalExtent stereotype, derived from DoDAF.")



(def-meta-enum |GeoPoliticalExtentTypeKind| (:model :UPDM21 :superclasses NIL 
   :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AllElements-Environment-GeoPoliticalExtentTypeKind")
   (|GeoFeatureType| |RegionOfCountryType| |CountryType| |RegionOfWorldType| |FacilityType| |SiteType| |InstallationType| |OtherType|)
   "Enumeration of kinds of geopolitical extent type, derived from DoDAF, used
    to support the geoPoliticalExtentTypeKind tag of the GeopoliticalExtentType
    stereotype..")



(def-meta-enum |InformationKind| (:model :UPDM21 :superclasses NIL 
   :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AllElements-InformationKind")
   (|Information| |DomainInformation| |PositionReferenceFrame| |PedigreeInformation| |Data|)
   "Enumeration of kinds of information, derived from MODAF and DoDAF, used
    to support the InformationKind tag of the Information stereotype.")



(def-meta-enum |LocationKind| (:model :UPDM21 :superclasses NIL 
   :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Environment-LocationKind")
   (|SolidVolume| |Surface| |Line| |Point| |GeoStationaryPoint| |PlanarSurface| |PolygonArea| |RectangularArea| |ElipticalArea| |CircularArea| |Other|)
   "Enumeration of location kinds, derived from DoDAF, used to support the
    locationKind tag of the LocationKind stereotype.")



(def-meta-enum |LocationTypeKind| (:model :UPDM21 :superclasses NIL 
   :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Environment-LocationTypeKind")
   (|OtherType| |SolidVolumeType| |SurfaceType| |LineType| |PointType| |GeoStationaryPointType| |PlanarSurfaceType| |PolygonAreaType| |RectangularAreaType| |ElipticalAreaType| |CircularAreaType|)
   "Enumeration of kinds of location types, derived from DoDAF, used to support
    the LocationTypeKind tag of the LocationTypeKind stereotype.")



(def-meta-enum |OperationalExchangeKind| (:model :UPDM21 :superclasses NIL 
   :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Flows-OperationalExchangeKind")
   (|MaterielExchange| |OrganizationalExchange| |EnergyExchange| |InformationExchange| |ConfigurationExchange| |GeoPoliticalExtentExchange|)
   "Enumeration of operational exchange kinds, used to support the exchangeKind
    tag of the OperationalExchange stereotype.")



(def-meta-enum |RoleKind| (:model :UPDM21 :superclasses NIL 
   :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Structure-RoleKind")
   (|Part| |Component| |Used Configuration| |Human Resource| |Platform| |System| |Sub Organization| |Post Role| |Responsibility Role| |Service Access Role| |Equipment| |Sub System Part| |Hosted Software| |Other|)
   "Enumeration of the roles that a ResourceRole may play in the context of
    a CapabilityConfiguration or System, derived from MODAF, used to support
    the MODAFRoleKind tag of a ResourceRole")



(def-meta-enum |RuleKind| (:model :UPDM21 :superclasses NIL 
   :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Structure-RuleKind")
   (|StructuralAssertion| |ActionAssertion| |Derivation| |Agreement| |Constraint| |Guidance| |SecurityPolicy|)
   "Enumeration of possible kinds for constraints.")



;;; =========================================================
;;; ====================== Activity
;;; =========================================================
(def-meta-stereotype |Activity| 
   (:model :UPDM21 :superclasses (#|pod |UPDMElement||# |Desirer|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Behavior-Activity")
 "UPDM: An abstract element that represents a behavior (i.e. a Function or
  OperationalActivity) that can be performed by a Performer. MODAF: NA DoDAF:
  Work, not specific to a single organization, weapon system or individual
  that transforms inputs (Resources) into outputs (Resources) or changes
  their state.."
  ((|activityPerformableUnderCondition| :range |Environment| :multiplicity (0 -1)
    :documentation
     "The environment under which an activity is performed.")))


;;; =========================================================
;;; ====================== ActivityPartOfCapability
;;; =========================================================
(def-meta-stereotype |ActivityPartOfCapability| 
   (:model :UPDM21 :superclasses (|MapsToCapability|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |StrategicElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-StrategicElements-ActivityPartOfCapability")
 "UPDM: As in DoDAF DoDAF: A disposition to manifest an Activity. An Activity
  to be performed to achieve a desired effect under specified [performance]
  standards and conditions through combinations of ways and means."
  ())


;;; =========================================================
;;; ====================== ActivityPartOfProject
;;; =========================================================
(def-meta-stereotype |ActivityPartOfProject| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |AcquisitionElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AcquisitionElements-ActivityPartOfProject")
 "UPDM: As in DoDAF DoDAF:A wholePart relationship between a Project and
  an Activity (Task) that is part of the Project."
  ())


;;; =========================================================
;;; ====================== ActivityPerformedByPerformer
;;; =========================================================
(def-meta-stereotype |ActivityPerformedByPerformer| 
   (:model :UPDM21 :superclasses (|IsCapableOfPerforming|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |AllElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AllElements-Behavior-ActivityPerformedByPerformer")
 "UPDM: Links a Performer to the behavior that it can perform MODAF: NA DoDAF:An
  overlap of an Activity with a Resource, in particular a consuming or producing
  Activity that expresses an input, output, consumption, or production Activity
  of the Resourcee"
  ())


;;; =========================================================
;;; ====================== ActivitySubject
;;; =========================================================
(def-meta-stereotype |ActivitySubject| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |OperationalElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-OperationalElements-Behavior-ActivitySubject")
 "MODAF: Anything that is acted upon by an OperationalActivity DoDAF: NA"
  ((|actsUpon| :range |OperationalActivity| :multiplicity (0 -1) :is-derived-p T
    :opposite (|OperationalActivity| |subject|)
    :documentation
     "OperationalActivities that this ActivitySubject is acting upon.")))


;;; =========================================================
;;; ====================== ActualLocation
;;; =========================================================
(def-meta-stereotype |ActualLocation| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|InstanceSpecification|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Environment|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Environment-ActualLocation")
 "MODAF: A PhysicalLocation (MODAF::ActualLocation) is a location anywhere
  on the earth. The means of describing the location is a string (locationDescription).
  The information contained in that string is governed by the taxonomy reference
  - e.g. if the PhysicalLocation is a    GPS reference   , the string will
  contain the GPS coordinates. NOTE: this has been extended in UPDM to include
  non-earth locations. DoDAF: All subtypes of << IndividualType>> Location,
  such as Facility, Site, etc."
  ((|address| :range |String| :multiplicity (0 1)
    :documentation
     "String describing the address of the actual location, i.e. \"1600 Pennsylvania
      avenue\" describes the address of the actual location \"The White House\"")
   (|customKind| :range |String| :multiplicity (0 1)
    :documentation
     "String describing a location kind that is not on the enumerated list")
   (|locationKind| :range |LocationKind| :multiplicity (1 1) :default :other
    :documentation
     "Enumerated value describing the kind of location.")
   (|locationNamedByAddress| :range |Boolean| :multiplicity (1 1) :default :false
    :documentation
     "Boolean, by default = false, that indicates if the location address is
      embedded in the location name.")))


;;; =========================================================
;;; ====================== ActualMeasurement
;;; =========================================================
(def-meta-stereotype |ActualMeasurement| 
   (:model :UPDM21 :superclasses (|ActualProperty|) :extends (UML23:|Slot|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Measurements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Measurements-ActualMeasurement")
 "UPDM: An actual value of the Measurement. MODAF: NA DoDAF: NAA"
  ())


;;; =========================================================
;;; ====================== ActualOrganization
;;; =========================================================
(def-meta-stereotype |ActualOrganization| 
   (:model :UPDM21 :superclasses (|ActualOrganizationalResource|) :extends (UML23:|InstanceSpecification|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure| |Organizational| |Actual|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Organizational-Actual-ActualOrganization")
 "MODAF: An actual specific organisation, an instance of an organisation
  class - e.g. \"The US Department of Defense\" DoDAF: [DoDAF::Organization]:
  A specific real-world assemblage of people and other resources organized
  for an on-going purpose."
  ((|code/symbol| :range |String| :multiplicity (0 1)
    :documentation
     "Army, Navy, Air Force, Marine Corps, Joint")
   (|ratifiedStandards| :range |Standard| :multiplicity (0 -1)
    :opposite (|Standard| |ratifiedBy|)
    :documentation
     "Standards that were ratified by this ActualOrganization.")
   (|serviceType| :range |String| :multiplicity (0 1)
    :documentation
     "Service office code or symbol")))


;;; =========================================================
;;; ====================== ActualOrganizationRelationship
;;; =========================================================
(def-meta-stereotype |ActualOrganizationRelationship| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|InformationFlow|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure| |Organizational| |Actual|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Organizational-Actual-ActualOrganizationRelationship")
 "UPDM: A relationship between two ActualOrganizationResources. MODAF: A
  relationship between two actual specific organisations or parts of an organisation.
  DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== ActualOrganizationRole
;;; =========================================================
(def-meta-stereotype |ActualOrganizationRole| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Slot|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure| |Organizational| |Actual|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Organizational-Actual-ActualOrganizationRole")
 "UPDM: Relates an actual specific organization to an actual specific organizational
  resource that fulfils a role in that organization. MODAF: NA DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== ActualOrganizationalResource
;;; =========================================================
(def-meta-stereotype |ActualOrganizationalResource| 
   (:model :UPDM21 :superclasses (|LocationHolder| |CompetenceProvider|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure| |Organizational| |Actual|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Organizational-Actual-ActualOrganizationalResource")
 "UPDM: An ActualOrganization or an ActualPost. MODAF: An instance of either
  an actual organisation or an actual post. DoDAF: A specific real-world
  assemblage of people and other resources organized for an on-going purpose."
  ())


;;; =========================================================
;;; ====================== ActualPerson
;;; =========================================================
(def-meta-stereotype |ActualPerson| 
   (:model :UPDM21 :superclasses (|LocationHolder| |CompetenceProvider|) :extends (UML23:|InstanceSpecification|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure| |Organizational| |Actual|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Organizational-Actual-ActualPerson")
 "UPDM: Named individual that fulfills an ActualPost. An individual human
  being (vs Person which is a type), that is recognized by law as the subject
  of rights and duties. MODAF: NA DoDAF: An individual person"
  ())


;;; =========================================================
;;; ====================== ActualPost
;;; =========================================================
(def-meta-stereotype |ActualPost| 
   (:model :UPDM21 :superclasses (|ActualOrganizationalResource|) :extends (UML23:|InstanceSpecification|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure| |Organizational| |Actual|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Organizational-Actual-ActualPost")
 "UPDM: An actual, specific post, an instance of a PostType class - e.g.
  \"President of the United States of America.\" MODAF: NA DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== ActualProject
;;; =========================================================
(def-meta-stereotype |ActualProject| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|InstanceSpecification|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AcquisitionElements| |Milestone|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AcquisitionElements-Milestone-ActualProject")
 "MODAF: (MODAF::Project): A time-limited endeavour to create a specific
  set of products or services. DoDAF: (DoDAF::Project): A temporary endeavor
  undertaken to create Resources or Desired Effects."
  ((|endDate| :range |ISO8601DateTime| :multiplicity (0 1)
    :documentation
     "End time for this Project.")
   (|ownedMilestones| :range |ActualProjectMilestone| :multiplicity (0 -1) :is-derived-p T
    :documentation
     "Milestones associates with this project.")
   (|part| :range |ActualProject| :multiplicity (0 -1)
    :opposite (|ActualProject| |whole|)
    :documentation
     "Sub-projects.")
   (|startDate| :range |ISO8601DateTime| :multiplicity (0 1)
    :documentation
     "Start time for this Project.")
   (|whole| :range |ActualProject| :multiplicity (0 1)
    :opposite (|ActualProject| |part|)
    :documentation
     "Parent project.")))


;;; =========================================================
;;; ====================== ActualProjectMilestone
;;; =========================================================
(def-meta-stereotype |ActualProjectMilestone| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|InstanceSpecification|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AcquisitionElements| |Milestones|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AcquisitionElements-Milestones-ActualProjectMilestone")
 "MODAF: (ProjectMilestone): An event in a ActualProject (MODAF::Project)
  by which progress is measured. Note: in the case of an acquisition project,
  there are two key types of milestones which shall be represented using
  subtypes - IncrementMilestone (MODAF::CapabilityIncrement) and OutOfServiceMilestone
  (MODAF::OutOfService) DoDAF: NAA"
  ((|date| :range |ISO8601DateTime| :multiplicity (0 1)
    :documentation
     "Defines time for this ProjectMilestone.")
   (|description| :range |String| :multiplicity (0 1)
    :documentation
     "Description of the ActualProjectMilestone.")
   (|resource| :range |SystemResource| :multiplicity (0 -1)
    :opposite (|SystemResource| |milestone|)
    :documentation
     "Affected resource.")))


;;; =========================================================
;;; ====================== ActualProjectMilestoneRole
;;; =========================================================
(def-meta-stereotype |ActualProjectMilestoneRole| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Slot|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AcquisitionElements| |Milestone|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AcquisitionElements-Milestone-ActualProjectMilestoneRole")
 "UPDM: An instance of a ProjectMilestoneRole in the context of an ActualProject."
  ())


;;; =========================================================
;;; ====================== ActualProperty
;;; =========================================================
(def-meta-stereotype |ActualProperty| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Slot|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Measurements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Measurements-ActualProperty")
 "UPDM:The value of a Measure. MODAF:NA DoDAF:NA"
  ((|endDate| :range |ISO8601DateTime| :multiplicity (0 1)
    :documentation
     "Applicable end date of the measured property.")
   (|intention| :range |ActualPropertySetKind| :multiplicity (1 1) :default :required
    :documentation
     "Possible kinds of ActualMeasurementSet intention.")
   (|startDate| :range |ISO8601DateTime| :multiplicity (0 1)
    :documentation
     "Applicable end date of the measured property.")))


;;; =========================================================
;;; ====================== ActualPropertySet
;;; =========================================================
(def-meta-stereotype |ActualPropertySet| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|InstanceSpecification|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Measurements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Measurements-ActualPropertySet")
 "UPDM: A set or collection of ActualMeasurement(s). A date of measurement
  can be set. An intent of ActualMeasurementSet can be    Result   ,    Required
    , or    Estimate    MODAF: NA DoDAF: NA"
  ((|appliesTo| :range |UPDMElement| :multiplicity (0 1)
    :opposite (|UPDMElement| |actualPropertySet|)
    :documentation
     "Measured element.")))


;;; =========================================================
;;; ====================== Alias
;;; =========================================================
(def-meta-stereotype |Alias| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Comment|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AllElements| |Ontology|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AllElements-Ontology-Alias")
 "A UPDM Artifact used to define an alternative name for an element as used
  by DoDAF or MODAF."
  ((|nameOwner| :range |String| :multiplicity (0 -1)
    :documentation
     "The person or organization that uses this alternative name.")))


;;; =========================================================
;;; ====================== ArbitraryConnector
;;; =========================================================
(def-meta-stereotype |ArbitraryConnector| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-ArbitraryConnector")
 "UPDM: Represents a visual indication of a connection used in high level
  operational concept diagrams. The connections are purely visual and cannot
  be related to any architectural semantics. MODAF: NA DoDAF:NA"
  ())


;;; =========================================================
;;; ====================== ArchitecturalDescription
;;; =========================================================
(def-meta-stereotype |ArchitecturalDescription| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Package|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Views|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Views-ArchitecturalDescription")
 "MODAF: A specification of a system of systems at a technical level which
  also provides the business context for the system of systems. DoDAF: Information
  describing an architecture such as an OV-5 Activity Model document."
  ((|approvalAuthority| :range |String| :multiplicity (0 -1)
    :documentation
     "References the actual organizational resource that has the authority to
      approve the architectural description.")
   (|architect| :range |String| :multiplicity (0 -1)
    :documentation
     "The name of the architect responsible for the ArchitecturalDescription.")
   (|architectureFramework| :range |ArchitectureFrameworkKind| :multiplicity (1 1)
    :documentation
     "Indicates the type of framework used.")
   (|assumptionAndConstraint| :range |String| :multiplicity (0 -1)
    :documentation
     "Any assumptions, constraints, and limitations contained in the ArchitecturalDescription,
      including those affecting deployment, communications performance, information
      assurance environments, etc.")
   (|creatingOrganization| :range |String| :multiplicity (0 -1)
    :documentation
     "Describes the ActualOrganizationalResource creating the ArchitecturalDescription.")
   (|dateCompleted| :range |String| :multiplicity (0 1)
    :documentation
     "Date that the Architectural Description was completed.")
   (|purpose| :range |String| :multiplicity (0 -1)
    :documentation
     "Explains the need for the Architecture, what it will demonstrate, the types
      of analyses that will be applied to it, who is expected to perform the
      analyses, what decisions are expected to be made on the basis of each form
      of analysis, who is expected to make those decisions, and what actions
      are expected to result.")
   (|recommendations| :range |String| :multiplicity (0 -1)
    :documentation
     "States the recommendations that have been developed based on the architecture
      effort. Examples include recommended system implementations, and opportunities
      for technology insertion.")
   (|summaryOfFindings| :range |String| :multiplicity (0 -1)
    :documentation
     "Summarizes the findings that have been developed so far. This may be updated
      several times during the development of the ArchitecturalDescription.")
   (|toBe| :range |Boolean| :multiplicity (1 1) :default :true
    :documentation
     "Indicates whether the ArchitecturalDescription is existing or future.")
   (|toolsUsed| :range |String| :multiplicity (0 -1)
    :documentation
     "Identifies any tools used to develop the ArchitecturalDescription as well
      as file names and formats if appropriate.")
   (|viewpoint| :range |Viewpoint| :multiplicity (0 -1)
    :documentation
     "Indicates which viewpoints are used in the architecture.")
   (|views| :range |View| :multiplicity (0 -1)
    :documentation
     "Indicates which views are used in the architecture.")))


;;; =========================================================
;;; ====================== ArchitecturalReference
;;; =========================================================
(def-meta-stereotype |ArchitecturalReference| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Views|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Views-ArchitecturalReference")
 "MODAF: Asserts that one architectural description (referrer) refers to
  another (referred). DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== ArchitectureMetadata
;;; =========================================================
(def-meta-stereotype |ArchitectureMetadata| 
   (:model :UPDM21 :superclasses (|Metadata|) :extends (UML23:|Comment|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Views|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Views-ArchitectureMetadata")
 "UPDM: Information on ArchitecturalDescription. It states things like what
  methodology was used, notation, etc. MODAF: A Metadata element that applies
  to the whole architecture. DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== AssociationOfInformation
;;; =========================================================
(def-meta-stereotype |AssociationOfInformation| 
   (:model :UPDM21 :superclasses (|EntityRelationship|) :extends (UML23:|Association|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |TechnicalStandardsElements| |Data|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-TechnicalStandardsElements-Data-AssociationOfInformation")
 "MODAF: Asserts that there is a relationship between two entities (Entity
  Relationship). DoDAF: A relationship or association between two elements
  of information."
  ())


;;; =========================================================
;;; ====================== AsynchronousMessage
;;; =========================================================
(def-meta-stereotype |AsynchronousMessage| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Signal|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |ServiceElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Structure-AsynchronousMessage")
 "MODAF:A signal which is transmitted irregularly with respect to time. DoDAF:
  NA"
  ())


;;; =========================================================
;;; ====================== Capability
;;; =========================================================
(def-meta-stereotype |Capability| 
   (:model :UPDM21 :superclasses (SOAML:|Capability| |PropertySet| |Desirer|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |StrategicElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-StrategicElements-Structure-Capability")
 "MODAF: A high level specification of the enterprise's ability. DoDAF: The
  ability to achieve a desired effect under specified [performance] standards
  and conditions through combinations of ways and means [activities and resources]
  to perform a set of activities."
  ())


;;; =========================================================
;;; ====================== CapabilityConfiguration
;;; =========================================================
(def-meta-stereotype |CapabilityConfiguration| 
   (:model :UPDM21 :superclasses (|PhysicalArchitecture|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Structure-CapabilityConfiguration")
 "MODAF: A composite structure representing the physical and human resources
  (and their interactions) in an enterprise.--A CapabilityConfiguration is
  a set of artefacts or an organisation configured to provide a capability,
  and should be guided by [doctrine] which may take the form of Standard
  or OperationalConstraint stereotypes. DoDAF: Any entity - human, automated,
  or any aggregation of human and/or automated - that performs an activity
  and provides a capability (Performer)."
  ((|doctrine| :range UML23:|Constraint| :multiplicity (0 -1)
    :documentation
     "Represents the doctrinal line of development of the capability.")))


;;; =========================================================
;;; ====================== CapabilityOfPerformer
;;; =========================================================
(def-meta-stereotype |CapabilityOfPerformer| 
   (:model :UPDM21 :superclasses (|Exhibits|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |StrategicElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-StrategicElements-CapabilityOfPerformer")
 "UPDM:A couple that represents the capability that a resource, node or enterprise
  phase exhibits (Exhibits). MODAF:An assertion that a Node is required to
  have a Capability (Capability for node). DoDAF: A couple that represents
  the capability that a performer has."
  ())


;;; =========================================================
;;; ====================== CapabilityProperty
;;; =========================================================
(def-meta-stereotype |CapabilityProperty| 
   (:model :UPDM21 :superclasses (|Property|) :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |StrategicElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-StrategicElements-Structure-CapabilityProperty")
 "UPDM: A property of a capability. MODAF: NA DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== CapableElement
;;; =========================================================
(def-meta-stereotype |CapableElement| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Behavior-CapableElement")
 "UPDM An abstract element that represents a structural element that can
  perform behaviors (i.e. PerformedActivity). DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== Climate
;;; =========================================================
(def-meta-stereotype |Climate| 
   (:model :UPDM21 :superclasses (|Environment|) :extends (UML23:|DataType|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AllElements| |Environment|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AllElements-Environment-Climate")
 "MODAF:A type of weather condition, or combination of weather conditions
  (e.g. high temperature & dry). DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== Command
;;; =========================================================
(def-meta-stereotype |Command| 
   (:model :UPDM21 :superclasses (|ResourceInteraction|) :extends (UML23:|InformationFlow|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Flows|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Flows-Command")
 "MODAF: Asserts that one OrganisationalResource (source) commands another
  (target) DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== Competence
;;; =========================================================
(def-meta-stereotype |Competence| 
   (:model :UPDM21 :superclasses (|SubjectOfForecast| |PropertySet|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Competence")
 "MODAF: A specific set of abilities defined by knowledge, skills and attitude.
  DoDAF: (DoDAF::Skill): The ability, coming from one's knowledge, practice,
  aptitude, etc., to do something well."
  ())


;;; =========================================================
;;; ====================== CompetenceProvider
;;; =========================================================
(def-meta-stereotype |CompetenceProvider| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure| |Organizational| |Actual|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Organizational-Actual-CompetenceProvider")
 "UPDM:Abstract element used to group ActualPersons and ActualOrganisationalResources.
  MODAF:NA DoDAF:NA"
  ())


;;; =========================================================
;;; ====================== CompetenceRequirer
;;; =========================================================
(def-meta-stereotype |CompetenceRequirer| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure| |Organizational| |Typical|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Organizational-Typical-CompetenceRequirer")
 "UPDM:Abstract element used to group Organizations, Post and Responsibilities.
  MODAF:NA DoDAF:NA"
  ())


;;; =========================================================
;;; ====================== ConceptItem
;;; =========================================================
(def-meta-stereotype |ConceptItem| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-ConceptItem")
 "UPDM: Abstract, an item which may feature in a high level operational concept.
  DoDAF:NA"
  ())


;;; =========================================================
;;; ====================== ConceptRole
;;; =========================================================
(def-meta-stereotype |ConceptRole| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-ConceptRole")
 "UPDM: Usage of a ConcepItem in the context of a HighLevelOperationalConcept
  MODAF:-ItemInConcept, A relationship which asserts that a ConceptItem forms
  part of the high level operational concept DoDAF: N/AA"
  ())


;;; =========================================================
;;; ====================== Condition
;;; =========================================================
(def-meta-stereotype |Condition| 
   (:model :UPDM21 :superclasses (|Environment|) :extends (UML23:|DataType|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |AllElements| |Environment|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AllElements-Environment-Condition")
 "MODAF: A definition of the conditions in which something exists or functions.
  An Environment may be specified in terms of LocationType (e.g. terrain),
  Climate (e.g. tropical), and LightCondition (e.g. dark, light, dusk, etc.)
  DoDAF: An object that encompasses meteorological, geographic, and control
  features mission significance.."
  ((|conditionKind| :range |String| :multiplicity (0 1)
    :documentation
     "String defining the type of condition being set.")))


;;; =========================================================
;;; ====================== ConditionProperty
;;; =========================================================
(def-meta-stereotype |ConditionProperty| 
   (:model :UPDM21 :superclasses (|EnvironmentProperty|) :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |AllElements| |Environment|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AllElements-Environment-ConditionProperty")
 "MODAF: EnvironmentalProperty: Asserts that an Environment has one or more
  properties. These may be Climate, LocationType, or LightCondition. DoDAF:
  NA"
  ())


;;; =========================================================
;;; ====================== ConditionType
;;; =========================================================
(def-meta-stereotype |ConditionType| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Environment|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Environment-ConditionType")
 "Abstract element indicating what an EnvironmentProperty can be typed by."
  ())


;;; =========================================================
;;; ====================== Contract
;;; =========================================================
(def-meta-stereotype |Contract| 
   (:model :UPDM21 :superclasses NIL :extends (UML23:|InformationFlow|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 SOPES) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-SOPES-Contract")
 "A specialization of an    OperationalExchange    a    Contract    specifies
  an agreement between two or more parties to exchange information. The Contract
  forms an ontological commitment between parties in a community of interest
  (CoI) or Community of Practice (CoP). The contract is also used to realize
  the information exchange requirements of either a needline or a community
  of interest.est."
  ())


;;; =========================================================
;;; ====================== Control
;;; =========================================================
(def-meta-stereotype |Control| 
   (:model :UPDM21 :superclasses (|ResourceInteraction|) :extends (UML23:|InformationFlow|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |OperationalElements| |Flows|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-OperationalElements-Flows-Control")
 "MODAF: A type of ResourceInteraction where one Resource (source) controls
  another (target). --Examples - the driver of a tank, one organisation having
  operational control of another, a fire control system controlling a weapons
  system. DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== DataModel
;;; =========================================================
(def-meta-stereotype |DataModel| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Data|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Data-DataModel")
 "MODAF: A structural specification of data, showing classifications of data
  elements and relationships between them. DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== Definition
;;; =========================================================
(def-meta-stereotype |Definition| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Comment|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AllElements| |Ontology|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AllElements-Ontology-Definition")
 "MODAF: A definition of an element in the architecture. DoDAF:NAA"
  ((|author| :range |String| :multiplicity (0 -1)
    :documentation
     "The original or current person (architect) responsible for the element.")))


;;; =========================================================
;;; ====================== DeployedMilestone
;;; =========================================================
(def-meta-stereotype |DeployedMilestone| 
   (:model :UPDM21 :superclasses (|ActualProjectMilestone|) :extends (UML23:|InstanceSpecification|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |StrategicElements| |Milestones|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-StrategicElements-Milestones-DeployedMilestone")
 "MODAF: Asserts that an ActualOrganisationResource started to use, or is
  slated to start using a CapabilityConfiguration from a specific point in
  time. --This is used to describe capabilities going into service with specific
  organisations or posts. DoDAF: NA"
  ((|usedBy| :range |ActualOrganizationalResource| :multiplicity (0 -1)
    :documentation
     "ActualOrganizationalResources using CapabilityConfiguration deployed at
      this Milestone.")))


;;; =========================================================
;;; ====================== DesignRule
;;; =========================================================
(def-meta-stereotype |DesignRule| 
   (:model :UPDM21 :superclasses (|Rule|) :extends (UML23:|Constraint|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |SwAF|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-SwAF-DesignRule")
 "A design rule is a solution to a problem in a specific context with the
  following characteristics: -belongs to a problem domain, -packages knowledge
  in a reusable form, -standardize solutions to design problems within NBD,
  -gives value to the re-user."
  ((|analysis| :range |String| :multiplicity (1 1))
   (|consequence| :range |String| :multiplicity (1 1))
   (|context| :range |String| :multiplicity (1 1))
   (|date| :range |ISO8601DateTime| :multiplicity (1 1))
   (|identifier| :range |String| :multiplicity (1 1))
   (|metaData| :range |String| :multiplicity (1 1))
   (|principles| :range |String| :multiplicity (0 -1))
   (|problem| :range |String| :multiplicity (0 -1))
   (|solution| :range |UPDMElement| :multiplicity (1 -1))
   (|status| :range |DevelopmentStatus| :multiplicity (1 1))
   (|version| :range |String| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== DesiredEffect
;;; =========================================================
(def-meta-stereotype |DesiredEffect| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |StrategicElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-StrategicElements-DesiredEffect")
 "MODAF:NA DoDAF:A desired state of a Resource."
  ((|providedMOE| :range |ActualPropertySet| :multiplicity (0 1)
    :documentation
     "Measures of the DesiredEffect.")))


;;; =========================================================
;;; ====================== DesiredState
;;; =========================================================
(def-meta-stereotype |DesiredState| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |StrategicElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-StrategicElements-Structure-DesiredState")
 "UPDM:Abstract element used to group Operational and Resource states ."
  ())


;;; =========================================================
;;; ====================== Desirer
;;; =========================================================
(def-meta-stereotype |Desirer| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |StrategicElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-StrategicElements-Structure-Desirer")
 "UPDM:Abstract element used to group UPDM elements that might desire a particular
  effect."
  ())


;;; =========================================================
;;; ====================== Details
;;; =========================================================
(def-meta-stereotype |Details| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |TechnicalStandardsElements| |Data|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-TechnicalStandardsElements-Data-Details")
 "UPDM: A tuple used to provide the relationship between an entityItem and
  an ExchangeElement."
  ())


;;; =========================================================
;;; ====================== EnduringTask
;;; =========================================================
(def-meta-stereotype |EnduringTask| 
   (:model :UPDM21 :superclasses (|Process|) :extends (UML23:|Activity|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |StrategicElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-StrategicElements-Structure-EnduringTask")
 "MODAF: A type of behaviour recognised by an enterprise as being essential
  to achieving its goals - i.e. a strategic specification of what the enterprise
  does. DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== Energy
;;; =========================================================
(def-meta-stereotype |Energy| 
   (:model :UPDM21 :superclasses (|ResourceInteractionItem| |OperationalExchangeItem|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |OperationalElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-OperationalElements-Structure-Energy")
 "UPDM: Energy to be exchanged between Nodes. MODAF: A unit of energy that
  flows along an EnergyFLow or OperationalActivityEnergyFlow DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== EnterpriseGoal
;;; =========================================================
(def-meta-stereotype |EnterpriseGoal| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |StrategicElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-StrategicElements-Structure-EnterpriseGoal")
 "MODAF: A specific, required objective of the enterprise that the architecture
  represents. DoDAF: NAA"
  ((|benefits| :range |String| :multiplicity (0 -1) :is-ordered-p T
    :documentation
     "A description of the usefulness of the Goal in terms of why the state or
      condition of the Enterprise is worth attaining.")
   (|enterprisePhase| :range |EnterprisePhase| :multiplicity (0 -1)
    :opposite (|EnterprisePhase| |goal|)
    :documentation
     "Phase of the goal.")))


;;; =========================================================
;;; ====================== EnterprisePhase
;;; =========================================================
(def-meta-stereotype |EnterprisePhase| 
   (:model :UPDM21 :superclasses (|CapableElement|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |StrategicElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-StrategicElements-Structure-EnterprisePhase")
 "MODAF: A specific, required objective of the enterprise that the architecture
  represents. DoDAF: NA"
  ((|desribedBy| :range |ArchitecturalDescription| :multiplicity (0 -1) :soft-opposite (|ArchitecturalDescription| |describes|)
    :documentation
     "The EnterprisePhase described by an ArchitecturalDescription.")
   (|endDate| :range |ISO8601DateTime| :multiplicity (0 1)
    :documentation
     "The time and date at which the Phase ends.")
   (|fulfills| :range |Mission| :multiplicity (0 -1)
    :documentation
     "EnterprisePhases associated with a Mission.")
   (|goal| :range |EnterpriseGoal| :multiplicity (0 -1)
    :opposite (|EnterpriseGoal| |enterprisePhase|)
    :documentation
     "The Goal towards which this Phase is directed and is in support of.")
   (|startDate| :range |ISO8601DateTime| :multiplicity (0 1)
    :documentation
     "The time and date at which the Phase starts.")
   (|statementTask| :range |EnduringTask| :multiplicity (0 -1)
    :documentation
     "Collection of statement tasks.")
   (|vision| :range |EnterpriseVision| :multiplicity (0 1)
    :opposite (|EnterpriseVision| |enterprisePhase|)
    :documentation
     "The Vision towards which this Phase is directed and is in support of.")))


;;; =========================================================
;;; ====================== EnterpriseVision
;;; =========================================================
(def-meta-stereotype |EnterpriseVision| 
   (:model :UPDM21 :superclasses (|Desirer|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |StrategicElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-StrategicElements-Structure-EnterpriseVision")
 "MODAF: The overall aims of an enterprise over a given period of time. DoDAF:
  (DoDAF::Vision): An end that describes the future state of the enterprise,
  without regard to how it is to be achieved; a mental image of what the
  future will or could be like."
  ((|enterprisePhase| :range |EnterprisePhase| :multiplicity (0 1)
    :opposite (|EnterprisePhase| |vision|)
    :documentation
     "The phase which temporally locates the Vision.")
   (|statement| :range |VisionStatement| :multiplicity (0 -1)
    :documentation
     "A description of the Vision.")))


;;; =========================================================
;;; ====================== EntityAttribute
;;; =========================================================
(def-meta-stereotype |EntityAttribute| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |TechnicalStandardsElements| |Data|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-TechnicalStandardsElements-Data-EntityAttribute")
 "MODAF: A defined property of an EntityItem. DoDAF: NAA"
  ())


;;; =========================================================
;;; ====================== EntityItem
;;; =========================================================
(def-meta-stereotype |EntityItem| 
   (:model :UPDM21 :superclasses (|SubjectOfOperationalConstraint| |SubjectOfResourceConstraint|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |TechnicalStandardsElements| |Data|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-TechnicalStandardsElements-Data-EntityItem")
 "MODAF: (MODAF::Entity): A definition (type) of an item of interest. DoDAF:
  NA"
  ())


;;; =========================================================
;;; ====================== EntityRelationship
;;; =========================================================
(def-meta-stereotype |EntityRelationship| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Association|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |TechnicalStandardsElements| |Data|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-TechnicalStandardsElements-Data-EntityRelationship")
 "MODAF: Asserts that there is a relationship between two EntityItems. DoDAF:
  (DoDAF::DataAssociation): A relationship or association between two elements
  of proceduralized information."
  ())


;;; =========================================================
;;; ====================== Environment
;;; =========================================================
(def-meta-stereotype |Environment| 
   (:model :UPDM21 :superclasses (|ConditionType| |PropertySet|) :extends (UML23:|DataType|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Environment|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Environment-Environment")
 "MODAF:A definition of the conditions in which something exists or functions.
  DoDAF:NA"
  ())


;;; =========================================================
;;; ====================== EnvironmentProperty
;;; =========================================================
(def-meta-stereotype |EnvironmentProperty| 
   (:model :UPDM21 :superclasses (|Property|) :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Environment|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Environment-EnvironmentProperty")
 "MODAF:Asserts that an Environment has one or more properties. These may
  be Climate, LocationType, or LightCondition. DoDAF:NA"
  ())


;;; =========================================================
;;; ====================== Exchange
;;; =========================================================
(def-meta-stereotype |Exchange| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Exchange")
 "UPDM: Abstract grouping for interactions that exchange messages. MODAF:NA
  DoDAF:NA"
  ())


;;; =========================================================
;;; ====================== ExchangeElement
;;; =========================================================
(def-meta-stereotype |ExchangeElement| 
   (:model :UPDM21 :superclasses (|ResourceInteractionItem| 
				#| |SubjectOfResourceConstraint| POD |#
				|SubjectOfOperationalConstraint| 
				|OperationalExchangeItem|) 
	   :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Structure-ExchangeElement")
 "MODAF: A relationship specifying the need to exchange information between
  nodes. DoDAF: NA - this is a specialization of OperationalExchange (DoDAF::Interface)."
  ((|definedBy| :range |EntityItem| :multiplicity (0 -1) :is-derived-p T
    :documentation
     "The relationship between the EntityElement that defines the ExchangeElement.")
   (|exchangeElementKind| :range |ExchangeElementKind| :multiplicity (0 1) :is-derived-p T
    :documentation
     "Enumeration of the kinds of information being exchanged.")))


;;; =========================================================
;;; ====================== Exhibits
;;; =========================================================
(def-meta-stereotype |Exhibits| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |StrategicElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-StrategicElements-Structure-Exhibits")
 "UPDM: Relationship between a Node and a capability the node provides. MODAF:
  (MODAF::CapabilityForNode): An assertion that a Node is required to have
  a Capability. DoDAF: A couple that represents the capability that a performer
  manifests."
  ((|environmentalConditions| :range |Environment| :multiplicity (0 -1)
    :documentation
     "Asserts that a Capability's capabilityMetric (MeasureableProperty) is valid
      for a particular environment.")
   (|universalCapabilitySet| :range |ActualPropertySet| :multiplicity (0 1)
    :documentation
     "The ActualPropertySet that exists between a Capability and a Capable Element.")))


;;; =========================================================
;;; ====================== ExternalIndividual
;;; =========================================================
(def-meta-stereotype |ExternalIndividual| 
   (:model :UPDM21 :superclasses (|OntologyReference|) :extends (UML23:|InstanceSpecification|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AllElements| |Ontology|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AllElements-Ontology-ExternalIndividual")
 "MODAF: An individual (i.e. something which has spatial and temporal extent)
  defined by an external ontology. DoDAF: NAA"
  ())


;;; =========================================================
;;; ====================== ExternalTuple
;;; =========================================================
(def-meta-stereotype |ExternalTuple| 
   (:model :UPDM21 :superclasses (|OntologyReference|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AllElements| |Ontology|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AllElements-Ontology-ExternalTuple")
 "UPDM: An instance of ExternalTupleType defined in an external Ontology.
  MODAF:NA DoDAF:NA"
  ())


;;; =========================================================
;;; ====================== ExternalTupleType
;;; =========================================================
(def-meta-stereotype |ExternalTupleType| 
   (:model :UPDM21 :superclasses (|ExternalType|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AllElements| |Ontology|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AllElements-Ontology-ExternalTupleType")
 "UPDM: An TupleType defined in an external Ontology. MODAF:NA DoDAF:NA"
  ())


;;; =========================================================
;;; ====================== ExternalType
;;; =========================================================
(def-meta-stereotype |ExternalType| 
   (:model :UPDM21 :superclasses (|OntologyReference|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AllElements| |Ontology|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AllElements-Ontology-ExternalType")
 "MODAF: A type defined by an external ontology. DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== FieldedCapability
;;; =========================================================
(def-meta-stereotype |FieldedCapability| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|InstanceSpecification|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Structure-FieldedCapability")
 "MODAF: An actual, fully-realised capability. A FieldedCapability must indicate
  its configuration CapabilityConfiguration. DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== FillsPost
;;; =========================================================
(def-meta-stereotype |FillsPost| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure| |Organizational| |Actual|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Organizational-Actual-FillsPost")
 "UPDM: Asserts that ActualPerson fills an ActualPost. MODAF: NA DoDAF: NA"
  ((|endDate| :range |ISO8601DateTime| :multiplicity (0 1)
    :documentation
     "End date")
   (|startDate| :range |ISO8601DateTime| :multiplicity (0 1)
    :documentation
     "Start date")))


;;; =========================================================
;;; ====================== Forecast
;;; =========================================================
(def-meta-stereotype |Forecast| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Structure-Forecast")
 "MODAF: A statement about the future state of one or more types of system
  or standard. DoDAF: NA"
  ((|endDate| :range |ISO8601DateTime| :multiplicity (0 1)
    :documentation
     "End date of the forecast")
   (|startDate| :range |ISO8601DateTime| :multiplicity (0 1)
    :documentation
     "Start date of the forecast.")))


;;; =========================================================
;;; ====================== Function
;;; =========================================================
(def-meta-stereotype |Function| 
   (:model :UPDM21 :superclasses (|Activity| |SubjectOfResourceConstraint|) :extends (UML23:|Activity|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Behavior-Function")
 "MODAF: An activity which is specified in context of the resource (human
  or machine) that performs it. DoDAF: Activity: Work, not specific to a
  single organization, weapon system or individual that transforms inputs
  (Resources) into outputs (Resources) or changes their state."
  ((|realizedBy| :range |ResourceOperation| :multiplicity (0 -1)
    :opposite (|ResourceOperation| |realizes|)
    :documentation
     "Relationship between an Function and a ResourceOperation.")
   (|subject| :range |ResourceInteractionItem| :multiplicity (0 -1) :is-derived-p T
    :opposite (|ResourceInteractionItem| |affectedFunctions|)
    :documentation
     "The ResourceInteractionItem that is the subject of the Function.")))


;;; =========================================================
;;; ====================== FunctionAction
;;; =========================================================
(def-meta-stereotype |FunctionAction| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|CallBehaviorAction|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Behavior-FunctionAction")
 "UPDM Artifact: The FunctionAction is defined as a call behavior action
  that invokes the function that needs to be performed. --This concept is
  required for mapping the architecture with UML and does not have a DoDAF
  or MoDAF equivalent."
  ())


;;; =========================================================
;;; ====================== FunctionEdge
;;; =========================================================
(def-meta-stereotype |FunctionEdge| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|ActivityEdge|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Behavior-FunctionEdge")
 "UPDM: An extension of <<ActivityEdge>> that is used to model the flow of
  control/objects through a Function. MODAF: A FunctionEdge (MODAF::FunctionFlow)
  is a UML::ObjectFlow between Functions. NOTE: this has been extended in
  UPDM to additionally include UML::ControlFlows.s."
  ((|carriedItem| :range |ResourceInteractionItem| :multiplicity (0 -1) :is-derived-p T
    :documentation
     "The ResourceInteractionItem that is conveyed.")))


;;; =========================================================
;;; ====================== FunctionalStandard
;;; =========================================================
(def-meta-stereotype |FunctionalStandard| 
   (:model :UPDM21 :superclasses (|Standard|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |TechnicalStandardsElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-TechnicalStandardsElements-FunctionalStandard")
 "MODAF:NA DoDAF:Functional standards set forth rules, conditions, guidelines,
  and characteristics."
  ())


;;; =========================================================
;;; ====================== GeoPoliticalExtent
;;; =========================================================
(def-meta-stereotype |GeoPoliticalExtent| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|InstanceSpecification|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |AllElements| |Environment|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AllElements-Environment-GeoPoliticalExtent")
 "UPDM: An instance of a GeoPoliticalExtentType MODAF:N/A DoDAF: N/A"
  ((|customKind| :range |String| :multiplicity (0 1)
    :documentation
     "String defining custom kinds of geopolitical extent.")
   (|geoPoliticalExtentKind| :range |GeoPoliticalExtentKind| :multiplicity (1 1) :default :other
    :documentation
     "Enumeration of kinds of GeopoliticalExtent.")))


;;; =========================================================
;;; ====================== GeoPoliticalExtentType
;;; =========================================================
(def-meta-stereotype |GeoPoliticalExtentType| 
   (:model :UPDM21 :superclasses (|ResourceInteractionItem| |OperationalExchangeItem| |ConditionType|) :extends (UML23:|DataType|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |AllElements| |Environment|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AllElements-Environment-GeoPoliticalExtentType")
 "MODAF:NA DoDAF:A geospatial extent whose boundaries are by declaration
  or agreement by political parties."
  ((|customKind| :range |String| :multiplicity (0 1)
    :documentation
     "String defining custom kinds of GeopoliticalExtentTypes.")
   (|geoPoliticalExtentTypeKind| :range |GeoPoliticalExtentTypeKind| :multiplicity (1 1) :default :othertype
    :documentation
     "Enumeration of kinds GeopoliticalExtentTypes.")))


;;; =========================================================
;;; ====================== HighLevelOperationalConcept
;;; =========================================================
(def-meta-stereotype |HighLevelOperationalConcept| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-HighLevelOperationalConcept")
 "MODAF: A generalized model for operations. DoDAF: NA"
  ((|mission| :range |Mission| :multiplicity (0 -1)
    :documentation
     "Mission that is described by this HighLevelOperationalConcept.")))


;;; =========================================================
;;; ====================== ISO8601DateTime
;;; =========================================================
(def-meta-stereotype |ISO8601DateTime| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|LiteralString|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |ExternalTypes|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ExternalTypes-ISO8601DateTime")
 "MODAF: A date and time specified in the ISO8601 date-time format including
  timezone designator (TZD): YYYY-MM-DDThh:mm:ssTZD. DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== Implements
;;; =========================================================
(def-meta-stereotype |Implements| 
   (:model :UPDM21 :superclasses NIL :extends (UML23:|Abstraction|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Behavior-Implements")
 "UPDM:Tuple defining the relationship between systems and service elements
  and operational elements MODAF: ActivityToFunctionMapping, Asserts that
  a Function (at least in part) performs or assists in the conducting of
  an OperationalActivity. DoDAF: N/A"
  ())


;;; =========================================================
;;; ====================== IncrementMilestone
;;; =========================================================
(def-meta-stereotype |IncrementMilestone| 
   (:model :UPDM21 :superclasses (|ActualProjectMilestone|) :extends (UML23:|InstanceSpecification|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AcquisitionElements| |Milestones|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AcquisitionElements-Milestones-IncrementMilestone")
 "MODAF: (MODAF::CapabilityIncrement): An ActualProjectMilestone (MODAF::ProjectMilestone)
  that indicates the point in time at which a project is predicted to deliver
  or has delivered a Capability. DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== IndividualPersonRole
;;; =========================================================
(def-meta-stereotype |IndividualPersonRole| 
   (:model :UPDM21 :superclasses (|ActualPost|) :extends (UML23:|InstanceSpecification|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |OperationalElements| |Structure| |Organizational|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-OperationalElements-Structure-Organizational-IndividualPersonRole")
 "UPDM: An individual person. MODAF:NA DoDAF: An Individual person."
  ())


;;; =========================================================
;;; ====================== Information
;;; =========================================================
(def-meta-stereotype |Information| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Comment|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |AllElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AllElements-Information")
 "UPDM:As DoDAF MODAF:N/A DoDAF:Information is the state of a something of
  interest that is materialized -- in any medium or form -- and communicated
  or received."
  ((|informationKind| :range |InformationKind| :multiplicity (1 1) :default :information
    :documentation
     "Enumeration of the kinds of information being passed.")))


;;; =========================================================
;;; ====================== IsCapableOfPerforming
;;; =========================================================
(def-meta-stereotype |IsCapableOfPerforming| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Behavior-IsCapableOfPerforming")
 "UPDM: Links a Performer to the behavior that it can perform. DoDAF: The
  Performs (DoDAF::activityPerformedByPerformer) relationship is an overlap
  between a Performer and a PerformedActivity (DoDAF::Activity) wherein the
  activity is performed by the Performer."
  ())


;;; =========================================================
;;; ====================== KnownResource
;;; =========================================================
(def-meta-stereotype |KnownResource| 
   (:model :UPDM21 :superclasses (|NodeRole|) :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-KnownResource")
 "MODAF: Asserts that a known Resource plays a part in the architecture.
  DoDAF: NA     covered by the more general temporalWholePart element."
  ())


;;; =========================================================
;;; ====================== LightCondition
;;; =========================================================
(def-meta-stereotype |LightCondition| 
   (:model :UPDM21 :superclasses (|Environment|) :extends (UML23:|DataType|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AllElements| |Environment|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AllElements-Environment-LightCondition")
 "MODAF: a specification of environmental lighting conditions."
  ())


;;; =========================================================
;;; ====================== Location
;;; =========================================================
(def-meta-stereotype |Location| 
   (:model :UPDM21 :superclasses (|ActualLocation|) :extends (UML23:|InstanceSpecification|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |AllElements| |Environment|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AllElements-Environment-Location")
 "DoDAF: All subtypes of << IndividualType>> Location, such as Facility,
  Site, etc."
  ())


;;; =========================================================
;;; ====================== LocationHolder
;;; =========================================================
(def-meta-stereotype |LocationHolder| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Environment|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Environment-LocationHolder")
 "UPDM:Abstract grouping to capture elements that can have a location."
  ((|physicalLocation| :range |ActualLocation| :multiplicity (0 -1)
    :documentation
     "The ActualLocation associated with a LocationHolder(Abstract).")
   (|requiredEnvironment| :range |Environment| :multiplicity (0 -1)
    :documentation
     "The Environment in which a LocationHolder(Abstract) is active.")))


;;; =========================================================
;;; ====================== LocationType
;;; =========================================================
(def-meta-stereotype |LocationType| 
   (:model :UPDM21 :superclasses (|ConceptItem| |ConditionType|) :extends (UML23:|DataType|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Environment|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Environment-LocationType")
 "MODAF: A general specification of the surroundings / scenario in which
  an operation may take place. Examples would be: \"desert\", \"arctic\", \"at
  sea\", etc. DoDAF: A point or extent in space that may be referred to physically
  or logically. Includes concepts such as: Facility, Installation, RealProperty,
  Site, , and instances of conditions such as underwater (as specified in
  UJTLs)."
  ((|customKind| :range |String| :multiplicity (0 1)
    :documentation
     "String defining custom kinds of locationTypes.")
   (|locationTypeKind| :range |LocationTypeKind| :multiplicity (1 1) :default :othertype
    :documentation
     "Kind of location taken from the DOD UJTLs.")))


;;; =========================================================
;;; ====================== LogicalArchitecture
;;; =========================================================
(def-meta-stereotype |LogicalArchitecture| 
   (:model :UPDM21 :superclasses (|NodeParent|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-LogicalArchitecture")
 "MODAF: A CompositeStructureModel whose parts are either NodeRoles (MODAF::Node),
  ProblemDomains, or KnownResources. DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== LogicalDataModel
;;; =========================================================
(def-meta-stereotype |LogicalDataModel| 
   (:model :UPDM21 :superclasses (|DataModel|) :extends (UML23:|Package|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Data|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Data-LogicalDataModel")
 "MODAF: A LogicalDataModel is a specification of business information requirements
  as a formal data structure, where relationships and classes (entities)
  are used to specify the logic which underpins the information. DoDAF: A
  Logical Data Model allows analysis of an architecture   s data definition
  aspect, without consideration of implementation specific or product specific
  issues."
  ())


;;; =========================================================
;;; ====================== MapsToCapability
;;; =========================================================
(def-meta-stereotype |MapsToCapability| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |StrategicElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-StrategicElements-Structure-MapsToCapability")
 "MODAF: Asserts that a StandardOperationalActivity is in some way part of
  a capability. DoDAF: MapsToCapability (DoDAF::ActivityPartOfCapability)
  is a disposition to manifest an Activity. An Activity to be performed to
  achieve a desired effect under specified [performance] standards and conditions
  through combinations of ways and means."
  ())


;;; =========================================================
;;; ====================== Materiel
;;; =========================================================
(def-meta-stereotype |Materiel| 
   (:model :UPDM21 :superclasses (|ResourceInteractionItem|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Structure-Materiel")
 "MODAF: Artifact, A type of man-made object. Examples are \"car\", \"radio\",
  \"diesel\", etc. DoDAF: Equipment, apparatus or supplies that are of interest,
  without distinction as to its application for administrative or combat
  purposes."
  ())


;;; =========================================================
;;; ====================== Measure
;;; =========================================================
(def-meta-stereotype |Measure| 
   (:model :UPDM21 :superclasses (|ActualPropertySet|) :extends (UML23:|InstanceSpecification|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |AllElements| |Measurements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AllElements-Measurements-Measure")
 "MODAF:NA DoDAF:The magnitude of some attribute of an individual."
  ())


;;; =========================================================
;;; ====================== MeasureType
;;; =========================================================
(def-meta-stereotype |MeasureType| 
   (:model :UPDM21 :superclasses (|MeasurementSet|) :extends (UML23:|DataType|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |AllElements| |Measurements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AllElements-Measurements-MeasureType")
 "MODAF:NA DoDAF: A category of Measures."
  ())


;;; =========================================================
;;; ====================== Measurement
;;; =========================================================
(def-meta-stereotype |Measurement| 
   (:model :UPDM21 :superclasses (|Property|) :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Measurements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Measurements-Measurement")
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
   (:model :UPDM21 :superclasses (|PropertySet|) :extends (UML23:|DataType|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Measurements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Measurements-MeasurementSet")
 "UPDM: A collection of Measurements. MODAF: N/A DoDAF: N/A"
  ())


;;; =========================================================
;;; ====================== Metadata
;;; =========================================================
(def-meta-stereotype |Metadata| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Comment|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Views|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Views-Metadata")
 "MODAF: Annotation that can be applied to any element in the architecture.
  DoDAF: NA"
  ((|dublinCoreElement| :range |String| :multiplicity (0 1)
    :documentation
     "If the meta data corresponds to the Dublin Core Meta-Data Standard, then
      the meta-data element name should be listed here")
   (|modMetaDataElement| :range |String| :multiplicity (0 1)
    :documentation
     "If the meta data corresponds to the MOD Meta-Data Standard, then the meta-data
      element name should be listed here.")
   (|name| :range |String| :multiplicity (0 1)
    :documentation
     "The name of the Metadata.")))


;;; =========================================================
;;; ====================== MilestoneSequence
;;; =========================================================
(def-meta-stereotype |MilestoneSequence| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AcquisitionElements| |Milestones|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AcquisitionElements-Milestones-MilestoneSequence")
 "MODAF: A MilestoneSequence (MODAF::MilestoneRelationship) is a relationship
  between two milestones. DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== Mission
;;; =========================================================
(def-meta-stereotype |Mission| 
   (:model :UPDM21 :superclasses (|SubjectOfOperationalConstraint|) :extends (UML23:|Activity|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Mission")
 "MODAF: A purpose to which a person, organization or autonomous system is
  tasked. DoDAF: The task, together with the purpose, that clearly indicates
  the action to be taken."
  ((|MissionArea| :range |String| :multiplicity (0 -1)
    :documentation
     "The area in which the Mission will take place.")))


;;; =========================================================
;;; ====================== Needline
;;; =========================================================
(def-meta-stereotype |Needline| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Connector|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Needline")
 "MODAF: A relationship between Nodes representing a bundle of InformationExchanges.
  DoDAF: A needline documents the requirement to exchange information between
  nodes. The needline does not indicate how the information transfer is implemented.
  ."
  ())


;;; =========================================================
;;; ====================== NoLongerUsedMilestone
;;; =========================================================
(def-meta-stereotype |NoLongerUsedMilestone| 
   (:model :UPDM21 :superclasses (|ActualProjectMilestone|) :extends (UML23:|InstanceSpecification|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |StrategicElements| |Milestones|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-StrategicElements-Milestones-NoLongerUsedMilestone")
 "MODAF: Asserts that an ActualOrganisationResource ceased to use or is slated
  to cease using a CapabilityConfiguration from a specific point in time.
  --This is used to describe capabilities going out of service with specific
  organisations or posts. DoDAF:NA"
  ((|noLongerUsedBy| :range |ActualOrganizationalResource| :multiplicity (0 -1)
    :documentation
     "ActualOrganizationalResources that are no longer using CapabilityConfiguration
      that went out of service at this Milestone.")))


;;; =========================================================
;;; ====================== Node
;;; =========================================================
(def-meta-stereotype |Node| 
   (:model :UPDM21 :superclasses (|SubjectOfOperationalStateMachine| |SubjectOfOperationalConstraint| |NodeParent| |ActivitySubject|) :extends (UML23:|Class|)
	   :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Node")
 "MODAF: A Node (MODAF::NodeType) is a logical entity that performs operational
  activities. Note: nodes are specified independently of any physical realization.
  DoDAF: A Node (DoDAF::OperationalNode) is an element of the operational
  architecture that produces, consumes, or processes information. NOTE: This
  is also a specialization of Performer. ."
  ((|connectedNodes| :range |Node| :multiplicity (0 -1) :is-derived-p T)))


;;; =========================================================
;;; ====================== NodeOperation
;;; =========================================================
(def-meta-stereotype |NodeOperation| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Operation|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Behavior-NodeOperation")
 "UPDM:A partial or full realization of an OperationalActivity. MODAF:NA
  DoDAF:NA"
  ((|realizes| :range |OperationalActivity| :multiplicity (0 1)
    :opposite (|OperationalActivity| |realizedBy|)
    :documentation
     "Relationship between a NodeOperation and an OperationalActivity.")))


;;; =========================================================
;;; ====================== NodeParent
;;; =========================================================
(def-meta-stereotype |NodeParent| 
   (:model :UPDM21 :superclasses (|Participant|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-NodeParent")
 "UPDM: An abstract element representing the owners/context of composite
  structure at the operational level. MODAF:The abstract supertype of all
  elements that can have child Nodes (LogicalArchitecture, ProblemDomain
  & NodeType) DoDAF:NA"
  ())


;;; =========================================================
;;; ====================== NodePort
;;; =========================================================
(def-meta-stereotype |NodePort| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Port|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-NodePort")
 "UPDM: A port is a property of a Node that specifies a distinct interaction
  point between the node and its environment or between the (behavior of
  the) node and its internal parts. It is the    entry/exit    point where
  resources (e.g., energy, information/data and people, etc) flow in and
  out of a node."
  ())


;;; =========================================================
;;; ====================== NodeRole
;;; =========================================================
(def-meta-stereotype |NodeRole| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-NodeRole")
 "MODAF: A NodeRole (MODAF::Node) is used to link a parent Node to its sub-nodes.
  DoDAF: NA"
  ((|performsInContext| :range |OperationalActivity| :multiplicity (0 -1)
    :documentation
     "OperationalActivity Performed in the context of a specific role.")))


;;; =========================================================
;;; ====================== OntologyReference
;;; =========================================================
(def-meta-stereotype |OntologyReference| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AllElements| |Ontology|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AllElements-Ontology-OntologyReference")
 "MODAF: A reference to an element in a recognized external ontology or taxonomy.
  DoDAF:NA"
  ((|url| :range |String| :multiplicity (0 1)
    :documentation
     "Unique identifier for the element.")))


;;; =========================================================
;;; ====================== OperationalActivity
;;; =========================================================
(def-meta-stereotype |OperationalActivity| 
   (:model :UPDM21 :superclasses (|Activity| |SubjectOfOperationalConstraint| |Process|) :extends (UML23:|Activity|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Behavior-OperationalActivity")
 "MODAF: A logical process, specified independently of how the process is
  carried out.DoDAF: An activity is an action performed in conducting the
  business of an enterprise. It is a general term that does not imply a placement
  in a hierarchy (e.g., it could be a process or a task as defined in other
  documents and it could be at any level of the hierarchy of the OV-5). It
  is used to portray operational actions not hardware/software system functions.
  NOTE: This is also a specialization of Activity. DoDAF:NANA"
  ((|realizedBy| :range |NodeOperation| :multiplicity (0 -1)
    :opposite (|NodeOperation| |realizes|)
    :documentation
     "Relationship between an OperationalActivity and a NodeOperation")
   (|subject| :range |ActivitySubject| :multiplicity (0 -1) :is-derived-p T
    :opposite (|ActivitySubject| |actsUpon|)
    :documentation
     "Object acting upon this OperationalActivity.")))


;;; =========================================================
;;; ====================== OperationalActivityAction
;;; =========================================================
(def-meta-stereotype |OperationalActivityAction| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|CallBehaviorAction|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Behavior-OperationalActivityAction")
 "UPDM: The OperationalActivityAction is defined as a call behavior action
  that invokes the activity that needs to be preformed. MODAF: Used to relate
  an OperationalActivity to its sub-activities. DoDAF:NAA"
  ())


;;; =========================================================
;;; ====================== OperationalActivityEdge
;;; =========================================================
(def-meta-stereotype |OperationalActivityEdge| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|ActivityEdge|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Behavior-OperationalActivityEdge")
 "UPDM An extension of <<ActivityEdge>> that is used to model the flow of
  control/objects through an OperationalActivity. MODAF: An OperationalActivityEdge
  (MODAF::OperationalActivityFlow) is a flow of information, energy or materiel
  from one activity to another. DoDAF:NAA"
  ((|carriedItem| :range |OperationalExchangeItem| :multiplicity (0 -1) :is-derived-p T
    :documentation
     "The item information element carried along an OperationalActivityEdge,
      associated with the relevant needline.")))


;;; =========================================================
;;; ====================== OperationalConstraint
;;; =========================================================
(def-meta-stereotype |OperationalConstraint| 
   (:model :UPDM21 :superclasses (#| POD |UPDMElement||# |Rule|) :extends (UML23:|Constraint|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-OperationalConstraint")
 "UPDM: An abstract Class that is extended by OperationalConstraint (A rule
  governing an operational behaviour or property.) and ResourceConstraint.
  MODAF:A rule governing an operational behaviour or property. DoDAF:A principle
  or condition that governs behavior; a prescribed guide for conduct or action
  (Rule)."
  ())


;;; =========================================================
;;; ====================== OperationalEventTrace
;;; =========================================================
(def-meta-stereotype |OperationalEventTrace| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Interaction|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Behavior-OperationalEventTrace")
 "MODAF: An OperationalEventTrace (MODAF::OperationalInteractionSpecification)
  is a specification of the interactions between nodes in an operational
  architecture. DoDAF: The Operational Event-Trace Description (OV-6c) DoDAF-described
  View provides a time ordered examination of the resource flows as a result
  of a particular scenario. Each event-trace diagram will have an accompanying
  description that defines the particular scenario or situation."
  ())


;;; =========================================================
;;; ====================== OperationalExchange
;;; =========================================================
(def-meta-stereotype |OperationalExchange| 
   (:model :UPDM21 :superclasses (|Exchange| |SubjectOfOperationalConstraint|) :extends (UML23:|InformationFlow|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Flows|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Flows-OperationalExchange")
 "UPDM: An utility element used as common flow for: - InformationExchange
  - OrganizationalExchange - EnergyExchange - MaterielExchange - ConfigurationExchange
  - GeoPoliticalExtent An operational exchange is formed when an activity
  of one operational node consumes items produced by another activity of
  a different operational node. An operational exchange describes the characteristics
  of the exchanged item, such as the content, format (voice, imagery, text
  and message format, etc.), throughput requirements, security or classification
  level, timeliness requirement, and the degree of interoperability. MODAF:
  An OperationalExchange (MODAF::LogicalFlow) asserts that a flow exists
  or is required between Nodes (e.g. flows of information, people, materiel,
  or energy). eriel, or energy)."
  ((|exchangeKind| :range |OperationalExchangeKind| :multiplicity (0 1) :is-derived-p T
    :documentation
     "Enumeration of operational exchange kinds.")))


;;; =========================================================
;;; ====================== OperationalExchangeItem
;;; =========================================================
(def-meta-stereotype |OperationalExchangeItem| 
   (:model :UPDM21 :superclasses (|ActivitySubject| |Resource|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Flows|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Flows-OperationalExchangeItem")
 "UPDM An abstract utility element used as common ancestor for: - InformationElement
  - ResourceArtifact - Energy - OrganizationalResource - CapabilityConfiguration
  - GeoPoliticalExtentt"
  ())


;;; =========================================================
;;; ====================== OperationalMessage
;;; =========================================================
(def-meta-stereotype |OperationalMessage| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Message|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Behavior-OperationalMessage")
 "UPDM: Message for use in an Operational Event-Trace which carries any of
  the subtypes of OperationalExchange. This is used to provide additional
  information about OperationalMessages for display on an OV-6c.."
  ((|carries| :range |OperationalExchange| :multiplicity (0 -1) :is-derived-p T
    :documentation
     "Carried OperationalExchange.")
   (|operation| :range |NodeOperation| :multiplicity (0 1) :is-derived-p T
    :documentation
     "The NodeOperation associated with a OperationalMessage.")))


;;; =========================================================
;;; ====================== OperationalParameter
;;; =========================================================
(def-meta-stereotype |OperationalParameter| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Parameter|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Behavior-OperationalParameter")
 "UPDM Represents inputs and outputs of an OperationalActivity. It is typed
  by OperationalExchangeItem.."
  ())


;;; =========================================================
;;; ====================== OperationalState
;;; =========================================================
(def-meta-stereotype |OperationalState| 
   (:model :UPDM21 :superclasses (|DesiredState|) :extends (UML23:|State|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Behavior-OperationalState")
 "UPDM: State identified in the context of an OperationalStateDescription
  MODAF:N/A DoDAF:N/A"
  ())


;;; =========================================================
;;; ====================== OperationalStateDescription
;;; =========================================================
(def-meta-stereotype |OperationalStateDescription| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|StateMachine|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Behavior-OperationalStateDescription")
 "UPDM: A state machine describing an operational behavior or property. MODAF:
  An OperationalStateMachine (MODAF::OperationalStateDescription) is a rule
  governing an operational behavior or property. DoDAF: The Operational State
  Transition Description (OV-6b) DoDAF-described View is a graphical method
  of describing how an Operational Activity responds to various events by
  changing its state. The diagram represents the sets of events to which
  the Architecture will respond (by taking an action to move to a new state)
  as a function of its current state. Each transition specifies an event
  and an action."
  ())


;;; =========================================================
;;; ====================== Organization
;;; =========================================================
(def-meta-stereotype |Organization| 
   (:model :UPDM21 :superclasses (|OrganizationalResource|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure| |Organizational| |Typical|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Organizational-Typical-Organization")
 "MODAF: A group of persons, associated for a particular purpose. DoDAF:
  A type of Organization."
  ())


;;; =========================================================
;;; ====================== OrganizationType
;;; =========================================================
(def-meta-stereotype |OrganizationType| 
   (:model :UPDM21 :superclasses (|Organization|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |OperationalElements| |Structure| |Organizational|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-OperationalElements-Structure-Organizational-OrganizationType")
 "DoDAF:A type of Organization."
  ())


;;; =========================================================
;;; ====================== OrganizationalProjectRelationship
;;; =========================================================
(def-meta-stereotype |OrganizationalProjectRelationship| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AcquisitionElements| |Milestone|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AcquisitionElements-Milestone-OrganizationalProjectRelationship")
 "MODAF:A relationship between an ActualOrganisation and a Project."
  ((|endDate| :range |ISO8601DateTime| :multiplicity (0 1)
    :documentation
     "End date")
   (|startDate| :range |ISO8601DateTime| :multiplicity (0 1)
    :documentation
     "Start date")))


;;; =========================================================
;;; ====================== OrganizationalResource
;;; =========================================================
(def-meta-stereotype |OrganizationalResource| 
   (:model :UPDM21 :superclasses (|PhysicalResource|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure| |Organizational| |Typical|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Organizational-Typical-OrganizationalResource")
 "UPDM An abstract element that represents Organizations and Posts. MODAF:
  Either an organization, or a post."
  ())


;;; =========================================================
;;; ====================== OutOfServiceMilestone
;;; =========================================================
(def-meta-stereotype |OutOfServiceMilestone| 
   (:model :UPDM21 :superclasses (|ActualProjectMilestone|) :extends (UML23:|InstanceSpecification|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AcquisitionElements| |Milestones|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AcquisitionElements-Milestones-OutOfServiceMilestone")
 "MODAF: An OutOfServiceMilestone (MODAF::OutOfService) is a ProjectMilestone
  that indicates a project's deliverable is to go out of service. DoDAF:
  NA"
  ())


;;; =========================================================
;;; ====================== Overlap
;;; =========================================================
(def-meta-stereotype |Overlap| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AllElements| |Ontology|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AllElements-Ontology-Overlap")
 "IDEAS:A couple of wholePart couples where the part in each couple is the
  same."
  ())


;;; =========================================================
;;; ====================== OwnsProcess
;;; =========================================================
(def-meta-stereotype |OwnsProcess| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |OperationalElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-OperationalElements-Behavior-OwnsProcess")
 "UPDM:Asserts that an ActualOrganizationalResource owns a Process."
  ())


;;; =========================================================
;;; ====================== Participant
;;; =========================================================
(def-meta-stereotype |Participant| 
   (:model :UPDM21 :superclasses (|CapableElement| |ConceptItem| |OperationalExchangeItem| |Desirer| SOAML:|Participant|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Structure-Participant")
 "UPDM: A participant is the abstract type of a provider and/or consumer
  of services. In the business domain a participant may be a person, organization
  or system. In the systems domain a participant may be a system, application
  or component."
  ())


;;; =========================================================
;;; ====================== Performer
;;; =========================================================
(def-meta-stereotype |Performer| 
   (:model :UPDM21 :superclasses (|Node|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |OperationalElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-OperationalElements-Structure-Performer")
 "MODAF:NA DoDAF:Any entity - human, automated, or any aggregation of human
  and/or automated - that performs an activity and provides a capability."
  ())


;;; =========================================================
;;; ====================== Person
;;; =========================================================
(def-meta-stereotype |Person| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure| |Organizational| |Typical|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Organizational-Typical-Person")
 "UPDM: A type of a human being that is recognized by law as the subject
  of rights and duties. This is used to define the characteristics that require
  capturing for ActualPersons (e.g. properties such as address, rank, telephone
  number, etc). MODAF: NA DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== PersonType
;;; =========================================================
(def-meta-stereotype |PersonType| 
   (:model :UPDM21 :superclasses (|Post|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |OperationalElements| |Structure| |Organizational|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-OperationalElements-Structure-Organizational-PersonType")
 "DoDAF:A category of persons defined by the role or roles they share that
  are relevant to an architecture. Includes assigned materiel. MODAF:NANA"
  ())


;;; =========================================================
;;; ====================== PhysicalArchitecture
;;; =========================================================
(def-meta-stereotype |PhysicalArchitecture| 
   (:model :UPDM21 :superclasses (|SystemResource|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Structure-PhysicalArchitecture")
 "MODAF:A configuration of Resources for a purpose. DoDAF:NA"
  ())


;;; =========================================================
;;; ====================== PhysicalDataModel
;;; =========================================================
(def-meta-stereotype |PhysicalDataModel| 
   (:model :UPDM21 :superclasses (|DataModel|) :extends (UML23:|Package|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Data|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Data-PhysicalDataModel")
 "MODAF: A PhysicalDataModel is an implementable specification of a data
  structure. A PhysicalDataModel realises a LogicalDataModel, taking into
  account implementation restrictions and performance issues whilst still
  enforcing the constraints, relationships and typing of the logical model.
  DoDAF: A Physical Data Model defines the structure of the various kinds
  of system or service data that are utilized by the systems or services
  in the Architecture.."
  ())


;;; =========================================================
;;; ====================== PhysicalResource
;;; =========================================================
(def-meta-stereotype |PhysicalResource| 
   (:model :UPDM21 :superclasses (|SystemResource|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Structure-PhysicalResource")
 "UPDM: Abstract supertype for physical resources such as OrganizationalResource.
  MODAF: A PhysicalAsset, OrganisationalResource or FunctionalResource that
  can contribute towards fulfilling a capability (MODAF::ResourceType)."
  ())


;;; =========================================================
;;; ====================== Post
;;; =========================================================
(def-meta-stereotype |Post| 
   (:model :UPDM21 :superclasses (|OrganizationalResource| |CompetenceRequirer|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure| |Organizational| |Typical|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Organizational-Typical-Post")
 "MODAF: A Post (MODAF::PostType) is a type of point of contact or responsible
  person. Note that this is the type of post - e.g. Desk Officer, Commander
  Land Component, etc. DoDAF: A Post (DoDAF:: PersonType) is a category of
  persons defined by the role or roles they share that are relevant to an
  architecture."
  ())


;;; =========================================================
;;; ====================== ProblemDomain
;;; =========================================================
(def-meta-stereotype |ProblemDomain| 
   (:model :UPDM21 :superclasses (|NodeRole|) :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |OperationalElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-OperationalElements-Structure-ProblemDomain")
 "MODAF: The boundary containing those Nodes which may be realised by functional
  resources specified in SV-1. There may be more than one alternative solution
  for a given ProblemDomain specified as a set of SV suites. There may be
  only one ProblemDomain in a LogicalArchitecture. DoDAF: NA     covered
  by the more general temporalWholePart element."
  ())


;;; =========================================================
;;; ====================== Process
;;; =========================================================
(def-meta-stereotype |Process| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Activity|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |OperationalElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-OperationalElements-Behavior-Process")
 "MODAF:The abstract supertype of OperationalActivity and EnduringTask. DoDAF:NA"
  ())


;;; =========================================================
;;; ====================== Project
;;; =========================================================
(def-meta-stereotype |Project| 
   (:model :UPDM21 :superclasses (|ActualProject|) :extends (UML23:|InstanceSpecification|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |AcquisitionElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AcquisitionElements-Project")
 "DoDAF:A temporary endeavor undertaken to create Resources or Desired Effects."
  ())


;;; =========================================================
;;; ====================== ProjectActivity
;;; =========================================================
(def-meta-stereotype |ProjectActivity| 
   (:model :UPDM21 :superclasses (|Activity|) :extends (UML23:|Activity|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |AcquisitionElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AcquisitionElements-ProjectActivity")
 "MOAF: NA DoDAF: An activity carried out during a project."
  ((|maxDuration| :range |String| :multiplicity (0 1))
   (|minDuration| :range |String| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== ProjectActivityAction
;;; =========================================================
(def-meta-stereotype |ProjectActivityAction| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|CallBehaviorAction|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |AcquisitionElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AcquisitionElements-ProjectActivityAction")
 ""
  ())


;;; =========================================================
;;; ====================== ProjectActivityEdge
;;; =========================================================
(def-meta-stereotype |ProjectActivityEdge| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|ActivityEdge|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |AcquisitionElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AcquisitionElements-ProjectActivityEdge")
 ""
  ())


;;; =========================================================
;;; ====================== ProjectMilestone
;;; =========================================================
(def-meta-stereotype |ProjectMilestone| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AcquisitionElements| |Milestones|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AcquisitionElements-Milestones-ProjectMilestone")
 "UPDM: An element representing a collection of themes (e.g. DLOD or DOTMLPF)
  which is connected to a Project as part of a Project   s definition. This
  is used as a template for ActualProjectMilestones. MODAF: An event in a
  Project by which progress is measured.."
  ())


;;; =========================================================
;;; ====================== ProjectMilestoneRole
;;; =========================================================
(def-meta-stereotype |ProjectMilestoneRole| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AcquisitionElements| |Milestone|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AcquisitionElements-Milestone-ProjectMilestoneRole")
 "UPDM: The role played by a ProjectMilestone in the context of an ActualProjectMilestone
  MODAF: NA DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== ProjectOwnership
;;; =========================================================
(def-meta-stereotype |ProjectOwnership| 
   (:model :UPDM21 :superclasses (|OrganizationalProjectRelationship|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AcquisitionElements| |Milestones|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AcquisitionElements-Milestones-ProjectOwnership")
 "MODAF:A type of OrganisationProjectRelationship where the organisation
  is the party responsible for the project."
  ())


;;; =========================================================
;;; ====================== ProjectSequence
;;; =========================================================
(def-meta-stereotype |ProjectSequence| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AcquisitionElements| |Milestones|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AcquisitionElements-Milestones-ProjectSequence")
 "MODAF: Asserts that one ActualProject (MODAF::Project) follows from another
  - i.e. the target ActualProject cannot start until the source ActualProject
  has ended. DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== ProjectStatus
;;; =========================================================
(def-meta-stereotype |ProjectStatus| 
   (:model :UPDM21 :superclasses (|ActualProperty|) :extends (UML23:|Slot|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AcquisitionElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AcquisitionElements-Structure-ProjectStatus")
 "MODAF: A ProjectStatus (MODAF::StatusAtMilestone) is a relationship between
  a Status and a milestone that asserts the status (i.e. level of progress)
  of a ProjectTheme for the project at the time of the ActualProjectMilestone
  (MODAF::Milestone). DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== ProjectTheme
;;; =========================================================
(def-meta-stereotype |ProjectTheme| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AcquisitionElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AcquisitionElements-Structure-ProjectTheme")
 "MODAF:An aspect by which the progress of various Projects may be measured.
  In UK MOD, this could be one of the defence lines of development (DLOD),
  or DOTMLPF in the US. DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== ProjectType
;;; =========================================================
(def-meta-stereotype |ProjectType| 
   (:model :UPDM21 :superclasses (#|POD |UPDMElement||# |Desirer|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AcquisitionElements| |Milestone|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AcquisitionElements-Milestone-ProjectType")
 "MODAF: A Project (MODAF::ProjectType) is used to define a category of project:
  For example, \"Programme   ,    Acquisition Project    or    Training Programme\".
  DoDAF: NA (only Individual Project in DoDAF)."
  ())


;;; =========================================================
;;; ====================== Property
;;; =========================================================
(def-meta-stereotype |Property| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Measurements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Measurements-Property")
 "UPDM: The defining feature of an actual property, used to capture measurements
  MODAF: NA DoDAF: NA"
  ((|defaultValue| :range UML23:|LiteralSpecification| :multiplicity (0 1))
   (|maxValue| :range UML23:|LiteralSpecification| :multiplicity (0 1))
   (|minValue| :range UML23:|LiteralSpecification| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== PropertySet
;;; =========================================================
(def-meta-stereotype |PropertySet| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Measurements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Measurements-PropertySet")
 "UPDM: A set or collection of Measurement(s). MODAF: NA DoDAF: NA"
  ((|appliesTo| :range |UPDMElement| :multiplicity (0 -1)
    :opposite (|UPDMElement| |propertySet|)
    :documentation
     "Measured element.")))


;;; =========================================================
;;; ====================== Protocol
;;; =========================================================
(def-meta-stereotype |Protocol| 
   (:model :UPDM21 :superclasses (|Standard|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |TechnicalStandardsElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-TechnicalStandardsElements-Protocol")
 "MODAF: A Standard for communication. Protocols may be composite (i.e. a
  stack). DoDAF: NA, See TechnicalStandard."
  ())


;;; =========================================================
;;; ====================== ProtocolImplementation
;;; =========================================================
(def-meta-stereotype |ProtocolImplementation| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |TechnicalStandardsElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-TechnicalStandardsElements-ProtocolImplementation")
 "UPDM: Abstract element: A connector that implements a specific Protocol.
  MODAF: An element that can implement a Protocol."
  ((|implements| :range |Protocol| :multiplicity (0 -1)
    :documentation
     "The <<Protocol>> which can be implemented by the Connector targets.")))


;;; =========================================================
;;; ====================== ProtocolLayer
;;; =========================================================
(def-meta-stereotype |ProtocolLayer| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |TechnicalStandardsElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-TechnicalStandardsElements-ProtocolLayer")
 "MODAF: Asserts that a Protocol (upperLayer) uses another Protocol (lowerLayer)"
  ())


;;; =========================================================
;;; ====================== ProvidesCompetence
;;; =========================================================
(def-meta-stereotype |ProvidesCompetence| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure| |Organizational| |Typical|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Organizational-Typical-ProvidesCompetence")
 "UPDM: Asserts that a Resource type provides a competence. MODAF: Asserts
  that a Role requires a Competence (MODAF::CompetenceForRole). DoDAF: An
  overlap between a Personnel Type and the Skills it entails (DoDAF:: skillPartOfPersonType)"
  ((|universalPropertySet| :range |ActualPropertySet| :multiplicity (0 -1)
    :documentation
     "The measurements associated with a Competence.")))


;;; =========================================================
;;; ====================== Request
;;; =========================================================
(def-meta-stereotype |Request| 
   (:model :UPDM21 :superclasses (SOAML:|Request| |ServicePort|) :extends (UML23:|Port|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |ServiceElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Structure-Request")
 "UPDM:From SoaML A Request represents a feature of a Participant that is
  the consumption of a service by one participant provided by others using
  well-defined terms, conditions and interfaces. A Request designates ports
  that define the connection point through which a Participant meets its
  needs through the consumption of services provided by others. MODAF: Similar
  to requires, Asserts that a Resource requires a Service to be provided
  in order to function correctly. DoDAF: Similar to ServicePort, A part of
  a Performer that specifics a distinct interaction point through which the
  Performer interacts with other Performers. This isolates dependencies between
  performers to particular interaction points rather than to the performer
  as a whole."
  ())


;;; =========================================================
;;; ====================== RequiresCompetence
;;; =========================================================
(def-meta-stereotype |RequiresCompetence| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure| |Organizational| |Typical|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Organizational-Typical-RequiresCompetence")
 "MODAF:: Asserts that an Role requires a Competence (MODAF::CompetenceForRole).
  DoDAF: An overlap between a Personnel Type and the Skills it entails (DoDAF::
  SkillPartOfPersonType)."
  ((|measurementSet| :range |ActualPropertySet| :multiplicity (0 -1)
    :documentation
     "The measurements associated with a Competence.")))


;;; =========================================================
;;; ====================== Resource
;;; =========================================================
(def-meta-stereotype |Resource| 
   (:model :UPDM21 :superclasses (|LocationHolder| |PropertySet| |SubjectOfResourceConstraint|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Structure-Resource")
 "UPDM: Abstract element placeholder to indicate that resources can be exchanged
  in Operational and Systems views. MODAF: NA DoDAF: Data, Information, Performers,
  Materiel, or Personnel Types that are produced or consumed."
  ())


;;; =========================================================
;;; ====================== ResourceArtifact
;;; =========================================================
(def-meta-stereotype |ResourceArtifact| 
   (:model :UPDM21 :superclasses (|PhysicalResource|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Structure-ResourceArtifact")
 "UPDM: A combination of physical element, energy, and data that are combined
  used to accomplish a task or function. MODAF: A type of man-made object.
  Examples are \"car\", \"radio\", \"fuel\", etc. (MODAF:: Artefact)."
  ())


;;; =========================================================
;;; ====================== ResourceConnector
;;; =========================================================
(def-meta-stereotype |ResourceConnector| 
   (:model :UPDM21 :superclasses (|ProtocolImplementation|) :extends (UML23:|Connector|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Structure-ResourceConnector")
 "UPDM: A physical connection between two resources that implements protocols
  through which the source resource can transmit items to the destination
  resource. MODAF: Asserts that a connection exists between two ports belonging
  to parts in a system composite structure model (MODAF::SystemPortConnector).
  DoDAF: NA"
  ((|realizedExchange| :range |ResourceInteraction| :multiplicity (0 -1)
    :documentation
     "A list of ResourceInteractions (or specializations) that realized by the
      ResourceInterface/ResourceConnector. This is derived by navigating from
      the ResourceInteraction to the ResourceInterfaces/ResourceConnectors using
      the inverse of the realization/realizingConnector roles..")
   (|realizedInterface| :range |ResourceInterface| :multiplicity (0 -1)
    :opposite (|ResourceInterface| |realizingConnector|)
    :documentation
     "Realized ResourceInterfaces.")))


;;; =========================================================
;;; ====================== ResourceConstraint
;;; =========================================================
(def-meta-stereotype |ResourceConstraint| 
   (:model :UPDM21 :superclasses (|Rule|) :extends (UML23:|Constraint|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Structure-ResourceConstraint")
 "MODAF: A rule governing the structural or functional aspects of an implementation
  - this may also include constraints on OrganisationalResources that are
  part of an implementation. DoDAF: The range of permissible states for an
  object (DoDAF::Constraint).."
  ())


;;; =========================================================
;;; ====================== ResourceEventTrace
;;; =========================================================
(def-meta-stereotype |ResourceEventTrace| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Interaction|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Behavior-ResourceEventTrace")
 "UPDM: A UPDM artifact that extends a UML Interaction."
  ())


;;; =========================================================
;;; ====================== ResourceInteraction
;;; =========================================================
(def-meta-stereotype |ResourceInteraction| 
   (:model :UPDM21 :superclasses (|Exchange| |SubjectOfResourceConstraint|) :extends (UML23:|InformationFlow|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Flows|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Flows-ResourceInteraction")
 "UPDM: ResourceInteraction represents data that is exchanged between the
  resources MODAF: An assertion that two FunctionalResources interact. Examples
  : data exchange between systems, conversations between people, people using
  systems. DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== ResourceInteractionItem
;;; =========================================================
(def-meta-stereotype |ResourceInteractionItem| 
   (:model :UPDM21 :superclasses (|Resource|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Flows|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Flows-ResourceInteractionItem")
 "UPDM Abstract: Represents the item(s) exchanged between the resources through
  a ResourceInteraction. MODAF: Formalised representation of data which is
  managed by or exchanged between systems (MODAF::DataElement). DoDAF: Representation
  of information in a formalized manner suitable for communication, interpretation,
  or processing by humans or by automatic means (DoDAF::Data)."
  ((|affectedFunctions| :range |Function| :multiplicity (0 -1) :is-derived-p T
    :opposite (|Function| |subject|)
    :documentation
     "The Functions affected by the ResourceInteractionItem.")))


;;; =========================================================
;;; ====================== ResourceInterface
;;; =========================================================
(def-meta-stereotype |ResourceInterface| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Connector|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Structure-ResourceInterface")
 "UPDM: ResourceInterface is a contractual agreement between two resources
  that implement protocols through which the source resource to the destination
  resource. MODAF: NA DoDAF: An overlap between Performers for the purpose
  of producing a Resource that is consumed by the other (DoDAF:: Interface)."
  ((|realizingConnector| :range |ResourceConnector| :multiplicity (0 -1)
    :opposite (|ResourceConnector| |realizedInterface|)
    :documentation
     "Realizing ResourceConnectors.")))


;;; =========================================================
;;; ====================== ResourceMessage
;;; =========================================================
(def-meta-stereotype |ResourceMessage| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Message|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Behavior-ResourceMessage")
 "UPDM: Message for use in a Resource Event-Trace, implements a ResourceInteraction.
  MODAF: A specification of the interactions between aspects of a Resources
  architecture (MODAF::ResourceInteractionSpecification). DoDAF: An overlap
  of an Activity with a Resource, in particular a consuming or producing
  Activity that expresses an input, output, consumption, or production Activity
  of the Resource (DoDAF:: activityResourceOverlap). ."
  ((|carries| :range |ResourceInteraction| :multiplicity (0 -1) :is-derived-p T
    :documentation
     "Carried ResourceInteraction")
   (|operation| :range |ResourceOperation| :multiplicity (0 1) :is-derived-p T
    :documentation
     "The ResourceOperation associated with a ResourceMessage.")))


;;; =========================================================
;;; ====================== ResourceOperation
;;; =========================================================
(def-meta-stereotype |ResourceOperation| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Operation|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Behavior-ResourceOperation")
 "UPDM:A partial or full realization of Function. MODAF:NA DoDAF:NA"
  ((|realizes| :range |Function| :multiplicity (0 1)
    :opposite (|Function| |realizedBy|)
    :documentation
     "Relationship between a ResourceOperation and a Function.")))


;;; =========================================================
;;; ====================== ResourceParameter
;;; =========================================================
(def-meta-stereotype |ResourceParameter| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Parameter|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Behavior-ResourceParameter")
 "UPDM: Represents inputs and outputs of Function. It is typed by ResourceInteractionItem."
  ())


;;; =========================================================
;;; ====================== ResourcePort
;;; =========================================================
(def-meta-stereotype |ResourcePort| 
   (:model :UPDM21 :superclasses (|ProtocolImplementation|) :extends (UML23:|Port|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Structure-ResourcePort")
 "UPDM: Port is an interaction point for a resource through which it can
  interact with the outside environment. MODAF: An interface (logical or
  physical) provided by a System. A SystemPort may implement a PortType though
  there is no requirement for SystemPorts to be typed (MODAF:: SystemPort).
  DoDAF: An interface (logical or physical) provided by a System (DoDAF::Port).."
  ())


;;; =========================================================
;;; ====================== ResourceRole
;;; =========================================================
(def-meta-stereotype |ResourceRole| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Structure-ResourceRole")
 "UPDM: abstract element."
  ((|RoleKind| :range |RoleKind| :multiplicity (1 1) :default :other
    :documentation
     "Enumeration of the kinds of role a resource can play.")
   (|performsInContext| :range |Function| :multiplicity (0 -1)
    :documentation
     "Functions used by the ResourceRole.")))


;;; =========================================================
;;; ====================== ResourceState
;;; =========================================================
(def-meta-stereotype |ResourceState| 
   (:model :UPDM21 :superclasses (|DesiredState|) :extends (UML23:|State|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Behavior-ResourceState")
 "UPDM: State identified in the context of an ResourceStateDescription. MODAF:N/A
  DoDAF:N/A"
  ())


;;; =========================================================
;;; ====================== ResourceStateMachine
;;; =========================================================
(def-meta-stereotype |ResourceStateMachine| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|StateMachine|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Behavior-ResourceStateMachine")
 "UPDM Artifact that extends a UML StateMachine allied to Resources."
  ())


;;; =========================================================
;;; ====================== Responsibility
;;; =========================================================
(def-meta-stereotype |Responsibility| 
   (:model :UPDM21 :superclasses (|CompetenceRequirer| |OrganizationalResource|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure| |Organizational| |Typical|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Organizational-Typical-Responsibility")
 "UPDM:Asserts that a Post or Organization has specific responsibilities.
  MODAF:NA DoDAF:NA"
  ())


;;; =========================================================
;;; ====================== RoleType
;;; =========================================================
(def-meta-stereotype |RoleType| 
   (:model :UPDM21 :superclasses (|Responsibility|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |OperationalElements| |Structure| |Organizational|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-OperationalElements-Structure-Organizational-RoleType")
 "MODAF: An aspect of a person or organization that enables them to fulfill
  a particular function."
  ())


;;; =========================================================
;;; ====================== Rule
;;; =========================================================
(def-meta-stereotype |Rule| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Structure-Rule")
 "MODAF: An abstract Class that is extended by OperationalConstraint (A rule
  governing an operational behaviour or property.) and ResourceConstraint
  (A rule governing the structural or functional aspects of an implementation
  - this may also include constraints on OrganisationalResources that are
  part of an implementation). DoDAF: Rule: A principle or condition that
  governs behavior; a prescribed guide for conduct or action. Subtype: Constraint:
  The range of permissible states for an object."
  ((|ruleKind| :range |RuleKind| :multiplicity (1 1) :default :constraint)))


;;; =========================================================
;;; ====================== SameAs
;;; =========================================================
(def-meta-stereotype |SameAs| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AllElements| |Ontology|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AllElements-Ontology-SameAs")
 "MODAF: Asserts that two elements refer to the same real-world thing. DoDAF:
  NAA"
  ())


;;; =========================================================
;;; ====================== SecurityAttributesGroup
;;; =========================================================
(def-meta-stereotype |SecurityAttributesGroup| 
   (:model :UPDM21 :superclasses (|PropertySet|) :extends (UML23:|DataType|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |TechnicalStandardsElements| |Data|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-TechnicalStandardsElements-Data-SecurityAttributesGroup")
 "MODAF:NA DoDAF:The group of Information Security Marking attributes in
  which the use of attributes 'classification' and 'ownerProducer' is required.
  This group is to be contrasted with group 'SecurityAttributesOptionGroup'
  in which use of those attributes is optional."
  ())


;;; =========================================================
;;; ====================== SecurityDomain
;;; =========================================================
(def-meta-stereotype |SecurityDomain| 
   (:model :UPDM21 :superclasses (|Node|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-SecurityDomain")
 "MODAF:NA DoDAF: A NodeType whose members (other Nodes, KnownResources)
  all share a common security policy."
  ())


;;; =========================================================
;;; ====================== Semantic
;;; =========================================================
(def-meta-stereotype |Semantic| 
   (:model :UPDM21 :superclasses NIL :extends (UML23:|DataType|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 SOPES) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-SOPES-Semantic")
 "A specialization of    InformationElement    the enables the specification
  of a complete dataset, which is considered meaningful to a community, organization,
  system or application; meeting one or more of the information flow requirements
  specification for a needline. The semantic is defined by the community,
  needline or application interface.."
  ((|containedTransactionals| :range |Transactional| :multiplicity (0 -1)
    :documentation
     "Represents the relationship between a \"Transactional\" and its containing
      \"Semantic\". Meaning that during aggregation process of data represented
      by the \"Transactional\" is gathered into the containing \"Semantic\". When
      all the data represented by the \"Transactionals\" is gathered - the data
      set is complete and ready for formatting and exchange.e.")
   (|identifier| :range |Transactional| :multiplicity (1 1)
    :documentation
     "The    identifier    identifies the subtended Class that holds Unique Identifier
      or Key needed for the construction of the data set. This subtended class
      would contain, as a minimum, the base Global Unique Identifier (e.g., Database
      Key, foreign keys or unique identifier) that would differentiate which
      transactional or wrappers (information element instances) are included
      in the construction of the composite. (e.g., foreign key relationships)
      There exists one and only one    identifier    on each semantic or transactional
      diagram.m.")))


;;; =========================================================
;;; ====================== SemanticAttribute
;;; =========================================================
(def-meta-stereotype |SemanticAttribute| 
   (:model :UPDM21 :superclasses NIL :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 SOPES) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-SOPES-SemanticAttribute")
 "Specialization of Entity Attribute that enables the relationship between
  logical/Interim-Processing and Operational/Business naming conventions."
  ())


;;; =========================================================
;;; ====================== Service
;;; =========================================================
(def-meta-stereotype |Service| 
   (:model :UPDM21 :superclasses (SOAML:|Service| |ServicePort|) :extends (UML23:|Port|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |ServiceElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Structure-Service")
 "MODAF:A type of delivered functionality, specified independently of the
  resources that provide it. DoDAF: mechanism to enable access to a set of
  one or more capabilities , where the access is provided using a prescribed
  interface and is exercised consistent with constraints and policies as
  specified by the service description. The mechanism is a Performer. The
  \"capabilities\" accessed are Resources -- Information, Data, Materiel, Performers,
  and Geo-political Extents.  ."
  ())


;;; =========================================================
;;; ====================== ServiceAccess
;;; =========================================================
(def-meta-stereotype |ServiceAccess| 
   (:model :UPDM21 :superclasses (|SystemResource|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |ServiceElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-ServiceElements-ServiceAccess")
 "UPDM: The mechanism by which a service is accessed MODAF: NA DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== ServiceAttribute
;;; =========================================================
(def-meta-stereotype |ServiceAttribute| 
   (:model :UPDM21 :superclasses (|Property|) :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |ServiceElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Structure-ServiceAttribute")
 "MODAF: A property of Service. DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== ServiceDescription
;;; =========================================================
(def-meta-stereotype |ServiceDescription| 
   (:model :UPDM21 :superclasses (|ArchitecturalDescription|) :extends (UML23:|Package|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |ServiceElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-ServiceElements-ServiceDescription")
 "UPDM: Package containing the elements that describe a service, from DoDAF
  2. DoDAF:Information necessary to interact with the service in such terms
  as the service inputs, outputs, and associated semantics. The service description
  also conveys what is accomplished when the service is invoked and the conditions
  for using the service."
  ())


;;; =========================================================
;;; ====================== ServiceFeature
;;; =========================================================
(def-meta-stereotype |ServiceFeature| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Feature|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |ServiceElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Behavior-ServiceFeature")
 "UPDM:Abstract grouping used to ServiceFunctions to Serviceoperations and
  ServiceMessageHandlers."
  ())


;;; =========================================================
;;; ====================== ServiceFunction
;;; =========================================================
(def-meta-stereotype |ServiceFunction| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Activity|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |ServiceElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Behavior-ServiceFunction")
 "UPDM: A ServiceFunction describes the abstract behavior of ServiceOperations,
  regardless of the actual implementation. MODAF: A type of activity describing
  the functionality of a service. DoDAF: Information necessary to interact
  with the service in such terms as the service inputs, outputs, and associated
  semantics. The service description also conveys what is accomplished when
  the service is invoked and the conditions for using the service. ."
  ())


;;; =========================================================
;;; ====================== ServiceFunctionAction
;;; =========================================================
(def-meta-stereotype |ServiceFunctionAction| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|CallBehaviorAction|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |ServiceElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Behavior-ServiceFunctionAction")
 "UPDM: A call behavior action that invokes the ServiceFunction that needs
  to be preformed. --This concept is required for mapping the architecture
  with UML and does not have a DoDAF or MoDAF equivalent."
  ())


;;; =========================================================
;;; ====================== ServiceFunctionEdge
;;; =========================================================
(def-meta-stereotype |ServiceFunctionEdge| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|ActivityEdge|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |ServiceElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Behavior-ServiceFunctionEdge")
 "UPDM: An extension of <<ActivityEdge>> that is used to model the flow of
  control/objects through a ServiceFunction."
  ())


;;; =========================================================
;;; ====================== ServiceInteraction
;;; =========================================================
(def-meta-stereotype |ServiceInteraction| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Interaction|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |ServiceElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Behavior-ServiceInteraction")
 "UPDM: Interaction for a service interface MODAF: A model representing how
  a set of Service classes interacts with one another (MODAF::ServiceInteractionSpecification)."
  ())


;;; =========================================================
;;; ====================== ServiceInterface
;;; =========================================================
(def-meta-stereotype |ServiceInterface| 
   (:model :UPDM21 :superclasses (SOAML:|ServiceInterface| |PropertySet|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |ServiceElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Structure-ServiceInterface")
 "UPDM: A contractual agreement between two resources that implement protocols
  through which the source service interacts to the destination resource.
  A physical connection between two resources that implements protocols through
  which the source resource can transmit items to the destination resource.
  MODAF: The mechanism by which a Service communicates. DoDAF: An overlap
  between Performers for the purpose of producing a Resource that is consumed
  by the other. (DoDAF::Interface). SOAML: Defines the interface to a Service
  Point or Request Point and is the type of a role in a service contract."
  ())


;;; =========================================================
;;; ====================== ServiceLevelValue
;;; =========================================================
(def-meta-stereotype |ServiceLevelValue| 
   (:model :UPDM21 :superclasses (|ActualProperty|) :extends (UML23:|Slot|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |ServiceElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Structure-ServiceLevelValue")
 "MODAF:A ServiceAttributes indicating the level to which a Resource delivers
  a Service, in a particular environment. DoDAF:NA"
  ())


;;; =========================================================
;;; ====================== ServiceLevelValueSet
;;; =========================================================
(def-meta-stereotype |ServiceLevelValueSet| 
   (:model :UPDM21 :superclasses (|ActualPropertySet|) :extends (UML23:|InstanceSpecification|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |ServiceElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Structure-ServiceLevelValueSet")
 "MODAF:A value specification for a set of ServiceAttributes indicating the
  level to which a Resource delivers a Service, in a particular environment.
  DoDAF:NA"
  ((|resourceBoundary| :range |ServicePort| :multiplicity (0 1)
    :opposite (|ServicePort| |providedByResource|)
    :documentation
     "Service level associated with a port.")))


;;; =========================================================
;;; ====================== ServiceMessage
;;; =========================================================
(def-meta-stereotype |ServiceMessage| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Message|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |ServiceElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Behavior-ServiceMessage")
 "UPDM: Message for use in a Service Interaction Specification, implements
  a resourceInteraction or any of the subtypes."
  ((|carries| :range |Exchange| :multiplicity (0 -1) :is-derived-p T
    :documentation
     "Carried ResourceInteraction.")
   (|operation| :range |ServiceOperation| :multiplicity (0 1) :is-derived-p T)))


;;; =========================================================
;;; ====================== ServiceMessageHandler
;;; =========================================================
(def-meta-stereotype |ServiceMessageHandler| 
   (:model :UPDM21 :superclasses (|ServiceFeature|) :extends (UML23:|Reception|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |ServiceElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Behavior-ServiceMessageHandler")
 "UPDM:An instance of an AsynchronousMessage, applied in the service domain."
  ())


;;; =========================================================
;;; ====================== ServiceOperation
;;; =========================================================
(def-meta-stereotype |ServiceOperation| 
   (:model :UPDM21 :superclasses (|ServiceFeature|) :extends (UML23:|Operation|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |ServiceElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Behavior-ServiceOperation")
 "UPDM: A ServiceOperation provides the access point for invoking the behavior
  of a provided service. The ServiceOperations are defined on ServiceInterfaces
  and mirrored on the providing Resource to handle calls forwarded on by
  the interface. MODAF: a function or procedure which enables programmatic
  communication with a Service via a ServiceInterface (MODAF:: ServiceInterfaceOpration)."
  ((|abstractBehavior| :range |ServiceFunction| :multiplicity (0 1)
    :documentation
     "Links a ServiceOperation to the abstract description of its behavior, as
      provided by a ServiceFunction.")))


;;; =========================================================
;;; ====================== ServiceParameter
;;; =========================================================
(def-meta-stereotype |ServiceParameter| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Parameter|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |ServiceElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Behavior-ServiceParameter")
 "UPDM: Represents inputs and outputs of Service. It is typed by ResourceInteractionItem.
  MODAF: A constant or variable passed into or out of a ServiceInterface
  as part of the execution of a ServiceInterfaceOperation (MODAF:: ServiceInterfaceParameter).
  DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== ServicePolicy
;;; =========================================================
(def-meta-stereotype |ServicePolicy| 
   (:model :UPDM21 :superclasses (#| |UPDMElement| POD|# |Rule|) :extends (UML23:|Constraint|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |ServiceElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Structure-ServicePolicy")
 "UPDM: A constraint governing the consumers and providers of services MODAF:
  A constraint governing one or more Services. DoDAF: Agreement: A consent
  among parties regarding the terms and conditions of activities that said
  parties participate in."
  ())


;;; =========================================================
;;; ====================== ServicePort
;;; =========================================================
(def-meta-stereotype |ServicePort| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |ServiceElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Structure-ServicePort")
 "MODAF:ServiceInterface,The mechanism by which a Service communicates. DoDAF:A
  part of a Performer that specifics a distinct interaction point through
  which the Performer interacts with other Performers. This isolates dependencies
  between performers to particular interaction points rather than to the
  performer as a whole.."
  ((|providedByResource| :range |ServiceLevelValueSet| :multiplicity (0 -1)
    :opposite (|ServiceLevelValueSet| |resourceBoundary|)
    :documentation
     "Port associated with a service level.")))


;;; =========================================================
;;; ====================== ServiceStateMachine
;;; =========================================================
(def-meta-stereotype |ServiceStateMachine| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|StateMachine|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |ServiceElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Behavior-ServiceStateMachine")
 "UPDM Artifact that extends a UML StateMachine."
  ())


;;; =========================================================
;;; ====================== Skill
;;; =========================================================
(def-meta-stereotype |Skill| 
   (:model :UPDM21 :superclasses (|Competence|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |OperationalElements| |Structure| |Organizational|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-OperationalElements-Structure-Organizational-Skill")
 "MODAF:A specific set of abilities defined by knowledge, skills and attitude
  (Competence). DoDAF:The ability, coming from one's knowledge, practice,
  aptitude, etc., to do something well."
  ())


;;; =========================================================
;;; ====================== SkillOfPersonType
;;; =========================================================
(def-meta-stereotype |SkillOfPersonType| 
   (:model :UPDM21 :superclasses (|ProvidesCompetence|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |OperationalElements| |Structure| |Organizational|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-OperationalElements-Structure-Organizational-SkillOfPersonType")
 "UPDM:Alias for ProvidesCompetence, the tuple showing the skills and competencies
  required from a particular role or organization DoDAF:A type property between
  a PersonRoleType and the Skills it entails"
  ())


;;; =========================================================
;;; ====================== Software
;;; =========================================================
(def-meta-stereotype |Software| 
   (:model :UPDM21 :superclasses (|ResourceArtifact|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Structure-Software")
 "MODAF: An executable computer programme. DoDAF: Materiel: Equipment, apparatus
  or supplies that are of interest, without distinction as to its application
  for administrative or combat purposes."
  ())


;;; =========================================================
;;; ====================== Standard
;;; =========================================================
(def-meta-stereotype |Standard| 
   (:model :UPDM21 :superclasses (|SubjectOfForecast|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |TechnicalStandardsElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-TechnicalStandardsElements-Standard")
 "MODAF: A ratified and peer-reviewed specification that is used to guide
  or constrain the architecture. A Standard may be applied to any element
  in the architecture via the [constrainedItem] property of UML::Constraint.
  DoDAF: A formal agreement documenting generally accepted specifications
  or criteria for products, processes, procedures, policies, systems, and/or
  personnel."
  ((|InformationTechnologyStandardCategory| :range |String| :multiplicity (0 -1)
    :documentation
     "The information technology standard category which the <<Standard>> belongs
      to.")
   (|currentStatus| :range |String| :multiplicity (0 1)
    :documentation
     "Current status of the Standard.")
   (|mandatedDate| :range |ISO8601DateTime| :multiplicity (0 1)
    :documentation
     "The date when this version of the Standard was published.")
   (|ratifiedBy| :range |ActualOrganization| :multiplicity (0 -1)
    :opposite (|ActualOrganization| |ratifiedStandards|)
    :documentation
     "Organization that ratified this Standard.")
   (|retiredDate| :range |ISO8601DateTime| :multiplicity (0 1)
    :documentation
     "The date when this version of the Standard was retired.")
   (|shortName| :range |String| :multiplicity (0 1)
    :documentation
     "Short name of the Standard.")
   (|version| :range |String| :multiplicity (0 1)
    :documentation
     "Represents the revision number of the Standard - e.g. \"1.2.1\", \"v2\", \":2004\",
      etc.")))


;;; =========================================================
;;; ====================== StandardConfiguration
;;; =========================================================
(def-meta-stereotype |StandardConfiguration| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Comment|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |TechnicalStandardsElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-TechnicalStandardsElements-StandardConfiguration")
 "MODAF: A UML::Comment that when attached to a CapabilityConfiguration indicates
  that it is a standard pattern for re-use in the architecture. DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== StandardOperationalActivity
;;; =========================================================
(def-meta-stereotype |StandardOperationalActivity| 
   (:model :UPDM21 :superclasses (|OperationalActivity|) :extends (UML23:|Activity|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |OperationalElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-OperationalElements-Behavior-StandardOperationalActivity")
 "MODAF: An OperationalActivity that is a standard procedure that is doctrinal
  . Note: This is equivalent to what some defence organisations call JETLs.
  DoDAF: Work, not specific to a single organization, weapon system or individual,
  that transforms inputs into outputs or changes their state (DoDAF:: Activity)."
  ())


;;; =========================================================
;;; ====================== StatusIndicators
;;; =========================================================
(def-meta-stereotype |StatusIndicators| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Enumeration|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AcquisitionElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AcquisitionElements-Structure-StatusIndicators")
 "UPDM: Specifies a status for a ProjectTheme (such as training status).
  MODAF: An enumeration of the possible statuses (MODAF::StatusIndicator)
  for one of more ProjectThemes."
  ())


;;; =========================================================
;;; ====================== StereotypeExtension
;;; =========================================================
(def-meta-stereotype |StereotypeExtension| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Comment|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |AllElements| |Ontology|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AllElements-Ontology-StereotypeExtension")
 "MODAF: Defines an additional stereotype used in the architecture which
  is not defined in this meta-model. The body attribute contains the name
  of the new stereotype. The extendedStereotype tagged value shall contain
  the name of the meta-model stereotype which is extended. The ontologyReference
  tagged value shall be populated with a reference to the external ontology
  element represented by the new stereotype. DoDAF: NA"
  ((|ontologyReference| :range |OntologyReference| :multiplicity (0 -1)
    :documentation
     "Ontologicalrefecence associated with an Stereotype extension.")))


;;; =========================================================
;;; ====================== StructuralPart
;;; =========================================================
(def-meta-stereotype |StructuralPart| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |StrategicElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-StrategicElements-Structure-StructuralPart")
 "UPDM: An EnterprisePhase can be sub-divided into structural and temporal
  parts. StructuralPart describes the EnterprisePhase elements that describe
  the structure. MODAF: Asserts that one EnterprisePhase is a spatial part
  of another, (MODAF::EnterpriseStructure) Note:- This is a topological structuring
  relationship, hence the EnterprisePhase may be physically disjoint"
  ())


;;; =========================================================
;;; ====================== SubjectOfForecast
;;; =========================================================
(def-meta-stereotype |SubjectOfForecast| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Structure-SubjectOfForecast")
 "MODAF: Abstract Any element that may be subject to a Forecast"
  ())


;;; =========================================================
;;; ====================== SubjectOfOperationalConstraint
;;; =========================================================
(def-meta-stereotype |SubjectOfOperationalConstraint| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-SubjectOfOperationalConstraint")
 "MODAF: Abstract. An element of the architecture that may be subject to
  an OperationalConstraint or OperationalStateDescription."
  ())


;;; =========================================================
;;; ====================== SubjectOfOperationalStateMachine
;;; =========================================================
(def-meta-stereotype |SubjectOfOperationalStateMachine| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |OperationalElements| |Behavior|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Behavior-SubjectOfOperationalStateMachine")
 "UPDM Abstract Element: The element being described by the state machine."
  ())


;;; =========================================================
;;; ====================== SubjectOfResourceConstraint
;;; =========================================================
(def-meta-stereotype |SubjectOfResourceConstraint| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Structure-SubjectOfResourceConstraint")
 "MODAF: Abstract. Anything that may be constrained by a ResourceConstraint."
  ())


;;; =========================================================
;;; ====================== System
;;; =========================================================
(def-meta-stereotype |System| 
   (:model :UPDM21 :superclasses (|ResourceArtifact|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |SystemElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-SystemElements-Structure-System")
 "A DoDAF alias for ResourceArtifact."
  ())


;;; =========================================================
;;; ====================== SystemResource
;;; =========================================================
(def-meta-stereotype |SystemResource| 
   (:model :UPDM21 :superclasses (|Participant| |ResourceInteractionItem| |SubjectOfForecast| |OperationalExchangeItem|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Structure-SystemResource")
 "UPDM: Abstract element used as placeholder for resource properties."
  ((|milestone| :range |ActualProjectMilestone| :multiplicity (0 -1)
    :opposite (|ActualProjectMilestone| |resource|)
    :documentation
     "A Linked milestone.")))


;;; =========================================================
;;; ====================== TechnicalStandard
;;; =========================================================
(def-meta-stereotype |TechnicalStandard| 
   (:model :UPDM21 :superclasses (|Standard|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |TechnicalStandardsElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-TechnicalStandardsElements-TechnicalStandard")
 "MODAF:A ratified and peer-reviewed specification that is used to guide
  or constrain the architecture. A Standard may be applied to any element
  in the architecture via the [constrainedItem] property of UML::Constraint
  (Standard). DoDAF:Technical standards document specific technical methodologies
  and practices to design and implement."
  ())


;;; =========================================================
;;; ====================== TemporalPart
;;; =========================================================
(def-meta-stereotype |TemporalPart| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |StrategicElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-StrategicElements-Structure-TemporalPart")
 "UPDM Artifact: An EnterprisePhase can be sub-divided into structural and
  temporal parts. TemporalPart describes the EnterprisePhase elements that
  have a time based nature. MODAF: Asserts that one EnterprisePhase is a
  temporal part of another. Note: This means that both EnterprisePhases have
  the same spatial extent - i..e this is only a temporal structure (MODAF::
  EnterpriseTemporalPart)."
  ())


;;; =========================================================
;;; ====================== Transactional
;;; =========================================================
(def-meta-stereotype |Transactional| 
   (:model :UPDM21 :superclasses NIL :extends (UML23:|DataType|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 SOPES) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-SOPES-Transactional")
 "A specialization of    InformationElement    the enables the specification
  of reusable information building blocks, upon which multiple community
  semantics can be built. Transactionals describe the constructions plans
  for data sets realizable from the underlying information/data store. The
  transactional links the community semantics to the structures and business
  rules information/data store.e."
  ((|containedTransactionals| :range |Transactional| :multiplicity (0 -1)
    :documentation
     "Represents the relationship between a \"Transactional\" and its containing
      \"Transactional\". Meaning that during the data aggregation process of data
      represented by the \"Transactional\" is gathered into the containing \"Transactional\".")
   (|containedWrappers| :range |Wrapper| :multiplicity (1 -1)
    :documentation
     "Represents the relationship between a \"Wrapper\" and its containing \"Transactional\".
      Meaning that during the data aggregation process of data represented by
      the \"Wrapper\" is gathered into the containing \"Transactional\"..")
   (|identifier| :range |Wrapper| :multiplicity (1 1)
    :documentation
     "The    identifier    identifies the subtended Class that holds Unique Identifier
      or Key needed for the construction of the data set. This subtended class
      would contain, as a minimum, the base Global Unique Identifier (e.g., Database
      Key, foreign keys or unique identifier) that would differentiate which
      transactional or wrappers (information element instances) are included
      in the construction of the composite. (e.g., foreign key relationships)
      There exists one and only one    identifier    on each semantic or transactional
      diagram.m.")))


;;; =========================================================
;;; ====================== TransactionalAttribute
;;; =========================================================
(def-meta-stereotype |TransactionalAttribute| 
   (:model :UPDM21 :superclasses NIL :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 SOPES) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-SOPES-TransactionalAttribute")
 "Specialization of Entity Attribute that enables the relationship between
  logical and Interim processing Attribute naming conventions.."
  ())


;;; =========================================================
;;; ====================== Trustline
;;; =========================================================
(def-meta-stereotype |Trustline| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Dependency|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |OperationalElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-OperationalElements-Structure-Trustline")
 "MODAF:Asserts that the trustingParty (either a Node or a KnownResource)
  trusts the trustedParty to a given level (indicated by the level attribute).
  Note: No unit of measure is associated with the level - security architects
  muist define their own scale of trust levels for a given architecture or
  set of architectures. DoDAF:NAA"
  ((|level| :range |String| :multiplicity (0 1)
    :documentation
     "String denoting the level of Trust in the information source.")))


;;; =========================================================
;;; ====================== UPDMElement
;;; =========================================================
(def-meta-stereotype |UPDMElement| 
   (:model :UPDM21 :superclasses NIL :extends NIL
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-UPDMElement")
 "UPDM Artifact: Super type for many of the UPDM elements. It provides a
  means of extending UPDM elements in a common way. With links to the measurement
  set, it also allows quantitative metrics to be associated with structural
  and behavioral elements."
  ((URI\  :range |String| :multiplicity (0 1)
    :documentation
     "Unique identifier for the element.")
   (|actualPropertySet| :range |ActualPropertySet| :multiplicity (0 -1)
    :opposite (|ActualPropertySet| |appliesTo|)
    :documentation
     "The actual measurements to which the element must conform.")
   (|conformsTo| :range |Standard| :multiplicity (0 -1)
    :documentation
     "Standard that this UPDM element is conforming to.")
   (|endBoundaryType| :range |ISO8601DateTime| :multiplicity (0 1)
    :documentation
     "End time of boundary.")
   (|propertySet| :range |PropertySet| :multiplicity (0 -1)
    :opposite (|PropertySet| |appliesTo|)
    :documentation
     "Types of measurements corresponding to the actual measurements.")
   (|startBoundaryType| :range |ISO8601DateTime| :multiplicity (0 1)
    :documentation
     "Start time of a boundary.")))


;;; =========================================================
;;; ====================== VersionOfConfiguration
;;; =========================================================
(def-meta-stereotype |VersionOfConfiguration| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Structure-VersionOfConfiguration")
 "MODAF:Asserts that a CapabilityConfiguration is a version of a WholeLifeConfiguration.
  DoDAF:NA"
  ())


;;; =========================================================
;;; ====================== View
;;; =========================================================
(def-meta-stereotype |View| 
   (:model :UPDM21 :superclasses (SYSML12:|View| |UPDMElement|) :extends (UML23:|Package|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Views|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Views-View")
 "MODAF:A specification of a way to present an aspect of the architecture.
  Views are defined with one or more purposes in mind - e.g. showing the
  logical topology of the enterprise, describing a process model, defining
  a data model, etc. DoDAF:NA"
  ((|architecturalElements| :range |UPDMElement| :multiplicity (0 -1)
    :documentation
     "Architectural elements contained in the view.")
   (|coversPhase| :range |EnterprisePhase| :multiplicity (0 -1)
    :documentation
     "The EnterprisePhase that is covered by a view.")
   (|description| :range |String| :multiplicity (0 1)
    :documentation
     "Description of the view.")
   (|viewpoints| :range |Viewpoint| :multiplicity (0 -1)
    :documentation
     "The Viewpoints associated with a View.")))


;;; =========================================================
;;; ====================== Viewpoint
;;; =========================================================
(def-meta-stereotype |Viewpoint| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Package|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |AllElements| |Views|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Views-Viewpoint")
 "MODAF:An instance of the specified View. DoDAF:NA"
  ((|concerns| :range |String| :multiplicity (0 -1)
    :documentation
     "String,the concerns to be addressed by the viewpoint.")
   (|languages| :range |String| :multiplicity (0 -1)
    :documentation
     "String, the languages used to express the viewpoint.")
   (|methods| :range |String| :multiplicity (0 -1)
    :documentation
     "String, the methods employed in the development of the viewpoint.")
   (|purpose| :range |String| :multiplicity (0 1)
    :documentation
     "String, the purpose of the viewpoint.")
   (|stakeholders| :range |String| :multiplicity (0 -1)
    :documentation
     "String, the stakeholders of the architecture.")))


;;; =========================================================
;;; ====================== Vision
;;; =========================================================
(def-meta-stereotype |Vision| 
   (:model :UPDM21 :superclasses (|EnterpriseVision|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |DoDAF| |StrategicElements|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-StrategicElements-Vision")
 "MODAF:The overall aims of an enterprise over a given period of time. (EnterpriseVision)
  DoDAF:An end that describes the future state of the enterprise, without
  regard to how it is to be achieved; a mental image of what the future will
  or could be like."
  ())


;;; =========================================================
;;; ====================== VisionStatement
;;; =========================================================
(def-meta-stereotype |VisionStatement| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Comment|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |StrategicElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-StrategicElements-Structure-VisionStatement")
 "MODAF: A high-level textual description of an EnterpriseVision. DoDAF:
  An end that describes the future state of the enterprise, without regard
  to how it is to be achieved; a mental image of what the future will or
  could be like (DODAF::Vision)."
  ())


;;; =========================================================
;;; ====================== WholeLifeConfiguration
;;; =========================================================
(def-meta-stereotype |WholeLifeConfiguration| 
   (:model :UPDM21 :superclasses (|UPDMElement|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 |Core| |SystemsElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Structure-WholeLifeConfiguration")
 "MODAF:A set of versions of a CapabilityConfiguration over time. DoDAF:NA"
  ())


;;; =========================================================
;;; ====================== WholeLifeEnterprise
;;; =========================================================
(def-meta-stereotype |WholeLifeEnterprise| 
   (:model :UPDM21 :superclasses (|EnterprisePhase|) :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 MODAF |StrategicElements| |Structure|) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-StrategicElements-Structure-WholeLifeEnterprise")
 "UPDM: A WholeLifeEnterprise is a purposeful endeavor of any size involving
  people, organizations and supporting systems (including physical systems
  and/or processes). MODAF: An EnterprisePhase that represents the whole
  existance of an enterprise. DoDAF: NA"
  ())


;;; =========================================================
;;; ====================== Wrapper
;;; =========================================================
(def-meta-stereotype |Wrapper| 
   (:model :UPDM21 :superclasses NIL :extends (UML23:|Class|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 SOPES) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-SOPES-Wrapper")
 "A specialization of    EntityItem    that links a Transactional to the
  logical information/data model Elements (e.g., DB Table). Wrappers represent
  a single instance of    EntityItem    data."
  ())


;;; =========================================================
;;; ====================== WrapperAttribute
;;; =========================================================
(def-meta-stereotype |WrapperAttribute| 
   (:model :UPDM21 :superclasses NIL :extends (UML23:|Property|)
 :packages (UPDM UPDM\ L1 UPDM\ L0 SOPES) 
 :xmi-id "UPDM-UPDM_L1-UPDM_L0-SOPES-WrapperAttribute")
 "Specialization of Entity Attribute that enables the relationship between
  physical and logical attribute naming conventions."
  ())


(def-meta-package |AcquisitionElements| |Core| :UPDM21 
   (|Milestone|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AcquisitionElements")

(def-meta-package |AcquisitionElements| |DoDAF| :UPDM21 
   (|ProjectActivity|
    |ActivityPartOfProject|
    |Project|
    |ProjectActivityEdge|
    |ProjectActivityAction|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AcquisitionElements")

(def-meta-package |AcquisitionElements| MODAF :UPDM21 
   (|Milestones|
    |Structure|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AcquisitionElements")

(def-meta-package |Actual| |Organizational| :UPDM21 
   (|CompetenceProvider|
    |ActualOrganization|
    |ActualOrganizationalResource|
    |ActualPost|
    |ActualOrganizationRelationship|
    |ActualPerson|
    |ActualOrganizationRole|
    |FillsPost|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Organizational-Actual")

(def-meta-package |AllElements| |Core| :UPDM21 
   (|Measurements|
    |UPDMElement|
    |Environment|
    |Exchange|
    |Views|
    |Structure|
    |Behavior|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements")

(def-meta-package |AllElements| |DoDAF| :UPDM21 
   (|Information|
    |InformationKind|
    |Behavior|
    |Measurements|
    |Environment|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AllElements")

(def-meta-package |AllElements| MODAF :UPDM21 
   (|Ontology|
    |Environment|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AllElements")

(def-meta-package |Behavior| |OperationalElements| :UPDM21 
   (|NodeOperation|
    |OperationalParameter|
    |OperationalState|
    |OperationalActivityAction|
    |OperationalActivity|
    |OperationalMessage|
    |OperationalStateDescription|
    |OperationalActivityEdge|
    |SubjectOfOperationalStateMachine|
    |OperationalEventTrace|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Behavior")

(def-meta-package |Behavior| |SystemsElements| :UPDM21 
   (|ResourceStateMachine|
    |ResourceParameter|
    |FunctionEdge|
    |Function|
    |ResourceEventTrace|
    |ResourceMessage|
    |ResourceState|
    |ResourceOperation|
    |FunctionAction|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Behavior")

(def-meta-package |Behavior| |AllElements| :UPDM21 
   (|Activity|
    |IsCapableOfPerforming|
    |Implements|
    |CapableElement|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Behavior")

(def-meta-package |Behavior| |ServiceElements| :UPDM21 
   (|ServiceMessageHandler|
    |ServiceOperation|
    |ServiceMessage|
    |ServiceFeature|
    |ServiceInteraction|
    |ServiceFunctionEdge|
    |ServiceFunction|
    |ServiceStateMachine|
    |ServiceParameter|
    |ServiceFunctionAction|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Behavior")

(def-meta-package |Behavior| |AllElements| :UPDM21 
   (|ActivityPerformedByPerformer|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AllElements-Behavior")

(def-meta-package |Behavior| |OperationalElements| :UPDM21 
   (|ActivitySubject|
    |StandardOperationalActivity|
    |OwnsProcess|
    |Process|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-OperationalElements-Behavior")

(def-meta-package |Core| UPDM\ L0 :UPDM21 
   (|OperationalElements|
    |SystemsElements|
    |ExternalTypes|
    |AllElements|
    |TechnicalStandardsElements|
    |ServiceElements|
    |StrategicElements|
    |AcquisitionElements|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core")

(def-meta-package |Data| |OperationalElements| :UPDM21 
   (|LogicalDataModel|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Data")

(def-meta-package |Data| |SystemsElements| :UPDM21 
   (|PhysicalDataModel|
    |DataModel|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Data")

(def-meta-package |Data| |TechnicalStandardsElements| :UPDM21 
   (|Details|
    |EntityRelationship|
    |EntityAttribute|
    |EntityItem|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-TechnicalStandardsElements-Data")

(def-meta-package |Data| |TechnicalStandardsElements| :UPDM21 
   (|SecurityAttributesGroup|
    |AssociationOfInformation|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-TechnicalStandardsElements-Data")

(def-meta-package |DoDAF| UPDM\ L0 :UPDM21 
   (|TechnicalStandardsElements|
    |AllElements|
    |ServiceElements|
    |AcquisitionElements|
    |SystemElements|
    |OperationalElements|
    |StrategicElements|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF")

(def-meta-package |Environment| |AllElements| :UPDM21 
   (|ConditionType|
    |ActualLocation|
    |LocationKind|
    |LocationHolder|
    |Environment|
    |LocationTypeKind|
    |LocationType|
    |EnvironmentProperty|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Environment")

(def-meta-package |Environment| |AllElements| :UPDM21 
   (|ConditionProperty|
    |GeoPoliticalExtentKind|
    |GeoPoliticalExtentType|
    |GeoPoliticalExtentTypeKind|
    |Condition|
    |Location|
    |GeoPoliticalExtent|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AllElements-Environment")

(def-meta-package |Environment| |AllElements| :UPDM21 
   (|Climate|
    |LightCondition|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AllElements-Environment")

(def-meta-package |ExternalTypes| |Core| :UPDM21 
   (|ISO8601DateTime|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ExternalTypes")

(def-meta-package |Flows| |OperationalElements| :UPDM21 
   (|OperationalExchangeKind|
    |OperationalExchangeItem|
    |Command|
    |OperationalExchange|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Flows")

(def-meta-package |Flows| |SystemsElements| :UPDM21 
   (|ResourceInteractionItem|
    |ResourceInteraction|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Flows")

(def-meta-package |Flows| |OperationalElements| :UPDM21 
   (|Control|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-OperationalElements-Flows")

(def-meta-package MODAF UPDM\ L0 :UPDM21 
   (|OperationalElements|
    |AcquisitionElements|
    |TechnicalStandardsElements|
    |StrategicElements|
    |AllElements|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF")

(def-meta-package |Measurements| |AllElements| :UPDM21 
   (|PropertySet|
    |ActualPropertySet|
    |Measurement|
    |MeasurementSet|
    |Property|
    |ActualProperty|
    |ActualMeasurement|
    |ActualPropertySetKind|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Measurements")

(def-meta-package |Measurements| |AllElements| :UPDM21 
   (|Measure|
    |MeasureType|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-AllElements-Measurements")

(def-meta-package |Milestone| |AcquisitionElements| :UPDM21 
   (|ActualProject|
    |ActualProjectMilestoneRole|
    |ProjectMilestoneRole|
    |ProjectType|
    |OrganizationalProjectRelationship|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AcquisitionElements-Milestone")

(def-meta-package |Milestones| |AcquisitionElements| :UPDM21 
   (|IncrementMilestone|
    |ProjectSequence|
    |ActualProjectMilestone|
    |OutOfServiceMilestone|
    |ProjectOwnership|
    |MilestoneSequence|
    |ProjectMilestone|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AcquisitionElements-Milestones")

(def-meta-package |Milestones| |StrategicElements| :UPDM21 
   (|NoLongerUsedMilestone|
    |DeployedMilestone|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-StrategicElements-Milestones")

(def-meta-package |Ontology| |AllElements| :UPDM21 
   (|ExternalTupleType|
    |ExternalIndividual|
    |ExternalTuple|
    |SameAs|
    |Definition|
    |OntologyReference|
    |Alias|
    |StereotypeExtension|
    |Overlap|
    |ExternalType|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AllElements-Ontology")

(def-meta-package |OperationalElements| |Core| :UPDM21 
   (|Structure|
    |Behavior|
    |Flows|
    |Data|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements")

(def-meta-package |OperationalElements| |DoDAF| :UPDM21 
   (|Structure|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-OperationalElements")

(def-meta-package |OperationalElements| MODAF :UPDM21 
   (|Structure|
    |Behavior|
    |Flows|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-OperationalElements")

(def-meta-package |Organizational| |Structure| :UPDM21 
   (|Actual|
    |Typical|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Organizational")

(def-meta-package |Organizational| |Structure| :UPDM21 
   (|PersonType|
    |IndividualPersonRole|
    |SkillOfPersonType|
    |Skill|
    |OrganizationType|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-OperationalElements-Structure-Organizational")

(def-meta-package |Organizational| |Structure| :UPDM21 
   (|RoleType|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-OperationalElements-Structure-Organizational")

(def-meta-package SOPES UPDM\ L0 :UPDM21 
   (|Transactional|
    |Wrapper|
    |Semantic|
    |SemanticAttribute|
    |TransactionalAttribute|
    |Contract|
    |WrapperAttribute|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-SOPES")

(def-meta-package |ServiceElements| |Core| :UPDM21 
   (|Structure|
    |Behavior|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements")

(def-meta-package |ServiceElements| |DoDAF| :UPDM21 
   (|ServiceAccess|
    |ServiceDescription|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-ServiceElements")

(def-meta-package |StrategicElements| |Core| :UPDM21 
   (|Structure|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-StrategicElements")

(def-meta-package |StrategicElements| |DoDAF| :UPDM21 
   (|ActivityPartOfCapability|
    |CapabilityOfPerformer|
    |Vision|
    |DesiredEffect|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-StrategicElements")

(def-meta-package |StrategicElements| MODAF :UPDM21 
   (|Milestones|
    |Structure|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-StrategicElements")

(def-meta-package |Structure| |OperationalElements| :UPDM21 
   (|Organizational|
    |ConceptItem|
    |NodeParent|
    |Mission|
    |ArbitraryConnector|
    |NodeRole|
    |HighLevelOperationalConcept|
    |ConceptRole|
    |Competence|
    |LogicalArchitecture|
    |Needline|
    |SecurityDomain|
    |OperationalConstraint|
    |NodePort|
    |SubjectOfOperationalConstraint|
    |KnownResource|
    |Node|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure")

(def-meta-package |Structure| |SystemsElements| :UPDM21 
   (|SubjectOfForecast|
    |ResourcePort|
    |RoleKind|
    |WholeLifeConfiguration|
    |ResourceArtifact|
    |ResourceRole|
    |ResourceInterface|
    |FieldedCapability|
    |Forecast|
    |ResourceConnector|
    |PhysicalResource|
    |Software|
    |ResourceConstraint|
    |SystemResource|
    |PhysicalArchitecture|
    |SubjectOfResourceConstraint|
    |Materiel|
    |VersionOfConfiguration|
    |CapabilityConfiguration|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements-Structure")

(def-meta-package |Structure| |AllElements| :UPDM21 
   (|ExchangeElement|
    |Participant|
    |Resource|
    |Rule|
    |RuleKind|
    |ExchangeElementKind|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Structure")

(def-meta-package |Structure| |ServiceElements| :UPDM21 
   (|ServiceInterface|
    |ServicePort|
    |ServiceLevelValueSet|
    |Service|
    |ServiceAttribute|
    |AsynchronousMessage|
    |ServicePolicy|
    |ServiceLevelValue|
    |Request|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-ServiceElements-Structure")

(def-meta-package |Structure| |StrategicElements| :UPDM21 
   (|DesiredState|
    |VisionStatement|
    |MapsToCapability|
    |Desirer|
    |EnterpriseVision|
    |EnterprisePhase|
    |TemporalPart|
    |Exhibits|
    |CapabilityProperty|
    |EnterpriseGoal|
    |StructuralPart|
    |Capability|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-StrategicElements-Structure")

(def-meta-package |Structure| |SystemElements| :UPDM21 
   (|System|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-SystemElements-Structure")

(def-meta-package |Structure| |OperationalElements| :UPDM21 
   (|Organizational|
    |Performer|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-OperationalElements-Structure")

(def-meta-package |Structure| |OperationalElements| :UPDM21 
   (|Organizational|
    |Energy|
    |Trustline|
    |ProblemDomain|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-OperationalElements-Structure")

(def-meta-package |Structure| |AcquisitionElements| :UPDM21 
   (|ProjectStatus|
    |ProjectTheme|
    |StatusIndicators|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-AcquisitionElements-Structure")

(def-meta-package |Structure| |StrategicElements| :UPDM21 
   (|WholeLifeEnterprise|
    |EnduringTask|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-StrategicElements-Structure")

(def-meta-package |SwAF| UPDM\ L0 :UPDM21 
   (|DevelopmentStatus|
    |DesignRule|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-SwAF")

(def-meta-package |SysML| NIL :UPDM21 
   () :xmi-id NIL)

(def-meta-package |SystemElements| |DoDAF| :UPDM21 
   (|Structure|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-SystemElements")

(def-meta-package |SystemsElements| |Core| :UPDM21 
   (|Structure|
    |Flows|
    |Behavior|
    |Data|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-SystemsElements")

(def-meta-package |TechnicalStandardsElements| |Core| :UPDM21 
   (|Standard|
    |StandardConfiguration|
    |ProtocolImplementation|
    |Data|
    |Protocol|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-TechnicalStandardsElements")

(def-meta-package |TechnicalStandardsElements| |DoDAF| :UPDM21 
   (|FunctionalStandard|
    |Data|
    |TechnicalStandard|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-DoDAF-TechnicalStandardsElements")

(def-meta-package |TechnicalStandardsElements| MODAF :UPDM21 
   (|ProtocolLayer|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-MODAF-TechnicalStandardsElements")

(def-meta-package |Typical| |Organizational| :UPDM21 
   (|CompetenceRequirer|
    |Responsibility|
    |ProvidesCompetence|
    |Organization|
    |Post|
    |OrganizationalResource|
    |Person|
    |RequiresCompetence|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-OperationalElements-Structure-Organizational-Typical")

(def-meta-package UML\ 2.3 NIL :UPDM21 
   () :xmi-id NIL)

(def-meta-package UPDM NIL :UPDM21 
   (UPDM\ L1) :xmi-id "UPDM")

(def-meta-package UPDM\ L0 UPDM\ L1 :UPDM21 
   (|Core|
    |DoDAF|
    MODAF
    SOPES
    |SwAF|) :xmi-id "UPDM-UPDM_L1-UPDM_L0")

(def-meta-package UPDM\ L1 UPDM :UPDM21 
   (UPDM\ L0) :xmi-id "UPDM-UPDM_L1")

(def-meta-package |Views| |AllElements| :UPDM21      
   (|ArchitectureFrameworkKind|
    |ArchitecturalReference|
    |View|
    |ArchitecturalDescription|
    |Metadata|
    |ArchitectureMetadata|
    |Viewpoint|) :xmi-id "UPDM-UPDM_L1-UPDM_L0-Core-AllElements-Views")

(in-package :mofi)


(with-slots (mofi::abstract-classes mofi:ns-uri mofi:ns-prefix) mofi:*model*
     (setf mofi::abstract-classes 
        '(UPDM:|Activity|
          UPDM:|ActivitySubject|
          UPDM:|ActualOrganizationalResource|
          UPDM:|CapableElement|
          UPDM:|CompetenceProvider|
          UPDM:|CompetenceRequirer|
          UPDM:|ConceptItem|
          UPDM:|ConditionType|
          UPDM:|DataModel|
          UPDM:|DesiredState|
          UPDM:|Desirer|
          UPDM:|Exchange|
          UPDM:|LocationHolder|
          UPDM:|NodeParent|
          UPDM:|OntologyReference|
          UPDM:|OperationalExchangeItem|
          UPDM:|OrganizationalResource|
          UPDM:|Participant|
          UPDM:|PhysicalResource|
          UPDM:|Process|
          UPDM:|PropertySet|
          UPDM:|ProtocolImplementation|
          UPDM:|Resource|
          UPDM:|ResourceInteractionItem|
          UPDM:|Rule|
          UPDM:|ServiceFeature|
          UPDM:|ServicePort|
          UPDM:|SubjectOfForecast|
          UPDM:|SubjectOfOperationalConstraint|
          UPDM:|SubjectOfOperationalStateMachine|
          UPDM:|SubjectOfResourceConstraint|
          UPDM:|SystemResource|
          UPDM:|UPDMElement|))
     (setf mofi:ns-uri "http://www.omg.org/spec/UPDM/20121004")
     (setf mofi:ns-prefix "updm"))
