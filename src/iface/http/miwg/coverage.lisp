

;;; Purpose: Create tables (.csv) of coverage statistics. 
;;; NOTE: You wouldn't want to load this stuff normally. 
;;;       The change-class thing it does is not safe. The compiler
;;;       will complain that change-class is being modified.
;;;
;;; Usage: (run-regression-tests)
;;; 

(in-package :mofi)

(defparameter *type-hit-table* (make-hash-table :test #'equal))

(defun element-init-instance-aux (obj &key force-name)
  "Update *type-hit-table* with model-name for the class of OBJ."
  (let ((tc-name
	 (mvb (success vec)
	     (cl-ppcre:scan-to-strings "(TC\\d+[a-z,A-Z]?(-PROFILE)?).*" (model-name (%of-model obj)))
	   (when success (read-from-string (aref vec 0))))))
    (unless tc-name (error "Cannot find name: ~A" (model-name (%of-model obj))))
    (pushnew (kintern tc-name)
	     (gethash (or force-name (string (class-name (class-of obj)))) *type-hit-table*))))

(defmethod change-class :after (obj new-class &rest initargs)
  (element-init-instance-aux 
   obj 
   :force-name (string (class-name (car (class-direct-superclasses new-class))))))

(defmethod initialize-instance :after ((obj uml22:|Element|) &rest initargs &key &allow-other-keys)
  "Update *type-hit-table* with model-name for the class of OBJ."
  (element-init-instance-aux obj))

(defmethod initialize-instance :after ((obj uml23:|Element|) &rest initargs &key &allow-other-keys)
  "Update *type-hit-table* with model-name for the class of OBJ."
  (element-init-instance-aux obj))

(defun write-hit-list-report ()
  "Write a report (CSV) listing what classes were used and unused."
  (with-open-file (s (pod:lpath :sei "classes-used-unused.csv") :direction :output 
		     :if-exists :supersede :if-does-not-exist :create)
    (let* ((things-used (sort (loop for key being the hash-key of *type-hit-table* collect key) #'string<))
	   (classes-used (remove-if-not #'(lambda (x)
					    (member x (coerce (types (find-model :uml22)) 'list)
						    :key #'class-name :test #'string=))
					things-used))
	   (stereos-used (remove-if-not #'(lambda (x)
					    (member x (coerce (types (find-model :sysml)) 'list)
						    :key #'class-name :test #'string=))
					things-used))
	   (tcases '(:TC1 :TC2 :TC3 :TC3-Profile :TC4 :TC5 :TC6 :TC7 :TC8 :TC9 
		     :TC10 :TC11 :TC12a :TC12b :TC13 :tc14 :tc15 :tc16)))
      (format s "~%Report created ~A~2%" (now))
      ;; UML
      (format s "~%UML Classes Used~% ,~{~A,~}" tcases)
      (loop for c in classes-used do
	   (format s "~%~A, " c)
	   (loop for tc in tcases
	      if (member tc (gethash c *type-hit-table*)) 
	      do (format s "x,")
	      else do(format s ",")))
      ;; SysML
      (format s "~2%SysML Stereotypes Used~% ,~{~A,~}" tcases)
      (loop for c in stereos-used do
	   (format s "~%~A, " c)
	   (loop for tc in tcases
	      if (member tc (gethash c *type-hit-table*)) 
	      do (format s "x,")
	      else do(format s ",")))
      ;; UML
      (format s "~2%UML Classes Unused~% ~{~%~A~}"
	      (sort 
	       (set-difference 
		(loop for c across (types (find-model :uml22))
		   unless (or (enum-p c) (abstract-p c)) collect (string (class-name c)))
		classes-used
		:test #'string=)
	     #'string<))
      ;; SysML
      (format s "~2%SysML Stereotypes Unused~% ~{~%~A~}"
	      (sort 
	       (set-difference 
		(loop for c across (types (find-model :sysml))
		   unless (or (enum-p c) (abstract-p c)) collect (string (class-name c)))
		stereos-used
		:test #'string=)
	       #'string<)))
    (format s "~%")))
