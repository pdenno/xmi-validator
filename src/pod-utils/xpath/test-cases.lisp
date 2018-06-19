;;; -*- mode: lisp; syntax: common-lisp; -*-


;;; TODO: - translate the xpath on execution, not on macroexpansion. 

(in-package :XPATH)

(defparameter *xpath-tests* (make-hash-table) "A ht of functions that test various aspects of xpath.")
(defparameter *diag-item* nil "Used in debugging.")
(defvar *microsoft-example* "<bookstore specialty='novel'>
  <book style='autobiography'>
    <author>
      <first-name>Joe</first-name>
      <last-name>Bob</last-name>
      <award>Trenton Literary Review Honorable Mention</award>
    </author>
    <price>12</price>
  </book>
  <book style='textbook'>
    <author>
      <first-name>Mary</first-name>
      <last-name>Bob</last-name>
      <publication>Selected Short Stories of
        <first-name>Mary</first-name>
        <last-name>Bob</last-name>
      </publication>
    </author>
    <editor>
      <first-name>Britney</first-name>
      <last-name>Bob</last-name>
    </editor>
    <price>55</price>
  </book>
  <magazine style='glossy' frequency='monthly'>
    <price>2.50</price>
    <subscription price='24' per='year'/>
  </magazine>
  <book style='novel' id='myfave'>
    <author>
      <first-name>Toni</first-name>
      <last-name>Bob</last-name>
      <degree from='Trenton U'>B.A.</degree>
      <degree from='Harvard'>Ph.D.</degree>
      <award>Pulitzer</award>
      <publication>Still in Trenton</publication>
      <publication>Trenton Forever</publication>
    </author>
    <price intl='Canada' exchange='0.7'>6.50</price>
    <excerpt>
      <p>It was a dark and stormy night.</p>
      <p>But then all nights in Trenton seem dark and
      stormy to someone who has gone through what
      <emph>I</emph> have.</p>
      <definition-list>
        <term>Trenton</term>
        <definition>misery</definition>
      </definition-list>
    </excerpt>
  </book>
  <my:book xmlns:my='uri:mynamespace' style='leather' price='29.50'>
    <my:title>Who's Who in Trenton</my:title>
    <my:author>Robert Bob</my:author>
  </my:book>
</bookstore>")


(defun xpath-run-tests ()
  (let ((*package* (find-package "XPATH")))
    (dotimes (i 100) (xpath-run-test i))))

(defun xpath-run-test-anderson (i)
  (when-bind (entry (gethash i *xpath-tests*))
    (with-slots (description xpath-string xml-string expected test-fn) entry
      (let* ((iterator (funcall test-fn))
             (n nil)
             (result-nodes (loop while (setf n (funcall iterator))
                                 with vec = (node-vector)
                                 do (vector-push-extend n vec)
                                 finally (return vec)))
             (result-strings 
              (loop for n in result-nodes
                    with stream = (make-string-output-stream)
                    do (xml-parser:write-node n stream)
                    collect (get-output-stream-string stream))))
        (setf *diag-item* result-strings)
        ;(VARS expected result-strings)
        (if (and (= (length expected) (length result-strings))
                 (every #'equal expected result-strings))
            (format t "~%Test ~A: OK" i)
          (progn 
            (format t "~%Test ~A: ~%  expected: ~S  ~%  got: ~S" i expected result-strings)
            (format t "~%  Description: ~A" description)
            (format t "~%  XPath: ~A" xpath-string)
            (format t "~%  Function: ")
            (pprint (xpath2lisp xpath-string))))))))

(defun xpath-run-test (i)
  (when-bind (entry (gethash i *xpath-tests*))
    (with-slots (description xpath-string xml-string expected test-fn) entry
      (let* ((result-nodes (funcall test-fn))
             (result-strings 
              (if (listp result-nodes) 
                  (loop for n in result-nodes		      
                        with stream = (make-string-output-stream)
                        do (xml-parser:write-node n stream)
                        collect (get-output-stream-string stream))
                  result-nodes)))
        (setf *diag-item* result-strings)
        ;(VARS expected result-strings)
        (cond ((and (listp result-strings)
                    (= (length expected) (length result-strings))
                    (every #'equal (neutralize-list expected) (neutralize-list result-strings)))
               (format t "~%Test ~A: OK" i))
              ((equal result-strings (car expected))
               (format t "~%Test ~A: OK" i))
              (t 
               (format t "~%Test ~A: ~%  expected: ~S  ~%  got: ~S" i expected result-strings)
               (format t "~%  Description: ~A" description)
               (format t "~%  XPath: ~A" xpath-string)
               (format t "~%  Function: ")
               (pprint (xpath2lisp xpath-string))))))))

(defclass xpath-test ()
  ((description :initarg :description :reader description)
   (xpath-string :initarg :xpath-string :reader xpath-string)
   (xml-string :initarg :xml-string :reader xml-string)
   (expected :initarg :expected :reader expected)
   (test-fn :initarg :test-fn :reader test-fn)))

(defmacro def-xpath-test (id body)
  (with-gensyms (doc fn)
    `(setf (gethash ,id *xpath-tests*)
           (make-instance 
            'xpath-test
            :description ,(second (assoc :description body))
            :xpath-string ,(second (assoc :xpath body))
            :xml-string ,(second (assoc :xml body))
            :expected ',(rest (assoc :expect body))	
            :test-fn
            #'(lambda ()
                (let ((,doc (xmlp:document-parser ,(strcat "<?xml version='1.0' encoding='UTF-8' standalone='yes'?>"
							   (eval (second (assoc :xml body))))))
                      (,fn  (xpath2lisp ,(second (assoc :xpath body))))
                            #+anderson(xp::xpath-parser (second (assoc :xpath body))))
                  (funcall ,fn ,doc)))))))

(defun neutralize-list (list)
  (loop for n in list
       collect (string-neutralize n)))

(defun string-neutralize (string)
  (let ((new-string ""))
    (loop for n across string do	
	 (unless (or (char= n #\Newline)(char= n #\Space))
	   (setf new-string (concatenate 'string  new-string (string n)))))
    new-string))
  
(def-xpath-test 1
 ((:description "abbreviated syntax, basic path expression")
  (:xpath "/Order/BuyerID")
  (:xml "<Order><BuyerID>1234</BuyerID></Order>")
  (:expect "<BuyerID>1234</BuyerID>")))

(def-xpath-test 2
 ((:description "abbreviated syntax, multiple results")
  (:xpath "/Order/Item")
  (:xml "<Order><Item>1234</Item><Item>1235</Item></Order>")
  (:expect 
   "<Item>1234</Item>"
   "<Item>1235</Item>")))

(def-xpath-test 3
 ((:description "Descendants")
  (:xpath "//element")
  (:xml "<schema><includer>
          <complexType>
            <element ref='one'/>
            <element ref='two'/>
          </complexType>
         </includer></schema>")
  (:expect 
   "<element ref='one' />"
   "<element ref='two' />")))

(def-xpath-test 4
 ((:description "Second such descendant of each parent")
  (:xpath "//element[2]")
  (:xml "<schema><includer>
          <complexType>
            <element ref='one'/>
            <element ref='two'/>
          </complexType>
          <complexType>
            <element ref='not me'/>
            <element ref='me too'/>
          </complexType>
         </includer></schema>")
  (:expect 
   "<element ref='two' />")))

(def-xpath-test 5
 ((:description "Second such descendant.")
  (:xpath "/descendant::element[2]")
  (:xml "<schema><includer>
          <complexType>
            <element ref='one'/>
          </complexType>
          <complexType>
            <element ref='yes, me'/>
            <element ref='not me'/>
          </complexType>
         </includer></schema>")
  (:expect 
   "<element ref='yes, me' />")))

;;; User tools will probably want just the value, but that is OK. 
(def-xpath-test 6
  ((:description "simple attribute test")
   (:xpath "/root/child/@attr1")
   (:xml "<root>
            <child attr1='find me'/>
            <child attr1='and me'/>
            <child attr2='but not me'/>
         </root>")
   (:expect "attr1='find me'" "attr1='and me'"))) 

(def-xpath-test 7
  ((:description "descendant attribute test")
   (:xpath "//@attr1")
   (:xml "<root>
            <child attr1='find me'/>
            <child attr1='and me'/>
            <elem>
             <child attr1='also me'/>
            </elem>
         </root>")
   (:expect "attr1='find me'" "attr1='and me'" "attr1='also me'")))

(def-xpath-test 8
  ((:description "parent axis")
   (:xpath "/root/child/grandchild/..")
   (:xml "<root>
            <child attr='one'><grandchild /></child>
            <child attr='two'><grandchild /></child>
         </root>")
   (:expect 
    "<child attr='one'><grandchild /></child>"
    "<child attr='two'><grandchild /></child>")))

(def-xpath-test 9
  ((:description "ancestor-or-self axis, element test, unabbreviated.")
   (:xpath "/child::root/child::child/child::grandchild/ancestor-or-self::element()/attribute::attr")
   (:xml "<root>
            <child attr='one'><grandchild /></child>
            <child attr='two'><grandchild /></child>
         </root>")
   (:expect 
    "attr='one'"
    "attr='two'")))

(def-xpath-test 10
  ((:description "fn:count, context item, comparison operators, functions with arguments.")
   (:xpath "/books/book[fn:count(./author)>1]")
   (:xml "<books>
            <book><author name='bob' /><author name='peter' /></book>
            <book><author name='bob' /></book>
         </books>")
   (:expect "<book><author name='bob' /><author name='peter' /></book>")))

(def-xpath-test 11
  ((:description "an expression that isn't a path expression, but contains one.")
   (:xpath "fn:count(/books/book)>1")
   (:xml "<books>
            <book><author name='bob' /><author name='peter' /></book>
            <book><author name='bob' /></book>
         </books>")
   (:expect t)))

(def-xpath-test 12 ; not yet tested. 
  ((:description "Use of [] tests")
   (:xpath "/catalog/cd[artist='Bob Dylan']")
   (:xml 
    "<catalog>
      <cd>
        <company>Columbia</company>
        <artist>Bob Dylan</artist>
     </cd>
     <cd>
       <company>CBS Records</company>
       <artist>Bonnie Tyler</artist>
    </cd>
    <cd>
      <company>RCA</company>
      <artist>Dolly Parton</artist>
    </cd>
    </catalog>")
   (:expect "<cd>
<company>Columbia</company>
<artist>Bob Dylan</artist>
</cd>")))

(def-xpath-test 13
  ((:description "Attribute predicate inequality")
   (:xpath "//room[@id >= 103]")
   (:xml "<building>
            <room id='101' />
            <room id='102' />
            <room id='103' />
            <room id='104' />
         </building>")
   (:expect "<room id='103' />" "<room id='104' />")))

(def-xpath-test 14
  ((:description "Attribute predicate inequality with math")
   (:xpath "//room[@id < fn:abs(208 div -2)-1]")
   (:xml "<building>
            <room id='101' />
            <room id='102' />
            <room id='103' />
            <room id='104' />
         </building>")
   (:expect "<room id='101' />" "<room id='102' />")))

(def-xpath-test 15
  ((:description "Attribute predicate inequality with math")
   (:xpath "for $i in (10, 20, 30), $j in (1, 2, 3) return $i + $j")
   (:xml "<void></void>")
   (:expect "11" "12" "13" "21" "22" "23" "31" "32" "33")))

(def-xpath-test 16
  ((:description "Spec. Filter Expression Ex. #2")
   (:xpath "(1 to 25)[. mod 5 eq 0]")
   (:xml "<void></void>")
   (:expect "5" "10" "15" "20" "25")))

(def-xpath-test 17
  ((:description "Spec. Filer Expression Ex. 3")
   (:xpath "(21 to 29)[5]")
   (:xml "<void></void>")
   (:expect "25")))

(def-xpath-test 18
  ((:description "Sequence equality #1")
   (:xpath "//room[fn:not(@id = (101 to 103))]")
   (:xml "<building>
            <room id='101' />
            <room id='102' />
            <room id='103' />
            <room id='104' />
         </building>")
   (:expect "<room id='104' />")))

(def-xpath-test 19
  ((:description "Sequence equality #2")
   (:xpath "(100 to 120) eq (120 to 130)")
   (:xml "<void></void>")
   (:expect T)))

(def-xpath-test 20
  ((:description "Sequence equality #3")
   (:xpath "(100 to 120) != (120 to 130)")
   (:xml "<void></void>")
   (:expect T)))

(def-xpath-test 21
  ((:description "MSDN Test #1")
   (:xpath "//author[fn:not(degree or award) and publication]")
   (:xml *microsoft-example*)
   (:expect "<author><first-name>Mary</first-name><last-name>Bob</last-name><publication>
Selected Short Stories of <first-name>Mary</first-name><last-name>Bob</last-name></publication></author>")))

(def-xpath-test 22
  ((:description "MSDN Test #2")
   (:xpath "//author[last-name = 'Bob' and ../price gt 50]")
   (:xml *microsoft-example*)
   (:expect "<author><first-name>Mary</first-name><last-name>Bob</last-name><publication>
Selected Short Stories of <first-name>Mary</first-name><last-name>Bob</last-name></publication></author>"))) 

(def-xpath-test 23
  ((:description "MSDN Test #3")
   (:xpath "//degree[@from != 'Harvard']")
   (:xml *microsoft-example*)
   (:expect "<degree from='Trenton U'>B.A.</degree>")))

(def-xpath-test 24
  ((:description "MSDN Test #4")
   (:xpath "//author[last-name[fn:position()=1]='Bob']")
   (:xml *microsoft-example*)
   (:expect "<author><first-name>Joe</first-name><last-name>Bob</last-name><award>Trenton Literary Review Honorable Mention</award>
</author>" "<author><first-name>Mary</first-name><last-name>Bob</last-name><publication>Selected Short Stories of
<first-name>Mary</first-name><last-name>Bob</last-name></publication></author>" "<author><first-name>Toni</first-name>
<last-name>Bob</last-name><degree from='Trenton U'>B.A.</degree> <degree from='Harvard'>Ph.D.</degree><award>Pulitzer</award>
<publication>Still in Trenton</publication><publication>Trenton Forever</publication></author>")))

(def-xpath-test 25
  ((:description "MSDN Test #5")
   (:xpath "//bookstore//book/excerpt//emph")
   (:xml *microsoft-example*)
   (:expect "<emph>I</emph>")))

(def-xpath-test 26
  ((:description "MSDN Test #5")
   (:xpath "//book[/bookstore/@specialty=@style]")
   (:xml *microsoft-example*)
   (:expect "<book style='novel' id='myfave'>
    <author>
      <first-name>Toni</first-name>
      <last-name>Bob</last-name>
      <degree from='Trenton U'>B.A.</degree>
      <degree from='Harvard'>Ph.D.</degree>
      <award>Pulitzer</award>
      <publication>Still in Trenton</publication>
      <publication>Trenton Forever</publication>
    </author>
    <price intl='Canada' exchange='0.7'>6.50</price>
    <excerpt>
      <p>It was a dark and stormy night.</p>
      <p>But then all nights in Trenton seem dark and
      stormy to someone who has gone through what
      <emph>I</emph> have.</p>
      <definition-list>
        <term>Trenton</term>
        <definition>misery</definition>
      </definition-list>
    </excerpt>
  </book>")))



#+nil(with-debugging (:parser 5) (xpath2lisp "//element"))
#+nil(xmlp:document-parser "<root><child attr1='hello'/></root>")

;;; "/Order/cac:DeliveryTerms/cac:ID/@identificationSchemeName eq \"Incoterms2000\""

#|
(defun tryme (XPATH::*CONTEXT-ITEM*)
  (XPATH-EQ (ATTRIBUTE-AXIS (CHILD-AXIS
                             (CHILD-AXIS
                              (CHILD-AXIS (|fn:root| *CONTEXT-ITEM*) :TEST  #'|name-test| :TEST-ARGS (LIST "Order"))
                              :TEST #'|name-test|
                              :TEST-ARGS (LIST "cac:DeliveryTerms"))
                             :TEST #'|name-test|
                             :TEST-ARGS (LIST "cac:ID"))
                            :TEST #'|name-test| :TEST-ARGS (LIST "identificationSchemeID"))
            "Incoterms2000"))
|#
    


