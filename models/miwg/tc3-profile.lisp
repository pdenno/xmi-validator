;;; Automatically created by pop-gen at 2014-04-26 13:17:18.
;;; Source file is NIL

;;; POD added
(defpackage :tc3-profile (:use :pod-utils :ptypes :ocl :mofi :cl))

(in-package :tc3-profile)


(def-meta-enum |Color| (:model :tc3-profile :superclasses NIL 
   :xmi-id "_gtqWsFtIEd6YpLSSRX9zkg")
   (RED GREEN)
   "")

;;; =========================================================
;;; ====================== Stereotype1
;;; =========================================================
(def-meta-stereotype |Stereotype1| 
   (:model :tc3-profile :superclasses NIL :extends (UML23:|Property| UML23:|Operation|)
 :packages (|TestCase3_Profile|) 
 :xmi-id "_5XOk8FzeEd6YpLSSRX9zkg")
 ""
  ((|attribute1| :xmi-id "_ZAvT4FzgEd6YpLSSRX9zkg"
    :range |String| :multiplicity (1 1))
   (|attribute2| :xmi-id "_gz7jYFzgEd6YpLSSRX9zkg"
    :range |Integer| :multiplicity (1 1))
   (|base_Operation| :xmi-id "_zp4VslzgEd6YpLSSRX9zkg"
    :range UML23:|Element| :multiplicity (1 1))
   (|base_Property| :xmi-id "_0Fc3YlzgEd6YpLSSRX9zkg"
    :range UML23:|Element| :multiplicity (1 1))))

(def-meta-assoc "_zp4VsFzgEd6YpLSSRX9zkg"      
  :name |unamed-assoc-5|      
  :metatype :extension      
  :member-ends (("_zp4VsVzgEd6YpLSSRX9zkg" "extension_Stereotype1")
                (|Stereotype1| "base_Operation"))      
  :owned-ends  (("_zp4VsVzgEd6YpLSSRX9zkg" "extension_Stereotype1")))

(def-meta-assoc-end "_zp4VsVzgEd6YpLSSRX9zkg" 
    :type |Stereotype1| 
    :multiplicity (0 1) 
    :association "_zp4VsFzgEd6YpLSSRX9zkg" 
    :name "extension_Stereotype1" 
    :aggregation :COMPOSITE)

(def-meta-assoc "_0Fc3YFzgEd6YpLSSRX9zkg"      
  :name |unamed-assoc-6|      
  :metatype :extension      
  :member-ends (("_0Fc3YVzgEd6YpLSSRX9zkg" "extension_Stereotype1")
                (|Stereotype1| "base_Property"))      
  :owned-ends  (("_0Fc3YVzgEd6YpLSSRX9zkg" "extension_Stereotype1")))

(def-meta-assoc-end "_0Fc3YVzgEd6YpLSSRX9zkg" 
    :type |Stereotype1| 
    :multiplicity (0 1) 
    :association "_0Fc3YFzgEd6YpLSSRX9zkg" 
    :name "extension_Stereotype1" 
    :aggregation :COMPOSITE)

;;; =========================================================
;;; ====================== Stereotype2
;;; =========================================================
(def-meta-stereotype |Stereotype2| 
   (:model :tc3-profile :superclasses NIL :extends (UML23:|Property|)
 :packages (|TestCase3_Profile|) 
 :xmi-id "_FbscYFzfEd6YpLSSRX9zkg")
 ""
  ((|attribute3| :xmi-id "_rPDecFzgEd6YpLSSRX9zkg"
    :range UML23:|Element| :multiplicity (0 1))
   (|attribute4| :xmi-id "_sEstAFzgEd6YpLSSRX9zkg"
    :range UML23:|Element| :multiplicity (0 -1))
   (|base_Property| :xmi-id "_9YgZU1zvEd6YpLSSRX9zkg"
    :range UML23:|Element| :multiplicity (1 1))))

(def-meta-assoc "_rO5tcFzgEd6YpLSSRX9zkg"      
  :name |unamed-assoc-3|      
  :metatype :association      
  :member-ends ((|Stereotype2| "attribute3")
                ("_rPDec1zgEd6YpLSSRX9zkg" "stereotype3"))      
  :owned-ends  (("_rPDec1zgEd6YpLSSRX9zkg" "stereotype3")))

(def-meta-assoc-end "_rPDec1zgEd6YpLSSRX9zkg" 
    :type |Stereotype2| 
    :multiplicity (1 1) 
    :association "_rO5tcFzgEd6YpLSSRX9zkg" 
    :name "stereotype3" 
    :visibility :PRIVATE)

(def-meta-assoc "_sEi8AFzgEd6YpLSSRX9zkg"      
  :name |unamed-assoc-4|      
  :metatype :association      
  :member-ends ((|Stereotype2| "attribute4")
                ("_sEstA1zgEd6YpLSSRX9zkg" "stereotype3"))      
  :owned-ends  (("_sEstA1zgEd6YpLSSRX9zkg" "stereotype3")))

(def-meta-assoc-end "_sEstA1zgEd6YpLSSRX9zkg" 
    :type |Stereotype2| 
    :multiplicity (1 1) 
    :association "_sEi8AFzgEd6YpLSSRX9zkg" 
    :name "stereotype3" 
    :visibility :PRIVATE)

(def-meta-assoc "_9YgZUFzvEd6YpLSSRX9zkg"      
  :name |unamed-assoc-7|      
  :metatype :extension      
  :member-ends (("_9YgZUVzvEd6YpLSSRX9zkg" "extension_Stereotype2")
                (|Stereotype2| "base_Property"))      
  :owned-ends  (("_9YgZUVzvEd6YpLSSRX9zkg" "extension_Stereotype2")))

(def-meta-assoc-end "_9YgZUVzvEd6YpLSSRX9zkg" 
    :type |Stereotype2| 
    :multiplicity (0 1) 
    :association "_9YgZUFzvEd6YpLSSRX9zkg" 
    :name "extension_Stereotype2" 
    :aggregation :COMPOSITE)

;;; =========================================================
;;; ====================== Stereotype3
;;; =========================================================
(def-meta-stereotype |Stereotype3| 
   (:model :tc3-profile :superclasses NIL :extends (UML23:|Class|)
 :packages (|TestCase3_Profile|) 
 :xmi-id "_cjrpkFtIEd6YpLSSRX9zkg")
 ""
  ((|attribute5| :xmi-id "_e0Z5kFtJEd6YpLSSRX9zkg"
    :range |Color| :multiplicity (1 1))
   (|attribute6| :xmi-id "_1HcKwVzeEd6YpLSSRX9zkg"
    :range UML23:|Element| :multiplicity (1 1))
   (|base_Class| :xmi-id "_eXw2UltIEd6YpLSSRX9zkg"
    :range UML23:|Element| :multiplicity (1 1))))

(def-meta-assoc "_eXw2UFtIEd6YpLSSRX9zkg"      
  :name |unamed-assoc-1|      
  :metatype :extension      
  :member-ends (("_eXw2UVtIEd6YpLSSRX9zkg" "extension_Stereotype3")
                (|Stereotype3| "base_Class"))      
  :owned-ends  (("_eXw2UVtIEd6YpLSSRX9zkg" "extension_Stereotype3")))

(def-meta-assoc-end "_eXw2UVtIEd6YpLSSRX9zkg" 
    :type |Stereotype3| 
    :multiplicity (0 1) 
    :association "_eXw2UFtIEd6YpLSSRX9zkg" 
    :name "extension_Stereotype3" 
    :aggregation :COMPOSITE)

(def-meta-assoc "_1HcKwFzeEd6YpLSSRX9zkg"      
  :name |unamed-assoc-2|      
  :metatype :association      
  :member-ends ((|Stereotype3| "attribute6")
                ("_1HlUslzeEd6YpLSSRX9zkg" "stereotype1"))      
  :owned-ends  (("_1HlUslzeEd6YpLSSRX9zkg" "stereotype1")))

(def-meta-assoc-end "_1HlUslzeEd6YpLSSRX9zkg" 
    :type |Stereotype3| 
    :multiplicity (1 1) 
    :association "_1HcKwFzeEd6YpLSSRX9zkg" 
    :name "stereotype1" 
    :visibility :PRIVATE)

;;; =========================================================
;;; ====================== Stereotype4
;;; =========================================================
(def-meta-stereotype |Stereotype4| 
   (:model :tc3-profile :superclasses NIL :extends (UML23:|Class|)
 :packages (|TestCase3_Profile|) 
 :xmi-id "_2MzI8FzhEd6YpLSSRX9zkg")
 ""
  ((|attribute7| :xmi-id "__FJJEGEHEd6g0fRT_FUATQ"
    :range |String| :multiplicity (1 1))
   (|base_Class| :xmi-id "_KGRFYlzwEd6YpLSSRX9zkg"
    :range UML23:|Element| :multiplicity (1 1))))

(def-meta-constraint NIL |Stereotype4| 
   ""
   :operation-body
   "self.base_Class.ownedOperation->forAll(o| o.visibility = uml::VisibilityKind::protected)")

(def-meta-assoc "_KGRFYFzwEd6YpLSSRX9zkg"      
  :name |unamed-assoc-8|      
  :metatype :extension      
  :member-ends (("_KGRFYVzwEd6YpLSSRX9zkg" "extension_Stereotype4")
                (|Stereotype4| "base_Class"))      
  :owned-ends  (("_KGRFYVzwEd6YpLSSRX9zkg" "extension_Stereotype4")))

(def-meta-assoc-end "_KGRFYVzwEd6YpLSSRX9zkg" 
    :type |Stereotype4| 
    :multiplicity (0 1) 
    :association "_KGRFYFzwEd6YpLSSRX9zkg" 
    :name "extension_Stereotype4" 
    :aggregation :COMPOSITE)

;;; =========================================================
;;; ====================== Stereotype5
;;; =========================================================
(def-meta-stereotype |Stereotype5| 
   (:model :tc3-profile :superclasses (|Stereotype4|) :extends NIL
 :packages (|TestCase3_Profile|) 
 :xmi-id "_6G4moFzmEd6YpLSSRX9zkg")
 ""
  ((|attribute8| :xmi-id "_AM-T0GEIEd6g0fRT_FUATQ"
    :range |Integer| :multiplicity (1 1))))

;;; =========================================================
;;; ====================== Stereotype6
;;; =========================================================
(def-meta-stereotype |Stereotype6| 
   (:model :tc3-profile :superclasses NIL :extends (UML23:|Interface|)
 :packages (|TestCase3_Profile|) 
 :xmi-id "_KWp5kGEIEd6g0fRT_FUATQ")
 ""
  ((|attribute9| :xmi-id "_d8bmUWEIEd6g0fRT_FUATQ"
    :range |Stereotype7| :multiplicity (0 1))
   (|base_Interface| :xmi-id "_UmCPkmz5Ed6PP-C81v-frg"
    :range UML23:|Element| :multiplicity (1 1))))

(def-meta-assoc "_UmCPkGz5Ed6PP-C81v-frg"      
  :name |unamed-assoc-10|      
  :metatype :extension      
  :member-ends (("_UmCPkWz5Ed6PP-C81v-frg" "extension_Stereotype6")
                (|Stereotype6| "base_Interface"))      
  :owned-ends  (("_UmCPkWz5Ed6PP-C81v-frg" "extension_Stereotype6")))

(def-meta-assoc-end "_UmCPkWz5Ed6PP-C81v-frg" 
    :type |Stereotype6| 
    :multiplicity (0 1) 
    :association "_UmCPkGz5Ed6PP-C81v-frg" 
    :name "extension_Stereotype6" 
    :aggregation :COMPOSITE)

(def-meta-assoc "_d8bmUGEIEd6g0fRT_FUATQ"      
  :name |unamed-assoc-9|      
  :metatype :association      
  :member-ends ((|Stereotype6| "attribute9")
                ("_d84SQGEIEd6g0fRT_FUATQ" "attribute10"))      
  :owned-ends  (("_d84SQGEIEd6g0fRT_FUATQ" "attribute10")))

(def-meta-assoc-end "_d84SQGEIEd6g0fRT_FUATQ" 
    :type |Stereotype6| 
    :multiplicity (0 1) 
    :association "_d8bmUGEIEd6g0fRT_FUATQ" 
    :name "attribute10" 
    :visibility :PRIVATE)

;;; =========================================================
;;; ====================== Stereotype7
;;; =========================================================
(def-meta-stereotype |Stereotype7| 
   (:model :tc3-profile :superclasses NIL :extends (UML23:|Interface|)
 :packages (|TestCase3_Profile|) 
 :xmi-id "_bFcyIGEIEd6g0fRT_FUATQ")
 ""
  ((|base_Interface| :xmi-id "_Vk5rkmz5Ed6PP-C81v-frg"
    :range UML23:|Element| :multiplicity (1 1))))

(def-meta-assoc "_Vk5rkGz5Ed6PP-C81v-frg"      
  :name |unamed-assoc-11|      
  :metatype :extension      
  :member-ends (("_Vk5rkWz5Ed6PP-C81v-frg" "extension_Stereotype7")
                (|Stereotype7| "base_Interface"))      
  :owned-ends  (("_Vk5rkWz5Ed6PP-C81v-frg" "extension_Stereotype7")))

(def-meta-assoc-end "_Vk5rkWz5Ed6PP-C81v-frg" 
    :type |Stereotype7| 
    :multiplicity (0 1) 
    :association "_Vk5rkGz5Ed6PP-C81v-frg" 
    :name "extension_Stereotype7" 
    :aggregation :COMPOSITE)

(def-meta-package |TestCase3_Profile| NIL :tc3-profile 
   (|Stereotype3|
    |Color|
    |Stereotype1|
    |Stereotype2|
    |Stereotype4|
    |Stereotype5|
    |Stereotype6|
    |Stereotype7|) :xmi-id "_KitXcFtIEd6YpLSSRX9zkg")

(def-meta-package UML\ 2.3 NIL :tc3-profile          
   () :xmi-id NIL)

(in-package :mofi)


(with-slots (mofi::abstract-classes mofi:ns-uri mofi:ns-prefix) mofi:*model*
     (setf mofi::abstract-classes 
        '())
     (setf mofi:ns-uri "http:///schemas/TestCase3_Profile.xmi")
     (setf mofi:ns-prefix "TestCase3_Profile"))
