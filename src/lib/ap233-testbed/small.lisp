;;; -*- Mode: Lisp; -*-

;;; File created by Expresso 4.0.0 (compiled 2009-May-19 16:21)
;;; Date created: 2009-05-20 08:28:26
;;; Compilation of small.exp

(in-package :expresso-user)

(SETF (SCHEMA *EXPRESSO*)
      (ENSURE-SCHEMA 'EXPRESS-SCHEMA
                     :NAME
                     "small"
                     :INTERNED-NAME
                     'SMALL
                     :SCHEMA-PATHNAME
                     #P"small.exp"))
(EXPO::CLEAR-SCHEMA (FIND-SCHEMA "small"))


;;;=================
;;; SpecializedTypes
;;;=================


;;;=================
;;; EntityTypes
;;;=================
(DEFENTITY-CLASS "S.PRODUCT_VIEW_DEFINITION" SMALL NIL)




;;;=================
;;; GlobalRules
;;;=================
(DEFGLOBAL-RULE S.DOCUMENT_DEFINITION_CONSTRAINT
                (S.PRODUCT_VIEW_DEFINITION)
  ("WR1"
   (QUERY S.PRODUCT_VIEW_DEFINITION #'(LAMBDA (S.DD) |LogicalValue|))))




;;;=================
;;; Functions
;;;=================

;;; END OF OUTPUT