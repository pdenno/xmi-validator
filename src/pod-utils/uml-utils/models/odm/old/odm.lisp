;;; Automatically created by pop-gen at 2011-12-28 12:51:16.
;;; Source file is 08-09-08-owl-rdf-cmof-clean.xmi

(in-package :ODM)


(defpackage "ODM-CL" (:use :pod-utils :ptypes :ocl :mofi :cl))
(defpackage "ODM-DL" (:use :pod-utils :ptypes :ocl :mofi :cl))
(defpackage "ODM-ERIdentity" (:use :pod-utils :ptypes :ocl :mofi :cl))
(defpackage "ODM-OWL" (:use :pod-utils :ptypes :ocl :mofi :cl))
(defpackage "ODM-OWLBase" (:use :pod-utils :ptypes :ocl :mofi :cl))
(defpackage "ODM-OWLDL" (:use :pod-utils :ptypes :ocl :mofi :cl))
(defpackage "ODM-OWLFull" (:use :pod-utils :ptypes :ocl :mofi :cl))
(defpackage "ODM-RDF" (:use :pod-utils :ptypes :ocl :mofi :cl))
(defpackage "ODM-RDFBase" (:nicknames :rdfb) (:use :pod-utils :ptypes :ocl :mofi :cl))
(defpackage "ODM-RDFS" (:use :pod-utils :ptypes :ocl :mofi :cl))
(defpackage "ODM-RDFWeb" (:nicknames :rdfw) (:use :pod-utils :ptypes :ocl :mofi :cl))
(defpackage "ODM-TM" (:use :pod-utils :ptypes :ocl :mofi :cl))
(defpackage "ODM-org.omg.odm" (:use :pod-utils :ptypes :ocl :mofi :cl))

;;; =========================================================
;;; ====================== ABox
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |ABox| :ODM (|TBox|)
 ""
  ((|content| :range |Instance| :multiplicity (0 -1) :is-derived-p T :redefined-property (|TBox| |content|))))


;;; =========================================================
;;; ====================== AllValuesFromRestriction
;;; =========================================================
(in-package "ODM-OWLBase")
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
;;; ====================== Argument
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |Argument| :ODM NIL
 "A finite sequence of terms or sequence names"
  ())


;;; =========================================================
;;; ====================== Assertion
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Assertion| :ODM (|Instance|)
 "A set of binary tuples of (subject, object) that are the instances of Propperty.
  The association predicate is derivable from membership."
  ((|object| :range |Instance| :multiplicity (1 1))
   (|subject| :range |Instance| :multiplicity (1 1))
   (|type| :range |Role| :multiplicity (1 -1)
    :opposite (|Role| |member|))))


;;; =========================================================
;;; ====================== Association
;;; =========================================================
(in-package "ODM-TM")
(def-mm-class |Association| :ODM (|ReifiableConstruct| |ScopeAble| |TypeAble|)
 ""
  ((|parent| :range |TopicMap| :multiplicity (1 1)
    :opposite (|TopicMap| |association|))
   (|role| :range |AssociationRole| :multiplicity (1 -1) :is-composite-p T
    :opposite (|AssociationRole| |parent|))))


;;; =========================================================
;;; ====================== AssociationRole
;;; =========================================================
(in-package "ODM-TM")
(def-mm-class |AssociationRole| :ODM (|TypeAble| |ReifiableConstruct|)
 ""
  ((|parent| :range |Association| :multiplicity (1 1)
    :opposite (|Association| |role|))
   (|player| :range |Topic| :multiplicity (1 1)
    :opposite (|Topic| |role|))))


;;; =========================================================
;;; ====================== Atom
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |Atom| :ODM (|Sentence|)
 ""
  ())


;;; =========================================================
;;; ====================== AtomicSentence
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |AtomicSentence| :ODM (|Atom|)
 ""
  ((|argument| :range |Argument| :multiplicity (0 -1) :is-ordered-p T)
   (|predicate| :range |Term| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== Biconditional
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |Biconditional| :ODM (|BooleanSentence|)
 ""
  ((|lvalue| :range |Sentence| :multiplicity (1 1))
   (|rvalue| :range |Sentence| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== Binding
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |Binding| :ODM NIL
 ""
  ((|boundName| :range |Name| :multiplicity (0 1))
   (|boundSequenceMarker| :range |SequenceMarker| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== BlankNode
;;; =========================================================
(in-package "ODM-RDFBase")
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
;;; ====================== BooleanSentence
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |BooleanSentence| :ODM (|Sentence|)
 ""
  ())


;;; =========================================================
;;; ====================== CardinalityRestriction
;;; =========================================================
(in-package "ODM-OWLBase")
(def-mm-class |CardinalityRestriction| :ODM (|OWLRestriction|)
 "The cardinality constraint owl:cardinality is a built-in OWL property that
  links a restriction class to a data value belonging to the range of the
  XML Schema datatype xsd:nonNegativeInteger. A restriction containing an
  owl:cardinality constraint describes a class of all individuals that have
  exactly N semantically distinct values (individuals or data values) for
  the property concerned, where N is the value of the cardinality constraint.
  Syntactically, the cardinality constraint is represented as an RDF property
  element with the corresponding rdf:datatype attribute."
  ((|OWLcardinality| :range |ODM-RDFBase|::|TypedLiteral| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== Class
;;; =========================================================
(in-package "ODM-ERIdentity")
(def-mm-class |Class| :ODM NIL
 ""
  ())


;;; =========================================================
;;; ====================== Collection
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Collection| :ODM (|Concept|)
 ""
  ((|member| :range |Extent| :multiplicity (0 -1)
    :opposite (|Extent| |type|))))


;;; =========================================================
;;; ====================== Comment
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |Comment| :ODM (|Phrase|)
 "A comment is a piece of data. Comments may be attached to other comments
  and to commented phrases. No particular restrictions are placed on the
  nature of Common Logic comments; in particular, a comment may be Common
  Logic text. Particular dialects may impose conditions on the form of comments."
  ((|comment| :range |OclAny| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== CommentedSentence
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |CommentedSentence| :ODM (|Sentence|)
 ""
  ((|comment| :range |OclAny| :multiplicity (1 1))
   (|sentence| :range |Sentence| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== CommentedTerm
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |CommentedTerm| :ODM (|Term|)
 ""
  ((|comment| :range |OclAny| :multiplicity (1 1))
   (|term| :range |Term| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== ComplementClass
;;; =========================================================
(in-package "ODM-OWLBase")
(def-mm-class |ComplementClass| :ODM (|OWLClass|)
 "An owl:complementOf statement describes a class for which the class extension
  contains exactly those individuals that do not belong to the class extension
  of the class description that is the object of the statement. owl:complementOf
  is analogous to logical negation: the class extension consists of those
  individuals that are NOT members of the class extension of the complement
  class."
  ((|OWLcomplementOf| :range |OWLClass| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== Concept
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Concept| :ODM (|Element|)
 ""
  ((|member| :range |Individual| :multiplicity (0 -1)
    :opposite (|Individual| |type|))))


;;; =========================================================
;;; ====================== Conjunction
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |Conjunction| :ODM (|BooleanSentence|)
 ""
  ((|conjunct| :range |Sentence| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== Constructor
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Constructor| :ODM NIL
 ""
  ())


;;; =========================================================
;;; ====================== DataType
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |DataType| :ODM (|Concept|)
 ""
  ((|member| :range |Literal| :multiplicity (0 -1)
    :opposite (|Literal| |type|))))


;;; =========================================================
;;; ====================== Definition
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Definition| :ODM (|Constructor|)
 "DLHB 2.2.2.1"
  ())


;;; =========================================================
;;; ====================== Disjunction
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |Disjunction| :ODM (|BooleanSentence|)
 ""
  ((|disjunct| :range |Sentence| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== Document
;;; =========================================================
(in-package "ODM-RDFWeb")
(def-mm-class |Document| :ODM (|ODM-RDFBase|::|RDFSResource|)
 "RDF's conceptual model is a graph. RDF also provides an XML syntax for
  writing down and exchanging RDF graphs, called RDF/XML. An RDF document
  is a serialization of an RDF graph into a concrete syntax, as specified
  in the RDF/XML Syntax document, which provides the container for the graph,
  and conventionally also contains declarations of the XML namespaces referenced
  by the statements in the document."
  ((|localName| :range |LocalName| :multiplicity (0 -1) :is-composite-p T)
   (|namespaceDefinition| :range |NamespaceDefinition| :multiplicity (0 -1) :is-composite-p T)
   (|triple| :range |ODM-RDFBase|::|Triple| :multiplicity (1 -1) :is-ordered-p T
    :opposite (|ODM-RDFBase|::|Triple| |document|))
   (|xmlBase| :range |Namespace| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== Element
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Element| :ODM (|Term|)
 ""
  ((|uniqueIdentifier| :range |OclAny| :multiplicity (1 1)
    :documentation
     "Uniquely identifies an Element and all Elements are identified by a single
      value. That is if the uniqueIdentifiers of two Elements are different,
      then the Elements are different. Note that this is different from URIs.")))


;;; =========================================================
;;; ====================== EnumeratedClass
;;; =========================================================
(in-package "ODM-OWLBase")
(def-mm-class |EnumeratedClass| :ODM (|OWLClass|)
 "A class description of the enumeration kind is defined with the owl:oneOf
  property. The value of this built-in OWL property must be a list of individuals
  that are the instances of the class. This enables a class to be described
  by exhaustively enumerating its instances."
  ((|OWLoneOf| :range |Individual| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== Equation
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |Equation| :ODM (|Atom|)
 ""
  ((|lvalue| :range |Term| :multiplicity (1 1))
   (|rvalue| :range |Term| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== ExclusionSet
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |ExclusionSet| :ODM NIL
 "An optional set of names called an exclusion set, indicates any names in
  the module which are explicitly excluded from the local domain."
  ((|excludedName| :range |Name| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== Existential
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Existential| :ODM (|Quantifier|)
 "DLHB 2.2.1.2"
  ())


;;; =========================================================
;;; ====================== ExistentialQuantification
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |ExistentialQuantification| :ODM (|QuantifiedSentence|)
 ""
  ())


;;; =========================================================
;;; ====================== Expression
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Expression| :ODM (|Term|)
 ""
  ((|constructor| :range |Constructor| :multiplicity (1 1) :is-composite-p T)
   (|term_1| :range |Term| :multiplicity (1 1) :is-composite-p T)
   (|term_2| :range |Term| :multiplicity (0 1) :is-composite-p T)))


;;; =========================================================
;;; ====================== Extent
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Extent| :ODM (|Individual|)
 ""
  ((|instance| :range |Instance| :multiplicity (0 -1))
   (|type| :range |Collection| :multiplicity (1 -1)
    :opposite (|Collection| |member|))))


;;; =========================================================
;;; ====================== ForAll
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |ForAll| :ODM (|Quantifier|)
 ""
  ())


;;; =========================================================
;;; ====================== FunctionalProperty
;;; =========================================================
(in-package "ODM-OWLBase")
(def-mm-class |FunctionalProperty| :ODM (|Property|)
 "A functional property is a property that can have only one (unique) value
  y for each instance x, i.e. there cannot be two distinct values y1 and
  y2 such that the pairs (x,y1) and (x,y2) are both instances of this property.
  Both object properties and datatype properties can be declared as \"functional\".
  For this purpose, OWL defines the built-in class owl:FunctionalProperty
  as a special subclass of the RDF class rdf:Property."
  ())


;;; =========================================================
;;; ====================== FunctionalTerm
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |FunctionalTerm| :ODM (|Term|)
 ""
  ((|argument| :range |Argument| :multiplicity (0 -1) :is-ordered-p T)
   (|operator| :range |Term| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== HasValueRestriction
;;; =========================================================
(in-package "ODM-OWLBase")
(def-mm-class |HasValueRestriction| :ODM (|OWLRestriction|)
 "The value constraint owl:hasValue is a built-in OWL property that links
  a restriction class to a value V, which can be either an individual or
  a data value. A restriction containing a owl:hasValue constraint describes
  a class of all individuals for which the property concerned has at least
  one value semantically equal to V (it may have other values as well)."
  ((|OWLhasIndividualValue| :range |Individual| :multiplicity (0 1))
   (|OWLhasLiteralValue| :range |ODM-RDFBase|::|RDFSLiteral| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== Identifier
;;; =========================================================
(in-package "ODM-ERIdentity")
(def-mm-class |Identifier| :ODM NIL
 ""
  ((ID :range |OclAny| :multiplicity (1 1))
   (|identifiedClass| :range |Class| :multiplicity (1 1))
   (|identifyingProperty| :range |Property| :multiplicity (1 -1) :is-ordered-p T)))


;;; =========================================================
;;; ====================== Identifier
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |Identifier| :ODM (|Name|)
 ""
  ())


;;; =========================================================
;;; ====================== Implication
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |Implication| :ODM (|BooleanSentence|)
 ""
  ((|antecedent| :range |Sentence| :multiplicity (1 1))
   (|consequent| :range |Sentence| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== Implication
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Implication| :ODM (|Constructor|)
 "DLHB 2.2.5"
  ())


;;; =========================================================
;;; ====================== Importation
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |Importation| :ODM (|Phrase|)
 "An importation contains a name. The intention is that the name identifies
  a piece of Common Logic content represented externally to the text, and
  the importation re-asserts that content in the text."
  ((|assertedContent| :range |Identifier| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== Inclusion
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Inclusion| :ODM (|Constructor|)
 "DLHB 2.2.2.1"
  ())


;;; =========================================================
;;; ====================== Individual
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Individual| :ODM (|Element| |Instance|)
 "Set of instances that make up a DLClass"
  ((|type| :range |Concept| :multiplicity (1 -1)
    :opposite (|Concept| |member|))))


;;; =========================================================
;;; ====================== Individual
;;; =========================================================
(in-package "ODM-OWLBase")
(def-mm-class |Individual| :ODM (|OWLUniverse| |ODM-RDFBase|::|RDFSResource|)
 "Individuals are defined with individual axioms (also called facts). Two
  types of facts are supported in OWL: (1) Facts about class membership and
  property values of individuals, and (2) Facts about individual identity.
  Many facts are statements that define class membership of individuals and
  property values of individuals; these can also refer to anonymous individuals."
  ((|OWLdifferentFrom| :range |Individual| :multiplicity (0 -1))
   (|OWLsameAs| :range |Individual| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== Instance
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Instance| :ODM (|Term|)
 ""
  ())


;;; =========================================================
;;; ====================== Intersection
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Intersection| :ODM (|Constructor|)
 "DLHB 2.2.1.1"
  ())


;;; =========================================================
;;; ====================== IntersectionClass
;;; =========================================================
(in-package "ODM-OWLBase")
(def-mm-class |IntersectionClass| :ODM (|OWLClass|)
 "The owl:intersectionOf property links a class to a list of class descriptions.
  An owl:intersectionOf statement describes a class for which the class extension
  contains precisely those individuals that are members of the class extension
  of all class descriptions in the list."
  ((|OWLintersectionOf| :range |OWLClass| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== InverseFunctionalProperty
;;; =========================================================
(in-package "ODM-OWLBase")
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
;;; ====================== IrregularSentence
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |IrregularSentence| :ODM (|Sentence|)
 ""
  ())


;;; =========================================================
;;; ====================== List
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |List| :ODM (|Collection|)
 "A List is an order collection."
  ())


;;; =========================================================
;;; ====================== Literal
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Literal| :ODM (|Individual|)
 ""
  ((|type| :range |DataType| :multiplicity (0 -1)
    :opposite (|DataType| |member|))
   (|value| :range |OclAny| :multiplicity (1 1)
    :documentation
     "The value of the literal in an implementation and datatype dependent representation.")))


;;; =========================================================
;;; ====================== LocalName
;;; =========================================================
(in-package "ODM-RDFWeb")
(def-mm-class |LocalName| :ODM NIL
 "RDF uses an RDF URI Reference, which may include a fragment identifier,
  as a context free identifier for a resource. The meaning of a fragment
  identifier depends on the MIME content-type of a document, i.e. is context
  dependent."
  ((|name| :range |OclAny| :multiplicity (1 1))
   (|uriRef| :range |ODM-RDFBase|::|URIReference| :multiplicity (0 -1)
    :opposite (|ODM-RDFBase|::|URIReference| |fragmentIdentifier|))))


;;; =========================================================
;;; ====================== MaxCardinalityRestriction
;;; =========================================================
(in-package "ODM-OWLBase")
(def-mm-class |MaxCardinalityRestriction| :ODM (|OWLRestriction|)
 "The cardinality constraint owl:maxCardinality is a built-in OWL property
  that links a restriction class to a data value belonging to the value space
  of the XML Schema datatype xsd:nonNegativeInteger. A restriction containing
  an owl:maxCardinality constraint describes a class of all individuals that
  have at most N semantically distinct values (individuals or data values)
  for the property concerned, where N is the value of the cardinality constraint.
  Syntactically, the cardinality constraint is represented as an RDF property
  element with the corresponding rdf:datatype attribute."
  ((|OWLmaxCardinality| :range |ODM-RDFBase|::|TypedLiteral| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== MinCardinalityRestriction
;;; =========================================================
(in-package "ODM-OWLBase")
(def-mm-class |MinCardinalityRestriction| :ODM (|OWLRestriction|)
 "The cardinality constraint owl:minCardinality is a built-in OWL property
  that links a restriction class to a data value belonging to the value space
  of the XML Schema datatype xsd:nonNegativeInteger. A restriction containing
  an owl:minCardinality constraint describes a class of all individuals that
  have at least N semantically distinct values (individuals or data values)
  for the property concerned, where N is the value of the cardinality constraint.
  Syntactically, the cardinality constraint is represented as an RDF property
  element with the corresponding rdf:datatype attribute."
  ((|OWLminCardinality| :range |ODM-RDFBase|::|TypedLiteral| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== Module
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |Module| :ODM (|Phrase|)
 "A module consists of a name, an optional set of names called the \"exclusion
  set\", and a text called the body text. The module name indicates the 'local'
  domain of discourse in which the text is understood; the exclusion list
  indicates any names in the text that are excluded from the local domain.
  A module name may also be used to identify the module."
  ((|body| :range |Text| :multiplicity (1 1))
   (|exclusionSet| :range |ExclusionSet| :multiplicity (0 1) :is-composite-p T)
   (|localDomain| :range |Identifier| :multiplicity (1 1) :is-composite-p T)))


;;; =========================================================
;;; ====================== Name
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |Name| :ODM (|Term|)
 "The only undefined terms in the CL abstract syntax are name and sequence
  variable. The only required constraint on these is that they must be exclusive.
  From the CL Core syntax, a name is a string of Unicode characters, other
  than    (   ,    )    or white space, and which is not a sequence variable.
  Dialects intended for transmission of content on a network should not impose
  arbitrary or unnecessary restrictions on the form of names, and must provide
  for names to be used as identifiers of common logic texts. Dialects intended
  for use on the Web should allow Universal Resource Identifiers and URI
  references [RFC2396] to be used as names. Common Logic dialects should
  define names in terms of Unicode (ISO/IEC 10646) conventions. Common Logic
  does not require names to be distinguished from variables, nor does it
  require names to be partitioned into distinct classes such as relation,
  function or individual names, or impose sortal restrictions on names. Particular
  Common Logic dialects may make these or other distinctions between subclasses
  of names, and impose extra restrictions on the occurrence of types of names
  or terms in expressions     for example, by requiring that bound names
  be written with a special variable prefix, as in KIF, or with a particular
  style, as in Prolog; or by requiring that operators be in a distinguished
  category of relation names, as in conventional first-order syntax. The
  core syntax for CL has a few rules for what can be a valid name. Some of
  these rules cannot be expressed in OCL. For example: \"names should be defined
  in terms of Unicode conventions\", and \"other than    (   ,    )    or white
  space, and which is not a sequence variable\". We can use OCL to rule out
  special names, such as those that may be defined by a specific CL dialect,
  but not to state rules about what kinds of ascii characters are allowed.
  Enforcing these rules has to be the responsibility of the parser."
  ((|name| :range |OclAny| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== NamedGraph
;;; =========================================================
(in-package "ODM-RDFBase")
(def-mm-class |NamedGraph| :ODM (|RDFSResource|)
 ""
  ((|RDFGequivalentGraph| :range |NamedGraph| :multiplicity (0 -1))
   (|graphForNG| :range |RDFGraph| :multiplicity (1 1)
    :opposite (|RDFGraph| |namedGraph|))
   (|subGraphOf| :range |NamedGraph| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== Namespace
;;; =========================================================
(in-package "ODM-RDFWeb")
(def-mm-class |Namespace| :ODM NIL
 "An XML namespace is a collection of names, identified by a URI reference,
  which are used in XML documents as element types and attribute names."
  ((|namespaceURIRef| :range |ODM-RDFBase|::|URIReference| :multiplicity (1 1)
    :opposite (|ODM-RDFBase|::|URIReference| |namespace|))
   (|uriRefInNamespace| :range |ODM-RDFBase|::|URIReference| :multiplicity (0 -1)
    :opposite (|ODM-RDFBase|::|URIReference| |owningNamespace|))))


;;; =========================================================
;;; ====================== NamespaceDefinition
;;; =========================================================
(in-package "ODM-RDFWeb")
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
;;; ====================== Negation
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |Negation| :ODM (|BooleanSentence|)
 ""
  ((|sentence| :range |Sentence| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== Negation
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Negation| :ODM (|Constructor|)
 "DLHB 2.2.1.1"
  ())


;;; =========================================================
;;; ====================== Node
;;; =========================================================
(in-package "ODM-RDFBase")
(def-mm-class |Node| :ODM (|RDFSResource|)
 "The set of nodes of an RDF graph is the set of subjects and objects of
  triples in the graph."
  ())


;;; =========================================================
;;; ====================== NumberRestiction
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |NumberRestiction| :ODM (|Quantifier|)
 "DLHB 2.2.1.2"
  ())


;;; =========================================================
;;; ====================== OWLAllDifferent
;;; =========================================================
(in-package "ODM-OWLBase")
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
(in-package "ODM-OWLBase")
(def-mm-class |OWLAnnotationProperty| :ODM (|OWLUniverse| |ODM-RDFBase|::|RDFProperty|)
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
(in-package "ODM-OWLBase")
(def-mm-class |OWLClass| :ODM (|OWLUniverse| ODM-RDFS::|RDFSClass|)
 "A class description describes an OWL class, either by a class name or by
  specifying the class extension of an unnamed anonymous class."
  ((|OWLdisjointWith| :range |OWLClass| :multiplicity (0 -1))
   (|equivalentClass| :range |OWLClass| :multiplicity (0 -1))
   (|isDeprecated| :range |OclAny| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== OWLDataRange
;;; =========================================================
(in-package "ODM-OWLBase")
(def-mm-class |OWLDataRange| :ODM (ODM-RDFS::|RDFSClass| |OWLUniverse|)
 "In addition to the RDF datatypes, OWL provides one additional construct
  for defining a range of data values, namely an enumerated datatype that
  has two forms: (1) an enumerated list of literals or (2) it identifies
  a specific datatype class (e.g., xsd:integer) that a value in the data
  range must reflect."
  ((|OWLoneOf| :range |ODM-RDFBase|::|RDFSLiteral| :multiplicity (0 -1))
   (|datatype| :range ODM-RDFS::|RDFSDatatype| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== OWLDatatypeProperty
;;; =========================================================
(in-package "ODM-OWLBase")
(def-mm-class |OWLDatatypeProperty| :ODM (|Property|)
 "Datatype properties are used to link individuals to data values. A datatype
  property is defined as an instance of the built-in OWL class owl:DatatypeProperty."
  ())


;;; =========================================================
;;; ====================== OWLGraph
;;; =========================================================
(in-package "ODM-OWLBase")
(def-mm-class |OWLGraph| :ODM (|ODM-RDFBase|::|RDFGraph|)
 "Not all RDF graphs are valid OWL graphs. This class represents the subset
  of RDF graphs that are indeed valid OWL."
  ((|ontology| :range |OWLOntology| :multiplicity (0 -1)
    :opposite (|OWLOntology| |owlGraph|))
   (|triple| :range |ODM-RDFBase|::|Triple| :multiplicity (1 -1) :is-derived-p T
    :opposite (|ODM-RDFBase|::|Triple| |owlGraph|))))


;;; =========================================================
;;; ====================== OWLObjectProperty
;;; =========================================================
(in-package "ODM-OWLBase")
(def-mm-class |OWLObjectProperty| :ODM (|Property|)
 "Object properties link individuals to individuals. An object property is
  defined as an instance of the built-in OWL class owl:ObjectProperty."
  ((|OWLinverseOf| :range |OWLObjectProperty| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== OWLOntology
;;; =========================================================
(in-package "ODM-OWLBase")
(def-mm-class |OWLOntology| :ODM (|ODM-RDFBase|::|RDFSResource|)
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
   (|OWLversionInfo| :range |ODM-RDFBase|::|RDFSLiteral| :multiplicity (0 -1) :is-composite-p T)
   (|owlGraph| :range |OWLGraph| :multiplicity (1 -1)
    :opposite (|OWLGraph| |ontology|))
   (|owlUniverse| :range |OWLUniverse| :multiplicity (NIL -1)
    :opposite (|OWLUniverse| |ontology|))
   (|triple| :range |ODM-RDFBase|::|Triple| :multiplicity (1 -1)
    :opposite (|ODM-RDFBase|::|Triple| |ontology|))))


;;; =========================================================
;;; ====================== OWLOntologyProperty
;;; =========================================================
(in-package "ODM-OWLBase")
(def-mm-class |OWLOntologyProperty| :ODM (|OWLUniverse| |ODM-RDFBase|::|RDFProperty|)
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
(in-package "ODM-OWLBase")
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
  ((|OWLonProperty| :range |ODM-RDFBase|::|RDFProperty| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== OWLUniverse
;;; =========================================================
(in-package "ODM-OWLBase")
(def-mm-class |OWLUniverse| :ODM (|ODM-RDFBase|::|RDFSResource|)
 ""
  ((|ontology| :range |OWLOntology| :multiplicity (1 -1)
    :opposite (|OWLOntology| |owlUniverse|))))


;;; =========================================================
;;; ====================== Occurrence
;;; =========================================================
(in-package "ODM-TM")
(def-mm-class |Occurrence| :ODM (|ScopeAble| |TypeAble| |ReifiableConstruct|)
 "Occurrences are resources specifying someting about a topic. The name may
  be misleading, implying that they represent occuences of the topi, when
  in actuallity they can represent any characteristic. They can be thought
  of a similar to attributes."
  ((|datatype| :range |OclAny| :multiplicity (1 1))
   (|value| :range |OclAny| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== Phrase
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |Phrase| :ODM NIL
 "A phrase is either a comment, or a module, or a sentence, or an importation,
  or a phrase with an attached comment. --Module, Importation, Sentence,
  and Comment form a disjoint partition of Phrase context Phrase inv XOR:
  (self.oclIsKindOf(Module) xor self.oclIsKindOf(Importation)) and (self.oclIsKindOf(Module)
  xor self.oclIsKindOf(Sentence)) and (self.oclIsKindOf(Module) xor self.oclIsKindOf(Comment))
  and (self.oclIsKindOf(Importation) xor self.oclIsKindOf(Sentence)) and
  (self.oclIsKindOf(Importation) self.oclIsKindOf(Comment)) and (self.oclIsKindOf(Sentence)
  xor self.oclIsKindOf(Comment))"
  ())


;;; =========================================================
;;; ====================== PlainLiteral
;;; =========================================================
(in-package "ODM-RDFBase")
(def-mm-class |PlainLiteral| :ODM (|RDFSLiteral|)
 "A plain literal is a string combined with an optional language tag. This
  may be used for plain text in a natural language. As recommended in the
  RDF formal semantics, these plain literals are self-denoting. [Resource
  Description Framework: Concepts and Abstract Syntax, section 3.4]"
  ((|language| :range |OclAny| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== Property
;;; =========================================================
(in-package "ODM-ERIdentity")
(def-mm-class |Property| :ODM NIL
 ""
  ())


;;; =========================================================
;;; ====================== Property
;;; =========================================================
(in-package "ODM-OWLBase")
(def-mm-class |Property| :ODM (|OWLUniverse| |ODM-RDFBase|::|RDFProperty|)
 "The property class is an abstract class introduced to facilitate constraints
  between OWL DL and OWL Full and for ease of mapping to CL and other metamodels."
  ((|OWLequivalentProperty| :range |Property| :multiplicity (0 -1))
   (|isDeprecated| :range |OclAny| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== QuantifiedSentence
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |QuantifiedSentence| :ODM (|Sentence|)
 ""
  ((|binding| :range |Binding| :multiplicity (0 -1) :is-ordered-p T)
   (|body| :range |Sentence| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== Quantifier
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Quantifier| :ODM (|Constructor|)
 "DLHB 2.2.1"
  ())


;;; =========================================================
;;; ====================== RDFAlt
;;; =========================================================
(in-package "ODM-RDFS")
(def-mm-class |RDFAlt| :ODM (|RDFSContainer|)
 "This is the class of RDF Alternative containers. The rdf:Alt class is used
  conventionally to indicate to a human reader that typical processing will
  be to select one of the members of the container. The first member of the
  container, i.e,. the value of the rdf:_1 property, is the default choice."
  ())


;;; =========================================================
;;; ====================== RDFBag
;;; =========================================================
(in-package "ODM-RDFS")
(def-mm-class |RDFBag| :ODM (|RDFSContainer|)
 "This is the class of RDF Bag containers. It is used conventionally to indicate
  that the container is intended to be unordered."
  ())


;;; =========================================================
;;; ====================== RDFGraph
;;; =========================================================
(in-package "ODM-RDFBase")
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
(in-package "ODM-RDFS")
(def-mm-class |RDFList| :ODM (|ODM-RDFBase|::|RDFSResource|)
 "This class represents descriptions of RDF collections, conventionally called
  lists and other list-like structures."
  ((|RDFfirst| :range |ODM-RDFBase|::|RDFSResource| :multiplicity (0 1))
   (|RDFrest| :range |RDFList| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== RDFProperty
;;; =========================================================
(in-package "ODM-RDFBase")
(def-mm-class |RDFProperty| :ODM (|RDFSResource|)
 "A predicate (also called a property) denotes a relationship. The RDF Concepts
  and Abstract Syntax specification describes the concept of an RDF property
  as a relation between subject resources and object resources. Every property
  is associated with a set of instances, called the property extension. Instances
  of properties are pairs of RDF resources."
  ((|RDFSdomain| :range ODM-RDFS::|RDFSClass| :multiplicity (0 -1))
   (|RDFSrange| :range ODM-RDFS::|RDFSClass| :multiplicity (0 -1))
   (|RDFSsubPropertyOf| :range |RDFProperty| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== RDFSClass
;;; =========================================================
(in-package "ODM-RDFS")
(def-mm-class |RDFSClass| :ODM (|ODM-RDFBase|::|RDFSResource|)
 "The group of resources that are RDF Schema classes is itself a class, called
  rdfs:Class. Classes provide an abstraction mechanism for grouping resources
  with similar characteristics."
  ((|RDFSsubClassOf| :range |RDFSClass| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== RDFSContainer
;;; =========================================================
(in-package "ODM-RDFS")
(def-mm-class |RDFSContainer| :ODM (|ODM-RDFBase|::|RDFSResource|)
 "This is a super-class of RDF container classes."
  ())


;;; =========================================================
;;; ====================== RDFSContainerMembershipProperty
;;; =========================================================
(in-package "ODM-RDFS")
(def-mm-class |RDFSContainerMembershipProperty| :ODM (|ODM-RDFBase|::|RDFProperty|)
 "The rdfs:ContainerMembershipProperty class has as instances the properties
  rdf:_1, rdf:_2, rdf:_3 ... that are used to state that a resource is a
  member of a container.. Each instance of this class is an rdfs:subPropertyOf
  the rdfs:memberOf property."
  ())


;;; =========================================================
;;; ====================== RDFSDatatype
;;; =========================================================
(in-package "ODM-RDFS")
(def-mm-class |RDFSDatatype| :ODM (|RDFSClass|)
 "Datatypes are used by RDF in the representation of values such as integers,
  floating point numbers and dates. A datatype consists of a lexical space,
  a value space and a lexical-to-value mapping."
  ())


;;; =========================================================
;;; ====================== RDFSLiteral
;;; =========================================================
(in-package "ODM-RDFBase")
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
(in-package "ODM-RDFBase")
(def-mm-class |RDFSResource| :ODM NIL
 "All things described by RDF are called resources. This is the class of
  everything. All other classes are subclasses of this class."
  ((|RDFScomment| :range |PlainLiteral| :multiplicity (0 -1) :is-composite-p T)
   (|RDFSisDefinedBy| :range |RDFSResource| :multiplicity (0 -1))
   (|RDFSlabel| :range |PlainLiteral| :multiplicity (0 -1) :is-composite-p T)
   (|RDFSmember| :range |RDFSResource| :multiplicity (0 -1))
   (|RDFSseeAlso| :range |RDFSResource| :multiplicity (0 -1))
   (|RDFtype| :range ODM-RDFS::|RDFSClass| :multiplicity (1 -1))
   (|uriRef| :range |URIReference| :multiplicity (0 -1) :is-composite-p T
    :opposite (|URIReference| |resource|))))


;;; =========================================================
;;; ====================== RDFSeq
;;; =========================================================
(in-package "ODM-RDFS")
(def-mm-class |RDFSeq| :ODM (|RDFSContainer|)
 "This is the class of RDF Sequence containers. It is used conventionally
  to indicate that the numerical ordering of the container membership properties
  of the container is intended to be significant."
  ())


;;; =========================================================
;;; ====================== RDFStatement
;;; =========================================================
(in-package "ODM-RDFBase")
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
(in-package "ODM-RDFBase")
(def-mm-class |RDFXMLLiteral| :ODM (|TypedLiteral|)
 "RDF predefines just one datatype, rdf:XMLLiteral, used for embedding XML
  in RDF. The class rdf:XMLLiteral is the class of XML literal values. It
  is an instance of RDFSDatatype and a subclass of TypedLiteral."
  ())


;;; =========================================================
;;; ====================== ReifiableConstruct
;;; =========================================================
(in-package "ODM-TM")
(def-mm-class |ReifiableConstruct| :ODM (|TopicMapConstruct|)
 ""
  ((|reified| :range |Topic| :multiplicity (0 1)
    :opposite (|Topic| |reifier|))))


;;; =========================================================
;;; ====================== Role
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Role| :ODM (|Element|)
 ""
  ((|member| :range |Assertion| :multiplicity (0 -1)
    :opposite (|Assertion| |type|))))


;;; =========================================================
;;; ====================== ScopeAble
;;; =========================================================
(in-package "ODM-TM")
(def-mm-class |ScopeAble| :ODM NIL
 ""
  ((|scope| :range |Topic| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== Sentence
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |Sentence| :ODM (|Phrase|)
 "A sentence is either a quantified sentence or a Boolean sentence or an
  atom, or a sentence with an attached comment, or an irregular sentence.
  --The partition formed by the subclasses of Sentence is disjoint context
  Sentence inv DisjointPartition: (self.oclIsKindOf(Conjunction) xor self.oclIsKindOf(Disjunction))
  and (self.oclIsKindOf(Conjunction) xor self.oclIsKindOf(Negation)) and
  (self.oclIsKindOf(Conjunction) xor self.oclIsKindOf(Implication)) and (self.oclIsKindOf(Conjunction)
  xor self.oclIsKindOf(Equivalence)) and (self.oclIsKindOf(Conjunction) xor
  self.oclIsKindOf(UniversalQuantification)) and (self.oclIsKindOf(Conjunction)
  xor self.oclIsKindOf(ExistentialQuantification)) and (self.oclIsKindOf(Conjunction)
  xor self.oclIsKindOf(Atom)) and (self.oclIsKindOf(Conjunction) xor self.oclIsKindOf(CommentedSentence))
  and (self.oclIsKindOf(Disjunction) xor self.oclIsKindOf(Negation)) and
  (self.oclIsKindOf(Disjunction) xor self.oclIsKindOf(Implication)) and (self.oclIsKindOf(Disjunction)
  xor self.oclIsKindOf(Equivalence)) and (self.oclIsKindOf(Disjunction) xor
  self.oclIsKindOf(UniversalQuantification)) and (self.oclIsKindOf(Disjunction)
  xor self.oclIsKindOf(ExistentialQuantification)) and (self.oclIsKindOf(Disjunction)
  xor self.oclIsKindOf(Atom)) and (self.oclIsKindOf(Disjunction) xor self.oclIsKindOf(CommentedSentence))
  and (self.oclIsKindOf(Negation) xor self.oclIsKindOf(Implication)) and
  (self.oclIsKindOf(Negation) xor self.oclIsKindOf(Equivalence)) and (self.oclIsKindOf(Negation)
  xor self.oclIsKindOf(UniversalQuantification)) and (self.oclIsKindOf(Negation)
  xor self.oclIsKindOf(ExistentialQuantification)) and (self.oclIsKindOf(Negation)
  xor self.oclIsKindOf(Atom)) and (self.oclIsKindOf(Negation) xor self.oclIsKindOf(CommentedSentence))
  and (self.oclIsKindOf(Implication) xor self.oclIsKindOf(Equivalence)) and
  (self.oclIsKindOf(Implication) xor self.oclIsKindOf(UniversalQuantification))
  and (self.oclIsKindOf(Implication) xor self.oclIsKindOf(ExistentialQuantification))
  and (self.oclIsKindOf(Implication) xor self.oclIsKindOf(Atom)) and (self.oclIsKindOf(Implication)
  xor self.oclIsKindOf(CommentedSentence)) and (self.oclIsKindOf(Equivalence)
  xor self.oclIsKindOf(UniversalQuantification)) and (self.oclIsKindOf(Equivalence)
  xor self.oclIsKindOf(ExistentialQuantification)) and (self.oclIsKindOf(Equivalence)
  xor self.oclIsKindOf(Atom)) and (self.oclIsKindOf(Equivalence) xor self.oclIsKindOf(CommentedSentence))
  and (self.oclIsKindOf(UniversalQuantification) xor self.oclIsKindOf(ExistentialQuantification))
  and (self.oclIsKindOf(UniversalQuantification) xor self.oclIsKindOf(Atom))
  and (self.oclIsKindOf(UniversalQuantification) xor self.oclIsKindOf(CommentedSentence))
  and (self.oclIsKindOf(ExistentialQuantification) xor self.oclIsKindOf(Atom))
  and (self.oclIsKindOf(ExistentialQuantification) xor self.oclIsKindOf(CommentedSentence))
  and (self.oclIsKindOf(Atom) xor self.oclIsKindOf(CommentedSentence))"
  ())


;;; =========================================================
;;; ====================== SequenceMarker
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |SequenceMarker| :ODM (|Argument|)
 ""
  ())


;;; =========================================================
;;; ====================== Set
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Set| :ODM (|Collection|)
 "A set is a collection of unique members."
  ())


;;; =========================================================
;;; ====================== SomeValuesFromRestriction
;;; =========================================================
(in-package "ODM-OWLBase")
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
(in-package "ODM-OWLBase")
(def-mm-class |SymmetricProperty| :ODM (|OWLObjectProperty|)
 "A symmetric property is a property for which holds that if the pair (x,y)
  is an instance of P, then the pair (y,x) is also an instance of P. Syntactically,
  a property is defined as symmetric by making it an instance of the built-in
  OWL class owl:SymmetricProperty, a subclass of owl:ObjectProperty."
  ())


;;; =========================================================
;;; ====================== TBox
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |TBox| :ODM NIL
 ""
  ((|content| :range |Term| :multiplicity (0 -1))
   (|instance| :range |TBox| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== Term
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |Term| :ODM (|Argument|)
 "--The Name/CommentedTerm/Function partition is disjoint context Term inv
  DisjointPartion: (self.oclIsKindOf(LogicalName) xor self.oclIsKindOf(CommentedTerm))
  and (self.oclIsKindOf(LogicalName) xor self.oclIsKindOf(Function)) and
  (self.oclIsKindOf(CommentedTerm) xor self.oclIsKindOf(Function))"
  ())


;;; =========================================================
;;; ====================== Term
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Term| :ODM NIL
 ""
  ((|identifier| :range |OclAny| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== Text
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |Text| :ODM NIL
 "A text is a set, list, or bag of phrases. A piece of text may be identified
  by a name. A Common Logic text may be a sequence, a set or a bag of phrases;
  dialects may specify which is intended or leave this undefined. Re-orderings
  and repetitions of phrases in a text are semantically irrelevant. However,
  applications which transmit or re-publish Common Logic text should preserve
  the structure of texts, since other applications may utilise the structure
  for other purposes, such as indexing. If a dialect imposes conditions on
  texts then these conditions must be preserved by conforming applications."
  ((|commentForText| :range |Comment| :multiplicity (0 -1) :is-composite-p T)
   (|identifierForText| :range |Identifier| :multiplicity (0 1))
   (|phrase| :range |Phrase| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== Topic
;;; =========================================================
(in-package "ODM-TM")
(def-mm-class |Topic| :ODM (|TopicMapConstruct|)
 "Anything can be a topic."
  ((|occurrence| :range |Occurrence| :multiplicity (0 -1) :is-composite-p T)
   (|reifier| :range |ReifiableConstruct| :multiplicity (0 1)
    :opposite (|ReifiableConstruct| |reified|))
   (|role| :range |AssociationRole| :multiplicity (0 -1)
    :opposite (|AssociationRole| |player|))
   (|subjectItentifier| :range |OclAny| :multiplicity (0 -1))
   (|subjectLocator| :range |OclAny| :multiplicity (0 1))
   (|topicName| :range |TopicName| :multiplicity (0 -1) :is-composite-p T)))


;;; =========================================================
;;; ====================== TopicMap
;;; =========================================================
(in-package "ODM-TM")
(def-mm-class |TopicMap| :ODM (|ReifiableConstruct|)
 ""
  ((|association| :range |Association| :multiplicity (0 -1) :is-composite-p T
    :opposite (|Association| |parent|))
   (|topic| :range |Topic| :multiplicity (0 -1) :is-composite-p T)))


;;; =========================================================
;;; ====================== TopicMapConstruct
;;; =========================================================
(in-package "ODM-TM")
(def-mm-class |TopicMapConstruct| :ODM NIL
 ""
  ((|itemIdentifier| :range |OclAny| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== TopicName
;;; =========================================================
(in-package "ODM-TM")
(def-mm-class |TopicName| :ODM (|ReifiableConstruct| |TypeAble| |ScopeAble|)
 "An occurrence of VariantName can only part of a TopicName"
  ((|value| :range |OclAny| :multiplicity (1 1))
   (|variant| :range |Variant| :multiplicity (0 -1) :is-composite-p T)))


;;; =========================================================
;;; ====================== TransitiveProperty
;;; =========================================================
(in-package "ODM-OWLBase")
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
(in-package "ODM-RDFBase")
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
   (|document| :range |ODM-RDFWeb|::|Document| :multiplicity (1 -1)
    :opposite (|ODM-RDFWeb|::|Document| |triple|))
   (|graph| :range |RDFGraph| :multiplicity (1 -1)
    :opposite (|RDFGraph| |triple|))
   (|ontology| :range |ODM-OWLBase|::|OWLOntology| :multiplicity (0 -1)
    :opposite (|ODM-OWLBase|::|OWLOntology| |triple|))
   (|owlGraph| :range |ODM-OWLBase|::|OWLGraph| :multiplicity (1 -1) :is-derived-p T
    :opposite (|ODM-OWLBase|::|OWLGraph| |triple|))
   (|statement| :range |RDFStatement| :multiplicity (0 1)
    :opposite (|RDFStatement| |triple|))))


;;; =========================================================
;;; ====================== TypeAble
;;; =========================================================
(in-package "ODM-TM")
(def-mm-class |TypeAble| :ODM NIL
 ""
  ((|type| :range |Topic| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== TypedLiteral
;;; =========================================================
(in-package "ODM-RDFBase")
(def-mm-class |TypedLiteral| :ODM (|RDFSLiteral|)
 "A typed literal is a string combined with a datatype URI. It denotes the
  member of the identified datatype's value space obtained by applying the
  lexical-to-value mapping to the literal string. [Resource Description Framework:
  Concepts and Abstract Syntax, section 3.4]"
  ((|datatypeURI| :range |URIReference| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== URIReference
;;; =========================================================
(in-package "ODM-RDFBase")
(def-mm-class |URIReference| :ODM NIL
 "RDF uses URI references to identify resources and properties. A URI reference
  within an RDF graph (an RDF URI reference) is a Unicode string conforming
  to the characteristics defined in the Concepts and Abstract Syntax document
  (also defined in the RDF/XML Syntax document)."
  ((|fragmentIdentifier| :range |ODM-RDFWeb|::|LocalName| :multiplicity (0 1)
    :opposite (|ODM-RDFWeb|::|LocalName| |uriRef|))
   (|namespace| :range |ODM-RDFWeb|::|Namespace| :multiplicity (0 1)
    :opposite (|ODM-RDFWeb|::|Namespace| |namespaceURIRef|))
   (|owningNamespace| :range |ODM-RDFWeb|::|Namespace| :multiplicity (0 1)
    :opposite (|ODM-RDFWeb|::|Namespace| |uriRefInNamespace|))
   (|resource| :range |RDFSResource| :multiplicity (0 1)
    :opposite (|RDFSResource| |uriRef|))
   (|uri| :range |UniformResourceIdentifier| :multiplicity (0 1))))


;;; =========================================================
;;; ====================== URIReferenceNode
;;; =========================================================
(in-package "ODM-RDFBase")
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
(in-package "ODM-RDFBase")
(def-mm-class |UniformResourceIdentifier| :ODM (|URIReference|)
 "The RDF abstract syntax is concerned primarily with URI references. The
  definition of a URI, distinct from URI reference, is included for mapping
  purposes."
  ((|name| :range |OclAny| :multiplicity (1 1))))


;;; =========================================================
;;; ====================== Union
;;; =========================================================
(in-package "ODM-DL")
(def-mm-class |Union| :ODM (|Constructor|)
 "DLHB 2.2.1.2"
  ())


;;; =========================================================
;;; ====================== UnionClass
;;; =========================================================
(in-package "ODM-OWLBase")
(def-mm-class |UnionClass| :ODM (|OWLClass|)
 "The owl:unionOf property links a class to a list of class descriptions.
  An owl:unionOf statement describes an anonymous class for which the class
  extension contains those individuals that occur in at least one of the
  class extensions of the class descriptions in the list."
  ((|OWLunionOf| :range |OWLClass| :multiplicity (0 -1))))


;;; =========================================================
;;; ====================== UniversalQuantification
;;; =========================================================
(in-package "ODM-CL")
(def-mm-class |UniversalQuantification| :ODM (|QuantifiedSentence|)
 ""
  ())


;;; =========================================================
;;; ====================== Variant
;;; =========================================================
(in-package "ODM-TM")
(def-mm-class |Variant| :ODM (|ReifiableConstruct|)
 "All instances of VariantName must be a variant in the topicName_Variant
  composition."
  ((|datatype| :range |OclAny| :multiplicity (1 1))
   (|scope| :range |Topic| :multiplicity (1 -1))
   (|value| :range |OclAny| :multiplicity (1 1))))


(def-mm-package CL |org.omg.odm| :ODM 
   (ODM-CL::|Term|
    ODM-CL::|Name|
    ODM-CL::|SequenceMarker|
    ODM-CL::|Atom|
    ODM-CL::|FunctionalTerm|
    ODM-CL::|CommentedTerm|
    ODM-CL::|AtomicSentence|
    ODM-CL::|Sentence|
    ODM-CL::|CommentedSentence|
    ODM-CL::|Disjunction|
    ODM-CL::|Conjunction|
    ODM-CL::|Implication|
    ODM-CL::|Biconditional|
    ODM-CL::|Negation|
    ODM-CL::|QuantifiedSentence|
    ODM-CL::|Phrase|
    ODM-CL::|Importation|
    ODM-CL::|Comment|
    ODM-CL::|Text|
    ODM-CL::|Module|
    ODM-CL::|Equation|
    ODM-CL::|UniversalQuantification|
    ODM-CL::|ExistentialQuantification|
    ODM-CL::|ExclusionSet|
    ODM-CL::|Identifier|
    ODM-CL::|IrregularSentence|
    ODM-CL::|BooleanSentence|
    ODM-CL::|Argument|
    ODM-CL::|Binding|))

(def-mm-package DL |org.omg.odm| :ODM 
   (ODM-DL::|Element|
    ODM-DL::|Role|
    ODM-DL::|Collection|
    ODM-DL::|Literal|
    ODM-DL::|Assertion|
    ODM-DL::|DataType|
    ODM-DL::|Concept|
    ODM-DL::|Intersection|
    ODM-DL::|Union|
    ODM-DL::|Negation|
    ODM-DL::|Individual|
    ODM-DL::|Instance|
    ODM-DL::|Set|
    ODM-DL::|List|
    ODM-DL::|Quantifier|
    ODM-DL::|ForAll|
    ODM-DL::|Existential|
    ODM-DL::|Implication|
    ODM-DL::|Expression|
    ODM-DL::|Definition|
    ODM-DL::|Inclusion|
    ODM-DL::|NumberRestiction|
    ODM-DL::|Constructor|
    ODM-DL::|Extent|
    ODM-DL::|ABox|
    ODM-DL::|TBox|
    ODM-DL::|Term|))

(def-mm-package |ERIdentity| |org.omg.odm| :ODM 
   (|ODM-ERIdentity|::|Class|
    |ODM-ERIdentity|::|Identifier|
    |ODM-ERIdentity|::|Property|))

(def-mm-package OWL |org.omg.odm| :ODM 
   (OWLDL
    |OWLBase|
    |OWLFull|))

(def-mm-package |OWLBase| OWL :ODM 
   (|ODM-OWLBase|::|OWLOntology|
    |ODM-OWLBase|::|OWLOntologyProperty|
    |ODM-OWLBase|::|OWLClass|
    |ODM-OWLBase|::|OWLRestriction|
    |ODM-OWLBase|::|OWLObjectProperty|
    |ODM-OWLBase|::|OWLDatatypeProperty|
    |ODM-OWLBase|::|Individual|
    |ODM-OWLBase|::|OWLAllDifferent|
    |ODM-OWLBase|::|OWLDataRange|
    |ODM-OWLBase|::|OWLAnnotationProperty|
    |ODM-OWLBase|::|EnumeratedClass|
    |ODM-OWLBase|::|IntersectionClass|
    |ODM-OWLBase|::|UnionClass|
    |ODM-OWLBase|::|ComplementClass|
    |ODM-OWLBase|::|Property|
    |ODM-OWLBase|::|HasValueRestriction|
    |ODM-OWLBase|::|AllValuesFromRestriction|
    |ODM-OWLBase|::|SomeValuesFromRestriction|
    |ODM-OWLBase|::|CardinalityRestriction|
    |ODM-OWLBase|::|MaxCardinalityRestriction|
    |ODM-OWLBase|::|MinCardinalityRestriction|
    |ODM-OWLBase|::|FunctionalProperty|
    |ODM-OWLBase|::|InverseFunctionalProperty|
    |ODM-OWLBase|::|SymmetricProperty|
    |ODM-OWLBase|::|TransitiveProperty|
    |ODM-OWLBase|::|OWLGraph|
    |ODM-OWLBase|::|OWLUniverse|))

(def-mm-package OWLDL OWL :ODM 
   ())

(def-mm-package |OWLFull| OWL :ODM 
   ())

(def-mm-package RDF |org.omg.odm| :ODM 
   (|RDFBase|
    RDFS
    |RDFWeb|))

(def-mm-package |RDFBase| RDF :ODM 
   (|ODM-RDFBase|::|BlankNode|
    |ODM-RDFBase|::|RDFGraph|
    |ODM-RDFBase|::|RDFProperty|
    |ODM-RDFBase|::|RDFStatement|
    |ODM-RDFBase|::|RDFSLiteral|
    |ODM-RDFBase|::|RDFSResource|
    |ODM-RDFBase|::|URIReferenceNode|
    |ODM-RDFBase|::|URIReference|
    |ODM-RDFBase|::|TypedLiteral|
    |ODM-RDFBase|::|PlainLiteral|
    |ODM-RDFBase|::|RDFXMLLiteral|
    |ODM-RDFBase|::|UniformResourceIdentifier|
    |ODM-RDFBase|::|Triple|
    |ODM-RDFBase|::|Node|
    |ODM-RDFBase|::|NamedGraph|))

(def-mm-package RDFS RDF :ODM 
   (ODM-RDFS::|RDFSClass|
    ODM-RDFS::|RDFSDatatype|
    ODM-RDFS::|RDFList|
    ODM-RDFS::|RDFSContainer|
    ODM-RDFS::|RDFAlt|
    ODM-RDFS::|RDFBag|
    ODM-RDFS::|RDFSeq|
    ODM-RDFS::|RDFSContainerMembershipProperty|))

(def-mm-package |RDFWeb| RDF :ODM 
   (|ODM-RDFWeb|::|Document|
    |ODM-RDFWeb|::|Namespace|
    |ODM-RDFWeb|::|NamespaceDefinition|
    |ODM-RDFWeb|::|LocalName|))

(def-mm-package TM |org.omg.odm| :ODM 
   (ODM-TM::|Topic|
    ODM-TM::|TopicMapConstruct|
    ODM-TM::|Association|
    ODM-TM::|TopicMap|
    ODM-TM::|Occurrence|
    ODM-TM::|AssociationRole|
    ODM-TM::|Variant|
    ODM-TM::|TopicName|
    ODM-TM::|ScopeAble|
    ODM-TM::|TypeAble|
    ODM-TM::|ReifiableConstruct|))

(def-mm-package |org.omg.odm| nil :ODM 
   (|ERIdentity|
    RDF
    CL
    DL
    TM
    OWL))

(in-package :mofi)


(with-slots (mofi::abstract-classes) mofi:*model*
     (setf mofi::abstract-classes 
        `(ODM-CL::|Atom|
          ODM-CL::|BooleanSentence|
          ODM-DL::|Instance|
          |ODM-OWLBase|::|OWLRestriction|
          |ODM-OWLBase|::|OWLUniverse|
          |ODM-OWLBase|::|Property|
          ODM-CL::|QuantifiedSentence|
          ODM-TM::|ReifiableConstruct|
          ODM-TM::|ScopeAble|
          ODM-CL::|Sentence|
          ODM-CL::|Term|
          ODM-DL::|Term|
          ODM-TM::|TopicMapConstruct|
          ODM-TM::|TypeAble|)))