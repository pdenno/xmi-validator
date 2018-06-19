    (advance-stream stream |defined-at|)
(declaim (inline advance-stream set-written written-p))
(defun advance-stream (stream pos)
  (when (numberp pos)
    (loop for i from 1 to (- pos *line-number*) do (format stream "~%"))
    (setf *line-number* pos)))



(obj-only ; POD there will be more to this...
 (unless (typep odm:|RDFobject| 'odm:|BlankNode|) ; just guessing.
   (odm2ttl odm:|RDFobject| nil)))


(defun uses-as-object (node)
  "Return a statement which NODE (typically a blank node) is used as the object
   of a triple, and that triple has not yet been written."
  (find-if #'(lambda (x) (and 
			  (typep x 'odm:|Triple|)
			  (eql (odm:%r-d-fobject x) node) 
			  (not (written-p x))))
	   *stmts*))

(defun blank-node-prop-list (subject)
  "Return Triples that have SUBJECT as their subject and have not yet been written."
  (loop for s in *stmts*
       when (and 
	     (typep s 'odm:|Triple|)
	     (eql subject (odm:%r-d-fsubject s))
	     (not (written-p s)))
       collect s))

