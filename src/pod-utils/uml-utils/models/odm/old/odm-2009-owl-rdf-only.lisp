;;; Automatically created by pop-gen at 2011-12-28 12:51:16.
;;; Source file is 08-09-08-owl-rdf-cmof-clean.xmi

(in-package :ODM)

;;; =========================================================
;;; ====================== AllValuesFromRestriction
;;; =========================================================
(def-mm-class |AllValuesFromRestriction| :ODM (|OWLRestriction|)
 "The value constraint owl:allValuesFrom is a built-in OWL property that
  links a restriction class to either a class description or a data range.
  A restriction containing an owl:allValuesFrom constraint is used to describe
  a class of all individuals for which all values of the property under consideration
  are either members of the class extension of the class description or are
  data values within the specified data range. In other words, it defines
  a class of individuals x for which holds that if the pair (x,y) is an instance
  of P (the property concerned), then y should be an instance of the class
  description or a value in the data range, respectively."
  ((|OWLallValuesFromClass| :range |OWLClass| :multiplicity (0 1))
   (|OWLallValuesFromDataRange| :range |OWLDataRange| :multiplicity (0 1))))

;;; =========================================================
;;; ====================== BlankNode
;;; =========================================================
(def-mm-class |BlankNode| :ODM (|Node|)
 "A blank node is a node that is not a URI reference or a literal. In the
  RDF abstract syntax, a blank node is simply a unique node that can be used
  in one or more RDF statements, but has no intrinsic name. A convention
  used to refer to blank nodes by some linear representations of an RDF graph
  is to use a blank node identifier, which is a local identifier that can
  be distinguished from URIs and literals. When graphs are merged, their
  blank nodes must be kept distinct if meaning is to be preserved. Blank
  node identifiers are not part of the RDF abstract syntax, and the representation
  of triples containing blank nodes is dependent on the particular concrete
  syntax used, thus no constraints are provided here on blank node identifiers.
  They are included strictly as a placeholder for tool vendors whose applications
  require them, and in particular, for interoperability among such tools."
  ((|nodeID| :range |OclAny| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== CardinalityRestriction
;;; =========================================================
(def-mm-class |CardinalityRestriction| :ODM (|OWLRestriction|)
 "The cardinality constraint owl:cardinality is a built-in OWL property that
  links a restriction class to a data value belonging to the range of the
  XML Schema datatype xsd:nonNegativeInteger. A restriction containing an
  owl:cardinality constraint describes a class of all individuals that have
  exactly N semantically distinct values (individuals or data values) for
  the property concerned, where N is the value of the cardinality constraint.
  Syntactically, the cardinality constraint is represented as an RDF property
  element with the corresponding rdf:datatype attribute."
  ((|OWLcardinality| :range |TypedLiteral| :multiplicity (1 1))))

;;; =========================================================
;;; ====================== ComplementClass
;;; =========================================================
(def-mm-class |ComplementClass| :ODM (|OWLClass|)
 "An owl:complementOf statement describes a class for which the class extension
  contains exactly those individuals that do not belong to the class extension
  of the class description that is the object of the statement. owl:complementOf
  is analogous to logical negation: the class extension consists of those
  individuals that are NOT members of the class extension of the complement
  class."
  ((|OWLcomplementOf| :range |OWLClass| :multiplicity (1 1))))

;;; =========================================================
;;; ====================== Document
;;; =========================================================
(def-mm-class |Document| :ODM (|RDFSResource|)
 "RDF's conceptual model is a graph. RDF also provides an XML syntax for
  writing down and exchanging RDF graphs, called RDF/XML. An RDF document
  is a serialization of an RDF graph into a concrete syntax, as specified
  in the RDF/XML Syntax document, which provides the container for the graph,
  and conventionally also contains declarations of the XML namespaces referenced
  by the statements in the document."
  ((|localName| :range |LocalName| :multiplicity (0 -1) :is-composite-p T)
   (|namespaceDefinition| :range |NamespaceDefinition| :multiplicity (0 -1) :is-composite-p T)
   (|triple| :range |Triple| :multiplicity (1 -1) :is-ordered-p T
    :opposite (|Triple| |document|))
   (|xmlBase| :range |Namespace| :multiplicity (0 -1))))

;;; =========================================================
;;; ====================== EnumeratedClass
;;; =========================================================
(def-mm-class |EnumeratedClass| :ODM (|OWLClass|)
 "A class description of the enumeration kind is defined with the owl:oneOf
  property. The value of this built-in OWL property must be a list of individuals
  that are the instances of the class. This enables a class to be described
  by exhaustively enumerating its instances."
  ((|OWLoneOf| :range |Individual| :multiplicity (0 -1))))

;;; =========================================================
;;; ====================== FunctionalProperty
;;; =========================================================
(def-mm-class |FunctionalProperty| :ODM (|Property|)
 "A functional property is a property that can have only one (unique) value
  y for each instance x, i.e. there cannot be two distinct values y1 and
  y2 such that the pairs (x,y1) and (x,y2) are both instances of this property.
  Both object properties and datatype properties can be declared as \"functional\".
  For this purpose, OWL defines the built-in class owl:FunctionalProperty
  as a special subclass of the RDF class rdf:Property."
  ())

;;; =========================================================
;;; ====================== HasValueRestriction
;;; =========================================================
(def-mm-class |HasValueRestriction| :ODM (|OWLRestriction|)
 "The value constraint owl:hasValue is a built-in OWL property that links
  a restriction class to a value V, which can be either an individual or
  a data value. A restriction containing a owl:hasValue constraint describes
  a class of all individuals for which the property concerned has at least
  one value semantically equal to V (it may have other values as well)."
  ((|OWLhasIndividualValue| :range |Individual| :multiplicity (0 1))
   (|OWLhasLiteralValue| :range |RDFSLiteral| :multiplicity (0 1))))

;;; =========================================================
;;; ====================== Individual
;;; =========================================================
(def-mm-class |Individual| :ODM (|OWLUniverse| |RDFSResource|)
 "Individuals are defined with individual axioms (also called facts). Two
  types of facts are supported in OWL: (1) Facts about class membership and
  property values of individuals, and (2) Facts about individual identity.
  Many facts are statements that define class membership of individuals and
  property values of individuals; these can also refer to anonymous individuals."
  ((|OWLdifferentFrom| :range |Individual| :multiplicity (0 -1))
   (|OWLsameAs| :range |Individual| :multiplicity (0 -1))))

;;; =========================================================
;;; ====================== IntersectionClass
;;; =========================================================
(def-mm-class |IntersectionClass| :ODM (|OWLClass|)
 "The owl:intersectionOf property links a class to a list of class descriptions.
  An owl:intersectionOf statement describes a class for which the class extension
  contains precisely those individuals that are members of the class extension
  of all class descriptions in the list."
  ((|OWLintersectionOf| :range |OWLClass| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== InverseFunctionalProperty
;;; =========================================================
(def-mm-class |InverseFunctionalProperty| :ODM (|OWLObjectProperty|)
 "If a property is declared to be inverse-functional, then the object of
  a property statement uniquely determines the subject (some individual).
  More formally, if we state that P is an owl:InverseFunctionalProperty,
  then this asserts that a value y can only be the value of P for a single
  instance x, i.e. there cannot be two distinct instances x1 and x2 such
  that both pairs (x1,y) and (x2,y) are instances of P. Syntactically, an
  inverse-functional property axiom is specified by declaring the property
  to be an instance of the built-in OWL class owl:InverseFunctionalProperty,
  which is a subclass of the OWL class owl:ObjectProperty."
  ())

;;; =========================================================
;;; ====================== LocalName
;;; =========================================================
(def-mm-class |LocalName| :ODM NIL
 "RDF uses an RDF URI Reference, which may include a fragment identifier,
  as a context free identifier for a resource. The meaning of a fragment
  identifier depends on the MIME content-type of a document, i.e. is context
  dependent."
  ((|name| :range |OclAny| :multiplicity (1 1))
   (|uriRef| :range |URIReference| :multiplicity (0 -1)
    :opposite (|URIReference| |fragmentIdentifier|))))


;;; =========================================================
;;; ====================== MaxCardinalityRestriction
;;; =========================================================
(def-mm-class |MaxCardinalityRestriction| :ODM (|OWLRestriction|)
 "The cardinality constraint owl:maxCardinality is a built-in OWL property
  that links a restriction class to a data value belonging to the value space
  of the XML Schema datatype xsd:nonNegativeInteger. A restriction containing
  an owl:maxCardinality constraint describes a class of all individuals that
  have at most N semantically distinct values (individuals or data values)
  for the property concerned, where N is the value of the cardinality constraint.
  Syntactically, the cardinality constraint is represented as an RDF property
  element with the corresponding rdf:datatype attribute."
  ((|OWLmaxCardinality| :range |TypedLiteral| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== MinCardinalityRestriction
;;; =========================================================
(def-mm-class |MinCardinalityRestriction| :ODM (|OWLRestriction|)
 "The cardinality constraint owl:minCardinality is a built-in OWL property
  that links a restriction class to a data value belonging to the value space
  of the XML Schema datatype xsd:nonNegativeInteger. A restriction containing
  an owl:minCardinality constraint describes a class of all individuals that
  have at least N semantically distinct values (individuals or data values)
  for the property concerned, where N is the value of the cardinality constraint.
  Syntactically, the cardinality constraint is represented as an RDF property
  element with the corresponding rdf:datatype attribute."
  ((|OWLminCardinality| :range |TypedLiteral| :multiplicity (1 1))))

;;; =========================================================
;;; ====================== NamedGraph
;;; =========================================================
(def-mm-class |NamedGraph| :ODM (|RDFSResource|)
 ""
  ((|RDFGequivalentGraph| :range |NamedGraph| :multiplicity (0 -1))
   (|graphForNG| :range |RDFGraph| :multiplicity (1 1)
    :opposite (|RDFGraph| |namedGraph|))
   (|subGraphOf| :range |NamedGraph| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== Namespace
;;; =========================================================
(def-mm-class |Namespace| :ODM NIL
 "An XML namespace is a collection of names, identified by a URI reference,
  which are used in XML documents as element types and attribute names."
  ((|namespaceURIRef| :range |URIReference| :multiplicity (1 1)
    :opposite (|URIReference| |namespace|))
   (|uriRefInNamespace| :range |URIReference| :multiplicity (0 -1)
    :opposite (|URIReference| |owningNamespace|))))

;;; =========================================================
;;; ====================== NamespaceDefinition
;;; =========================================================
(def-mm-class |NamespaceDefinition| :ODM NIL
 "A namespace is declared using a family of reserved attributes. These attributes,
  like any other XML attributes, may be provided directly or by default.
  Some names in XML documents (constructs corresponding to the nonterminal
  Name) may be given as qualified names. The prefix provides the namespace
  prefix part of the qualified name, and must be associated with a namespace
  URI in a namespace declaration. Namespace definitions are used in RDF and
  OWL for referencing and/or importing externally specified terms, vocabularies
  or ontologies."
  ((|namespace| :range |Namespace| :multiplicity (1 1))
   (|namespacePrefix| :range |OclAny| :multiplicity (1 1))))

;;; =========================================================
;;; ====================== Node
;;; =========================================================
(def-mm-class |Node| :ODM (|RDFSResource|)
 "The set of nodes of an RDF graph is the set of subjects and objects of
  triples in the graph."
  ())


;;; =========================================================
;;; ====================== OWLAllDifferent
;;; =========================================================
(def-mm-class |OWLAllDifferent| :ODM (|OWLClass|)
 "For ontologies in which the unique-names assumption holds, the use of owl:differentFrom
  is likely to lead to a large number of statements, as all individuals have
  to be declared pairwise disjoint. For such situations OWL provides a special
  idiom in the form of the construct owl:AllDifferent. owl:AllDifferent is
  a special built-in OWL class, for which the property owl:distinctMembers
  is defined, which links an instance of owl:AllDifferent to a list of individuals.
  The intended meaning of such a statement is that all individuals in the
  list are all different from each other."
  ((|OWLdistinctMembers| :range |Individual| :multiplicity (2 -1))))


;;; =========================================================
;;; ====================== OWLAnnotationProperty
;;; =========================================================
(def-mm-class |OWLAnnotationProperty| :ODM (|OWLUniverse| |RDFProperty|)
 "OWL Full does not put any constraints on annotations in an ontology. OWL
  DL allows annotations on classes, properties, individuals and ontology
  headers, but only under the following conditions: - The sets of object
  properties, datatype properties, annotation properties and ontology properties
  must be mutually disjoint. Thus, in OWL DL dc:creator cannot be at the
  same time a datatype property and an annotation property. - Annotation
  properties must have an explicit typing triple of the form: AnnotationPropertyID
  rdf:type owl:AnnotationProperty . - Annotation properties must not be used
  in property axioms. Thus, in OWL DL one cannot define subproperties or
  domain/range constraints for annotation properties. - The object of an
  annotation property must be either a data literal, a URI reference, or
  an individual."
  ())

;;; =========================================================
;;; ====================== OWLClass
;;; =========================================================
(def-mm-class |OWLClass| :ODM (|OWLUniverse| |RDFSClass|)
 "A class description describes an OWL class, either by a class name or by
  specifying the class extension of an unnamed anonymous class."
  ((|OWLdisjointWith| :range |OWLClass| :multiplicity (0 -1))
   (|equivalentClass| :range |OWLClass| :multiplicity (0 -1))
   (|isDeprecated| :range |OclAny| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== OWLDataRange
;;; =========================================================
(def-mm-class |OWLDataRange| :ODM (|RDFSClass| |OWLUniverse|)
 "In addition to the RDF datatypes, OWL provides one additional construct
  for defining a range of data values, namely an enumerated datatype that
  has two forms: (1) an enumerated list of literals or (2) it identifies
  a specific datatype class (e.g., xsd:integer) that a value in the data
  range must reflect."
  ((|OWLoneOf| :range |RDFSLiteral| :multiplicity (0 -1))
   (|datatype| :range |RDFSDatatype| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== OWLDatatypeProperty
;;; =========================================================
(def-mm-class |OWLDatatypeProperty| :ODM (|Property|)
 "Datatype properties are used to link individuals to data values. A datatype
  property is defined as an instance of the built-in OWL class owl:DatatypeProperty."
  ())


;;; =========================================================
;;; ====================== OWLGraph
;;; =========================================================
(def-mm-class |OWLGraph| :ODM (|RDFGraph|)
 "Not all RDF graphs are valid OWL graphs. This class represents the subset
  of RDF graphs that are indeed valid OWL."
  ((|ontology| :range |OWLOntology| :multiplicity (0 -1)
    :opposite (|OWLOntology| |owlGraph|))
   (|triple| :range |Triple| :multiplicity (1 -1) :is-derived-p T
    :opposite (|Triple| |owlGraph|))))


;;; =========================================================
;;; ====================== OWLObjectProperty
;;; =========================================================
(def-mm-class |OWLObjectProperty| :ODM (|Property|)
 "Object properties link individuals to individuals. An object property is
  defined as an instance of the built-in OWL class owl:ObjectProperty."
  ((|OWLinverseOf| :range |OWLObjectProperty| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== OWLOntology
;;; =========================================================
(def-mm-class |OWLOntology| :ODM (|RDFSResource|)
 "An OWL ontology contains a sequence of annotations, axioms, and facts.
  Annotations on OWL ontologies can be used to record authorship and other
  information associated with an ontology, including imports references to
  other ontologies. The main content of OWLOntology is carried in its axioms
  and facts, which provide information about classes, properties, and individuals
  in the ontology."
  ((|OWLbackwardCompatibleWith| :range |OWLOntology| :multiplicity (0 -1))
   (|OWLimports| :range |OWLOntology| :multiplicity (0 -1))
   (|OWLincompatibleWith| :range |OWLOntology| :multiplicity (0 -1))
   (|OWLpriorVersion| :range |OWLOntology| :multiplicity (0 -1))
   (|OWLversionInfo| :range |RDFSLiteral| :multiplicity (0 -1) :is-composite-p T)
   (|owlGraph| :range |OWLGraph| :multiplicity (1 -1)
    :opposite (|OWLGraph| |ontology|))
   (|owlUniverse| :range |OWLUniverse| :multiplicity (NIL -1)
    :opposite (|OWLUniverse| |ontology|))
   (|triple| :range |Triple| :multiplicity (1 -1)
    :opposite (|Triple| |ontology|))))


;;; =========================================================
;;; ====================== OWLOntologyProperty
;;; =========================================================
(def-mm-class |OWLOntologyProperty| :ODM (|OWLUniverse| |RDFProperty|)
 "A document describing an ontology typically contains information about
  the ontology itself. An ontology is a resource, so it may be described
  using properties from the OWL and other namespaces. An ontology property
  is essentially an annotation property that allows us to say things about
  the current and other ontologies, such as indicating that a particular
  ontology is a prior version of the current ontology."
  ())


;;; =========================================================
;;; ====================== OWLRestriction
;;; =========================================================
(def-mm-class |OWLRestriction| :ODM (|OWLClass|)
 "The class owl:Restriction is defined as a subclass of owl:Class. A restriction
  class should have exactly one triple linking the restriction to a particular
  property, using the owl:onProperty property. The restriction class should
  also have exactly one triple that represents the value constraint c.q.
  cardinality constraint on the property under consideration, e.g., that
  the cardinality of the property is exactly 1. Property restrictions can
  be applied both to datatype properties (properties for which the value
  is a data literal) and object properties (properties for which the value
  is an individual)."
  ((|OWLonProperty| :range |RDFProperty| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== OWLUniverse
;;; =========================================================
(def-mm-class |OWLUniverse| :ODM (|RDFSResource|)
 ""
  ((|ontology| :range |OWLOntology| :multiplicity (1 -1)
    :opposite (|OWLOntology| |owlUniverse|))))


;;; =========================================================
;;; ====================== PlainLiteral
;;; =========================================================
(def-mm-class |PlainLiteral| :ODM (|RDFSLiteral|)
 "A plain literal is a string combined with an optional language tag. This
  may be used for plain text in a natural language. As recommended in the
  RDF formal semantics, these plain literals are self-denoting. [Resource
  Description Framework: Concepts and Abstract Syntax, section 3.4]"
  ((|language| :range |OclAny| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== Property
;;; =========================================================
(def-mm-class |Property| :ODM (|OWLUniverse| |RDFProperty|)
 "The property class is an abstract class introduced to facilitate constraints
  between OWL DL and OWL Full and for ease of mapping to CL and other metamodels."
  ((|OWLequivalentProperty| :range |Property| :multiplicity (0 -1))
   (|isDeprecated| :range |OclAny| :multiplicity (0 1))))

;;; =========================================================
;;; ====================== RDFAlt
;;; =========================================================
(def-mm-class |RDFAlt| :ODM (|RDFSContainer|)
 "This is the class of RDF Alternative containers. The rdf:Alt class is used
  conventionally to indicate to a human reader that typical processing will
  be to select one of the members of the container. The first member of the
  container, i.e,. the value of the rdf:_1 property, is the default choice."
  ())


;;; =========================================================
;;; ====================== RDFBag
;;; =========================================================
(def-mm-class |RDFBag| :ODM (|RDFSContainer|)
 "This is the class of RDF Bag containers. It is used conventionally to indicate
  that the container is intended to be unordered."
  ())


;;; =========================================================
;;; ====================== RDFGraph
;;; =========================================================
(def-mm-class |RDFGraph| :ODM NIL
 "An RDF graph is a set of RDF triples. The set of nodes of an RDF graph
  is the set of subjects and objects of triples in the graph."
  ((|graphName| :range |URIReference| :multiplicity (0 1) :is-composite-p T)
   (|namedGraph| :range |NamedGraph| :multiplicity (0 -1)
    :opposite (|NamedGraph| |graphForNG|))
   (|triple| :range |Triple| :multiplicity (0 -1)
    :opposite (|Triple| |graph|))))


;;; =========================================================
;;; ====================== RDFList
;;; =========================================================
(def-mm-class |RDFList| :ODM (|RDFSResource|)
 "This class represents descriptions of RDF collections, conventionally called
  lists and other list-like structures."
  ((|RDFfirst| :range |RDFSResource| :multiplicity (0 1))
   (|RDFrest| :range |RDFList| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== RDFProperty
;;; =========================================================
(def-mm-class |RDFProperty| :ODM (|RDFSResource|)
 "A predicate (also called a property) denotes a relationship. The RDF Concepts
  and Abstract Syntax specification describes the concept of an RDF property
  as a relation between subject resources and object resources. Every property
  is associated with a set of instances, called the property extension. Instances
  of properties are pairs of RDF resources."
  ((|RDFSdomain| :range |RDFSClass| :multiplicity (0 -1))
   (|RDFSrange| :range |RDFSClass| :multiplicity (0 -1))
   (|RDFSsubPropertyOf| :range |RDFProperty| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== RDFSClass
;;; =========================================================
(def-mm-class |RDFSClass| :ODM (|RDFSResource|)
 "The group of resources that are RDF Schema classes is itself a class, called
  rdfs:Class. Classes provide an abstraction mechanism for grouping resources
  with similar characteristics."
  ((|RDFSsubClassOf| :range |RDFSClass| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== RDFSContainer
;;; =========================================================
(def-mm-class |RDFSContainer| :ODM (|RDFSResource|)
 "This is a super-class of RDF container classes."
  ())


;;; =========================================================
;;; ====================== RDFSContainerMembershipProperty
;;; =========================================================
(def-mm-class |RDFSContainerMembershipProperty| :ODM (|RDFProperty|)
 "The rdfs:ContainerMembershipProperty class has as instances the properties
  rdf:_1, rdf:_2, rdf:_3 ... that are used to state that a resource is a
  member of a container.. Each instance of this class is an rdfs:subPropertyOf
  the rdfs:memberOf property."
  ())


;;; =========================================================
;;; ====================== RDFSDatatype
;;; =========================================================
(def-mm-class |RDFSDatatype| :ODM (|RDFSClass|)
 "Datatypes are used by RDF in the representation of values such as integers,
  floating point numbers and dates. A datatype consists of a lexical space,
  a value space and a lexical-to-value mapping."
  ())


;;; =========================================================
;;; ====================== RDFSLiteral
;;; =========================================================
(def-mm-class |RDFSLiteral| :ODM (|Node|)
 "Literals are used to identify values such as numbers and dates by means
  of a lexical representation. Anything represented by a literal could also
  be represented by a URI, but it is often more convenient or intuitive to
  use literals. A literal may be the object of an RDF statement, but not
  the subject or the predicate. [Resource Description Framework: Concepts
  and Abstract Syntax, section 3.4]"
  ((|lexicalForm| :range |OclAny| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== RDFSResource
;;; =========================================================
(def-mm-class |RDFSResource| :ODM NIL
 "All things described by RDF are called resources. This is the class of
  everything. All other classes are subclasses of this class."
  ((|RDFScomment| :range |PlainLiteral| :multiplicity (0 -1) :is-composite-p T)
   (|RDFSisDefinedBy| :range |RDFSResource| :multiplicity (0 -1))
   (|RDFSlabel| :range |PlainLiteral| :multiplicity (0 -1) :is-composite-p T)
   (|RDFSmember| :range |RDFSResource| :multiplicity (0 -1))
   (|RDFSseeAlso| :range |RDFSResource| :multiplicity (0 -1))
   (|RDFtype| :range |RDFSClass| :multiplicity (1 -1))
   (|uriRef| :range |URIReference| :multiplicity (0 1) :is-composite-p T  ; POD!!! I changed multiplicity from (0,-1) for qvt key.
    :opposite (|URIReference| |resource|))))


;;; =========================================================
;;; ====================== RDFSeq
;;; =========================================================
(def-mm-class |RDFSeq| :ODM (|RDFSContainer|)
 "This is the class of RDF Sequence containers. It is used conventionally
  to indicate that the numerical ordering of the container membership properties
  of the container is intended to be significant."
  ())


;;; =========================================================
;;; ====================== RDFStatement
;;; =========================================================
(def-mm-class |RDFStatement| :ODM (|RDFSResource|)
 "Semantic extensions MAY limit the interpretation of these so that a triple
  of the form aaa rdf:type rdf:Statement . is true in I just when I(aaa)
  is a token of an RDF triple in some RDF document, and the three properties,
  when applied to such a denoted triple, have the same values as the respective
  components of that triple. This may be illustrated by considering the following
  two RDF graphs, the first of which consists of a single triple. <ex:a>
  <ex:b> <ex:c> . and _:xxx rdf:type rdf:Statement . _:xxx rdf:subject <ex:a>
  . _:xxx rdf:predicate <ex:b> . _:xxx rdf:object <ex:c> . The second graph
  is called a reification of the triple in the first graph, and the node
  which is intended to refer to the first triple - the blank node in the
  second graph - is called, rather confusingly, a reified triple. (This can
  be a blank node or a URI reference.) In the intended interpretation of
  the reification vocabulary, the second graph would be made true in an interpretation
  I by interpreting the reified triple to refer to a token of the triple
  in the first graph in some concrete RDF document, considering that token
  to be valid RDF syntax, and then using I to interpret the syntactic triple
  which the token instantiates, so that the subject, predicate and object
  of that triple are interpreted in the same way in the reification as in
  the triple described by the reification. [RDF Semantics, section 3.3]"
  ((|RDFobject| :range |RDFSResource| :multiplicity (1 1))
   (|RDFpredicate| :range |RDFProperty| :multiplicity (1 1))
   (|RDFsubject| :range |RDFSResource| :multiplicity (1 1))
   (|triple| :range |Triple| :multiplicity (0 1)
    :opposite (|Triple| |statement|))))


;;; =========================================================
;;; ====================== RDFXMLLiteral
;;; =========================================================
(def-mm-class |RDFXMLLiteral| :ODM (|TypedLiteral|)
 "RDF predefines just one datatype, rdf:XMLLiteral, used for embedding XML
  in RDF. The class rdf:XMLLiteral is the class of XML literal values. It
  is an instance of RDFSDatatype and a subclass of TypedLiteral."
  ())

;;; =========================================================
;;; ====================== SomeValuesFromRestriction
;;; =========================================================
(def-mm-class |SomeValuesFromRestriction| :ODM (|OWLRestriction|)
 "The value constraint owl:someValuesFrom is a built-in OWL property that
  links a restriction class to either a class description or a data range.
  A restriction containing an owl:someValuesFrom constraint is used to describe
  a class of individuals for which at least one value of the property concerned
  is either an instance of the class description or a data value in the data
  range. In other words, it defines a class of individuals x for which there
  is at least one y (either an instance of the class description or a value
  of the data range), such that the pair (x,y) is an instance of P. This
  does not exclude that there are other instances (x,y') of P for which y'
  does not belong to the class description or data range."
  ((|OWLsomeValuesFromClass| :range |OWLClass| :multiplicity (0 1))
   (|OWLsomeValuesFromDataRange| :range |OWLDataRange| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== SymmetricProperty
;;; =========================================================
(def-mm-class |SymmetricProperty| :ODM (|OWLObjectProperty|)
 "A symmetric property is a property for which holds that if the pair (x,y)
  is an instance of P, then the pair (y,x) is also an instance of P. Syntactically,
  a property is defined as symmetric by making it an instance of the built-in
  OWL class owl:SymmetricProperty, a subclass of owl:ObjectProperty."
  ())


;;; =========================================================
;;; ====================== TransitiveProperty
;;; =========================================================
(def-mm-class |TransitiveProperty| :ODM (|OWLObjectProperty|)
 "When one defines a property P to be a transitive property, this means that
  if a pair (x,y) is an instance of P, and the pair (y,z) is also instance
  of P, then we can infer the the pair (x,z) is also an instance of P. Syntactically,
  a property is defined as being transitive by making it an instance of the
  the built-in OWL class owl:TransitiveProperty, which is defined as a subclass
  of owl:ObjectProperty."
  ())


;;; =========================================================
;;; ====================== Triple
;;; =========================================================
(def-mm-class |Triple| :ODM NIL
 "An RDF triple contains three components: - the subject, which is an RDF
  URI reference or a blank node - the predicate, which is an RDF URI reference
  - the object, which is an RDF URI reference, a literal or a blank node
  An RDF triple is conventionally written in the order subject, predicate,
  object. The predicate is also known as the property of the triple. [Resource
  Description Framework: Concepts and Abstract Syntax, section 6.1] Also:
  The underlying structure of any expression in RDF is a collection of triples,
  each consisting of a subject, a predicate, and an object. A set of such
  triples is called an RDF graph. This can be illustrated by a node and directed-arc
  diagram, in which each triple is represented as a node-arc-node link (hence
  the term \"graph\"). Each triple represents a statement of a relationship
  between the things denoded by the nodes that it links. Each triple has
  three parts: a subnect, an object, and a predicate (also called a property)
  that denotes a relationship. The direction of the arc is significant: it
  always points towards the object. The nodes of an RDF graph are its subjects
  and objects. [Resource Description Framework: Concepts and Abstract Syntax,
  section 3.1]"
  ((|RDFobject| :range |Node| :multiplicity (1 1))
   (|RDFpredicate| :range |RDFProperty| :multiplicity (1 1))
   (|RDFsubject| :range |Node| :multiplicity (1 1))
   (|document| :range |Document| :multiplicity (1 -1)
    :opposite (|Document| |triple|))
   (|graph| :range |RDFGraph| :multiplicity (1 -1)
    :opposite (|RDFGraph| |triple|))
   (|ontology| :range |OWLOntology| :multiplicity (0 -1)
    :opposite (|OWLOntology| |triple|))
   (|owlGraph| :range |OWLGraph| :multiplicity (1 -1) :is-derived-p T
    :opposite (|OWLGraph| |triple|))
   (|statement| :range |RDFStatement| :multiplicity (0 1)
    :opposite (|RDFStatement| |triple|))))


;;; =========================================================
;;; ====================== TypedLiteral
;;; =========================================================
(def-mm-class |TypedLiteral| :ODM (|RDFSLiteral|)
 "A typed literal is a string combined with a datatype URI. It denotes the
  member of the identified datatype's value space obtained by applying the
  lexical-to-value mapping to the literal string. [Resource Description Framework:
  Concepts and Abstract Syntax, section 3.4]"
  ((|datatypeURI| :range |URIReference| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== URIReference
;;; =========================================================
(def-mm-class |URIReference| :ODM NIL
 "RDF uses URI references to identify resources and properties. A URI reference
  within an RDF graph (an RDF URI reference) is a Unicode string conforming
  to the characteristics defined in the Concepts and Abstract Syntax document
  (also defined in the RDF/XML Syntax document)."
  ((|fragmentIdentifier| :range |LocalName| :multiplicity (0 1)
    :opposite (|LocalName| |uriRef|))
   (|namespace| :range |Namespace| :multiplicity (0 1)
    :opposite (|Namespace| |namespaceURIRef|))
   (|owningNamespace| :range |Namespace| :multiplicity (0 1)
    :opposite (|Namespace| |uriRefInNamespace|))
   (|resource| :range |RDFSResource| :multiplicity (0 1)
    :opposite (|RDFSResource| |uriRef|))
   (|uri| :range |UniformResourceIdentifier| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== URIReferenceNode
;;; =========================================================
(def-mm-class |URIReferenceNode| :ODM (|Node|)
 "A URI reference or literal used as a node identifies what that node represents.
  URIReferenceNode is included in order to more precisely model the intended
  semantics in UML (i.e., not all URI references are nodes). A URI reference
  used as a predicate identifies a relationship between the things represented
  by the nodes it connects. A predicate URI reference may also be a node
  in the graph."
  ())


;;; =========================================================
;;; ====================== UniformResourceIdentifier
;;; =========================================================
(def-mm-class |UniformResourceIdentifier| :ODM (|URIReference|)
 "The RDF abstract syntax is concerned primarily with URI references. The
  definition of a URI, distinct from URI reference, is included for mapping
  purposes."
  ((|name| :range |OclAny| :multiplicity (1 1))))

;;; =========================================================
;;; ====================== UnionClass
;;; =========================================================
(def-mm-class |UnionClass| :ODM (|OWLClass|)
 "The owl:unionOf property links a class to a list of class descriptions.
  An owl:unionOf statement describes an anonymous class for which the class
  extension contains those individuals that occur in at least one of the
  class extensions of the class descriptions in the list."
  ((|OWLunionOf| :range |OWLClass| :multiplicity (0 -1))))


(def-mm-package ODM nil :ODM 
   (|OWLOntology|
    |OWLOntologyProperty|
    |OWLClass|
    |OWLRestriction|
    |OWLObjectProperty|
    |OWLDatatypeProperty|
    |Individual|
    |OWLAllDifferent|
    |OWLDataRange|
    |OWLAnnotationProperty|
    |EnumeratedClass|
    |IntersectionClass|
    |UnionClass|
    |ComplementClass|
    |Property|
    |HasValueRestriction|
    |AllValuesFromRestriction|
    |SomeValuesFromRestriction|
    |CardinalityRestriction|
    |MaxCardinalityRestriction|
    |MinCardinalityRestriction|
    |FunctionalProperty|
    |InverseFunctionalProperty|
    |SymmetricProperty|
    |TransitiveProperty|
    |OWLGraph|
    |OWLUniverse|
    |BlankNode|
    |RDFGraph|
    |RDFProperty|
    |RDFStatement|
    |RDFSLiteral|
    |RDFSResource|
    |URIReferenceNode|
    |URIReference|
    |TypedLiteral|
    |PlainLiteral|
    |RDFXMLLiteral|
    |UniformResourceIdentifier|
    |Triple|
    |Node|
    |NamedGraph|
    |RDFSClass|
    |RDFSDatatype|
    |RDFList|
    |RDFSContainer|
    |RDFAlt|
    |RDFBag|
    |RDFSeq|
    |RDFSContainerMembershipProperty|
    |Document|
    |Namespace|
    |NamespaceDefinition|
    |LocalName|))

(in-package :mofi)

(with-slots (mofi::abstract-classes) mofi:*model*
     (setf mofi::abstract-classes 
        `(odm::|OWLRestriction|
          odm::|OWLUniverse|
          odm::|Property|)))
