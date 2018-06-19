
;;; Copyright (c) 2007 Peter Denno
;;;
;;; Permission is hereby granted, free of charge, to any person
;;; obtaining a copy of this software and associated documentation
;;; files (the "Software"), to deal in the Software without restriction,
;;; including without limitation the rights to use, copy, modify,
;;; merge, publish, distribute, sublicense, and/or sell copies of the
;;; Software, and to permit persons to whom the Software is furnished
;;; to do so, subject to the following conditions:
;;;
;;; The above copyright notice and this permission notice shall be
;;; included in all copies or substantial portions of the Software.
;;;
;;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
;;; IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR
;;; ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
;;; CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
;;; WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
;;;-----------------------------------------------------------------------

;;;
;;; Peter Denno
;;;  Date: 12/2/95 - on going, moved from expresso. 
;;;

(in-package :pod-utils)

;;; To do: Get the *line-number* value (from *reader*) to reflect where the 'cursor'
;;; is rather than the whatever was peeked. This is especially useful in ugly grammars
;;; such as OCL and QVT, where there is arbitrary look-aheads that make the line number useless.


(defvar *token-stream* nil "The active token-stream object")


(defclass token-stream (#+LispWorks stream:fundamental-character-input-stream
			#+LispWorks stream:fundamental-character-output-stream

			#+Allegro excl:fundamental-character-input-stream
			#+Allegro excl:fundamental-character-output-stream

                        #+CMU ext:fundamental-character-input-stream
			#+CMU ext:fundamental-character-output-stream

			#+SBCL sb-gray:fundamental-character-input-stream
			#+SBCL sb-gray:fundamental-character-output-stream)
  ;; The stream object
  ((stream :initarg :stream)
   ;; A function that sets the readtable calls read with at least the stream object as an argument.
   (read-fn :initarg :read-fn)
   ;; A list of token positions of read tokens.
   (token-pos :initform nil)
   ;; Tokens that have been peeked, but not yet consumred
   (tokens :initform nil)))

(defmethod stream-filename ((stream token-stream))
  (with-slots ((str stream)) stream
    (truename str)))

(defmethod stream-element-type ((stream token-stream))
  'simple-char)

(defmethod input-stream-p ((stream token-stream))
  (with-slots ((fs stream)) stream
    (input-stream-p fs)))

(defmethod output-stream-p ((stream token-stream))
  (with-slots ((fs stream)) stream
    (output-stream-p fs)))

(defun make-token-stream (character-stream)
  (make-instance 'token-stream :stream character-stream))

(defvar *line-number* 1 "Counts lines while reading.")
(defvar *tags-trace* nil "Stack of entry points into parser")
(defvar *bcounter-starts* nil "Dynamically bound to a list of syntax element start tokens (strings).")
(defvar *bcounter-ends* nil "Dynamically bound to a list of syntax element start tokens (strings).")

;;; Stuff to check, at end of every declaration, whether every x is balanced with an end_x.
;;; Must be package-neutral, thus use of strings.
(let* ((bcounters (make-hash-table :test #'equal))
       (twins (make-hash-table :test #'equal))
       (+syms *bcounter-starts*)
       (-syms (loop for s in +syms
		    for -sym = (strcat "END_" s) ; All wrong ??? check ocl/token-stream.lisp
		    collect (setf (gethash s twins) -sym)))) ; pod 2006-09-20 was 'do' Why? 
  (defun init-bcounters () 
    (loop for s in +syms do (setf (gethash s bcounters) 0)))
  (defun check-bcounters (token) ; called in read-token
    (when (symbolp token)
      (let ((name (symbol-name token)))
	(if-bind (mem (member name +syms :test #'equal)) ; increment or decrement...
		 (incf (gethash (car mem) bcounters))
		 (when-bind (mem (member token -syms :test #'equal))
			    (decf (gethash (gethash (car mem) twins) bcounters))))
	(when (member token *bcounter-ends* :test #'equal) ; then check...
	  (loop for key being the hash-key of bcounters using (hash-value val)
		unless (zerop val) 
		do (error 'token-balance-error :token key :line-number *line-number*)))
	token)))
)
 
(defvar *peeking* nil)
(defmethod peek-token (stream-obj &optional (ahead 1))
  (let (result)
    (unwind-protect
	(with-slots (tokens) stream-obj
	    (setf *peeking* t)
	    (or (setf result (nth (1- ahead) tokens))
		(loop for i from (length tokens) to (1- ahead)
		      for tkn = (read-token stream-obj :pop-ok nil) do
		      (setf tokens (append tokens (list tkn)))
		      finally (setf result tkn))))
      (setf *peeking* nil))
    result))

(defun token-position (stream-obj &optional ahead)
  ;; Returns the file-position of at head of token-pos list OR AHEAD element in.
  (with-slots (token-pos) stream-obj
   (if ahead
       (nth ahead token-pos)
     (car token-pos))))

(defmethod read-token (stream-obj &key (pop-ok t))
  (handler-case
      (with-slots (stream tokens token-pos read-fn) stream-obj
       (let (result)
	 (or (and pop-ok (progn (pop token-pos) (setf result (pop tokens))))
	     (check-bcounters (prog1 (setf result (funcall read-fn stream nil :eof))
				     (setf token-pos (append token-pos (list (file-position stream)))))))
	 (unless *peeking*                                                      
	   ;(dbg-message :parser 5 "~%Consuming: '~A'" (if (symbolp result) (string result) result))
	   (dbg-message :parser 5 "~%Consuming: ~S" result))
	 result))
    (end-of-file ()
       (return-from read-token :eof))))

(declaim (inline check-token))
(defun check-token (token stream)
  (eql (peek-token stream) token))

(declaim (inline assert-token))
(defun assert-token (token stream)
  (let ((tkn (read-token stream)))
    (unless (eql tkn token)
      (error 'parse-token-error 
	     :tag (car *tags-trace*) :expected token :actual tkn 
	     :line-number *line-number*))
    tkn))

;;; "parse1" means "parse pass1"
(defgeneric parse1-data (stream tag &key &allow-other-keys))
(defgeneric parse2-data (stream tag &key &allow-other-keys))
(defgeneric parse-data (stream tag &key &allow-other-keys))


;;; This is nice to have around, just in case something didn't get wrapped
;;; by the macrolet.
(defmacro parse (tag &rest keys)
  (declare (ignore tag keys))
  (error "Never use this."))

;;;=====================================================
;;; Parsing errors
;;;=====================================================

(define-condition utils-parse-error (error)
  ((line-number :initarg :line-number)
   (text :initarg :text)) ; pre-formatted text
  (:report (lambda (err stream)
	     (with-slots (line-number text) err
	       (format stream "Line ~A: ~A"
		       (or line-number "?")
		       (or text "Error while parsing."))))))


(defmacro def-parse-error (name superclasses &body body)
  `(define-condition ,name ,(cl:or superclasses '(utils-parse-error)) ,@body))

  
(def-parse-error parse-token-error ()
  ((tag :initarg :tag)
   (expected :initarg :expected)
   (actual :initarg :actual))
  (:report (lambda (err stream)
	     (with-slots (tag expected actual line-number) err
	       (format stream "~A (line ~A) : expected '~A'  got '~A'"
			  tag line-number expected actual)))))

(def-parse-error token-balance-error ()
  ((token :initarg :token))
  (:report (lambda (err stream)
	     (with-slots (token line-number) err
		  (format stream "Unbalanced ~A before line ~A." token line-number)))))


(def-parse-error parse-error-with-token ()
  ((definition :initarg :definition)
   (token      :initarg :token))
  (:report (lambda (err stream)
	     (with-slots (definition token) err
	       (format stream "While parsing ~A, an error occurred at token '~A'"
			   definition token)))))

(defun print-parse-stack (err language pass)
  "Print the error ERR, and parse stack to info-message."
  (format *debug-stream* "~%Error at line ~A while reading ~A (pass ~A) file:" 
		     *line-number* language pass)
  (format *debug-stream* "~%  ~A" err)
  (format *debug-stream* "~%Parse stack: ~{~%   * ~A~}" *tags-trace*))


;;;===============================================================
;;; 2007-11-10 SCOPE stuff. I moved these from ocl/token-stream 
;;; 2007-11-13 Move to string keys in %%ids HT. 
;;;==============================================================

(defvar *scope* nil   "Dynamically bound to the current scope.")

(defclass %%scope () 
  ((%%name :initarg :%%name :accessor %%name :initform nil)
   (%%type  :initarg :%%type :reader %%type) ;; :global :let :iterator ... others
   (%%parent :initarg :%%parent :accessor %%parent :initform nil)
   (%%children :accessor %%children :initform nil)
   (%%ids :initarg :%%ids :initform (make-hash-table :test #'equal) :reader %%ids)))

(defmethod initialize-instance :after ((obj %%scope) &key)
  (when (%%parent obj)
    (push obj (%%children (%%parent obj)))))

(defmethod print-object ((obj %%scope) stream) 
  (with-slots (%%name %%type) obj
	      (cl:format stream "#<scope ~A (a ~A)>" 
			 (cl:if %%name (cl:string %%name) "[unnamed]")
				%%type)))

;(defgeneric lookup-type (name scope &key &allow-other-keys))
(defgeneric token-is (name type scope &key &allow-other-keys))
(defgeneric add-type (name scope type))

;(defun token-all-types (name scope)
;  "Name is p11uinterned."
;  (gethash name (%%ids scope)))

(defmethod token-is (name type (scope %%scope) &key)
  "NAME is an identifier. TYPE is a keyword: :entity, :function 
   :procedure :enum-val :constant :type :variable :parameter"
  (with-slots (%%ids %%parent) scope
    (or 
      (and (hash-table-p %%ids)
	   (member type (gethash name %%ids) :key #'car))
      (when %%parent
	(token-is name type %%parent)))))

(defmethod token-scope (name &key (start-scope *scope*) (error-p t))
  "NAME is ocluinterned. "
  (let ((result 
	 (loop for scope = start-scope then (%%parent scope) while scope
	       when (gethash name (%%ids scope)) return scope)))
    (when (and error-p (null result))
      (error "Could not find scope for identifier ~A." name))
    result))

;;; add-type is used (in the first pass in P11 and second pass in OCL and QVT)
;;; to add ids to the %%ids hash table of the current %%scope object.  The %%ids hash table
;;; is keyed by the id and lists all the declaration types that the id is in that scope.
;;; add-type records the file-position, but this is only accurate when the token was the last thing read.
(defmethod add-type (name (scope %%scope) type)
   "Typical usage:  (add-type some-id *scope* :variable)"
   (with-slots (%%ids) scope
    (pushnew (cons type (token-position *token-stream*))
	     (gethash (string name) %%ids)
	     :test #'equal)))
;    (when (and (eql type :attribute) (%%parent scope))
;      (add-type name (%%parent scope) :attribute))))

(defun find-child-scope (name &key contains) 
  "Find a scope that is a direct child of *scope* and contains NAME or satisfies the parameters 
   specified in CONTAINS. NAME names a scope (or is nil). CONTAINS.INAME is a name found in it."
  (or 
   (and name (find name (%%children *scope*) :test #'string-equal :key #'%%name))
   (dbind (itype iname token-pos) contains ; itype is :query-expression or :repeat-stmt
     (depth-first-search *scope* 
			 #'(lambda (c)
			    (and (eql itype (%%type c))
				 (member token-pos (gethash iname (%%ids c)) :key #'cdr :test #'equal)))
			 #'%%children))
   (cl:if name 
	  (error "Could not find scope with name: ~A." name)
	  (dbind (itype iname token-pos) contains
		 (error "Could not find scope of type ~A containing ~A at position ~A."
			itype iname token-pos)))))


(defun describe-scopes (&optional (scope *scope*) (level 0))
  (flet ((spaces () (format t "~%") (loop for i from 1 to level do (format t "   "))))
    (with-slots (%%children %%ids) scope
      (spaces) (format t "SCOPE at level ~A = ~A" level scope)
      (unless (zerop (hash-table-count %%ids))
	(spaces) (format t "IDs:")
	(loop for key being the hash-key of %%ids using (hash-value vals)
	      do (spaces) (format t "   ~S     ~A" key vals)))
      ;(when %%children (spaces) (format t " children = ~A" %%children))
      (mapcar #'(lambda (x) (describe-scopes x (1+ level))) %%children)))
  (values))



