
;;; Author: Peter Denno, National Institute of Standards and Technology 
;;;         peter.denno@nist.gov
;;;
;;; Development of this software was funded by the United States Government,
;;; and is not subject to copyright.

;;; Purpose: Implement the UML/SysML Class Browser

(in-package :project-http)

(declaim (inline elip))
(defun elip (str &optional (max-len 18))
  "For STR 'this is fairly long' return 'this is...' where STR is chopped at MAX-LEN
   and terminated with elipsis, EXCEPT, return whole string if (+ 3(length STR)) < MAX-LEN."
  (let ((len (length str)))
    (if (<= len max-len)
	str
	(format nil "~A..." (subseq str 0 (- max-len 3))))))

(declaim (inline sysml-stereotype-p))
(defun sysml-stereotype-p (class-or-name)
  (let ((class (if (symbolp class-or-name) (find-class class-or-name) class-or-name)))
    (eql (find-model "SysML" :error-p nil) (mofi:of-model class))))


(let (memo)
  (defun uml-table ()
    "Create a HT of objects from all UMLs, indexed by ."
    (or memo
	(setf memo
	      (let ((umls (mofi:all-umls))
		    (ht (make-hash-table :test #'equal)))
		(loop for c in (loop for uml in umls 
				  append (loop for c across (mofi:types (mofi:find-model uml)) collect c))
		   for name = (string (class-name c))
		   for pos = (position (mofi:model-name (mofi:of-model c)) umls)
		   do (if-bind (vec (gethash name ht))
			       (setf (svref vec pos) c)
			       (setf (gethash name ht) 
				     (let ((vec (make-array 3 :initial-element "-")))
				       (setf (svref vec pos) c) vec))))
		ht)))))

(let (memo)
  (defun upr-table ()
    "Create a HT of objects from all UMLs, indexed by ."
    (or memo
	(setf memo
	      (let ((uprs '(:upr :upra))
		    (ht (make-hash-table :test #'equal)))
		(loop for c in (loop for upr in uprs 
				  append (loop for c across (mofi:types (mofi:find-model upr)) collect c))
		   for name = (string (class-name c))
		   for pos = (position (mofi:model-name (mofi:of-model c)) uprs)
		   do (if-bind (vec (gethash name ht))
			       (setf (svref vec pos) c)
			       (setf (gethash name ht) 
				     (let ((vec (make-array 3 :initial-element "-")))
				       (setf (svref vec pos) c) vec))))
	  ht)))))



(defmemo model-classes-sorted (model)
    "Returns a sequence of the model MODEL classes sorted."
    (sort (mofi:types (mofi:find-model model))
	  #'string< :key #'class-name))

(defun url-explanation (condition-class-name)
  (format nil "/se-interop/sysml/explanation?concept=~A" condition-class-name))

;;;/se-interop/tools/browse-upr
(defun upr-class-list-dsp ()
  "Display JS package structure and (at bottom of page) lists of classes."
  (app-page-wrapper :sei (:view "UPR Class Browser" :js-tree t
			  :menu-pos '(:root :tools :sysml :mof-browser))
      (:h1 "UPR Class Browser")
      (:h2 "UPR Stereotypes and Types")
      (let* ((ht (upr-table))
	     (rows (sort (loop for k being the hash-key of ht collect k) #'string<))
	     (result ""))
	(str (format nil "<table border='0' cellpadding='0' cellspacing='2'>~A~A</table>"
		     (format nil "<tr>~{<th>~A</th>~}</tr>"
			     (mapcar #'(lambda (m) (car (nicknames (find-model m)))) 
				     '(:upr :upra)))
		     (loop for r in rows do
			  (strcat* result 
				   (format nil "<tr>~{<td>~A</td>~}</tr>"
					   (loop for e across (gethash r ht) 
					      collect (if (typep e 'class) (mofb:url-class-browser e) e))))
			  finally (return result)))))))

;;;/se-interop/tools/browse-models
(defun class-list-dsp ()
  "Display JS package structure and (at bottom of page) lists of classes."
  (flet ((string-of-classes (class-list)
	   (let ((result ""))
	     (loop for c across class-list  do
		  (strcat* result (mofb:url-class-browser c) "<br/>")
		finally (return result)))))
    (app-page-wrapper :sei (:view "UML / SysML Class Browser" :js-tree t
				  :menu-pos '(:root :tools :sysml :mof-browser))
      (:h1 "Class Browser")
      (:h2 "SysML Stereotypes and Types")
      (str (string-of-classes (model-classes-sorted :sysml12)))
      (:h2 "UML Types")
      (let* ((ht (uml-table))
	     (rows (sort (loop for k being the hash-key of ht collect k) #'string<))
	     (result ""))
	(str (format nil "<table border='0' cellpadding='0' cellspacing='2'>~A~A</table>"
		     (format nil "<tr>~{<th>~A</th>~}</tr>"
			     (mapcar #'(lambda (m) (car (nicknames (find-model m)))) 
				     (mofi:all-umls)))
		     (loop for r in rows do
			  (strcat* result 
				   (format nil "<tr>~{<td>~A</td>~}</tr>"
					   (loop for e across (gethash r ht) 
					      collect (if (typep e 'class) (mofb:url-class-browser e) e))))
			  finally (return result))))))))

(defun build-package-hierarchy (pack)
  "Generate JS for package hierarchy. Not called for leaves"
  (let ((name (mofi:name pack)))
    (with-html-output (*standard-output*)
	(:div :class "trigger" 
	      :onclick (str (format nil "showBranch(\"branch-~A\");swapFolder(\"folder-~A\")"  name name))
	      (:img :src "/se-interop/image/down-arrow.png" :border "0" :id (str (format nil "folder-~A" name)))
	      (str (strcat " " (string name))))
	(:span :class "branch" :id (str (format nil "branch-~A" name))
	       ;; Individual non-package objects (mofb links)
	       (loop for c in (sort
			       (remove-if #'(lambda (x) (typep x 'mofi:mm-package-mo))
					  (mofi::owned-element pack))
			       #'string< :key #'(lambda (x) (string (class-name x)))) do
		    (htm (str (mofb:url-class-browser c)) (:br)))
	       ;; package objects branches
	       (loop for p in (remove-if-not #'(lambda (x) (typep x 'mofi:mm-package-mo))
					     (mofi::owned-element pack))
		  do (build-package-hierarchy p))))))

		 

