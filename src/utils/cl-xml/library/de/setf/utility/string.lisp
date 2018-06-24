;;; -*- Package: de.setf.utility.implementation; -*-

;; 20030101 established independant utility
;; 20030214 string+

(in-package :de.setf.utility.implementation)

(defPackage :de.setf.utility.string
  (:use )
  (:export
   :concatenate-string
   :string+
   :split-string
   :split-sequence
   ))

(eval-when (:execute :load-toplevel :compile-toplevel)
  (use-package :de.setf.utility.string))

(defun concatenate-string* (list &aux (length 0) string (index 0))
  (declare (type cons list) (type fixnum length index) (type string string))
  (cond ((consp list)
         (mapl #'(lambda (rest &aux (elt (first rest)))
                   (etypecase elt
                     (cons (setf elt (concatenate-string* elt))
                           (setf (first rest) elt))
                     (null )
                     (string ))
                   (when elt (incf length (length elt))))
               list)
         (setf string (make-string length))
         (dolist (elt list)
           (when (stringp elt)
             (locally  (declare (type string elt))
               (dotimes (i (length elt)) (declare (type fixnum i))
                        (setf (schar string index) (char elt i))
                        (incf index)))))
         string)
        (t
         "")))

(defun concatenate-string (&rest list)
  (declare (dynamic-extent list))
  (concatenate-string* list))

(defun string+ (&rest string-designators)
   (concatenate-string* (mapl #'(lambda (designators &aux (designator (first designators)))
                                  (etypecase designator
                                    (character (setf (first designator)
                                                     (make-string 1 :initial-element designator)))
                                    (null )
                                    (string )
                                    (sequence (setf (first designators) (reduce #'string+ designator)))
                                    (symbol (setf (first designators) (string designator)))))
                              string-designators)))

(defun split-sequence (seq pred &key (start 0) end key strict punctuation-p)
  (let* ((p0 (if strict start (position-if-not pred seq :start start :end end :key key)))
         (p1 0)
         (result (list nil))
         (next result))
    (labels ((collect (x) (setf next (setf (rest next) (list x))))
             (collect-characters (sequence start end)
               (loop (unless (< start end) (return))
                     (collect (elt sequence start))
                     (incf start))))
      (when (and punctuation-p (or (null p0) (plusp p0)))
        (collect-characters seq 0 (or p0 (length seq))))
      (loop (unless (and p0 p1) (return))
            (setf p1 (position-if pred seq :start p0 :end end :key key))
            (collect (subseq seq p0 (or p1 end)))
            (when p1
              (setq p0 (if strict (1+ p1) (position-if-not pred seq :start p1 :end end :key key)))
              (when punctuation-p
                (collect-characters seq p1 (or p0 (length seq)))))))
    (rest result)))

(defun split-string (str chars &rest opts)
  "Split the string on chars."
  (apply #'split-sequence str
         (etypecase chars
           (sequence
            (etypecase (elt chars 0)
              (character #'(lambda (ch) (declare (character ch)) (find ch chars)))
              (fixnum #'(lambda (ch) (declare (character ch)) (find (char-code ch) chars)))))
           (function chars))
         opts))

;(split-string "<<>" ",.<>" :punctuation-p t)
;(split-string "<<>" ",.<>" :punctuation-p nil)
;(split-string "asdf,qwer" ",")
;(split-string "the macro with-namespace-declaration-handler.</p>" #(#x09 #x0A #x0D #x20 #x85 #\( #\) #\, #\< #\> #\.) :punctuation-p t)
;(split-string ",,qwer" "," :strict t)
;(split-string ",,qwer" "," :punctuation-p t :strict t)
;(split-string ",,qwer" ",")

:EOF
