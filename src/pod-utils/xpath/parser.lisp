;;; -*- mode: lisp; syntax: common-lisp; -*-

(in-package :XPATH)

;;; Based on Craig Lanning's parser. See http://exp-engine.sourceforge.net/
;;; Date: 2004-12-15

;;; TODO: 
;;; 

#| ==================== All about XPath ============================================ 

   Initial / and // means something different than non-initial / and //.
   
   (1) - In both syntaxes initial /   means   fn:root(self::node()) treat as document-node()
   (2) - In both syntaxes initial //  means   fn:root(self::node()) treat as document-node()/descendants-or-self::node()/

> The former is coded as (|fn:root| *context-item*)
> The latter is coded as (descendents-or-self (|fn:root| *context-item*))
    
   (3) - In the full syntax / is just a separator between steps. 
   (4) - In both syntaxes non-initial // means /descendant-or-self::node()/  so that

    example:  div1//para    ==>     child:div1/descendant-or-self::node()/para

>  Wrap the descendant-or-self around the arg, e.g. 
>  (child-axis (descendant-or-self (child-axis *context-item* :test #'name-test :test-args "div1")) :test #'name-test :test-args "para")

   (5) - In the abbreviated syntax / means child axis
        section/para ==>   child::section/child::para

   (6) - In the abbreviated syntax .. means parent axis
         ../title ==> parent::node()/child::title

;;;----------- a more interesting example ---------------

  //para[1]  ==>   fn:root(self::node()) treat as document-node()/descendant-or-self::node()/child::para[1]
      -  Selects ALL descendant para elements that are the first para children of their parent.
  /descendant::para[1]  ==>  fn:root(self::node()) treat as document-node()/descendant::para[1]
      -  Selects THE FIRST descendant para element.

>  (child-axis (descendant-or-self (|fn:root| *context-item*)) :test #'name-test :test-args "para" :filters '(1))
>  (descendant-axis (|fn:root| *context-item*) :test #'name-test :test-args "para" :filters '(1))

In both cases the procedure throws when it finds the 'first such.' But the former has as an argument
a sequence of nodes that it maps through, following the child axis -- it can return a value for each
element in the sequence. The later has an argument the one root element. It searches the roots
descendants until it finds 'first such.' It throws and that is the answer for the one argument.

NOTE: eXist doesn't handle this properly.  
|#

(defvar *context-item* nil "Xpath context item")
(defvar *context-size* 0)
(defvar *context-position* 0)
(defvar *tag* nil "Dynamically bound to the defparse tag (eql specializer symbol) for debugging.")
(defvar *reserved-fn-names* '(|attribute| |comment| |document-node| |element| |empty| 
                              |if| |item| |node| |processing-instruction| |text| |type|
                              |typeswitch|) "List of reserved function names. See spec A.3")
;;; These intentionally don't have the Qname prefix (fn:). 
(defparameter *xpath-functions* '(|count| |true| |false| |numeric-add| |numeric-subtract| |numeric-multiply|
 |numeric-divide| |numeric-integer-divide| |numeric-mod| |numeric-unary-plus| |numeric-unary-minus| |numeric-equal| |numeric-less-than|
 |numeric-greater-than| |abs| |ceiling| |floor| |round| |concat| |string-join| |substring| |upper-case| |lower-case| |contains| |starts-with|
 |ends-with| |substring-before| |substring-after| |boolean-equal| |boolean-less-than| |boolean-greater-than| |not| |position| |last|
 |concatenate| |empty| |exists| |index-of| |distinct-values| |insert-before| |remove| |reverse| |subsequence| |zero-or-one| |one-or-more|
 |exactly-one| |avg| |max| |min| |sum| |node-name| |string|) 
  "Functions in the xpath-functions namespace defined in http://www.w3c.org/TR/xquery-operators")

;;; M> #'(lambda () (function (lambda () 'hello)))
;;; #'(LAMBDA NIL (FUNCTION (LAMBDA NIL (QUOTE HELLO))))
;;; M> (funcall *)
;;; #'(LAMBDA NIL (QUOTE HELLO))
;;; Still thinking about it!
;(defmacro 2fn (arg)
;  (let ((lamb (funcall #'xpath2lisp arg)))
;    `(flet ((fn () (function ,lamb)))
;       (fn))))

(defmethod xpath2lisp :around (arg)
  (let* ((*package* (find-package :xpath))
         (lamb (call-next-method)))
    (eval lamb)))

(defmethod xpath2lisp ((str string))
 (let ((string-stream (make-string-input-stream (strcat str " "))))
   (with-open-stream (stream (make-xpath-stream string-stream))
     (let ((result (xpath2lisp stream)))
       (if (eql :eof (peek-token stream))
           result
         (error 'xpath-parse-incomplete :actual (peek-token stream)))))))

(defmethod xpath2lisp ((stream stream))
  "Top-level call. Returns a translated xpath expression."
   `(lambda (*context-item*) ,(parse-data '|Xpath| stream)))

(defclass xpath-error (error) ())

(define-condition xpath-parse-error (xpath-error)
  ((tag :initarg :tag)
   (expected :initarg :expected)
   (actual :initarg :actual))
  (:report (lambda (err stream)
	     (with-slots (tag expected actual) err
	       (format stream "In ~A : expected '~A', got '~A'"
                       tag expected actual)))))

(define-condition xpath-parse-incomplete (xpath-error)
  ((actual :initarg :actual))
  (:report (lambda (err stream)
	     (with-slots (actual) err
	       (format stream "Parse ended with input remaining. Current token: ~A" actual)))))

(defmethod read-token ((stream xpath-stream) &key (pop-ok t))
  (handler-case
      (with-slots (stream tokens) stream
        (or (and pop-ok (pop tokens))
               (let ((val (xpath-read stream nil :eof)))
                 (dbg-message :parser 4 "~%<~S>" val)
                 val)))
    (end-of-file (err)
       (declare (ignore err))
       (return-from read-token :eof))))

(defgeneric parse-data (tag stream &key &allow-other-keys))

(defmacro parse (tag &rest keys)
  `(parse-data ',tag stream ,@keys))

(defmacro defparse (tag (&rest keys) &body body)
  `(defmethod parse-data ((tag (eql ',tag)) (stream xpath-stream) &key ,@keys)
     (setf *tag* ',tag)
     (when (check-token :comment-start stream)
       (read-token stream)
       (let ((c 1))
	 (loop       
	    (case (read-token stream)
	      (:comment-start (incf c))	    
	      (:comment-end (decf c)))
	    (when (= c 0)
	      (return)))))
     ,@body))

(defmethod parse-data :around (tag (stream xpath-stream) &rest args &key arg)
  (declare (ignore arg))
  (dbg-message :parser 5 "~%Entering ~S(~S) peek=~S~%" tag args (peek-token stream))
  (let ((result (call-next-method)))
    (dbg-message :parser 5 "~%Exiting ~S result=~S~%" tag result)
    result))

;;;(declaim (inline check-token))
(defun check-token (token stream)
  (eql (peek-token stream) token))

;;;(declaim (inline assert-token)
(defun assert-token (token stream)
  (let ((tkn (read-token stream)))
    (unless (eql tkn token)
      (error 'xpath-parse-error :tag *tag* :expected token :actual tkn))))

(defun varname-p (obj)
  (char= #\$ (char (string obj) 0)))

;;;================================ The Grammar ======================================================

;;; The draft spec says this: "The notation "<...>" is used to indicate a grouping of terminals that
;;; together may help disambiguate the individual symbols" ... 
;;; ...it's the number of look-aheads you need. And it is quite reliable. 

;;; [1] XPath ::= Expr ;;NOTE: COMMA RULE TEMOPARILY SUSPENDED DUE TO PARENS ERROR
(defparse |Xpath| ()
   (parse |Expr|))

;;; [2] Expr ::= ExprSingle ("," ExprSingle)*
(defparse |Expr| ()
  (let ((expr-list
	 (append
	  (list 
	   (parse |ExprSingle|))
	  (loop while (check-token #\, stream)
	     do (assert-token #\, stream)
	     collect (parse |ExprSingle|)))))
;    (format t "~%***************~A" expr-list)
    (if (> (length expr-list) 1)
      `(list ,@expr-list)
      (first expr-list))))
      

;;; [3] ExprSingle ::= ForExpr | QuantifiedExpr | IfExpr | OrExpr
(defparse |ExprSingle| ()
  (cond ((and (eql '|for| (peek-token stream))
              (eql #\$ (peek-token stream 2)))
         (parse |ForExpr|))
        ((and (member (peek-token stream) '(|some| |every|))
              (eql #\$ (peek-token stream 2)))
         (parse |QuantifiedExpr|))
        ((and (eql '|if| (peek-token stream))
              (eql #\( (peek-token stream 2)))
         (parse |IfExpr|))
        (t (parse |OrExpr|))))

;;; [4] ForExpr ::= SimpleForClause "return" ExprSingle
(defparse |ForExpr| ()
  (let* ((var-set (parse |SimpleForClause|))	 
	 lambda-pars)
    (dotimes (n (length var-set))
      (setf lambda-pars (append lambda-pars (list (elt (elt var-set n) 0))))
      (setf (elt var-set n) (elt (elt var-set n) 1)))
  `(simple-for-clause (list ,@var-set) :return (lambda (,@lambda-pars *context-item*) ,(progn (assert-token '|return| stream) (parse |ExprSingle|))))))

;;; [5] SimpleForClause ::= <"for" "$"> VarName "in" ExprSingle ("," "$" VarName "in" ExprSingle)*
(defparse |SimpleForClause| ()
  (assert-token '|for| stream)
  (append (list (list (progn (assert-token #\$ stream)
			     (intern (strcat "$" (string (read-token stream)))))
		      (progn (assert-token '|in| stream)
			     `(lambda () ,(parse |ExprSingle|)))))
          (loop while (check-token #\, stream) with var = nil with expr = nil do
                (assert-token #\, stream)
                (assert-token #\$ stream)
                (setf var (intern (strcat "$" (string (read-token stream)))))
                (assert-token '|in| stream)
                (setf expr `(lambda () ,(parse |ExprSingle|)))
                collect (list var expr))))

;;; [6] QuantifiedExpr ::= (<"some" "$"> | <"every" "$">) VarName "in" ExprSingle ("," "$" VarName "in" ExprSingle)* "satisfies" ExprSingle
(defparse |QuantifiedExpr| ()
  (let (quantifier var expr v/exprs params)
    (setf quantifier (case (peek-token stream)
                       (|some| (assert-token '|some| stream) 'xpath-some)
                       (|every| (assert-token '|every| stream) 'xpath-every)))
    (assert-token #\$ stream)
    (setf var (intern (strcat "$" (string (read-token stream)))))
    (setf params (list var))
    (assert-token '|in| stream)
    (setf expr (parse |ExprSingle|))
    (setf v/exprs (loop while (check-token #\, stream) with var = nil with expr = nil do
		       (assert-token #\, stream)
		       (assert-token #\$ stream)
		       (setf var (intern (strcat "$" (string (read-token stream)))))
		       (nconc params (list var))
		       (assert-token '|in| stream)
		       (setf expr (parse |ExprSingle|))
		     collect expr))
    (assert-token '|satisfies| stream)
    `(,quantifier (list ,expr ,@v/exprs) (lambda (,@params *context-item*) ,(parse |ExprSingle|)))))

;;; [7] IfExpr ::= <"if" "("> Expr ")" "then" ExprSingle "else" ExprSingle
(defparse |IfExpr| ()
   (let (test then else)
     (assert-token '|if| stream)
     (assert-token #\( stream)
     (setf test (parse |Expr|))
     (assert-token #\) stream)
     (assert-token '|then| stream)
     (setf then (parse |ExprSingle|))
     (assert-token '|else| stream)
     (setf else (parse |ExprSingle|))
     `(|if| ,test ,then ,else))) ; pod not sure why condition is not Expr

;;; [8] OrExpr ::= AndExpr ( "or" AndExpr )*
(defparse |OrExpr| ()
  (let (or ors)
    (setf or (parse |AndExpr|))
    (setf ors (loop while (check-token '|or| stream)
                    do (assert-token '|or| stream)
                    collect `(lambda (*context-item*) ,(parse |AndExpr|))))
    (if ors `(xpath-or (lambda (*context-item*) ,or) ,@ors) or)))

;;; [9] AndExpr ::= ComparisonExpr ( "and" ComparisonExpr )*
(defparse |AndExpr| ()
  (let (and ands)
    (setf and (parse |ComparisonExpr|))
    (setf ands (loop while (check-token '|and| stream)
                    do (assert-token '|and| stream)
                    collect `(lambda (*context-item*) ,(parse |ComparisonExpr|))))
    (if ands `(xpath-and (lambda (*context-item*) ,and) ,@ands) and)))

;;; [10] ComparisonExpr ::= RangeExpr ( (ValueComp | GeneralComp | NodeComp) RangeExpr )?
(defparse |ComparisonExpr| ()
  (let* ((expr1 (parse |RangeExpr|))
         (tk (peek-token stream))
         (op (cond ((member tk '(|eq| |ne| |lt| |le| |gt| |ge|)) (parse |ValueComp|))
                   ((member tk '(#\= :!= #\< :<= :<= #\> :>=)) (parse |GeneralComp|))
                   ((member tk '(|is| :<< :>>)) (parse |NodeComp|)))))
    (if op
        `(,op (lambda (*context-item*) ,expr1) (lambda (*context-item*) ,(parse |RangeExpr|)))
      expr1)))

;;; [11] RangeExpr ::= AdditiveExpr ( "to" AdditiveExpr )?
(defparse |RangeExpr| ()
  (let (expr exprs)
    (setf expr (parse |AdditiveExpr|))
    (setf exprs (loop while (check-token '|to| stream) 
                      do (assert-token '|to| stream)
                      collect (parse |AdditiveExpr|)))
    (if exprs
        `(|range| ,expr ,@exprs)
      expr)))

;;; [12] AdditiveExpr ::= MultiplicativeExpr ( ("+" | "-") MultiplicativeExpr )*
(defparse |AdditiveExpr| () 
  (let* ((expr (parse |MultiplicativeExpr|))
         (exprs (loop while (member (peek-token stream) '(#\+ #\-))
                      with result = expr
                      for op = (xpath-additive-operator (read-token stream))
                      for nextm = (parse |MultiplicativeExpr|) do
                      (setf result (list  op result nextm))
                      finally (return result))))
    (or exprs expr)))

;;; [13] MultiplicativeExpr ::= UnionExpr ( ("*" | "div" | "idiv" | "mod") UnionExpr )*
(defparse |MultiplicativeExpr| ()
    (let* ((expr (parse |UnionExpr|))
           (exprs (loop while (member (peek-token stream) '(#\* |div| |idiv| |mod|))
                        with result = expr
                        for op = (xpath-multiplicative-operator (read-token stream))
                        for nextu = (parse |UnionExpr|) do
                        (setf result (list op result nextu))
                        finally (return result))))
      (or exprs expr)))

;;; [14] UnionExpr ::= IntersectExceptExpr ( ("union" | "|") IntersectExceptExpr )*
(defparse |UnionExpr| (arg)
  (let* ((expr (parse |IntersectExceptExpr|))
         (exprs (when (member (peek-token stream) '(|union| :bar))
		  `(xpath-union ,arg (lambda (*context-item*) ,expr) ,@(loop while (member (peek-token stream) '(|union| :bar)) 
									  with result = expr
									  for op = (read-token stream)
									  for nexti = (parse |IntersectExceptExpr|)
									  collect `(lambda (*context-item*) ,nexti))))))
    (or exprs expr)))

;;; [15] IntersectExceptExpr ::= InstanceofExpr ( ("intersect" | "except") InstanceofExpr )*
(defparse |IntersectExceptExpr| ()
  (let* ((expr (parse |InstanceofExpr|))
         (exprs (loop while (member (peek-token stream) '(|intersect| |except|))
                      with result = expr
                      for op = (read-token stream)
                      for nexti = (parse |InstanceofExpr|) do
                      (setf result (list op result nexti))
                      finally (return result))))
    (or exprs expr)))

;;; [16] InstanceofExpr ::= TreatExpr ( <"instance" "of"> SequenceType )?
(defparse |InstanceofExpr| ()
  (let ((expr (parse |TreatExpr|))
        (seqt (when (and (eql '|instance| (peek-token stream))
                         (eql '|of| (peek-token stream 2)))
                (assert-token '|instance| stream)
                (assert-token '|of| stream)
                (parse |SequenceType|))))
    (if seqt `(|instance of| ,expr ,seqt) expr)))
           
;;; [17] TreatExpr ::= CastableExpr ( <"treat" "as"> SequenceType )?
(defparse |TreatExpr| ()
  (let ((expr (parse |CastableExpr|))
        (seqt (when (check-token '|treat| stream)
                (assert-token '|treat| stream)
                (assert-token '|as| stream)
                (parse |SequenceType|))))
    (if seqt `(|treat as| ,expr ,seqt) expr)))

;;; [18] CastableExpr ::= CastExpr ( <"castable" "as"> SingleType )?
(defparse |CastableExpr| ()
  (let ((expr (parse |CastExpr|))
        (single (when (and (eql '|castable| (peek-token stream))
                           (eql '|as| (peek-token stream 2)))
                  (assert-token '|castable| stream)
                  (assert-token '|as| stream)
                  (parse |SingleType|))))
    (if single `(|castable as| ,expr ,single) expr)))

;;; [19] CastExpr ::= UnaryExpr ( <"cast" "as"> SingleType )?
(defparse |CastExpr| ()
  (let ((expr (parse |UnaryExpr|))
        (single (when (and (eql '|cast| (peek-token stream))
                           (eql '|as| (peek-token stream 2)))
                  (assert-token '|cast| stream)
                  (assert-token '|as| stream)
                  (parse |SingleType|))))
    (if single `(|cast as| ,expr ,single) expr)))

;;; [20] UnaryExpr ::= ("-" | "+")* ValueExpr     /* POD assuming ? was intended, not * */
(defparse |UnaryExpr| ()
  (if (member (peek-token stream) '(#\- #\+))    
      (let ((opr (case (read-token stream) (#\- '-) (#\+ '+))))
	`(,opr ,(parse |ValueExpr|)))
    (parse |ValueExpr|)))

;;; [21] ValueExpr ::= PathExpr
(defparse |ValueExpr| ()
   (parse |PathExpr|))

;;; [22] GeneralComp ::= "=" | "!=" | "<" | "<=" | ">" | ">=" /* gn: lt */
(defparse |GeneralComp| ()
 (when (member (peek-token stream) '(#\= :!= #\< :<= #\> :>=))
   (case (read-token stream)
     (#\= 'xpath-eq)
     (:!= 'xpath-/=)
     (#\< 'xpath-<)
     (#\> 'xpath->)
     (:<= 'xpath-<=)
     (:>= 'xpath->=))))

;;; [23] ValueComp ::= "eq" | "ne" | "lt" | "le" | "gt" | "ge"
(defparse |ValueComp| ()
 (when (member (peek-token stream) '(|eq| |ne| |lt| |le| |gt| |ge|))
   (case (read-token stream)
     (|eq| 'xpath-eq)
     (|ne| 'xpath-/=)
     (|lt| 'xpath-<)
     (|le| 'xpath-<=)
     (|gt| 'xpath->)
     (|ge| 'xpath->=))))

;;; [24] NodeComp ::= "is" | "<<" | ">>"
(defparse |NodeComp| ()
 (when (member (peek-token stream) '(|is| :<< :>>))
   (case (read-token stream)
     (|is| 'xpath-is)
     (:<< 'xpath-<<)
     (:>> 'xpath->>))))

;;; [25] PathExpr ::= ("/" RelativePathExpr?) | ("//" RelativePathExpr) | RelativePathExpr /* gn: leading-loneslash */
(defparse |PathExpr| ()
  (let ((arg (case (peek-token stream)
               ((#\/ nil) (read-token stream) '(|fn:root| *context-item*))
               (:// (read-token stream) '(descendant-or-self (|fn:root| *context-item*)))
               (t '*context-item*))))
    (parse |RelativePathExpr| :arg arg)))
            
;;; [26] RelativePathExpr ::= StepExpr (("/" | "//") StepExpr)*
(defparse |RelativePathExpr| (arg)
  (let* ((expr (parse |StepExpr| :arg arg))
         (exprs (loop while (member (peek-token stream) '(#\/ ://)) with step = expr 
                      for token = (read-token stream) do
                      (if (eql token #\/) ; these don't choose an axis.
                          (if (eql (peek-token stream) #\()
			      (progn (assert-token #\( stream) ;This bit here checks for path expressions with 'union' as in (man|woman)
				     (let ((union-path (parse |UnionExpr| :arg step))) ;This style does not match the spec, but with the way
				       (assert-token #\) stream)                       ;args are currently being passed it is otherwise impossible
				       (if (eql (peek-token stream) #\[)               ;to share the 'context-code' with both union-ed children
					   (setf step (parse |PredicateList| :arg union-path))
					   (setf step union-path))))
			      (setf step (parse |StepExpr| :arg step)))
			  (setf step (parse |StepExpr| :arg `(descendant-or-self ,step))))
		   finally (return step))))
    (or exprs expr)))

;;; [27] StepExpr ::= AxisStep | FilterExpr
(defparse |StepExpr| (arg)
  (let ((tk1 (peek-token stream))
        (tk2 (peek-token stream 2)))
    (if (or 
         (stringp tk1) ; lexer really does deliver strings.
         (numberp tk1)
         (member tk1 '(#\$ #\. #\())
         (and (eql tk1 '|fn|) (eql tk2 #\:))
	 (and (eql tk1 '|op|) (eql tk2 #\:)))
        (parse |FilterExpr| :arg arg)
	(parse |AxisStep| :arg arg))))

;;; [28] AxisStep ::= (ForwardStep | ReverseStep) PredicateList
(defparse |AxisStep| (arg)
  (let* ((step
         (if (or (and (member (peek-token stream) '(|parent| |ancestor| |preceding-sibling| |preceding| |ancestor-or-self|))
                      (eql (peek-token stream 2) :double-colon))
                  (eql :double-dot (peek-token stream)))
             (parse |ReverseStep| :arg arg)
           (parse |ForwardStep| :arg arg))))
    (if (eql (peek-token stream) #\[)
        (parse |PredicateList| :arg step)
      step)))

;;; [29] ForwardStep ::= (ForwardAxis NodeTest) | AbbrevForwardStep
;;; [30] ForwardAxis ::= <"child" "::"> | <"descendant" "::"> | <"attribute" "::"> | <"self" "::"> | <"descendant-or-self" "::"> | <"following-sibling" "::"> | <"following" "::"> | <"namespace" "::">
;;; [31] AbbrevForwardStep ::= "@"? NodeTest
(defparse |ForwardStep| (arg)
  (cond ((and (member (peek-token stream) '(|child| |descendant| |attribute| |self| |descendant-or-self|
                                            |following-sibling| |following| |namespace|))
              (eql :double-colon (peek-token stream 2)))
         (let ((axis (intern (strcat (string-upcase (read-token stream)) "-AXIS"))))
           (assert-token :double-colon stream)
           `(,axis ,arg ,@(parse |NodeTest|))))
	((check-token '|attribute| stream)
	 `(attribute-axis ,arg ,@(parse |NodeTest|)))
        (t
         (cond ((check-token #\@ stream)
                (assert-token #\@ stream)
                `(attribute-axis ,arg ,@(parse |NodeTest|)))
               (t 
                `(child-axis ,arg ,@(parse |NodeTest|)))))))

;;; [32] ReverseStep ::= (ReverseAxis NodeTest) | AbbrevReverseStep
;;; [33] ReverseAxis ::= <"parent" "::">| <"ancestor" "::"> | <"preceding-sibling" "::"> | <"preceding" "::"> | <"ancestor-or-self" "::"> 
;;; [34] AbbrevReverseStep ::= ".."
(defparse |ReverseStep| (arg)
  (cond ((and (member (peek-token stream) '(|parent| |ancestor| |preceding-sibling| |preceding| |ancestor-or-self|))
              (eql (peek-token stream 2) :double-colon))
         (let ((axis (intern (strcat (string-upcase (read-token stream)) "-AXIS"))))
           (assert-token :double-colon stream)
           `(,axis ,arg ,@(parse |NodeTest|))))
        (t (assert-token :double-dot stream)
           `(parent-axis ,arg))))

;;; [35] NodeTest ::= KindTest | NameTest
(defparse |NodeTest| ()
   (if (and (member (peek-token stream) '(|document-node| |element| |attribute| |schema-element| |schema-attribute|
                                          |processing-instruction| |comment| |text| |node|))
            (eql #\( (peek-token stream 2)))
       (parse |KindTest|)
     (parse |NameTest|)))

;;; [36] NameTest ::= QName | Wildcard
;;; [37] Wildcard ::= "*" | <NCName ":" "*"> | <"*" ":" NCName> /* ws: explicit */
(defparse |NameTest| ()
   (let* ((tk1 (peek-token stream))
         (tk2 (peek-token stream 2))
         (tk3 (peek-token stream 3))
         (name (cond ((eql tk1 #\*) 
                      (cond ((eql tk2 #\:)
                             (assert-token #\* stream)
                             (assert-token #\: stream)
                             `(|wildcard&name| ',(read-token stream)))
                            (t
                             (read-token stream)
                             '|wildcard|)))
                     ((and (eql tk2 #\:) (eql tk3 #\*))
                      (prog1 `(|name&wildcard| (read-token stream))
                        (assert-token #\: stream)
                        (assert-token #\* stream)))
                     (t (parse |QName|)))))
     `(:test #'|name-test| :test-args (list ,(string name)))))

;;; [38] FilterExpr ::= PrimaryExpr PredicateList
(defparse |FilterExpr| (arg)
  (let* ((primary (parse |PrimaryExpr|))
        (preds (parse |PredicateList| :arg primary)))
    (if preds
        preds
	primary)))

;;; [39] PredicateList ::= Predicate*
;;; [40] Predicate ::= "[" Expr "]"
(defparse |PredicateList| (arg)
  (when (check-token #\[ stream)
    (let ((active-set arg)
	  (non-numeric-evaluations (list "XPATH-EQ" "CHILD-AXIS" "ATTRIBUTE-AXIS" "XPATH-<" "XPATH->" "XPATH->=" "XPATH-<=" "XPATH-/=" "SEQUENCE-VALIDATE" "OR" "AND")))
      (labels ((string-in-set (string set)
		 (let (switcher)
		   (dolist (n set)
		     (when (string= string n)		 
		       (setf switcher t)))
		   switcher))
	       (number-typep (e) 			    
			   (cond ((numberp e) t)
				 ((if (> (length e) 0) (string-in-set (name (elt e 0)) non-numeric-evaluations) nil) nil)
				 (t t))))
	(loop while (check-token #\[ stream) with e = nil do		  
	     (assert-token #\[ stream) 
	     (setf e (parse |Expr|)) 
	     (assert-token #\] stream)	  
	     (setf out e)		 	    
	     (setf active-set `(sequence-validate (lambda (*context-item*) ,e) ,active-set)))
	     active-set))))
  

(defun counting-predicate (n)
  `(lambda (x) (declare (ignore x))
     (when (= ,n (incf match-count))
       (setf match-count 0)
       (setf invoke-throw t)
       t)))

;;; (Below???) [41] PrimaryExpr ::= Literal | VarRef | ParenthesizedExpr | ContextItemExpr | FunctionCall
;;; [42] Literal ::= NumericLiteral | StringLiteral
;;; [43] NumericLiteral ::= IntegerLiteral | DecimalLiteral | DoubleLiteral
;;; [44] VarRef ::= "$" VarName



;;; [46] ContextItemExpr ::= "."
(defparse |PrimaryExpr| ()
  (let ((tk1 (peek-token stream))
        (tk2 (peek-token stream 2))
        (tk3 (peek-token stream 3)))
    (cond ((eql tk1 #\()
           (assert-token #\( stream)
           (if (eql tk2 #\))
               (progn (read-token stream) nil)                    ; ParenthesizedExpr ()
               (prog1  (parse |Expr|) (assert-token #\) stream)))) ; ParenthesizedExpr
          ((eql tk1 #\.) (read-token stream) '*context-item*)     ; ContextItemExpr
	  ((if (stringp tk1) (string= (subseq tk1 0 1) "'") nil) ;String Literal
	   (subseq (read-token stream) 1 (- (length tk1) 1))) 
          ((eql tk1 #\$) (intern (strcat (string (read-token stream)) (string (read-token stream))))) ; VarRef
          ((or (eql tk2 #\() ; FunctionCall
               (and (eql tk2 #\:)
                    (member tk3 *xpath-functions*)))
           (parse |FunctionCall|))
          (t (read-token stream))))) ; Literal (lexer can deliver a string too).

;;; [47] FunctionCall ::= <QName "("> (ExprSingle ("," ExprSingle)*)? ")" /* gn: parens */ /* gn: reservedfunction- names */
(defparse |FunctionCall| ()  ; pod should I parse a QName ?
  (let* ((fname (if (eql #\: (peek-token stream 2))
                    (let ((prefix (read-token stream))
                          (name (progn (assert-token #\: stream) (read-token stream))))
                      (intern (strcat (string prefix) ":" (string name))))
                (read-token stream)))
          (exprs (progn
                   (assert-token #\( stream)
                   (loop until (check-token #\) stream)
                         collect (parse |ExprSingle|)
                         when (check-token #\, stream)
                         do (read-token stream)))))
    (assert-token #\) stream)
    `(,fname ,@exprs)))
                
;;; [48] SingleType ::= AtomicType "?"?
(defparse |SingleType| ()
  (let ((atype (parse |AtomicType|)))
    (if (check-token #\? stream)
        (progn (assert-token #\? stream) `(xpath-atomic-type? ,atype))
      atype)))

;;; [49] SequenceType ::= (ItemType OccurrenceIndicator?) | <"empty" "(" ")">
;;; [50] OccurrenceIndicator ::= "?" | "*" | "+" /* gn: occurrenceindicators */
(defparse |SequenceType| ()
  (cond ((and (eql '|empty| (peek-token stream))
              (eql #\( (peek-token stream 2))
              (eql #\) (peek-token stream 3)))
         (read-token stream) 
         (assert-token #\( stream)
         (assert-token #\) stream)
         '(|empty|))
        ((member (peek-token stream) '(#\? #\* #\+))
         `(,(case (read-token stream) 
              (#\? 'xpath-cardinality-?) 
              (#\* 'xpath-cardinality-*) 
              (#\+ 'xpath-cardinality-+))
           ,(parse |ItemType|)))
        (t (parse |ItemType|))))

;;; [51] ItemType ::= AtomicType | KindTest | <"item" "(" ")">
(defparse |ItemType| ()
  (cond ((and (eql '|item| (peek-token stream))
              (eql #\( (peek-token stream 2))
              (eql #\) (peek-token stream 3)))
         '(|item|))
        ((and (member (peek-token stream) '(|document-node| |element| |attribute| |schema-element| |schema-attribute|
                                            |processing-instruction| |comment| |text|))
              (eql (peek-token stream 2) #\())
         (parse |KindTest|))
        (t (parse |AtomicTest|))))
         
;;; [52] AtomicType ::= QName 
(defparse |AtomicType| ()
  (parse |QName|))                

;;; [53] KindTest ::= DocumentTest | ElementTest | AttributeTest | SchemaElementTest | SchemaAttributeTest | PITest | CommentTest | TextTest | AnyKindTest
(defparse |KindTest| ()
  (case (peek-token stream)
    (|document-node| (parse |DocumentTest|))
    (|element| (parse |ElementTest|))
    (|attribute| (parse |AttributeTest|))
    (|schema-element| (parse |SchemaElementTest|))
    (|schema-attribute| (parse |SchemaAttributeTest|))
    (|processing-instruction| (parse |PITest|))
    (|comment| (parse |CommentTest|))
    (|text| (parse |TextTest|))
    (|node| (parse |AnyKindTest|))))

;;; [54] AnyKindTest ::= <"node" "("> ")"
(defparse |AnyKindTest| ()
   (assert-token '|node| stream)
   (assert-token #\( stream)
   (assert-token #\) stream) ; POD spurious LW warning
   `(:test #'|node|))

;;; [55] DocumentTest ::= <"document-node" "("> (ElementTest | SchemaElementTest)? ")"
(defparse |DocumentTest| ()
   (assert-token '|document-node| stream)
   (assert-token #\( stream)
   (let* ((arg (unless (check-token #\) stream)
                 (if (check-token '|element| stream) (parse |ElementTest|) (parse |SchemaElementTest|)))))
     (assert-token #\) stream)
     `(:test #'|document-node| :test-args (list ,arg))))

;;; [56] TextTest ::= <"text" "("> ")"
(defparse |TextTest| ()
   (assert-token '|text| stream)
   (assert-token #\( stream)
   (assert-token #\) stream)
   `(:test #'|text|))

;;; [57] CommentTest ::= <"comment" "("> ")"
(defparse |CommentTest| ()
   (assert-token '|comment| stream)
   (assert-token #\( stream)
   (assert-token #\) stream)
   `(:test #'|comment|))

;;; [58] PITest ::= <"processing-instruction" "("> (NCName | StringLiteral)? ")"
(defparse |CommentTest| ()
   (assert-token '|processing-instruction| stream)
   (assert-token #\( stream)
   (let ((name (unless (check-token #\) stream) (read-token stream))))
     (assert-token #\) stream)
     `(:test #'|processing-instruction| :test-args (list ,name))))

;;; [59] AttributeTest ::= <"attribute" "("> (AttribNameOrWildcard ("," TypeName)?)? ")"
(defparse |AttributeTest| ()
   (assert-token '|attribute| stream)
   (assert-token #\( stream)
   (if (check-token #\) stream)
       (progn (read-token stream)
         `(:test #'|attribute| :test-args (list "wildcard")))
     (let ((arg1 (parse |AttribOrWildcard|))
           (args (loop while (check-token #\, stream)
                       do (assert-token #\, stream)
                       collect (if (check-token #\? stream) :? (parse |TypeName|)))))
       (assert-token #\) stream)
       `(:test #'|attribute| :test-args (list ,(string arg1) ,@args)))))


;;; [60] AttribNameOrWildcard ::= AttributeName | "*" 
(defparse |AttribOrWildcard| ()
   (if (check-token #\* stream)
       (progn (read-token stream) '|wildcard|)
     (parse |AttributeName|)))

;;; [61] SchemaAttributeTest ::= <"schema-attribute" "("> AttributeDeclaration ")"
(defparse |SchemaAttributeTest| ()
   `(:test |schema-attribute| :test-args ',(parse |AttributeDeclaration|)))

;;; [62] AttributeDeclaration ::= AttributeName
(defparse |AttributeDeclaration| ()
   (parse |AttributeName|))                

;;; [63] ElementTest ::= <"element" "("> (ElementNameOrWildcard ("," TypeName "?"?)?)? ")"
(defparse |ElementTest| ()
   (assert-token '|element| stream)
   (assert-token #\( stream)
   (if (check-token #\) stream)
       (progn (read-token stream)
         `(:test #'|element| :test-args (list "wildcard")))
     (let ((arg1 (parse |ElementNameOrWildcard|))
           (args (loop while (check-token #\, stream)
                       do (assert-token #\, stream)
                       collect (if (check-token #\? stream) :? (parse |TypeName|)))))
       (assert-token #\) stream)
       `(:test #'|element| :test-args (list ,(string arg1) ,@args)))))

;;; [64] ElementNameOrWildcard ::= ElementName | "*"
(defparse |ElementNameOrWildcard| ()
   (if (check-token #\* stream)
       (progn (assert-token #\* stream) '|wildcard|)
     (parse |ElementName|)))
                
;;; [65] SchemaElementTest ::= <"schema-element" "("> ElementDeclaration ")"
(defparse |SchemaElementTest| () 
    `(:test #'|schema-element| :test-args (list ,(parse ElementDeclaration))))

;;; [66] ElementDeclaration ::= ElementName
(defparse |ElementDeclaration| ()
   (parse |ElementName|))
                
;;; [67] AttributeName ::= QName
(defparse |AttributeName| ()
   (parse |QName|))

;;; [68] ElementName ::= QName
(defparse |ElementName| ()
   (parse |QName|))

;;; [69] TypeName ::= QName
(defparse |TypeName| ()
   (parse |QName|))

;;; [70] IntegerLiteral ::= Digits
(defparse |IntegerLiteral| ()
  (read-token stream))

;;; [XML-6] QName ::=  (Prefix ':')? LocalPart
;;; [XML-7] Prefix ::= NCName
;;; [XML-8] LocalPart ::= NCName
(defparse |QName| ()
  (let ((tk2 (peek-token stream 2)))                
    (if (eql tk2 #\:)
        (let ((prefix (read-token stream)))
          (assert-token #\: stream)
          (concatenate 'string  (string prefix) ":" (string (read-token stream))))
      (read-token stream))))                          