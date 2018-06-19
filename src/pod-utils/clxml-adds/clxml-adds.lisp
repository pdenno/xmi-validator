
;;; Purpose: Temporarily (until next generation of a lisp image) override stuff in Anderson's cl-xml.

(in-package :xml-parser)

(defMethod decoding-stream-reader
           ((stream stream) (encoding (eql :UTF-8)))
  (unless (is-binary-stream stream)
    (warn "stream type not compatible with encoding: ~s: ~s."
          (stream-element-type stream) encoding))
  (multiple-value-bind (function arg)
                       (stream-reader stream)
    (values #'(lambda (function.arg &aux byte1)
                (block read-utf-8-datum
                  (flet ((read-byte-code (&aux byte)
                           (setf byte (funcall-function.arg function.arg))
                           (if (integerp byte) byte
                               (return-from read-utf-8-datum nil))))
                    (declare (type fixnum byte1)
                             (ftype (function () fixnum) read-byte-code)
                             (optimize (speed 3) (safety 0)))
                    (setf byte1 (read-byte-code))
                    (cond ((= 0 (logand #x80 byte1)) byte1)
			  ((<= #xa0 byte1 #xff) byte1) ; POD added. I don't go for that and/shifting stuff!
			  ((<= #x93 byte1 #x9d) byte1) ; probably temporary
			  ((= byte1 #x80) byte1)       ; probably temporary
			  ((= byte1 #x09) byte1)       ; probably temporary
                          ((= #xc0 (logand #xe0 byte1))
                           (logior (lsh (logand byte1 #x1f) 6)
                                   (logand (read-byte-code) #x3f)))
                          ((= #xe0 (logand #xf0 byte1))
                           (logior (logior (lsh (logand byte1 #x0f) 12)
                                           (lsh (logand (read-byte-code) #x3f) 6))
                                   (logand (read-byte-code) #x3f)))
                          ((= #xf0 (logand #xf8 byte1))
                           (let ((byte2 (read-byte-code))
                                 (byte3 (read-byte-code))
                                 (byte4 (read-byte-code)))
                             (xml-error "unsupported unicode datum: ~s."
                                            (list byte1 byte2 byte3 byte4))))
                          (t
                           (xml-error "illegal UTF-8 data: x~2,'0x." byte1))))))
            (cons function arg)
            :UTF-8)))
