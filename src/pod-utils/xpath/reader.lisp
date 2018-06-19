;;; -*- Mode: lisp; Syntax: Common-Lisp; -*-

(in-package :XPATH)

;;; Based on Craig Lanning's parser. See http://exp-engine.sourceforge.net/

(defparameter *XPATH-READTABLE* (copy-readtable))

;;;
;;; Xpath Readtable code
;;;

;;; Notes for tokenizing an XPATH character stream.
;;; o  Single character tokens:
;;;    , (  ) [ ] . ? + - * = < > @
;;; o  Special multi-character tokens:
;;;    |     :bar
;;;    ::    :double-colon
;;;    >=    :<=
;;;    >=    :>=
;;;    <<    :<<
;;;    /     :/
;;;    //    ://

#|
[71] DecimalLiteral ::= ("." Digits) | (Digits "." [0-9]*) /* ws: explicit */
[72] DoubleLiteral ::= (("." Digits) | (Digits ("." [0-9]*)?)) [eE] [+-]? Digits /* ws: explicit */
[73] StringLiteral ::= ('"' (('"' '"') | [^"])* '"') | ("'" (("'" "'") | [^'])* "'") /* ws: explicit */
[74] VarName ::= QName
[75] Digits ::= [0-9]+
[76] Comment ::= "(:" (CommentContents | Comment)* ":)" /* ws: explicit */ /* gn: comments */
[77] CommentContents ::= (Char+ - (Char* ':)' Char*))

|#

(defun xpr-char (stream char)
  "Used for single character tokens. It returns CHAR as itself."
  (declare (ignore stream))
  char)

;;; [XML-4] NCName  ::= (Letter | '_') (NCNameChar)*     /*  An XML Name, minus the ":" thus "non-colonized" */
;;; [XML-5] NCNameChar  ::=  Letter | Digit | '.' | '-' | '_' | CombiningChar | Extender
;;; [XML-B] CombiningChar -- might be unprintable in this character set (ignored)
;;; [XML-B] Extender -- might be unprintable in this character set (ignored)
(defun xpr-NCName (stream char)
  (unread-char char stream)
  (loop with string = (make-array 1 :fill-pointer 0 :element-type 'character :adjustable t)
	and strlen = 100 and stridx = 0
	for ch = (read-char stream t nil t)
	while (cl:or (digit-char-p ch)	     
		     (char<= #\a ch #\z)
		     (char<= #\A ch #\Z)
		     (char= ch #\_)
		     (char= ch #\.)
		     (char= ch #\-))
	finally (progn (adjust-array string stridx)
		       (unread-char ch stream)
		       (cl:return (intern string)))
	do (vector-push-extend ch string)
	   (incf stridx)))



(defun xpr-string-lit (stream char)
  (loop with string = (make-array 100 :element-type 'character :adjustable t)
	and strlen = 100 and stridx = 0
	for ch = (read-char stream t nil t)
	while (char/= ch char)
	finally (progn (adjust-array string stridx)
		       (unread-char ch stream)
		       (assert (char= (read-char stream t nil t) char))
		       (cl:return (format nil "'~A'" (intern string))))
	do (setf (aref string stridx) ch)
	   (incf stridx)
	   (when (= stridx strlen)
	     (incf strlen 40)
	     (setf string (adjust-array string strlen :element-type 'character)))))

(defun xpr-number (stream char)
  ;; handling sign here causes other problems
  (let (sign (int 0) dec cdec esign exp)
    (cl:case char
      ((#\+ #\-) (setf sign char))
      (t (setf int (- (char-code char) #x30))))
;    (setf int (- (char-code char) #x30))
    (loop for ch = (read-char stream t nil t)
	  while (digit-char-p ch)
	  do (setf int (+ (* int 10) (- (char-code ch) #x30)))
	  finally (unread-char ch stream))
    (when (char= (peek-char nil stream t nil t) #\.)
      (read-char stream nil nil t)
      (setf dec 0 cdec 1)
      (loop for ch = (read-char stream t nil t)
	    while (digit-char-p ch)
	    do (setf dec (+ (* dec 10) (- (char-code ch) #x30)))
	       (setf cdec (* cdec 10))
	    finally (unread-char ch stream))
      (when (char-equal (peek-char nil stream t nil t) #\e)
	(read-char stream nil nil t)
	(setf exp 0)
	(when (member (peek-char nil stream t nil t) '(#\+ #\-))
	  (setf esign (read-char stream nil nil t)))
	(loop for ch = (read-char stream t nil t)
	      while (digit-char-p ch)
	      do (setf exp (+ (* exp 10) (- (char-code ch) #x30)))
	      finally (unread-char ch stream))))
    (let (res)
      (setf res int)
      (when (eql sign #\-)
	(setf res (- res)))
      (when dec
	(setf res (coerce res 'float))
	(when (plusp dec)
	  (setf res (+ res (/ (coerce dec 'float) cdec))))
	(when (cl:and exp (plusp exp))
	  (when (eql esign #\-)
	    (setf exp (- exp)))
	  (setf res (* res (expt 10 exp)))))
      res)))

(defun xpr-< (stream char)
  ;; < <= <<
  (cl:case (peek-char nil stream t nil t)
    (#\= (read-char stream t nil t) :<=)
    (#\< (read-char stream t nil t) :<<)
    (t char)))

(defun xpr-> (stream char)
  ;; > >= >>
  (cl:case (peek-char nil stream t nil t)
    (#\= (read-char stream t nil t) :>=)
    (#\> (read-char stream t nil t) :>>)
    (t char)))

(defun xpr-BAR (stream char)
  " Read a #\| "
  (declare (ignore char stream))
  :bar)

(defun xpr-PAREN (stream char)
  (cl:case (peek-char nil stream t nil t)
    (#\: (read-char stream t nil t) :comment-start)
    (t char)))

(defun xpr-COLON (stream char)
  "Read a #\:  or ::"
  (cl:case (peek-char nil stream t nil t)
    (#\: (read-char stream t nil t) :double-colon)
    (#\) (read-char stream t nil t) :comment-end)
    (t char)))

(defun xpr-! (stream char)
  "Read a #\! or !="
  (cl:case (peek-char nil stream t nil t)
    (#\= (read-char stream t nil t) :!=)
    (t char)))

(defun xpr-/ (stream char)
  "Read a #\/ or // "
  (cl:case (peek-char nil stream t nil t)
    (#\/ (read-char stream t nil t) ://)
    (t char)))

(defun xpr-. (stream char)
  "Read a . or .."
  (cl:case (peek-char nil stream t nil t)
    (#\. (read-char stream t nil t) :double-dot)
    (t char)))

(defvar *line-number* 0 "2004-12-14 added")

(defun xpr-newline (stream char)
  (declare (ignore stream char))
  (incf *line-number*)
  (values))

;; Modify the characters
(let ((*readtable* *xpath-readtable*))
  ;;(set-syntax-from-char to-char from-char)
  ;;(set-macro-character char function &opt non-terminating-p)

  ;;    , (  ) [ ] ? + - * = < > @
  (dolist (ch '(#\, #\) #\? #\+ #\- #\* #\= #\< #\> #\$ #\[ #\] #\@))
    (set-macro-character ch #'xpr-char))
  
  (set-macro-character #\' #'xpr-string-lit)
  (set-macro-character #\" #'xpr-string-lit)

  (loop for i from 0 to 9
	do (set-macro-character (code-char (+ i #x30)) #'xpr-number))
  (loop for ch in '(#\a #\b #\c #\d #\e #\f #\g #\h #\i #\j #\k #\l #\m
		    #\n #\o #\p #\q #\r #\s #\t #\u #\v #\w #\x #\y #\z
		    #\A #\B #\C #\D #\E #\F #\G #\H #\I #\J #\K #\L #\M
		    #\N #\O #\P #\Q #\R #\S #\T #\U #\V #\W #\X #\Y #\Z #\_)
	do (set-macro-character ch #'xpr-NCName))

  (set-syntax-from-char #\# #\a)

  (set-macro-character #\| #'xpr-bar)
  (set-macro-character #\: #'xpr-colon)
  (set-macro-character #\( #'xpr-paren)
  (set-macro-character #\! #'xpr-!)
  (set-macro-character #\< #'xpr-<)
  (set-macro-character #\> #'xpr->)
  (set-macro-character #\/ #'xpr-/)
  (set-macro-character #\. #'xpr-.)
  (set-macro-character #\Newline #'xpr-newline)
  )

(defvar *xpath-pkg* (find-package :xpath))

(defun xpath-read (&rest args)
;  (declare (arglist &optional stream eof-error-p eof-value recursive-p))
  (let ((*package* *xpath-pkg*)
        (*readtable* *xpath-readtable*))
    (apply #'read args)))

(defun xpath-read-from-string (string &rest args
				    ;;&optional eof-error-p eof-value &key (start 0)
				    ;;end preserve-whitespace
				    )
  (let ((*package* *xpath-pkg*)
	(*readtable* *xpath-readtable*))
    (apply #'read-from-string string args)))
