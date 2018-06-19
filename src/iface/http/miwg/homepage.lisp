
;;; Copyright (c) 2005, Peter Denno.  All rights reserved.

;;; Redistribution and use in source and binary forms, with or without
;;; modification, are permitted provided that the following conditions
;;; are met:

;;;   * Redistributions of source code must retain the above copyright
;;;     notice, this list of conditions and the following disclaimer.

;;;   * Redistributions in binary form must reproduce the above
;;;     copyright notice, this list of conditions and the following
;;;     disclaimer in the documentation and/or other materials
;;;     provided with the distribution.

;;; THIS SOFTWARE IS PROVIDED BY THE AUTHOR 'AS IS' AND ANY EXPRESSED
;;; OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
;;; WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;;; ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
;;; DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
;;; DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
;;; GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;;; INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
;;; WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
;;; NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
;;; SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

(in-package :project-http)


#+nil
(defun ap233-dsp ()
  (app-page-wrapper :sei (:view "Tools" :menu-pos '(:root :tools))
    (with-open-file (s (pod:lpath :sei "iface/http/static/expresso.html"))
      (loop for line = (read-line s nil nil)
	    while line do (princ line) (terpri)))))

#+nil
(defun miv-dsp ()
  (app-page-wrapper :sei (:view "Tools" :menu-pos '(:root))
    (with-open-file (s (pod:lpath :sei "iface/http/static/miv.html"))
      (loop for line = (read-line s nil nil)
	    while line do (princ line) (terpri)))))


(defun miwg-tools-changelog-dsp ()
  (flet ((type-op (type op-name &key (model :uml23))
	   (if (find-model model :error-p nil)
	       (let ((c (find-class (intern type model))))
		 (when-bind (op (find op-name 
				      (append (mofi:type-operations c) (mofi:type-constraints c))
				      :key #'mofi:operation-name :test #'string=))
		   (mofb:url-ocl-operator op)))
	       (format nil "~A.~A" type op-name))))
    (app-page-wrapper :sei (:menu-pos '(:root :changelog))
      (:h1 "MIWG Tools Changelog")
      "This page describes changes that affect the behavior of the MIWG tools
      (Validator, Class Browser, Model Diff)."
      (:h2 "NIST Validator Changes")
      (:ul
       (:li (:strong "2017-12-21:")
	    (:ul
	     (:li "Correct a problem preventing compilation of operators in loaded profiles.")))
       (:li (:strong "2016-09-23:")
	    (:ul
	     (:li "Correct a problem where some OCL Collect shorthand (see OCL spec 7.7) was not compiled correctly.")))
       (:li (:strong "2016-09-23:")
	    (:ul
	     (:li "Report where things identified by href reference a version of UML other than the one of the model.")
	     (:li "Report where xmi:type is used in XML elements that also use hrefs. (This is prohibited in XMI 2.4.1 and later.)")
	     (:li "Report where UML.xmi is used to reference primitive types in XMI 2.4.1 and later. (These should use PrimitiveTypes.xmi.)")))
       (:li (:strong "2014-04-25:")
	    (:ul
	     (:li "Addressed a problem where oclAsType was causing problems when called inside derived properties.")
	     (:li "Addressed a problem linking user-loaded profiles and model fragments with models that use them.")
	     (:li "Split the interface loading profiles, metamodels and model fragments into three separate pages and 
		   improved the documentation of the processes involved.")
	     (:li "Clarified the documentation of 'unresolved URI reference' to encourage users to load the needed models.")))
       (:li (:strong "2014-02-21:")
	    (:ul
	     (:li "Corrected two problems with XMI href referencing.")
	     (:li "Implemented command line switches for debugging.")))
       (:li (:strong "2013-12-29:")
	    (:ul
	     (:li "Implemented Associations as persistent metaobjects.")
	     (:li "Enabled use of older versions of /usr/bin/file on linux.")
	     (:li "Fixed a bug where checking for mandatory values was not performed on properties from stereotypes.")
	     (:li "Rewrote OCL for "
		  (str (type-op "Package" "containingProfile" :model :uml25)) " and " 
		  (str (type-op "Stereotype" "containingProfile" :model :uml25))".")
	     (:li "Rewrote OCL for "
		  (str (type-op "Extension" "metaclassEnd" :model :uml25))
		  " following a recommendation from Nicolas Rouquette.")
	     (:li "Fixed a bug where the LHS menu wasn't displaying the complete menu item hierarchy.")
	     (:li "Changed some reporting to use links to class properties rather than plain text.")))
       (:li (:strong "2013-11-27:")
	    (:ul
	     (:li "Corrected the name of the 20131001 Standard Profile.")))
       (:li (:strong "2013-11-24:")
	    (:ul
	     (:li "Added UML2.5 as a metamodel for which profiles can be defined.")
	     (:li "Using the final UML2.5 not the 2012 beta.")
	     (:li "Preloaded the 20131001 Standard Profile")))
       (:li (:strong "2013-11-13:")
	    (:ul
	     (:li "Updates for use on servers beyond syseng.nist.gov, which has been decommissioned.")
	     (:ul (:li "Removed QVT-r.")
		  (:li "Removed or modified some static introductory pages."))
	     (:li "Pre-loaded all MIWG Test Cases that are part of MIWG Release-14.")
	     (:li "Fixed a bug where profiles were compiled for UML2.4.1 regardless of the stated metamodel.")
	     (:li "Removed reporting of 'OCL errors while evaluating derived attributes' and
                   'OCL errors due to missing derived attribute specifications,' error types which most users don't care about.")))
       (:li (:strong "2013-05-06:")
	    (:ul
	     (:li "Defined the derivation of UML2.4.1::EnumerationLiteral.classifier.")))
       (:li (:strong "2013-04-12:")
	    (:ul
	     (:li "Fixed a bug where the wrong URI was used to identify SysML 1.3.")
	     (:li "Fixed a bug where XMI namespaces were not properly identified.")
	     (:li "Added reporting on the XMI version used.")
	     (:li "Removed redundant superclass declarations in the compilation of metamodels.")
	     (:li "Updated compilation of UPDM 2.0.1. (This may be inconsequential.)"
	     (:li "Added matching on primitives values in shallow model diffing."))))
       (:li (:strong "2013-02-27:")
	    (:ul
	     (:li "Fixed a bug where the XMI 2.1 XML namespace was always used in generated canonical XMI.")))
       (:li (:strong "2013-01-03:")
	    (:ul
	     (:li "Fixed a bug where objects in an OCL package (e.g. Variable) were confused with
                   objects in metamodel packages.")))
       (:li (:strong "2012-11-10:")
	    (:ul
	     (:li "Added ability to compile profiles based on UML 2.4.1.")
	     (:li "Fixed a problem where having OCL Collections on properties that should not
                   contain them was causing property propagation to run long.")
	     (:li "Fixed a problem in canonical XMI generation where the reference to the base_ property of 
                   stereotype applications was not updated.")
	     (:li "Preloaded the not-yet-AB-reviewed 20121004 UPDM.")
	     (:li "Corrected a bug in HTML rendering where the validation results page 
                   was entirely inside a header element.")))
       (:li (:strong "2012-11-02:")
	    (:ul
	     (:li "Added ability to run CMOF constraints on validation.")
	     (:li "Corrected a problem with oclAsType(); return invalid when argument type does not conform.")
	     (:li "Corrected a problem where Extension.owned was not being compiled correctly (in profiles).")
	     (:li "Updated UML 2.5 to ptc/2012-10-24 version.")
	     (:li "Corrected URI referencing SoaML.")))
       (:li (:strong "2012-10-10:")
	    (:ul
	     (:li "Fixed a bug in the propagation of opposites where the opposite is a property that is renamed
                   in its redefinition.")))
       (:li (:strong "2012-10-03:")
	    (:ul
	     (:li "Fixed a bug in which differences in regression testing of model-diff were not reported.")
	     (:li "Fixed a bug where some testing inappropriate for stereotypes was being applied.")))
       (:li (:strong "2012-09-07:")
	    (:ul
	     (:li "Fixed a bug which prevented some stereotypes from being applied and also caused problems in the generation of element references in Canonical XMI of these stereotypes.")))
       (:li (:strong "2012-07-30:")
	    (:ul
	     (:li "Fixed various bugs that prevented loading and href-linking of models spread over multiple files.")
	     (:li "Improved the documentation of the multi-file loading capability.")
	     (:li "Fixed a bug where diff report details called an undefined method.")))
       (:li (:strong "2012-07-16:")
	    (:ul
	     (:li "Fixed a bug in the reporting of ocl:Sets that contain duplicate elements.")))
       (:li (:strong "2012-06-25:")
	    (:ul
	     (:li "Fixed a bug in Canonical generation where the code attempted to create names for 
                   objects that are defaults (and therefore not serialized).")))
       (:li (:strong "2012-06-22:")
	    (:ul
	     (:li "Fixed a bug in Canonical generation where the uml::name method was called on 
                   elements that did not possess that property.")))
       (:li (:strong "2012-06-01:")
	    (:ul
	     (:li "Created a version that runs on MS Windows, for distribution. It can be 
                  found " (:a :href "/se-interop/get-validator" "here."))
	     (:li "Fixed a bug in Canonical XMI generation where CMOF:Tags were not getting new xmi:ids.")
	     (:li "Updated UML2.5 preload to current SVN version.")))
       (:li (:strong "2012-05-16:")
	    (:ul
	     (:li "Updated the UPDM Profile from SVN -- URI/URL changed to URI.")
	     (:li "Fixed a bug where navigating to URLs to QVT menu items caused an error.")))
       (:li (:strong "2012-05-03:")
	    (:ul
	     (:li "Fixed a problem where canonical xmi:id's were not managed correctly, affecting
 canonical XMI transformation from input that was mostly in canonical form.")))
       (:li (:strong "2012-05-01:")
	    (:ul
	     (:li "Corrected URI to SoaML.")
	     (:li "Updated UPDM Profile.")
	     (:li "Save xmi:id of Packages in compiled models.")
	     (:li "Corrected a bug where some legitimate URLs where perceived as XSS attacks.")))
       (:li (:strong "2012-04-25:")
	    (:ul
	     (:li "Pre-loaded the UPDM profile.")))
       (:li (:strong "2012-04-23:")
	    (:ul
	     (:li "Pre-loaded the SoaML profile.")))
       (:li (:strong "2012-03-18:")
	    (:ul
	     (:li "Fixed bug where class browser list was not appearing.")
	     (:li "Added separate error reporting for OCL type exceptions.")
	     (:li "Corrected OCL generation for detection of shorthand collect.")
	     (:li "Upgraded OCL prepend and append to OCL 2.3.")
	     (:li "Fixed a problem with ocl <>. (No kidding.)")))
       (:li (:strong "2012-03-07:")
	    (:ul
	     (:li "Support additional character encodings: jis, shift_jis, Windows-CP936, euc-jp.")
	     (:li "Pre-loaded SysML 1.3")
	     (:li "Store unpredictable xmi-id for href.")
	     (:li "Removed operations for derived properties in UML 2.4.1 which where stubbed in to
                   return true. Thus, the validator will again generate exceptions when these are called,
                   as it does with other metamodels. This currently appears to be the best approach to
                   handling the missing derivation problem. The problem may go away in UML 2.5.")
	     (:li "Corrected a problem with translation of the OCL grammar element CollectionLiteralPart 
                   where the populating expression was not literal (e.g. OrderedSet{ownedEnd}.")
	     (:li "Compiled with LW 6.1")))
       (:li (:strong "2012-02-28:")
	    (:ul
	     (:li "Updated UML 2.5 metamodel.")
	     (:li "Allow validation of CMOF. (Note that the toplevel package should have xmi:id='_0'.)")))
       (:li (:strong "2012-02-25:")
	    (:ul
	     (:li "Restored ability to specify href URI for user-loaded profiles.")
	     (:li "Fixed various bugs in OCL parsing revealed by UML2.5")
	     (:li "Implemented OCL closure operation.")
	     (:li "Fixed bug where the schema loader was concatenating ownedRule bodies (OCL), where it 
                   should have been using bodyCondition, precondition and postcondition.")
	     (:li "Fixed bug in OCL collection literal.")
	     (:li "Implemented QVT-r handling of opposites ")
	     (:li "Implemented additional methods for OCL asSet() etc.")
	     (:li "Implemented OCL _'reservedword' syntax")
	     (:li "Fixed bug in checking for cross-site scripting")))
       (:li (:strong "2012-01-23:")
	    (:ul
	     (:li "Deployed UML 2.4.1, dropped support for UML 2.2")
	     (:li "Started using cmof:Tag to identify UML profiles.")
	     (:li "Improved usability of the QVT-r implementation.")))
       (:li (:strong "2011-11-25:")
	    (:ul
	     (:li "Implemented a capability to define properties from multiple ancestors; used on "
                   (str (mofb:url-class-browser 
			 (mofi::m1-find-slot-named (find-class 'uml23:|StructuredActivityNode|) "activity"))) ".")
	     (:li "Ignoring constraint " (str (type-op "ReadSelfAction" "contained")) ".")))
       (:li (:strong "2011-11-22:")
	    (:ul
	     (:li "Corrected a problem with insertion of owner in 2011-11-14 umlLiteralSpecification code.")
	     (:li "Don't run OCL when there is a cylce of ownership. "
		  (str (type-op "Element" "allOwnedElements" :model :uml23)) " will get stuck.")))
       (:li (:strong "2011-11-18:")
	    (:ul
	     (:li "Corrected a problem with "
		  (str (type-op "Property" "isConsistentWith" :model :uml23)) ".")))
       (:li (:strong "2011-11-16:")
	    (:ul
	     (:li "Corrected a problem in multi-threading.")))
       (:li (:strong "2011-11-14:")
	    (:ul
	     (:li "Corrected a problem where ill-formed XML in profile files caused a server error.")))
       (:li (:strong "2011-10-14:")
	    (:ul
	     (:li "Implemented a profile loading capability.")
	     (:li "Implemented new reporting for cycles in the uml:OwnedElement property. 
                   In files where cycles are found, XMI Canonical diffing is not performed.")
	     (:li "Report errors where uml:LiteralSpecification is required but a simple literal
                   was used in the XMI.")
	     (:li "Removed experimental NIEM capability -- The NIEM profile can be loaded manually 
                   using the new profile loading capability.")))
       (:li (:strong "2011-08-10:")
	    (:ul
	     (:li "Experimental NIEM capability.")))
       (:li (:strong "2011-08-02:")
	    (:ul
	     (:li "Eliminated a bug in how the object match table referenced object owners.")
	     (:li "Eliminated a bug where derived unions could contain duplicate elements.")
	     (:li "Eliminated a bug where the object browser could give an error when there was 
                   no reference test case file associated with the submitted file.")))
       (:li (:strong "2011-08-01:")
	    (:ul
	     (:li "Eliminated a bug where the test case being used was not cleared between runs.")
	     (:li "Force new session object with each validation run.")
	     (:li "Don't start server until Valid TCs are loaded.")))
       (:li (:strong "2011-07-28:")
	    (:ul
	     (:li "Eliminated a bug in the XMI diff algorithm.")
	     (:li "Implemented a table identifying difference between the user's file and 
                   the corresponding MIWG test case (where applicable). See 'Table of corresponding objects'
                   under the heading 'Canonical XMI' on the main report page.")
	     (:li "Corrected text in reporting of differences; provide links appear where appropriate.")))
       (:li (:strong "2011-07-26:")
	    (:ul
	     (:li "Eliminated a bug where errors significant enough to halt assessment of the user's file 
                   did not provide information regarding what went wrong.")
	     (:li "Implemented in the object browser a link from the user's object to 
                   the corresponding object in valid.xmi. This is available only when testing 
                   concerns a MIWG test case and the object requested matched an object in valid.xmi.")))
       (:li (:strong "2011-07-24:")
	    (:ul
	     (:li "Implemented the revised version of Canonical XMI.")))
       (:li (:strong "2011-06-23:")
	    (:ul
	     (:li "Implemented a hybrid model/xml diff capability. Note that: <ol> <li>Since it uses numerical
                   scoring of object resemblance, it will require some tuning. Report bugs.</li>
                   <li>It is now possible to examine objects from the valid.xmi file as well
                   as the file you have uploaded. When a valid.xmi object is shown, to avoid confusion,
                   its title background is light green (very obvious).</li></ol>")
	     (:li "Updated the page describing the unresolved URI error condition and defined page
                   that lists actual URLs used <a href='/se-interop/miwg/tools/models-loaded'>here</a>.")))
       (:li (:strong "2011-05-09:")
	    (:ul
	     (:li "Implemented Maged Elaasar's OCL for " (str (type-op "Property" "multiplicity_of_composite")))
	     (:li "Corrected several bugs where bad URLs from bots where filling log files.")))
       (:li (:strong "2011-05-09:")
	    (:ul
;	     (:li "Implemented SysML's SI Definitions and QUDV model libraries.")
	     (:li "Eliminated permissive behavior on incorrect URIs for UML 2.3, SysML and the Standard Profile L2.")
	     (:li "Corrected a bug where canonical XMI generation stereotype application base_ objects were referenced
                   by element content rather than xmi:idref.")
	     (:li "Added checking for duplicate application of a stereotype.")
	     (:li "Corrected bugs with OCL &gt;= and &lt;=.")
	     (:li "Eliminated OCL for " (str (type-op "Property" "multiplicity_of_composite")))))
       (:li (:strong "2011-04-20:")
	    (:ul
	     (:li "Removed support for UML 2.1")
	     (:li "UML2.3 only: ActivityNode::node now subsets Element::ownedElement.")
	     (:li "UML2.3 only: ValueSpecificationAction::value now subsets Element::ownedElement.")
	     (:li "UML2.3 only: Stereotype::icon now subsets Element::ownedElement.")
	     (:li "UML2.3 only: Ignored constraint LinkEndData.qualifers().")
	     (:li "UML2.3 only: Made multiplicity of JoinNode::joinSpec (0 1).")
	     (:li "UML2.3 only: Removed faulty derivation of Stereotype.profile and made the 
                   property multiplicity (0 1).")))
       (:li (:strong "2012-04-02:")
	    (:ul
	     (:li "Fixed a bug where a program exception would occur if a metamodel defined the lower
                   bound of a collection to be an unlimited natural.")))
        ) ; End of 2012 :UL
      (:ul
       (:li (:strong "2011-04-01:")
	    (:ul
	     (:li "Fixed more bugs in the syntax of xmi:ids of Canonical XMI.")
	     (:li "In test case diff warnings, added a link referencing the implicated model element.")))
       (:li (:strong "2011-03-16:")
	    (:ul
	     (:li "Fixed a bug in the syntax of xmi:ids of Canonical XMI.")
	     (:li "Implemented new error reporting for comparision with Canonical XMI.")
	     (:li "Made Pin abstract in all supported UMLs.")
	     (:li "Removed TestContext from the SysML Profile.")))
       (:li (:strong "2011-02-08:")
	    (:ul
	     (:li "Carried over 2010-11-01 changes of UML 2.2 into UML 2.3.")
	     (:li "Fixed a problem with reporting of a stereotype-related error.")))
       (:li (:strong "2010-12-13:")
	    (:ul
             (:li "Corrected a problem where unresoved xmi:idrefs caused a program error in 
                   Canonical XMI transformation.")))
       (:li (:strong "2010-12-08:")
	    (:ul
             (:li "Corrected a problem in Canonical XMI transformation where the elementization of 
                   object references did not encode these as xmi:idrefs.")))
       (:li (:strong "2010-11-22:")
	    (:ul
             (:li "Corrected a problem in Canonical XMI generation where LiteralSpecifications were 
                   not provided unique XMI:ids.")
	     (:li "Corrected a problem in Canonical generation where objects with qualified names
                   that were not unique to their scope were not  provided unique XMI:ids.")
	     (:li "Developed a regression test to report where results differed between 
                   the testing of an uploaded file and testing of the canonical file generated 
                   from the uploaded file. Currently, results are identical.")
	     (:li "Corrected several problems in the reading of Canonical XMI.")
	     (:li "Corrected a problem in Canonical generation where xmi:id values outside of the 
                   Model XML Element were not being translated to the canonical values.")))
       ) ; end of 2011 :ul
      (:ul
       (:li (:strong "2010-11-01:")
	    (:ul
             (:li "Modified UML2.2 metamodel pursuant to today's MIWG telecon:")
	     (:ul
	      (:li "ActivityEdge.guard given default value True.")
	      (:li "ActivityEdge.weight given default value 1.")
	      (:li "ObjectNode.upperBound given default value *.")
	      (:li "ActivityEventAction.trigger made to subset Element.ownedElement."))))
       (:li (:strong "2010-10-30:")
	    (:ul
             (:li "Added reporting for many types of XML error.")
             (:li "Fixed a bug where propagating an opposite property would cause a hard error when"
                  " the object being updated was not of a type possessing the property.")))
       (:li (:strong "2010-10-12:")
	    (:ul
             (:li "Fixed a bug where Canonical XMI ordering was not enforced.")
             (:li "Removed XMI version from the xmi:XMI element, a requirement of the Canonical spec.")
             (:li "Fixed a bug where objects were not created for xml elements mistakenly identified
                   as xmi:id references.")
	     (:li "Fixed a bug in Canonical XMI where the strings that were not references to xmi:ids were
                   mistakenly replaced with the renamed xmi:id string whenever the string happened
                   to match an xmi:id.")))
       (:li (:strong "2010-09-30:")
	    (:ul
	     (:li "Fixed a bug in Canonical XMI where the xmi:type attribute was kept when an href was present.")
	     (:li "Fixed several bugs in reading Canonical XMI.")))
       (:li (:strong "2010-09-28:")
	    (:ul
	     (:li "Implemented a check for serializing the opposite of a property declared composite.")
	     (:li "Corrected a bug where the XMI shown to explain errors was canonical XMI, 
                   not the uploaded original.")
	     (:li "Colorized some error reporting of user's XMI.")
	     (:li "Fixed a bug in Canonical XMI where multi-valued XML attributes where not transformed correctly.")
	     (:li "Fixed a bug in Canonical XMI where the XMI:xmi XML element was not serialized.")
	     (:li "Fixed a bug in Canonical XMI where XML namespace tags had wrong URIs.")
	     (:li "Fixed a bug in Canonical XMI where .qualifiedName was used when that name is a null string.")
	     (:li "Made the Canonical XMI code thread-safe.")))
       (:li (:strong "2010-09-20:")
	    (:ul
	     (:li "Various corrections to the (still rough) Canonical XMI implementation.")))
       (:li (:strong "2010-09-19:")
	    (:ul
	     (:li "Implemented direct XML transformation for Canonical XMI -- some bugs remain, but it is 
                   good enough for discussion at tomorrow's face-to-face.")
	     (:li "Implemented regression testing against vendor our-export.xmi on trunk.")))
       (:li (:strong "2010-09-10:")
	    (:ul
	     (:li "Implemented comparison reporting on the (new) Canonical XMI implementation.")
	     (:li "Implemented a check for serialization of default values.")
	     (:li "Implemented a check for serialization of derived values.")))
       (:li (:strong "2010-09-03:")
	    (:ul
	     (:li "Fixed several bugs in experimental Canonical XMI generation.")
	     (:li "Improved profile support.")))
       (:li (:strong "2010-08-05:")
	    (:ul
	     (:li "Added experimental capability to generate Canonical XMI. A known problem exists
                   involving the reference to embedded packages in hrefs.")
	     (:li "Generate a warning report when a stereotype application occurs inside the 
                   XMI element uml:Model.")
	     (:li "Corrected the OCL for "
		  (str (type-op "InformationFlow" "sources_and_targets_kind" :model :uml23)) ".")))
       (:li (:strong "2010-06-23:")
	    (:ul
	     (:li "Added UML 2.3 support.")
	     (:li "Made a few improvements related to processing speed.")))
       (:li (:strong "2010-06-19:")
	    (:ul
	     (:li "Updated SysML profile to version 1.2.")
	     (:li "Corrected a problem where false positives were generated on type checking
                   (typically very basic types, NamedElement, etc.). The problem occured because
                   the version of UML used in testing was not the one specified in the user's file.")
	     (:li "Disabled OCL constraint ObjectNode.not_unique. It is not clear what was intended.")
	     (:li "Allowed profile objects inside of uml:Model object.")
	     (:li "Corrected (I think!) OCL of AssociationClass.cannot_be_defined.")
	     (:li "Made Transition.trigger owned by the Transition.")
	     (:li "Various changes to better support profiles and hrefs.")))
       (:li (:strong "2010-01-04:")
	    (:ul
	     (:li "Carried over into UML2.2 2009-07-27 fix for RedefinableElement.isRedefinitionContextValid")
	     (:li "Carried over into UML2.2 2009-05-12 fix for " 
		  (str (type-op "NamedElement" "qualifiedName.1" :model :uml22)))
	     (:li "Carried over into UML2.2 2009-05-12 fix for "	
		  (str (type-op "Constraint" "value_specification_boolean" :model :uml22)))
	     (:li "Carried over into UML2.2 the UML 2.1.1 fix (unclear of date) for "	
		  (str (type-op "Property" "redefined_property_inherited" :model :uml22)))))
       ) ; End of 2010 :ul
      (:ul
       (:li (:strong "2009-07-27:")
	    (:ul
	     (:li "Added OCL for " (str (type-op "Image" "mustBeOwned" :model :uml22)) ".")
	     (:li "Corrected OCL for " (str (type-op "Extension" "non_owned_end")) ".")
	     (:li "When a property is redefined, collect the subsetted properties from the 
                   property from which the redefinition is made.")
	     (:li "Disabled constraints for " 
		  (str (type-op "RedefinableElement" "isRedefinitionContextValid")) ".")
	     (:li "Enable processing of stand-alone Profiles.")))
       (:li (:strong "2009-05-12:")
	    (:ul
	     (:li "Corrected OCL for " (str (type-op "RedefinableElement" "isRedefinitionContextValid")))
	     (:li "Corrected OCL for " (str (type-op "NamedElement" "qualifiedName.1")))
	     (:li "Ignoring faulty OCL for " (str (type-op "Constraint" "value_specification_boolean")))))
       (:li (:strong "2009-03-22:")
	    (:ul
	     (:li "Corrected a problem reported by Ralph Hains where validation details were not being shown.")
	     (:li "Allow reference to http://schema.omg.org/spec/UML/2.1.2/uml.xml in XMI.")
	     (:li "Corrected OCL errors in Stereotype.generalize, Extension.non_owned_end, 
                Pseudostate.outgoing_from_initial and ExecutionSpecification.same_lifeline, 
                and corrected a problem with packagin interning (found on 'context').")
	     (:li "Removed 'members only' capbilities; these are handled by MIWG.")
	     (:li "Against my principles, I allowed properties that are declared derived but
                also have a default value(!) to use that default value when the derivation
                is not provided. There are two of these: ExtensionEnd.lower, Message.messageKind.")
	     (:li "I am not sure whether this is a bug in UML, or whether I should have been
                able to infer it from metamodel, but: Extension.ownedEnd redefines Association.ownedEnd
                and Association.ownedEnd has opposite Property.owningAssociation.
                I made Extension.ownedEnd have opposite ExtensionEnd.owningAssociation, and defined 
                the type of Extension.ownedEnd to be an ExtensionEnd.")
	     (:li "Implemented a prototype object diff capability.")
	     (:li "Corrected a bug in OCL::UnlimitedNatural arithmetic relations.")
	     (:li "Added run-time diagnostic capabilities.")
	     (:li "Added 'instance n of m' in title of instance error reports.")))
       ) ; end of 2009 :ul
      (:ul 
       (:li (:strong "2008-08-18:")
	 (:ul
	  (:li "Corrected a bug in OCL of derived attribute Classifier.inheritedMember. Execution
                was getting stuck in non-progressing recursion among hasVisiblityOf and inheritableMember 
                (calling each other with no change in arguments).")
	  (:li "Corrected a bug where OCL validation was occurring on every reference to an
               object rather than just every object.")
	  (:li "Corrected a bug where operation pre/post condition code was confused with its body.")
	  (:li "Switched to using compiled OCL operations and derivations.")))
       (:li (:strong "2008-08-16:") 
	    (:ul
	     (:li "Corrected a bug where many opposites were not being
               recognized. The bug would have caused spurious 'Missing mandatory value' reports
               in some files. Regression testing suggests, however, that this does not occur as often
               as I had initially thought.")
	     (:li "Corrected a bug where complete OCL operations that were evaluated to a 
               string constant (e.g. NamedElement.separator()) were returning nil, not the constant.")
	     (:li "Corrected a bug where 'result' was considered an OCL reserved word, causing some parsing errors.")))
       (:li (:strong "2008-08-01:") "Added Jonathan Burket's Object Inventory capability.")
;;;    (:li (:strong "2007-05-13:") " Added non-normative (pre-normative?) OCL constraints supporting 
;;;     Miwg first round exercises. (See " (:a :href "/se-interop/miwg/test2/sysml#notes" "Miwg notes") 
;;;;     ").")
       (:li (:strong "2008-06-18:") 
	    (:ul
	     (:li "Allow stream type Windows-1252 in XMI, made synonymous with ISO 8859-1.")
	     (:li "Allow http://schema.omg.org/spec/UML/2.1(.1)?/uml\.(xml|xmi) as a reference to
              the entire UML profile.")
	     (:li "Fixed bug in reporting error 'Cannot infer class of object.'")))
       (:li (:strong "2008-04-04:") 
	    (:ul
	     (:li "Fixed a problem where Profile objects were not themselves being dereferenced
              (content was being dereferenced correctly, however).")
	     (:li "Created a UML Standard Profile (by hand). It currently only contains 
              the stereotype 'Trace,' used by SysML.")))
       (:li (:strong "2008-03-08:") 
	    "Fixed a problem where stereotypes that could extend two or more metaclasses resulted in 
         an extended metaclass that inherited from all of them.")
       (:li (:strong "2008-02-18:") 
	    (:ul
	     (:li "Updated code to use the SysML Profile 20070901 found at  
             http://www.omg.org/technology/documents/formal/sysml.htm")
	     (:li "Fixed a problem where errors printing several UML Literal types caused problems
              in the reporting of example XMI.")
	     (:li "Fixed a problem where (typically stereotyped) objects defined outside of XML scope 
              of Model were not being collected for reference.")
	     (:li "Fixed a problem where '_0' was not recognized as 'the profile itself' in
              references such as 'http://schema.omg.org/spec/UML/2.1.1/StandardProfileL2.xmi#_0'
              The current workaround is to create an object of type uml:Profile for each
              such reference. Whether this will be sufficient remains to be seen.")
	     (:li "Created report details for warning 'No proxy for stereotyping' (N.B. This
              warning still needs to be described better, the explantion is not accurate.)")
	     (:li "Created report details for warning 'Referent not found.'")))
       (:li (:strong "2008-01-09:") " Corrected bugs introduced 2008-01-02 in viewing error report XMI.")
       (:li (:strong "2008-01-02:") " Added reporting for two new types of errors arising from faulty OCL: " 
	    (str (format nil "<a href='~a'>errors calculating derived attributes</a>" 
			 (project-http::url-explanation 'mofi::ocl-error-calculating-derived)))
	    " and "
	    (str (format nil "<a href='~a'>errors due to missing derivations</a>" 
			 (project-http::url-explanation 'mofi::ocl-attempts-executing-absent-derived))) 
	    ". Typical validation results will report many of these, but they should not be 
          much concern to the Miwg participants. They are tyically due to bugs in the 
          UML and SysML specs. Their presence makes analysis of the OCL constraints involved impossible.
          We aren't providing detailed reporting on these because they probably aren't interesting
          to Miwg participants.")
       (:li (:strong "2007-06-29:") " OCL correction: Classifier.inheritedMember (derivation)"
	    (:br) "Was: " (:tt "self.inherit(self.parents()->collect(p | p.inheritableMembers(self)))")
	    (:br) "Now: " (:tt "self.inherit(self.parents()->select (p | p.inheritableMembers(self)))")
	    (:br) "Bug reported against UML 2.1.1.")
       ) ; End of 2008 :ul
      (:ul
      (:li (:strong "2007-05-13:") " The modification of 2007-03-21 appears to be ill-advised; subsetted properties 
     should be copied downward regardless of whether the target is a derived union. (More specifically, nothing
     in the Infrastructure spec contradicts this). There still may be some loose ends here though. For example, 
     Class.ownedAttribute is ordered, and not a derived union, but subsetted by ownedPort. Where in the ordered
     set are the subsetted properties positioned?")
      (:li (:strong "2007-05-12:") " Corrected a problem where knowledge of derived union sources was not 
     copied to stereotyped (programmatically created) metaclasses.")
      (:li (:strong "2007-05-12:") " Changed UML metamodel EncapsulatedClass.ownedPort to non-derived. (No derivation
         is provided in the metamodel)." (:strong " Report to UML RTF. "))
      (:li (:strong "2007-05-12:")  " Added a link in the 'Summary of Model Contents' section directly to the model.")
      (:li (:strong "2007-05-06:") " Corrected upper-bound multiplicity (generation and declaration) 
     in the SysML Profile.")
      (:li (:strong "2007-04-27:") " Created a members-only area for the miwg.")
      (:li (:strong "2007-04-26:") " Corrected a problem where 'Property not found' errors were not reported.")
      (:li (:strong "2007-04-07:") " Corrected 23 errors in the OCL of UML around the use of MultiplicityElement.")
      (:li (:strong "2007-04-06:") " Upgraded to UML 2.1.1. Fixed a problem with ocl:implies. 
         (It was evaluating its second argument regardless of value of its first argument.)")
      (:li (:strong "2007-03-27:") " Pretty print (indent) XMI showing error instance.")
      (:li (:strong "2007-03-25:") " Corrected a problem where sources of derived unions
      were not being collected if those sources were derived.")
      (:li (:strong "2007-03-21:") " Don't push values downward to 'subsetted-by' properties unless
      that 'subsetted-by' property is a derived union.")
      (:li (:strong "2007-03-16:") " Improved processing time by ...um, a factor of 100. Moved
      error reports for unresolved URI earlier in the reporting sequence.")
      (:li (:strong "2007-03-14:") " Provided a solution to the Validator's limitation in referencing
     objects in external models/files through XMI href. However, the real problem here is that, in most instances,
     there should be normative reference files (e.g. UML StandardLibrary).
     To demonstrate a solution (and make some headway with the UPDM Profile) I used
     Infrastructure.uml and Superstructure.uml from Eclipse and the Eclipse-specific indexing into those files.")
      (:li (:strong "2007-03-13:") " Modified behavior when 'Cannot infer class of object (XMI rule 2g)' 
     is apparent so that it defaults to the choose the base class for the property. It still warns, though, 
     as it should.")
      (:li (:strong "2007-01-27:") " Removed duplicate OCL violations from reporting.")
      (:li (:strong "2006-12-10:") " Added a link from Object Browser pages to the Class Browser page
      of the type of object shown.")
      (:li (:strong "2006-12-10:") " Use anchored text on OCL constraint names in Validator report
           (OCL constraint violation reporting). 
           It links to the Class Browser position where the OCL constraint is displayed.")
       (:li (:strong "2006-12-10:") " Corrected the implementation of oclType(). <br/>BTW
         oclType() is apparently an OCL Library function (used in MMs such as L3) but not defined 
         in OCL Version 2!")
       (:li (:strong "2006-12-09:") 
	    (str 
	     (let ((no-funs (mofi:derived-slots-no-fn (mofi:find-model :uml23))))
	       (format nil
		       " When the spec does not provide a function to compute a
                  derived property, it is so noted in the 'Missing mandatory value' error report. 
                  There are currently ~A such properties. They are:<br/> ~{~A~^, ~}."
		       (length no-funs)
		       (mapcar #'mofb:url-class-browser no-funs)))))
       (:li (:strong "2006-12-09:") " Added links to the error explanations from the 'summary of warnings' section 
     of the validation report page")
       (:li (:strong "2006-12-09:") " Corrected problem where default values (from MM definitions) were not 
      being set")
       (:li (:strong "2006-11-18:") " Implemented derived properties. In the past, certain 'Missing Mandatory
     Value Violation' errors were in fact due to the Validator not being able to compute the property from
     the OCL. Unfortunately, the UML spec does not provide OCL for all of the properties that are
     declared derived. A future fix will report when a Multiplicity Violation was the spurious
     result of the absence of the OCL definition that would provide the value. Another fix will
     define that OCL ;^)")
       (:li (:strong "2006-11-13:") " Corrected a problem where the type given to stereotyped objects was
    in some cases wrong.")
       (:li (:strong "2006-11-10:") " Corrected a problem finding SysML objects in XMI.")
       (:li (:strong "2006-11-09:") " Validation is now performed on all objects, not just those with an xmi:id.")
       (:li (:strong "2006-11-09:") " Reporting now includes statistics on how many of the 39 SysML 
      stereotypes were applied. (called 'SysML classes instantiated')")
       (:li (:strong "2006-06-06:") " Began development.")
      )
  ;; -------  Class Browser -----
  (:h2 "UML+Profile Class Browser Changes")
    (:ul
     (:li (:strong "2008-08-17") " Class Browser now tracks OCL modifications and editor notes. See
         the section of this page, " 
	  (:a :href "/se-interop/miwg/tools/changelog#ocl-status" "Current Status of OCL"))
     (:li (:strong "2008-03-08:") 
      (:ul (:li  "Specialized Class Browser pages that concerned stereotypes so that
                  they didn't contain heading for content inappropriate for stereotypes.")
           (:li  "Fixed a problem where asking for property detail in the Object Browser
                  resulted in a server error.")
           (:li "Added a list of 'example objects' to the Class Browser pages. 
                 The examples are presented in cases where you have uploaded an XMI file containing objects of 
                 the class being presented.")))
    (:li (:strong "2008-03-08") " Fixed problem where 'red triangle' link not showing in IE.")
    (:li (:strong "2007-04-28:") " Fixed problem where 'red triangle' link not showing in IE.")
    (:li (:strong "2007-04-11:") " Fixed new problem where URLs to SysML stereotypes were wrong. Added Expresso page.")
    (:li (:strong "2007-04-06:") " Upgraded to UML 2.1.1.") 
    (:li (:strong "2007-03-25:") " Provide the same slot details in the object browser as is presented in 
    the class browser.")
    (:li (:strong "2007-03-23:") " List the sources of a derived union in the details of the property.")
    (:li (:strong "2006-12-10:") " Show default values in property details.")
    (:li (:strong "2006-12-09:") " When the spec does not provide a function to compute a
     derived property, it is so noted in the property details. (See the Validator changelog entry
     of this date for a list of these properties.)")
    (:li (:strong "2006-11-10:") " Fixed parentage of UML Standard Profile Stereotype uml:Trace.")
    (:li (:strong "2006-11-06:") " Class description pages that describe classes from the
     SysML Profile now have titles that read 'SysML Stereotype foo' etc.")
    (:li (:strong "2006-11-06:") " The Class Browser now appends a '*' after the name of 
     every class listed on the Class Browser main page that names a SysML object
     (all others are part of UML).")
    (:li (:strong "2006-06-06:") " Begin development."))

   (str (ocl-status))
   ;; -------  AP233 Validator -----
   (:h2 "AP233 Validator Changes")
   (:ul
    (:li (:strong "2006-04-05:") " Initial release of the AP233 Validator"))
   ;; -------  EXPRESS Validator -----
   (:h2 "AP233 Entity Type Browser")
   (:ul
    (:li (:strong "2007-04-28:") " Fixed problem where 'red triangle' link not showing in IE.")
    (:li (:strong "2006-04-05:") " Initial release of the Entity Type Browser")))))

(defun ocl-status ()
  (with-html-output-to-string (stream)
    (:a :name "ocl-status")
    (:h2 "Current Status of the Validator's OCL")
    "The Validator uses the UML's metamodel OCL constraints and operations wherever possible, of course.
     However, there are bugs in that OCL. In order to make the OCL evaluation
     performed by the Validator more meaningful, and also to suggest
     improvements to the OCL to the UML standard writers, this tool uses 
     modified OCL in some places. In other places, where it isn't clear what the solution should be,
     I haven't attempted to write a solution. Finally, there is OCL in UML and SysML I probably could write,
     but haven't yet."
    (:h3 "Rewritten OCL")
    "The following are constraints and operations that were rewritten to fix a bug. The page at the link
      describes the changes made."
    (:ul
     (str (loop for type across (mofi:types (mofi:find-model :uml23)) do
		(loop for c in (mofi:type-constraints type)
		      when (eql :rewritten (mofi:operation-status c))
		      do (format stream "<li>~A</li>" (mofb:url-ocl-operator c)))
		(loop for c in (mofi:type-operations type)
		      when (eql :rewritten (mofi:operation-status c))
		      do (format stream "<li>~A</li>" (mofb:url-ocl-operator c))))))
    (:h3 "'Ignored' OCL")
     "The following are constraints and operations that are 'ignored.' An 'ignored' constraint
      returns ocl:true always. An 'ignored' operation typically returns Set{}. 
      The page at the link  describes the changes made."
    (:ul
     (str (loop for type across (mofi:types (mofi:find-model :uml23)) do
		(loop for c in (mofi:type-constraints type)
		      when (eql :ignored (mofi:operation-status c))
		      do (format stream "<li>~A</li>" (mofb:url-ocl-operator c)))
		(loop for c in (mofi:type-operations type)
		      when (eql :ignored (mofi:operation-status c))
		      do (format stream "<li>~A</li>" (mofb:url-ocl-operator c))))))))



;;; /se-interop/tools-overview
(defun tools-overview-dsp ()
  "Provide general information about the software, what models are loaded, etc."
  (app-page-wrapper :sei (:view "Validation Tools" :menu-pos '(:root :tools-overview))
    (:h1 "Notes on Tools")
    ;;=========================
    (:a :name "criteria") ; these don't work!
    (:h2 "NIST XMI Validator Validation Criteria")
    "The validator currently checks the following conformance criteria:"
    (str (validation-criteria-html))
    (:h3 "Additional notes about the Validator")
    "Here are some things to keep in mind when using the Validator:"
    (:ul
     (:li "Objects are represented as:"
	  (:ul 
	   (:li "&lt; 'className' 'instanceName', id='someNumber'&gt; if it is a NamedElement with a name;")
	   (:li "&lt; 'className' &lt;&lt;'stereotypeName'&gt;&gt; 'instanceName', id='someNumber'&gt; 
                if it is stereotyped object with a name;")
	   (:li "&lt; 'className' [unnamed], id='someNumber'&gt; if it is an unnamed NamedElement, and;")
	   (:li "&lt; 'className' id='someNumber'&gt; otherwise."))
	  "The 'id' has no meaning outside of the Validator.")
     (:li "Enumerations are represented as the enumeration value preceded by a '#'.")
     (:li "Collections are represented by &lt; Set|Bag|Sequence|OrderedSet of 'elementCount' 'type' &gt;")
     (:li "The value of a Collection is represented by ['value'&nbsp; ,&nbsp; 'value'....].")
     (:li "Unset values are represented by 'null'")
     (:li "The errors are listed in an order suggested for their resolution 
            (resolve the earlier ones first). The reason we suggest this ordering
            is that some of the earlier errors have repercusions (they produce subsequent errors).
            There is little point in investigating a 'missing mandatory' value error,
            for example, when the source of the error is reported more specifically
            as use of an xmi:idref where the referent is not in the file.")
     (:li "When the Model attempts to define a Set, but the members supplied 
            contain duplicates, the Validator reports the error and creates a Bag
            with all the members. Using a Bag might have repercusions in later
            processing, but removing the duplicates and creating a Set is
            simplistic and can also lead to downstream problems. Note: The error 
            message, but not the Model, describes the object as a Set. The corresponding
            Bag in the Model has an id one greater than the offending Set object
            reported in the error message.")
      (:li "Validator results are available for 30 minutes after the file is run.
            After 30 minutes, the information associated with the run (information 
            attached to the session cookie) is garbage collected. 
            If 30 minutes seems too short, let me know."))
    ;;=============
    (:a :name "diff") 
     (:h2 "Model Diff")
       "The Model Diff capability is used to compar an uploaded user model of a MIWG test case
        against a reference model of that test case. It reports where one of the two models
        has an element that the other does not, and where values of properties of elements
        differ."
    ;;=============
    (flet ((type-op (type op-name &key (model :uml23))
	     (let ((c (find-class (intern type model))))
	       (when-bind (op (find op-name
				    (append (mofi:type-operations c) (mofi:type-constraints c))
				    :key #'mofi:operation-name :test #'string=))
		 (mofb:url-ocl-operator op)))))
      (htm
       (:a :name "preloads") 
       (:h2 "Models Pre-loaded into the Validator")
       "The models listed below are loaded into the Validator and can be referenced as a whole
        through the 'XML namespace URI' shown. Elements of the model can be referenced through
        the 'XMI href URI' shown."
       (str
	(with-output-to-string (out)
	  (loop for model in (sort mofi::*essential-models* #'string< 
				   :key #'(lambda (x) (string-downcase (mofi:ns-prefix x))))
                for ns-prefix = (mofi:ns-prefix model)
	        unless (member ns-prefix '("OCL" "XMI" "MOFI") :test #'string=)
	     do
	       (format out "<h3>~A (~A)</h3>" (car (mofi::nicknames model)) ns-prefix)
	       (format out "<strong>XML namespace URI: </strong>~A<br/>" (mofi:ns-uri model))
	       (format out "<strong>XMI href URI: </strong>~A<br/>" (mofi:href-uri model))
	       (format out "<strong>Documentation: </strong><br/>")
	       (with-input-from-string (doc (slot-value model 'mofi::documentation))
		 (loop for line = (read-line doc nil nil) while line do
		      (format out "~A<br/>" line))))))))))


;;; /se-interop/get-validator
(defun get-validator-dsp ()
  "Mostly static page allowing downloading of the validator."
  (app-page-wrapper :sei (:menu-pos '(:root :changelog))
    (:h1 "Validator Executable for MS Windows")
    "A downloadable (.exe) version of the NIST Validator is now available for experimental use. 
     Use of this program indicates your acceptance of the terms of the General Disclaimer below. 
     <p/>
     Note: As of this writing (2012-06-01), the executable is only lightly tested on MS Windows 7.
    It has not been tested at all on other versions of Windows. I'd appreciate feedback on how
    the software performs. Send bug reports to xmi-interop@omg.org. Thanks!"
    (:h2 "General Disclaimer")
    "This software was developed at the National Institute of Standards and Technology by employees of 
     the Federal Government in the course of their official duties. Pursuant to title 17 Section 105 of 
     the United States Code this software is not subject to copyright protection and is in the public domain. 
     It is an experimental system. NIST assumes no responsibility whatsoever for its use by other parties, 
     and makes no guarantees, expressed or implied, about its quality, reliability, or any other 
     characteristic. We would appreciate acknowledgement if the software is used. This software can be 
     redistributed and/or modified freely provided that any derivative works bear some notice that they 
     are derived from it, and any modified versions bear some notice that they have been modified."
    (:p)
    (:a :href "/se-interop/static/validator.zip"
	"I accept the terms of the General Disclaimer above. Download here.")))
