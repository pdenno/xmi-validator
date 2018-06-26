;;; Automatically created by pop-gen at 2016-10-25 15:26:13.
;;; Source file is NIL

(in-package :SACM-20-DRAFT)



(def-meta-primitive |Boolean| (:model :SACM-20-DRAFT :superclasses NIL :xmi-id "_17_0_1_42801a6_1332517847674_770015_3160"))



(def-meta-primitive |Integer| (:model :SACM-20-DRAFT :superclasses NIL :xmi-id "_17_0_1_42801a6_1332517828285_713447_3126"))



(def-meta-primitive |String| (:model :SACM-20-DRAFT :superclasses NIL :xmi-id "_17_0_1_42801a6_1332517838863_287845_3143"))



;;; =========================================================
;;; ====================== Activity
;;; =========================================================
(def-meta-class |Activity| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactAsset|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1440144916281_936502_7874")
 ""
  ((|endtime| :xmi-id "_18_2_f55036c_1440144972643_66000_7879"
    :range |String| :multiplicity (1 1))
   (|starttime| :xmi-id "_18_2_f55036c_1440144952461_331371_7877"
    :range |String| :multiplicity (1 1))))

;;; =========================================================
;;; ====================== ActivityRelationship
;;; =========================================================
(def-meta-class |ActivityRelationship| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactAssetRelationship|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1440144625703_368234_7836")
 ""
  ())

;;; =========================================================
;;; ====================== ArgumentAsset
;;; =========================================================
(def-meta-class |ArgumentAsset| 
   (:model :SACM-20-DRAFT :superclasses (|ArgumentationElement|) 
    :packages (SACM |Argumentation|) 
    :xmi-id "_17_0_1_42801a6_1332254104184_750149_2588")
 ""
  ())

;;; =========================================================
;;; ====================== ArgumentAssetCitation
;;; =========================================================
(def-meta-class |ArgumentAssetCitation| 
   (:model :SACM-20-DRAFT :superclasses (|ArgumentAsset|) 
    :packages (SACM |Argumentation|) 
    :xmi-id "_17_0_1_42801a6_1332254113443_891205_2608")
 ""
  ((|citedAsset| :xmi-id "_17_0_1_42801a6_1332254906462_238409_2961"
    :range |ArgumentAsset| :multiplicity (1 1))))

(def-meta-assoc "_17_0_1_42801a6_1332254906462_597517_2960"      
  :name |unamed-assoc-3|      
  :metatype :association      
  :member-ends ((|ArgumentAssetCitation| "citedAsset")
                ("_17_0_1_42801a6_1332254906462_79105_2962" NIL))      
  :owned-ends  (("_17_0_1_42801a6_1332254906462_79105_2962" NIL)))

(def-meta-assoc-end "_17_0_1_42801a6_1332254906462_79105_2962" 
    :type |ArgumentAssetCitation| 
    :multiplicity (1 1) 
    :association "_17_0_1_42801a6_1332254906462_597517_2960")

;;; =========================================================
;;; ====================== ArgumentPackage
;;; =========================================================
(def-meta-class |ArgumentPackage| 
   (:model :SACM-20-DRAFT :superclasses (|ArgumentationElement|) 
    :packages (SACM |Argumentation|) 
    :xmi-id "_17_0_1_42801a6_1332254095436_979443_2568")
 ""
  ((|argumentAsset| :xmi-id "_17_0_1_42801a6_1332254831962_278483_2941"
    :range |ArgumentAsset| :multiplicity (0 -1) :is-composite-p T)
   (|argumentationPackage| :xmi-id "_17_0_1_42801a6_1332254764181_518636_2921"
    :range |ArgumentPackage| :multiplicity (0 -1) :is-composite-p T)
   (|interface| :xmi-id "_18_2_f55036c_1440141534177_666441_6872"
    :range |ArgumentPackageInterface| :multiplicity (0 -1))))

(def-meta-assoc "_17_0_1_42801a6_1332254764181_394806_2920"      
  :name |unamed-assoc-1|      
  :metatype :association      
  :member-ends ((|ArgumentPackage| "argumentationPackage")
                ("_17_0_1_42801a6_1332254764181_99952_2922" NIL))      
  :owned-ends  (("_17_0_1_42801a6_1332254764181_99952_2922" NIL)))

(def-meta-assoc-end "_17_0_1_42801a6_1332254764181_99952_2922" 
    :type |ArgumentPackage| 
    :multiplicity (1 1) 
    :association "_17_0_1_42801a6_1332254764181_394806_2920")

(def-meta-assoc "_17_0_1_42801a6_1332254831962_169879_2940"      
  :name |unamed-assoc-2|      
  :metatype :association      
  :member-ends ((|ArgumentPackage| "argumentAsset")
                ("_17_0_1_42801a6_1332254831963_405096_2942" NIL))      
  :owned-ends  (("_17_0_1_42801a6_1332254831963_405096_2942" NIL)))

(def-meta-assoc-end "_17_0_1_42801a6_1332254831963_405096_2942" 
    :type |ArgumentPackage| 
    :multiplicity (1 1) 
    :association "_17_0_1_42801a6_1332254831962_169879_2940")

(def-meta-assoc "_18_2_f55036c_1440141534177_865993_6871"      
  :name |unamed-assoc-9|      
  :metatype :association      
  :member-ends ((|ArgumentPackage| "interface")
                ("_18_2_f55036c_1440141534177_471360_6873" NIL))      
  :owned-ends  (("_18_2_f55036c_1440141534177_471360_6873" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440141534177_471360_6873" 
    :type |ArgumentPackage| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440141534177_865993_6871")

;;; =========================================================
;;; ====================== ArgumentPackageBinding
;;; =========================================================
(def-meta-class |ArgumentPackageBinding| 
   (:model :SACM-20-DRAFT :superclasses (|ArgumentPackage|) 
    :packages (SACM |Argumentation|) 
    :xmi-id "_18_2_f55036c_1440141451545_881279_6858")
 ""
  ((|participantPackage| :xmi-id "_18_2_f55036c_1440141586366_563639_6912"
    :range |ArgumentPackageInterface| :multiplicity (2 -1))))

(def-meta-assoc "_18_2_f55036c_1440141586365_986546_6911"      
  :name |unamed-assoc-10|      
  :metatype :association      
  :member-ends ((|ArgumentPackageBinding| "participantPackage")
                ("_18_2_f55036c_1440141586366_768862_6913" NIL))      
  :owned-ends  (("_18_2_f55036c_1440141586366_768862_6913" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440141586366_768862_6913" 
    :type |ArgumentPackageBinding| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440141586365_986546_6911")

;;; =========================================================
;;; ====================== ArgumentPackageCitation
;;; =========================================================
(def-meta-class |ArgumentPackageCitation| 
   (:model :SACM-20-DRAFT :superclasses (|ArgumentPackage|) 
    :packages (SACM |Argumentation|) 
    :xmi-id "_18_2_f55036c_1440141368229_912773_6803")
 ""
  ((|citedPackage| :xmi-id "_18_2_f55036c_1440141424737_441381_6834"
    :range |ArgumentPackage| :multiplicity (1 1))))

(def-meta-assoc "_18_2_f55036c_1440141424737_889736_6833"      
  :name |unamed-assoc-8|      
  :metatype :association      
  :member-ends ((|ArgumentPackageCitation| "citedPackage")
                ("_18_2_f55036c_1440141424738_462672_6835" NIL))      
  :owned-ends  (("_18_2_f55036c_1440141424738_462672_6835" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440141424738_462672_6835" 
    :type |ArgumentPackageCitation| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440141424737_889736_6833")

;;; =========================================================
;;; ====================== ArgumentPackageInterface
;;; =========================================================
(def-meta-class |ArgumentPackageInterface| 
   (:model :SACM-20-DRAFT :superclasses (|ArgumentPackage|) 
    :packages (SACM |Argumentation|) 
    :xmi-id "_18_2_f55036c_1440141491494_791122_6863")
 ""
  ())

;;; =========================================================
;;; ====================== ArgumentReasoning
;;; =========================================================
(def-meta-class |ArgumentReasoning| 
   (:model :SACM-20-DRAFT :superclasses (|ArgumentAsset|) 
    :packages (SACM |Argumentation|) 
    :xmi-id "_17_0_1_42801a6_1332254174268_66955_2688")
 ""
  ((|structure| :xmi-id "_17_0_1_42801a6_1332255114345_518462_2985"
    :range |ArgumentPackage| :multiplicity (0 -1))))

(def-meta-assoc "_17_0_1_42801a6_1332255114345_761179_2984"      
  :name |unamed-assoc-4|      
  :metatype :association      
  :member-ends ((|ArgumentReasoning| "structure")
                ("_17_0_1_42801a6_1332255114346_50166_2986" NIL))      
  :owned-ends  (("_17_0_1_42801a6_1332255114346_50166_2986" NIL)))

(def-meta-assoc-end "_17_0_1_42801a6_1332255114346_50166_2986" 
    :type |ArgumentReasoning| 
    :multiplicity (1 1) 
    :association "_17_0_1_42801a6_1332255114345_761179_2984")

;;; =========================================================
;;; ====================== ArgumentationElement
;;; =========================================================
(def-meta-class |ArgumentationElement| 
   (:model :SACM-20-DRAFT :superclasses (|ModelElement|) 
    :packages (SACM |Argumentation|) 
    :xmi-id "_17_0_1_42801a6_1333112113993_331161_2150")
 ""
  ((|content| :xmi-id "_17_0_1_42801a6_1333112134880_629571_2170"
    :range |String| :multiplicity (1 1))))

;;; =========================================================
;;; ====================== Artefact
;;; =========================================================
(def-meta-class |Artefact| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactAsset|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1440144726864_619028_7858")
 ""
  ((|artefactEvent| :xmi-id "_18_2_f55036c_1440145375092_206944_7965"
    :range |ArtefactEvent| :multiplicity (0 -1) :is-composite-p T)
   (|artefactProperty| :xmi-id "_18_2_f55036c_1440145185326_797966_7910"
    :range |ArtefactProperty| :multiplicity (0 -1) :is-composite-p T)
   (|date| :xmi-id "_18_2_f55036c_1440144803870_617652_7863"
    :range |String| :multiplicity (1 1))
   (|version| :xmi-id "_18_2_f55036c_1440144745617_849119_7861"
    :range |String| :multiplicity (1 1))))

(def-meta-assoc "_18_2_f55036c_1440145185326_34597_7909"      
  :name |unamed-assoc-25|      
  :metatype :association      
  :member-ends ((|Artefact| "artefactProperty")
                ("_18_2_f55036c_1440145185326_784503_7911" NIL))      
  :owned-ends  (("_18_2_f55036c_1440145185326_784503_7911" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440145185326_784503_7911" 
    :type |Artefact| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440145185326_34597_7909")

(def-meta-assoc "_18_2_f55036c_1440145375092_111358_7964"      
  :name |unamed-assoc-26|      
  :metatype :association      
  :member-ends ((|Artefact| "artefactEvent")
                ("_18_2_f55036c_1440145375092_433691_7966" NIL))      
  :owned-ends  (("_18_2_f55036c_1440145375092_433691_7966" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440145375092_433691_7966" 
    :type |Artefact| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440145375092_111358_7964")

;;; =========================================================
;;; ====================== ArtefactActivityRelationship
;;; =========================================================
(def-meta-class |ArtefactActivityRelationship| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactAssetRelationship|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1440144638550_74482_7840")
 ""
  ())

;;; =========================================================
;;; ====================== ArtefactAsset
;;; =========================================================
(def-meta-class |ArtefactAsset| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactElement|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1440144172449_108469_7648")
 ""
  ())

;;; =========================================================
;;; ====================== ArtefactAssetCitation
;;; =========================================================
(def-meta-class |ArtefactAssetCitation| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactAsset|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1440144383230_439828_7713")
 ""
  ((|citedAsset| :xmi-id "_18_2_f55036c_1440144394706_841403_7722"
    :range |ArtefactAsset| :multiplicity (1 1))))

(def-meta-assoc "_18_2_f55036c_1440144394706_446592_7721"      
  :name |unamed-assoc-22|      
  :metatype :association      
  :member-ends ((|ArtefactAssetCitation| "citedAsset")
                ("_18_2_f55036c_1440144394706_733155_7723" NIL))      
  :owned-ends  (("_18_2_f55036c_1440144394706_733155_7723" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440144394706_733155_7723" 
    :type |ArtefactAssetCitation| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440144394706_446592_7721")

;;; =========================================================
;;; ====================== ArtefactAssetRelationship
;;; =========================================================
(def-meta-class |ArtefactAssetRelationship| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactAsset|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1440144419894_378600_7751")
 ""
  ((|source| :xmi-id "_18_2_f55036c_1440144442417_484810_7760"
    :range |ArtefactAsset| :multiplicity (0 -1))
   (|target| :xmi-id "_18_2_f55036c_1440144449539_310320_7781"
    :range |ArtefactAsset| :multiplicity (0 -1))))

(def-meta-assoc "_18_2_f55036c_1440144442417_87241_7759"      
  :name |unamed-assoc-23|      
  :metatype :association      
  :member-ends ((|ArtefactAssetRelationship| "source")
                ("_18_2_f55036c_1440144442418_689497_7761" NIL))      
  :owned-ends  (("_18_2_f55036c_1440144442418_689497_7761" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440144442418_689497_7761" 
    :type |ArtefactAssetRelationship| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440144442417_87241_7759")

(def-meta-assoc "_18_2_f55036c_1440144449539_112763_7780"      
  :name |unamed-assoc-24|      
  :metatype :association      
  :member-ends ((|ArtefactAssetRelationship| "target")
                ("_18_2_f55036c_1440144449539_312777_7782" NIL))      
  :owned-ends  (("_18_2_f55036c_1440144449539_312777_7782" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440144449539_312777_7782" 
    :type |ArtefactAssetRelationship| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440144449539_112763_7780")

;;; =========================================================
;;; ====================== ArtefactElement
;;; =========================================================
(def-meta-class |ArtefactElement| 
   (:model :SACM-20-DRAFT :superclasses (|ModelElement|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1439972977506_291980_7269")
 ""
  ())

;;; =========================================================
;;; ====================== ArtefactElementCitation
;;; =========================================================
(def-meta-class |ArtefactElementCitation| 
   (:model :SACM-20-DRAFT :superclasses (|ArgumentAsset|) 
    :packages (SACM |Argumentation|) 
    :xmi-id "_18_0_2_f55036c_1415801178499_106738_5468")
 ""
  ((|citedArtefact| :xmi-id "_18_2_f55036c_1440141722591_974000_6970"
    :range |ArtefactElement| :multiplicity (0 1))
   (|externalReference| :xmi-id "_18_0_2_f55036c_1415801300824_795284_5494"
    :range |String| :multiplicity (1 1))))

(def-meta-assoc "_18_2_f55036c_1440141722591_246773_6969"      
  :name |unamed-assoc-11|      
  :metatype :association      
  :member-ends ((|ArtefactElementCitation| "citedArtefact")
                ("_18_2_f55036c_1440141722592_190807_6971" NIL))      
  :owned-ends  (("_18_2_f55036c_1440141722592_190807_6971" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440141722592_190807_6971" 
    :type |ArtefactElementCitation| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440141722591_246773_6969")

;;; =========================================================
;;; ====================== ArtefactEvent
;;; =========================================================
(def-meta-class |ArtefactEvent| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactAsset|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1440145251355_678655_7956")
 ""
  ())

;;; =========================================================
;;; ====================== ArtefactPackage
;;; =========================================================
(def-meta-class |ArtefactPackage| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactElement|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1439973838290_272644_7560")
 ""
  ((|artefactAsset| :xmi-id "_18_2_f55036c_1440144205671_279394_7661"
    :range |ArtefactAsset| :multiplicity (0 -1) :is-composite-p T)
   (|artefactPackage| :xmi-id "_18_2_f55036c_1440143737546_474305_7530"
    :range |ArtefactPackage| :multiplicity (0 -1) :is-composite-p T)
   (|interface| :xmi-id "_18_2_f55036c_1440143806273_163962_7562"
    :range |ArtefactPackageInterface| :multiplicity (0 -1))))

(def-meta-assoc "_18_2_f55036c_1440143806273_914769_7561"      
  :name |hasInterface|      
  :metatype :association      
  :member-ends ((|ArtefactPackage| "interface")
                ("_18_2_f55036c_1440143806273_435970_7563" NIL))      
  :owned-ends  (("_18_2_f55036c_1440143806273_435970_7563" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440143806273_435970_7563" 
    :type |ArtefactPackage| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440143806273_914769_7561")

(def-meta-assoc "_18_2_f55036c_1440143737546_624948_7529"      
  :name |unamed-assoc-20|      
  :metatype :association      
  :member-ends ((|ArtefactPackage| "artefactPackage")
                ("_18_2_f55036c_1440143737546_45683_7531" NIL))      
  :owned-ends  (("_18_2_f55036c_1440143737546_45683_7531" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440143737546_45683_7531" 
    :type |ArtefactPackage| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440143737546_624948_7529")

(def-meta-assoc "_18_2_f55036c_1440144205671_52300_7660"      
  :name |unamed-assoc-21|      
  :metatype :association      
  :member-ends ((|ArtefactPackage| "artefactAsset")
                ("_18_2_f55036c_1440144205672_3019_7662" NIL))      
  :owned-ends  (("_18_2_f55036c_1440144205672_3019_7662" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440144205672_3019_7662" 
    :type |ArtefactPackage| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440144205671_52300_7660")

;;; =========================================================
;;; ====================== ArtefactPackageBinding
;;; =========================================================
(def-meta-class |ArtefactPackageBinding| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactPackage|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1443042343422_950365_7146")
 ""
  ((|participantPackage| :xmi-id "_18_2_f55036c_1443042380749_795011_7173"
    :range |ArtefactPackageInterface| :multiplicity (2 -1))))

(def-meta-assoc "_18_2_f55036c_1443042380749_152943_7172"      
  :name |unamed-assoc-27|      
  :metatype :association      
  :member-ends ((|ArtefactPackageBinding| "participantPackage")
                ("_18_2_f55036c_1443042380749_759434_7174" NIL))      
  :owned-ends  (("_18_2_f55036c_1443042380749_759434_7174" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1443042380749_759434_7174" 
    :type |ArtefactPackageBinding| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1443042380749_152943_7172")

;;; =========================================================
;;; ====================== ArtefactPackageCitation
;;; =========================================================
(def-meta-class |ArtefactPackageCitation| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactPackage|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1440143621456_135003_7460")
 ""
  ((|citedPackage| :xmi-id "_18_2_f55036c_1440143634608_741873_7469"
    :range |ArtefactPackage| :multiplicity (1 1))))

(def-meta-assoc "_18_2_f55036c_1440143634608_982156_7468"      
  :name |unamed-assoc-19|      
  :metatype :association      
  :member-ends ((|ArtefactPackageCitation| "citedPackage")
                ("_18_2_f55036c_1440143634608_388608_7470" NIL))      
  :owned-ends  (("_18_2_f55036c_1440143634608_388608_7470" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440143634608_388608_7470" 
    :type |ArtefactPackageCitation| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440143634608_982156_7468")

;;; =========================================================
;;; ====================== ArtefactPackageInterface
;;; =========================================================
(def-meta-class |ArtefactPackageInterface| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactPackage|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1440143764860_61460_7553")
 ""
  ())

;;; =========================================================
;;; ====================== ArtefactProperty
;;; =========================================================
(def-meta-class |ArtefactProperty| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactAsset|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1440145161689_956552_7896")
 ""
  ())

;;; =========================================================
;;; ====================== ArtefactRelationship
;;; =========================================================
(def-meta-class |ArtefactRelationship| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactAssetRelationship|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1440144591807_671384_7828")
 ""
  ())

;;; =========================================================
;;; ====================== ArtefactResourceRelationship
;;; =========================================================
(def-meta-class |ArtefactResourceRelationship| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactAssetRelationship|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1440149179331_481439_8248")
 ""
  ())

;;; =========================================================
;;; ====================== ArtefactTechniqueRelationship
;;; =========================================================
(def-meta-class |ArtefactTechniqueRelationship| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactAssetRelationship|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1440144658025_363607_7844")
 ""
  ())

;;; =========================================================
;;; ====================== AssertedChallenge
;;; =========================================================
(def-meta-class |AssertedChallenge| 
   (:model :SACM-20-DRAFT :superclasses (|AssertedRelationship|) 
    :packages (SACM |Argumentation|) 
    :xmi-id "_17_0_1_42801a6_1332254342178_224929_2810")
 ""
  ())

;;; =========================================================
;;; ====================== AssertedContext
;;; =========================================================
(def-meta-class |AssertedContext| 
   (:model :SACM-20-DRAFT :superclasses (|AssertedRelationship|) 
    :packages (SACM |Argumentation|) 
    :xmi-id "_17_0_1_42801a6_1332254332478_306159_2788")
 ""
  ())

;;; =========================================================
;;; ====================== AssertedCounterEvidence
;;; =========================================================
(def-meta-class |AssertedCounterEvidence| 
   (:model :SACM-20-DRAFT :superclasses (|AssertedRelationship|) 
    :packages (SACM |Argumentation|) 
    :xmi-id "_17_0_1_42801a6_1332254351650_87381_2830")
 ""
  ())

;;; =========================================================
;;; ====================== AssertedEvidence
;;; =========================================================
(def-meta-class |AssertedEvidence| 
   (:model :SACM-20-DRAFT :superclasses (|AssertedRelationship|) 
    :packages (SACM |Argumentation|) 
    :xmi-id "_17_0_1_42801a6_1332254324150_339611_2768")
 ""
  ())

;;; =========================================================
;;; ====================== AssertedInference
;;; =========================================================
(def-meta-class |AssertedInference| 
   (:model :SACM-20-DRAFT :superclasses (|AssertedRelationship|) 
    :packages (SACM |Argumentation|) 
    :xmi-id "_17_0_1_42801a6_1332254311534_336615_2748")
 ""
  ())

;;; =========================================================
;;; ====================== AssertedRelationship
;;; =========================================================
(def-meta-class |AssertedRelationship| 
   (:model :SACM-20-DRAFT :superclasses (|Assertion|) 
    :packages (SACM |Argumentation|) 
    :xmi-id "_17_0_1_42801a6_1332254192412_518961_2708")
 ""
  ((|reasoning| :xmi-id "_18_2_f55036c_1439975135647_161069_7764"
    :range |ArgumentReasoning| :multiplicity (0 1))
   (|source| :xmi-id "_17_0_1_42801a6_1332255210027_437443_3035"
    :range |ArgumentAsset| :multiplicity (0 -1))
   (|target| :xmi-id "_17_0_1_42801a6_1332255248703_339896_3054"
    :range |ArgumentAsset| :multiplicity (0 -1))))

(def-meta-assoc "_17_0_1_42801a6_1332255210027_674574_3034"      
  :name |unamed-assoc-5|      
  :metatype :association      
  :member-ends ((|AssertedRelationship| "source")
                ("_17_0_1_42801a6_1332255210027_772937_3036" NIL))      
  :owned-ends  (("_17_0_1_42801a6_1332255210027_772937_3036" NIL)))

(def-meta-assoc-end "_17_0_1_42801a6_1332255210027_772937_3036" 
    :type |AssertedRelationship| 
    :multiplicity (1 1) 
    :association "_17_0_1_42801a6_1332255210027_674574_3034")

(def-meta-assoc "_17_0_1_42801a6_1332255248703_746659_3053"      
  :name |unamed-assoc-6|      
  :metatype :association      
  :member-ends ((|AssertedRelationship| "target")
                ("_17_0_1_42801a6_1332255248704_577493_3055" NIL))      
  :owned-ends  (("_17_0_1_42801a6_1332255248704_577493_3055" NIL)))

(def-meta-assoc-end "_17_0_1_42801a6_1332255248704_577493_3055" 
    :type |AssertedRelationship| 
    :multiplicity (1 1) 
    :association "_17_0_1_42801a6_1332255248703_746659_3053")

(def-meta-assoc "_18_2_f55036c_1439975135647_473710_7763"      
  :name |unamed-assoc-7|      
  :metatype :association      
  :member-ends ((|AssertedRelationship| "reasoning")
                ("_18_2_f55036c_1439975135647_208112_7765" NIL))      
  :owned-ends  (("_18_2_f55036c_1439975135647_208112_7765" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1439975135647_208112_7765" 
    :type |AssertedRelationship| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1439975135647_473710_7763")

;;; =========================================================
;;; ====================== Assertion
;;; =========================================================
(def-meta-class |Assertion| 
   (:model :SACM-20-DRAFT :superclasses (|ArgumentAsset|) 
    :packages (SACM |Argumentation|) 
    :xmi-id "_17_0_1_42801a6_1332254167598_115917_2668")
 ""
  ((|metaClaim| :xmi-id "_18_2_f55036c_1440146336444_13859_8164"
    :range |Claim| :multiplicity (0 -1))))

(def-meta-assoc "_18_2_f55036c_1440146336444_25198_8163"      
  :name |unamed-assoc-12|      
  :metatype :association      
  :member-ends ((|Assertion| "metaClaim")
                ("_18_2_f55036c_1440146336445_715754_8165" NIL))      
  :owned-ends  (("_18_2_f55036c_1440146336445_715754_8165" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440146336445_715754_8165" 
    :type |Assertion| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440146336444_25198_8163")

;;; =========================================================
;;; ====================== AssuranceCasePackage
;;; =========================================================
(def-meta-class |AssuranceCasePackage| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactElement|) 
    :packages (SACM) 
    :xmi-id "_17_0_1_42801a6_1332271381827_845707_2091")
 ""
  ((|argumentPackage| :xmi-id "_17_0_1_42801a6_1332275524184_708651_2259"
    :range |ArgumentPackage| :multiplicity (0 -1) :is-composite-p T)
   (|artefactPackage| :xmi-id "_18_2_f55036c_1439973942749_75123_7589"
    :range |ArtefactPackage| :multiplicity (0 -1) :is-composite-p T)
   (|assuranceCasePackage| :xmi-id "_18_0_2_f55036c_1415800405816_557163_5390"
    :range |AssuranceCasePackage| :multiplicity (0 -1) :is-composite-p T)
   (|interface| :xmi-id "_18_2_f55036c_1439973234256_489323_7393"
    :range |AssuranceCasePackageInterface| :multiplicity (0 -1))
   (|terminologyPackage| :xmi-id "_18_2_f55036c_1439974245813_111287_7712"
    :range |TerminologyPackage| :multiplicity (0 -1) :is-composite-p T)))

(def-meta-assoc "_17_0_1_42801a6_1332275524184_663605_2258"      
  :name |unamed-assoc-13|      
  :metatype :association      
  :member-ends ((|AssuranceCasePackage| "argumentPackage")
                ("_17_0_1_42801a6_1332275524184_675449_2260" NIL))      
  :owned-ends  (("_17_0_1_42801a6_1332275524184_675449_2260" NIL)))

(def-meta-assoc-end "_17_0_1_42801a6_1332275524184_675449_2260" 
    :type |AssuranceCasePackage| 
    :multiplicity (1 1) 
    :association "_17_0_1_42801a6_1332275524184_663605_2258")

(def-meta-assoc "_18_0_2_f55036c_1415800405816_715187_5389"      
  :name |unamed-assoc-16|      
  :metatype :association      
  :member-ends ((|AssuranceCasePackage| "assuranceCasePackage")
                ("_18_0_2_f55036c_1415800405817_182519_5391" NIL))      
  :owned-ends  (("_18_0_2_f55036c_1415800405817_182519_5391" NIL)))

(def-meta-assoc-end "_18_0_2_f55036c_1415800405817_182519_5391" 
    :type |AssuranceCasePackage| 
    :multiplicity (1 1) 
    :association "_18_0_2_f55036c_1415800405816_715187_5389")

(def-meta-assoc "_18_2_f55036c_1439973234256_338656_7392"      
  :name |unamed-assoc-28|      
  :metatype :association      
  :member-ends ((|AssuranceCasePackage| "interface")
                ("_18_2_f55036c_1439973234256_873465_7394" NIL))      
  :owned-ends  (("_18_2_f55036c_1439973234256_873465_7394" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1439973234256_873465_7394" 
    :type |AssuranceCasePackage| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1439973234256_338656_7392")

(def-meta-assoc "_18_2_f55036c_1439973942749_90297_7588"      
  :name |unamed-assoc-30|      
  :metatype :association      
  :member-ends ((|AssuranceCasePackage| "artefactPackage")
                ("_18_2_f55036c_1439973942750_864734_7590" NIL))      
  :owned-ends  (("_18_2_f55036c_1439973942750_864734_7590" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1439973942750_864734_7590" 
    :type |AssuranceCasePackage| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1439973942749_90297_7588")

(def-meta-assoc "_18_2_f55036c_1439974245813_206084_7711"      
  :name |unamed-assoc-39|      
  :metatype :association      
  :member-ends ((|AssuranceCasePackage| "terminologyPackage")
                ("_18_2_f55036c_1439974245813_733373_7713" NIL))      
  :owned-ends  (("_18_2_f55036c_1439974245813_733373_7713" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1439974245813_733373_7713" 
    :type |AssuranceCasePackage| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1439974245813_206084_7711")

;;; =========================================================
;;; ====================== AssuranceCasePackageCitation
;;; =========================================================
(def-meta-class |AssuranceCasePackageCitation| 
   (:model :SACM-20-DRAFT :superclasses (|AssuranceCasePackage|) 
    :packages (SACM) 
    :xmi-id "_18_2_f55036c_1439973329903_318762_7432")
 ""
  ((|citedPackage| :xmi-id "_18_2_f55036c_1439973728492_787777_7521"
    :range |AssuranceCasePackage| :multiplicity (1 1))))

(def-meta-assoc "_18_2_f55036c_1439973728492_107384_7520"      
  :name |unamed-assoc-29|      
  :metatype :association      
  :member-ends ((|AssuranceCasePackageCitation| "citedPackage")
                ("_18_2_f55036c_1439973728492_259167_7522" NIL))      
  :owned-ends  (("_18_2_f55036c_1439973728492_259167_7522" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1439973728492_259167_7522" 
    :type |AssuranceCasePackageCitation| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1439973728492_107384_7520")

;;; =========================================================
;;; ====================== AssuranceCasePackageInterface
;;; =========================================================
(def-meta-class |AssuranceCasePackageInterface| 
   (:model :SACM-20-DRAFT :superclasses (|AssuranceCasePackage|) 
    :packages (SACM) 
    :xmi-id "_18_2_f55036c_1439973195734_819208_7384")
 ""
  ())

;;; =========================================================
;;; ====================== Category
;;; =========================================================
(def-meta-class |Category| 
   (:model :SACM-20-DRAFT :superclasses (|TerminologyAsset|) 
    :packages (SACM |Terminology|) 
    :xmi-id "_18_2_f55036c_1440145662655_558233_8003")
 ""
  ())

;;; =========================================================
;;; ====================== Claim
;;; =========================================================
(def-meta-class |Claim| 
   (:model :SACM-20-DRAFT :superclasses (|Assertion|) 
    :packages (SACM |Argumentation|) 
    :xmi-id "_17_0_1_42801a6_1332254203094_489343_2728")
 ""
  ((|assumed| :xmi-id "_17_0_1_42801a6_1332255015204_787936_2976"
    :range |Boolean| :multiplicity (1 1))
   (|toBeSupported| :xmi-id "_17_0_1_42801a6_1332255042372_434367_2978"
    :range |Boolean| :multiplicity (1 1))))

;;; =========================================================
;;; ====================== Description
;;; =========================================================
(def-meta-class |Description| 
   (:model :SACM-20-DRAFT :superclasses (|UtilityElement|) 
    :packages (SACM) 
    :xmi-id "_18_2_f55036c_1439972223733_481779_7040")
 ""
  ())

;;; =========================================================
;;; ====================== Element
;;; =========================================================
(def-meta-class |Element| 
   (:model :SACM-20-DRAFT :superclasses NIL 
    :packages (SACM) 
    :xmi-id "_17_0_1_42801a6_1331665652404_345274_4055")
 ""
  ())

;;; =========================================================
;;; ====================== Expression
;;; =========================================================
(def-meta-class |Expression| 
   (:model :SACM-20-DRAFT :superclasses (|Expression| |ExpressionElement|) 
    :packages (SACM |Terminology|) 
    :xmi-id "_18_2_f55036c_1439998880213_246438_7837")
 ""
  ((|element| :xmi-id "_18_2_f55036c_1440142654527_825569_7296"
    :range |ExpressionElement| :multiplicity (0 -1))
   (|form| :xmi-id "_18_2_f55036c_1440143139776_700706_7395"
    :range |Expression| :multiplicity (0 1))
   (|value| :xmi-id "_18_2_f55036c_1443036423069_145111_6824"
    :range |String| :multiplicity (1 1))))

(def-meta-assoc "_18_2_f55036c_1440142654527_142581_7295"      
  :name |unamed-assoc-34|      
  :metatype :association      
  :member-ends ((|Expression| "element")
                ("_18_2_f55036c_1440142654528_107560_7297" NIL))      
  :owned-ends  (("_18_2_f55036c_1440142654528_107560_7297" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440142654528_107560_7297" 
    :type |Expression| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440142654527_142581_7295")

(def-meta-assoc "_18_2_f55036c_1440143139776_662503_7394"      
  :name |unamed-assoc-40|      
  :metatype :association      
  :member-ends ((|Expression| "form")
                ("_18_2_f55036c_1440143139776_822703_7396" NIL))      
  :owned-ends  (("_18_2_f55036c_1440143139776_822703_7396" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440143139776_822703_7396" 
    :type |Expression| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440143139776_662503_7394")

;;; =========================================================
;;; ====================== Expression
;;; =========================================================
(def-meta-class |Expression| 
   (:model :SACM-20-DRAFT :superclasses (|SACMElement|) 
    :packages (SACM) 
    :xmi-id "_18_2_f55036c_1439998699361_778279_7825")
 ""
  ())

(def-meta-assoc "_18_2_f55036c_1440142654527_142581_7295"      
  :name |unamed-assoc-34|      
  :metatype :association      
  :member-ends ((|Expression| "element")
                ("_18_2_f55036c_1440142654528_107560_7297" NIL))      
  :owned-ends  (("_18_2_f55036c_1440142654528_107560_7297" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440142654528_107560_7297" 
    :type |Expression| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440142654527_142581_7295")

(def-meta-assoc "_18_2_f55036c_1440143139776_662503_7394"      
  :name |unamed-assoc-40|      
  :metatype :association      
  :member-ends ((|Expression| "form")
                ("_18_2_f55036c_1440143139776_822703_7396" NIL))      
  :owned-ends  (("_18_2_f55036c_1440143139776_822703_7396" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440143139776_822703_7396" 
    :type |Expression| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440143139776_662503_7394")

;;; =========================================================
;;; ====================== ExpressionElement
;;; =========================================================
(def-meta-class |ExpressionElement| 
   (:model :SACM-20-DRAFT :superclasses (|TerminologyAsset|) 
    :packages (SACM |Terminology|) 
    :xmi-id "_18_2_f55036c_1440142408770_405471_7226")
 ""
  ((|category| :xmi-id "_18_2_f55036c_1440145673238_608547_8012"
    :range |Category| :multiplicity (0 -1))))

(def-meta-assoc "_18_2_f55036c_1440145673238_903017_8011"      
  :name |unamed-assoc-37|      
  :metatype :association      
  :member-ends ((|ExpressionElement| "category")
                ("_18_2_f55036c_1440145673238_66863_8013" NIL))      
  :owned-ends  (("_18_2_f55036c_1440145673238_66863_8013" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440145673238_66863_8013" 
    :type |ExpressionElement| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440145673238_903017_8011")

;;; =========================================================
;;; ====================== ImplementationConstraint
;;; =========================================================
(def-meta-class |ImplementationConstraint| 
   (:model :SACM-20-DRAFT :superclasses (|UtilityElement|) 
    :packages (SACM) 
    :xmi-id "_18_2_f55036c_1439972198433_646113_7032")
 ""
  ())

;;; =========================================================
;;; ====================== ModelElement
;;; =========================================================
(def-meta-class |ModelElement| 
   (:model :SACM-20-DRAFT :superclasses (|SACMElement|) 
    :packages (SACM) 
    :xmi-id "_17_0_1_42801a6_1332275972987_755032_2302")
 ""
  ((|description| :xmi-id "_18_2_f55036c_1439972442772_619640_7105"
    :range |Description| :multiplicity (0 1) :is-composite-p T)
   (|gid| :xmi-id "_17_0_1_42801a6_1332276504437_326991_2404"
    :range |String| :multiplicity (1 1))
   (|implementationConstraint| :xmi-id "_18_2_f55036c_1439972641763_53521_7174"
    :range |ImplementationConstraint| :multiplicity (0 -1) :is-composite-p T)
   (|isAbstract| :xmi-id "_18_2_f55036c_1440173957063_346318_10130"
    :range |Boolean| :multiplicity (1 1))
   (|name| :xmi-id "_18_2_f55036c_1440173932943_865391_10123"
    :range |String| :multiplicity (1 1))
   (|note| :xmi-id "_17_0_1_42801a6_1332276216762_898949_2353"
    :range |Note| :multiplicity (0 -1) :is-composite-p T)
   (|taggedValue| :xmi-id "_17_0_1_42801a6_1332276210916_812697_2348"
    :range |TaggedValue| :multiplicity (0 -1) :is-composite-p T)))

(def-meta-assoc "_17_0_1_42801a6_1332276216761_977508_2351"      
  :name |unamed-assoc-14|      
  :metatype :association      
  :member-ends ((|ModelElement| "note")
                ("_17_0_1_42801a6_1332276216762_962484_2352" NIL))      
  :owned-ends  (("_17_0_1_42801a6_1332276216762_962484_2352" NIL)))

(def-meta-assoc-end "_17_0_1_42801a6_1332276216762_962484_2352" 
    :type |ModelElement| 
    :multiplicity (1 1) 
    :association "_17_0_1_42801a6_1332276216761_977508_2351")

(def-meta-assoc "_17_0_1_42801a6_1332276210915_881345_2346"      
  :name |unamed-assoc-15|      
  :metatype :association      
  :member-ends ((|ModelElement| "taggedValue")
                ("_17_0_1_42801a6_1332276210916_362101_2347" NIL))      
  :owned-ends  (("_17_0_1_42801a6_1332276210916_362101_2347" NIL)))

(def-meta-assoc-end "_17_0_1_42801a6_1332276210916_362101_2347" 
    :type |ModelElement| 
    :multiplicity (1 1) 
    :association "_17_0_1_42801a6_1332276210915_881345_2346")

(def-meta-assoc "_18_2_f55036c_1439972442771_24475_7104"      
  :name |unamed-assoc-17|      
  :metatype :association      
  :member-ends ((|ModelElement| "description")
                ("_18_2_f55036c_1439972442772_631052_7106" NIL))      
  :owned-ends  (("_18_2_f55036c_1439972442772_631052_7106" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1439972442772_631052_7106" 
    :type |ModelElement| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1439972442771_24475_7104")

(def-meta-assoc "_18_2_f55036c_1439972641763_523723_7173"      
  :name |unamed-assoc-18|      
  :metatype :association      
  :member-ends ((|ModelElement| "implementationConstraint")
                ("_18_2_f55036c_1439972641763_461033_7175" NIL))      
  :owned-ends  (("_18_2_f55036c_1439972641763_461033_7175" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1439972641763_461033_7175" 
    :type |ModelElement| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1439972641763_523723_7173")

;;; =========================================================
;;; ====================== Note
;;; =========================================================
(def-meta-class |Note| 
   (:model :SACM-20-DRAFT :superclasses (|UtilityElement|) 
    :packages (SACM) 
    :xmi-id "_17_0_1_42801a6_1332254027907_143519_2507")
 ""
  ())

;;; =========================================================
;;; ====================== Participant
;;; =========================================================
(def-meta-class |Participant| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactAsset|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1440145007520_568224_7882")
 ""
  ())

;;; =========================================================
;;; ====================== ParticpantRoleRelationship
;;; =========================================================
(def-meta-class |ParticpantRoleRelationship| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactAssetRelationship|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1440144681177_129468_7848")
 ""
  ())

;;; =========================================================
;;; ====================== Resource
;;; =========================================================
(def-meta-class |Resource| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactAsset|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1440144845980_145698_7866")
 ""
  ((|location| :xmi-id "_18_2_f55036c_1440144860064_178011_7869"
    :range |String| :multiplicity (1 1))))

;;; =========================================================
;;; ====================== SACMElement
;;; =========================================================
(def-meta-class |SACMElement| 
   (:model :SACM-20-DRAFT :superclasses (|Element|) 
    :packages (SACM) 
    :xmi-id "_17_0_1_42801a6_1332267514890_86523_1970")
 ""
  ())

;;; =========================================================
;;; ====================== TaggedValue
;;; =========================================================
(def-meta-class |TaggedValue| 
   (:model :SACM-20-DRAFT :superclasses (|UtilityElement|) 
    :packages (SACM) 
    :xmi-id "_17_0_1_42801a6_1332254017735_274491_2487")
 ""
  ((|key| :xmi-id "_18_2_f55036c_1443038106046_531312_6861"
    :range |Expression| :multiplicity (1 1) :is-composite-p T)))

(def-meta-assoc "_18_2_f55036c_1443038106046_852685_6860"      
  :name |unamed-assoc-42|      
  :metatype :association      
  :member-ends ((|TaggedValue| "key")
                ("_18_2_f55036c_1443038106046_15909_6862" NIL))      
  :owned-ends  (("_18_2_f55036c_1443038106046_15909_6862" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1443038106046_15909_6862" 
    :type |TaggedValue| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1443038106046_852685_6860")

;;; =========================================================
;;; ====================== Technique
;;; =========================================================
(def-meta-class |Technique| 
   (:model :SACM-20-DRAFT :superclasses (|ArtefactAsset|) 
    :packages (SACM |Artefact|) 
    :xmi-id "_18_2_f55036c_1440145045354_653112_7888")
 ""
  ())

;;; =========================================================
;;; ====================== Term
;;; =========================================================
(def-meta-class |Term| 
   (:model :SACM-20-DRAFT :superclasses (|ExpressionElement|) 
    :packages (SACM |Terminology|) 
    :xmi-id "_18_2_f55036c_1440142444298_158540_7233")
 ""
  ((|externalReference| :xmi-id "_18_2_f55036c_1440142744989_30624_7325"
    :range |String| :multiplicity (1 1))
   (|origin| :xmi-id "_18_2_f55036c_1440142958717_370731_7334"
    :range |ModelElement| :multiplicity (0 1))
   (|value| :xmi-id "_18_2_f55036c_1443036453070_422325_6826"
    :range |String| :multiplicity (1 1))))

(def-meta-assoc "_18_2_f55036c_1440142958717_331900_7333"      
  :name |unamed-assoc-35|      
  :metatype :association      
  :member-ends ((|Term| "origin")
                ("_18_2_f55036c_1440142958718_360755_7335" NIL))      
  :owned-ends  (("_18_2_f55036c_1440142958718_360755_7335" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440142958718_360755_7335" 
    :type |Term| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440142958717_331900_7333")

;;; =========================================================
;;; ====================== TerminologyAsset
;;; =========================================================
(def-meta-class |TerminologyAsset| 
   (:model :SACM-20-DRAFT :superclasses (|TerminologyElement|) 
    :packages (SACM |Terminology|) 
    :xmi-id "_18_2_f55036c_1440142242338_405896_7116")
 ""
  ())

;;; =========================================================
;;; ====================== TerminologyAssetCitation
;;; =========================================================
(def-meta-class |TerminologyAssetCitation| 
   (:model :SACM-20-DRAFT :superclasses (|ExpressionElement|) 
    :packages (SACM |Terminology|) 
    :xmi-id "_18_2_f55036c_1440142459327_896152_7243")
 ""
  ((|citedAsset| :xmi-id "_18_2_f55036c_1440142505285_741555_7252"
    :range |TerminologyAsset| :multiplicity (1 1))))

(def-meta-assoc "_18_2_f55036c_1440142505284_999360_7251"      
  :name |unamed-assoc-33|      
  :metatype :association      
  :member-ends ((|TerminologyAssetCitation| "citedAsset")
                ("_18_2_f55036c_1440142505285_410333_7253" NIL))      
  :owned-ends  (("_18_2_f55036c_1440142505285_410333_7253" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440142505285_410333_7253" 
    :type |TerminologyAssetCitation| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440142505284_999360_7251")

;;; =========================================================
;;; ====================== TerminologyElement
;;; =========================================================
(def-meta-class |TerminologyElement| 
   (:model :SACM-20-DRAFT :superclasses (|ModelElement|) 
    :packages (SACM |Terminology|) 
    :xmi-id "_18_2_f55036c_1439974096265_180931_7675")
 ""
  ())

;;; =========================================================
;;; ====================== TerminologyPackage
;;; =========================================================
(def-meta-class |TerminologyPackage| 
   (:model :SACM-20-DRAFT :superclasses (|TerminologyElement|) 
    :packages (SACM |Terminology|) 
    :xmi-id "_18_2_f55036c_1439974126572_653935_7679")
 ""
  ((|terminologyAsset| :xmi-id "_18_2_f55036c_1440142254739_825561_7125"
    :range |TerminologyAsset| :multiplicity (0 -1) :is-composite-p T)
   (|terminologyPackage| :xmi-id "_18_2_f55036c_1440143034914_187516_7368"
    :range |TerminologyPackage| :multiplicity (0 -1) :is-composite-p T)
   (|terminologyPackageCitation| :xmi-id "_18_2_f55036c_1440142333576_188190_7191"
    :range |TerminologyPackageCitation| :multiplicity (1 1) :is-composite-p T)))

(def-meta-assoc "_18_2_f55036c_1440142254739_150294_7124"      
  :name |unamed-assoc-31|      
  :metatype :association      
  :member-ends ((|TerminologyPackage| "terminologyAsset")
                ("_18_2_f55036c_1440142254739_30956_7126" NIL))      
  :owned-ends  (("_18_2_f55036c_1440142254739_30956_7126" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440142254739_30956_7126" 
    :type |TerminologyPackage| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440142254739_150294_7124")

(def-meta-assoc "_18_2_f55036c_1440142333576_459362_7190"      
  :name |unamed-assoc-32|      
  :metatype :association      
  :member-ends ((|TerminologyPackage| "terminologyPackageCitation")
                ("_18_2_f55036c_1440142333576_185346_7192" NIL))      
  :owned-ends  (("_18_2_f55036c_1440142333576_185346_7192" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440142333576_185346_7192" 
    :type |TerminologyPackage| 
    :multiplicity (0 -1) 
    :association "_18_2_f55036c_1440142333576_459362_7190")

(def-meta-assoc "_18_2_f55036c_1440143034914_26942_7367"      
  :name |unamed-assoc-36|      
  :metatype :association      
  :member-ends ((|TerminologyPackage| "terminologyPackage")
                ("_18_2_f55036c_1440143034915_969839_7369" NIL))      
  :owned-ends  (("_18_2_f55036c_1440143034915_969839_7369" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440143034915_969839_7369" 
    :type |TerminologyPackage| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440143034914_26942_7367")

;;; =========================================================
;;; ====================== TerminologyPackageCitation
;;; =========================================================
(def-meta-class |TerminologyPackageCitation| 
   (:model :SACM-20-DRAFT :superclasses (|TerminologyElement|) 
    :packages (SACM |Terminology|) 
    :xmi-id "_18_2_f55036c_1440142301412_687169_7148")
 ""
  ((|citedPackage| :xmi-id "_18_2_f55036c_1440145821708_597883_8063"
    :range |TerminologyPackage| :multiplicity (1 1))))

(def-meta-assoc "_18_2_f55036c_1440145821708_797227_8062"      
  :name |unamed-assoc-38|      
  :metatype :association      
  :member-ends ((|TerminologyPackageCitation| "citedPackage")
                ("_18_2_f55036c_1440145821708_700898_8064" NIL))      
  :owned-ends  (("_18_2_f55036c_1440145821708_700898_8064" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1440145821708_700898_8064" 
    :type |TerminologyPackageCitation| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1440145821708_797227_8062")

;;; =========================================================
;;; ====================== UtilityElement
;;; =========================================================
(def-meta-class |UtilityElement| 
   (:model :SACM-20-DRAFT :superclasses (|SACMElement|) 
    :packages (SACM) 
    :xmi-id "_17_0_1_42801a6_1332276133840_86368_2322")
 ""
  ((|expression| :xmi-id "_18_2_f55036c_1443013673615_7496_6875"
    :range |Expression| :multiplicity (1 1) :is-composite-p T)))

(def-meta-assoc "_18_2_f55036c_1443013673615_959493_6874"      
  :name |unamed-assoc-41|      
  :metatype :association      
  :member-ends ((|UtilityElement| "expression")
                ("_18_2_f55036c_1443013673615_742079_6876" NIL))      
  :owned-ends  (("_18_2_f55036c_1443013673615_742079_6876" NIL)))

(def-meta-assoc-end "_18_2_f55036c_1443013673615_742079_6876" 
    :type |UtilityElement| 
    :multiplicity (1 1) 
    :association "_18_2_f55036c_1443013673615_959493_6874")

(def-meta-package |Argumentation| SACM :SACM-20-DRAFT 
   (|ArgumentPackage|
    |ArgumentAsset|
    |ArgumentAssetCitation|
    |Assertion|
    |ArgumentReasoning|
    |AssertedRelationship|
    |Claim|
    |AssertedInference|
    |AssertedEvidence|
    |AssertedContext|
    |AssertedChallenge|
    |AssertedCounterEvidence|
    |ArgumentationElement|
    |ArtefactElementCitation|
    |ArgumentPackageCitation|
    |ArgumentPackageBinding|
    |ArgumentPackageInterface|) :xmi-id "_17_0_1_42801a6_1332253583446_17108_2423")

(def-meta-package |Artefact| SACM :SACM-20-DRAFT 
   (|ArtefactElement|
    |ArtefactPackage|
    |ArtefactPackageCitation|
    |ArtefactPackageInterface|
    |ArtefactAsset|
    |ArtefactAssetCitation|
    |ArtefactAssetRelationship|
    |ArtefactRelationship|
    |ActivityRelationship|
    |ArtefactActivityRelationship|
    |ArtefactTechniqueRelationship|
    |ParticpantRoleRelationship|
    |Artefact|
    |Resource|
    |Activity|
    |Participant|
    |Technique|
    |ArtefactProperty|
    |ArtefactEvent|
    |ArtefactResourceRelationship|
    |ArtefactPackageBinding|) :xmi-id "_18_2_f55036c_1439972840926_31758_7210")

(def-meta-package SACM NIL :SACM-20-DRAFT 
   (|Argumentation|
    |Artefact|
    |Terminology|
    |Note|
    |AssuranceCasePackage|
    |ModelElement|
    |SACMElement|
    |TaggedValue|
    |UtilityElement|
    |Boolean|
    |Integer|
    |String|
    |Element|
    |ImplementationConstraint|
    |Description|
    |AssuranceCasePackageInterface|
    |AssuranceCasePackageCitation|
    |Expression|) :xmi-id "_17_0_1_42801a6_1331665652384_572939_3873")

(def-meta-package |Terminology| SACM :SACM-20-DRAFT 
   (|TerminologyElement|
    |TerminologyPackage|
    |Expression|
    |TerminologyAsset|
    |TerminologyPackageCitation|
    |ExpressionElement|
    |Term|
    |TerminologyAssetCitation|
    |Category|) :xmi-id "_18_2_f55036c_1439974037421_665129_7619")

(in-package :mofi)


(with-slots (abstract-classes ns-uri ns-prefix) *model*
     (setf abstract-classes 
        '(SACM-20-DRAFT::|ArgumentAsset|
          SACM-20-DRAFT::|ArgumentationElement|
          SACM-20-DRAFT::|ArtefactAsset|
          SACM-20-DRAFT::|ArtefactElement|
          SACM-20-DRAFT::|AssertedRelationship|
          SACM-20-DRAFT::|Assertion|
          SACM-20-DRAFT::|Element|
          SACM-20-DRAFT::|Expression|
          SACM-20-DRAFT::|ExpressionElement|
          SACM-20-DRAFT::|ModelElement|
          SACM-20-DRAFT::|SACMElement|
          SACM-20-DRAFT::|TerminologyAsset|
          SACM-20-DRAFT::|TerminologyElement|
          SACM-20-DRAFT::|UtilityElement|))
     (setf ns-uri "http://www.omg.org/spec/SACM/2.0-Draft")
     (setf ns-prefix "SACM"))
