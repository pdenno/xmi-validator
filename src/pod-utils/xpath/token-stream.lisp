;;; -*- Mode: LISP; Syntax: common-lisp; -*-

;;; Based on Craig Lanning's EXPRESS parser. See http://exp-engine.sourceforge.net/

(in-package :XPATH)

(defgeneric read-token (stream &key &allow-other-keys))

;;; POD 2012-01-16 changed this from token-stream to xpath-token stream
;;; because might collide with parsing-utils/token-stream
(defclass xpath-stream (xpath-token-stream) ())

(defun make-xpath-stream (stream)
  (make-instance 'xpath-stream :stream stream))

;;; POD 2012-01-16 changed this from token-stream to xpath-token stream
;;; because might collide with parsing-utils/token-stream
(defclass xpath-token-stream (
			#+LispWorks stream:fundamental-character-input-stream
			#+LispWorks stream:fundamental-character-output-stream

			#+Allegro excl:fundamental-character-input-stream
			#+Allegro excl:fundamental-character-output-stream

                        #+CMU ext:fundamental-character-input-stream
			#+CMU ext:fundamental-character-output-stream

			#+SBCL sb-gray:fundamental-character-input-stream
			#+SBCL sb-gray:fundamental-character-output-stream
			)
    ((stream :initarg :stream)
     (tokens :initform nil)
     )
  )

(defmethod stream-element-type ((stream token-stream))
  'simple-char)

(defmethod input-stream-p ((stream token-stream))
  (with-slots ((fs stream)) stream
    (input-stream-p fs)))

(defmethod output-stream-p ((stream token-stream))
  (with-slots ((fs stream)) stream
    (output-stream-p fs)))

(defmethod read-token ((stream token-stream) &key)
  (error "Must be define by subclass"))

(defmethod peek-token ((stream token-stream) &optional (ahead 1))
  (with-slots (tokens) stream
    (cl:or (nth (1- ahead) tokens)
	   (let ((tkn (read-token stream :pop-ok nil)))
             (setf tokens (append tokens (list tkn)))
	     tkn))))

(defun make-token-stream (character-stream)
  (make-instance 'token-stream :stream character-stream))

#+cmu
(defmethod close ((stream token-stream) &key abort)
  (declare (ignore abort))
  (close (slot-value stream 'stream)))

