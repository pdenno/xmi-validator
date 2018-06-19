(in-package :XPATH)

(defmacro def-xpath-string-function (name (&rest parameters) (&optional protect-nodes) &body body)
  (let ((add-list))
    (when (not protect-nodes)
      (loop for n in parameters do	   
	   (push `(when (and (not (stringp ,n)) (not (listp ,n)))
		    (setf ,n (elt (xqdm:children (elt ,n 0)) 0))) add-list)))
    `(defun ,name ,parameters  
       ,@add-list
       ,@body)))

(defun |op:numeric-add| (num1 num2)
  (xpath-+ num1 num2))

(defun |op:numeric-subtract| (num1 num2)
  (xpath-- num1 num2))

(defun |op:numeric-multiply| (num1 num2)
  (xpath-* num1 num2))

(defun |op:numeric-divide| (num1 num2)
  (xpath-/ num1 num2))

(defun |op:numeric-integer-divide| (num1 num2)
  (xpath-idiv num1 num2))

(defun |op:numeric-mod| (num1 num2)
  (xpath-mod num1 num2))

(defun |op:numeric-unary-plus| (num)
  (+ num))

(defun |op:numeric-unary-minus| (num)
  (- num))

(defun |op:numeric-equal| (num1 num2)
  (xpath-eq num1 num2))

(defun |op:numeric-less-than| (num1 num2)
  (xpath-< num1 num2))

(defun |op:numeric-greater-than| (num1 num2)
  (xpath-> num1 num2))

(defun |fn:abs| (num)
  (abs num))

(defun |fn:ceiling| (num)
  (ceiling num))

(defun |fn:floor| (num)
  (floor num))

(defun |fn:round| (num)
  (round num))

(defun |fn:node-name| (arg)
  (xqdm:name arg))

(defun |fn:string| (arg)
  (format nil "~A" arg))

(defun |fn:concat| (string1 &rest strings) ()
  (apply #'concatenate 'string (append (list string1) strings)))

(def-xpath-string-function |fn:string-join| (strings seperator) ()
  (let ((plus-string ""))
    (dolist (n strings)
      (setf plus-string (concatenate 'string plus-string n seperator)))
  (subseq plus-string 0 (- (length plus-string) (length seperator)))))

(def-xpath-string-function |fn:substring| (string start &optional length) (t)
  (decf start)
  (if (not length)
      (setf length (- (length string) start)))
  (subseq string start (+ start length)))

(def-xpath-string-function |fn:string-length| (string) ()
  (length string))

(def-xpath-string-function |fn:upper-case| (string) ()
  (string-upcase string))

(def-xpath-string-function |fn:lower-case| (string) ()
  (string-downcase string))

(def-xpath-string-function |fn:contains| (string part) ()
  (search part string))

(def-xpath-string-function |fn:starts-with| (string part) ()
  (if (string= (subseq string 0 (length part)) part)
      t
      nil))

(def-xpath-string-function |fn:ends-with| (string part) ()
  (if (string= (subseq string (- (length string) (length part))) part)
      t
      nil))

(def-xpath-string-function |fn:substring-before| (string part) ()
  (subseq string 0 (search part string)))

(def-xpath-string-function |fn:substring-after| (string part) ()
  (subseq string (+ (search part string) 1)))

(defun |op:boolean-equal| (b1 b2)
  (eql b1 b2))

(defun |op:boolean-less-than| (b1 b2)
  (and (not b1) b2))

(defun |op:boolean-greater-than| (b1 b2)
  (and b1 (not b2)))

(defun |op:concatenate| (seq1 seq2)
  (append seq1 seq2))

(defun |fn:index-of| (seqParem srchParem)
  (let ((match-list))
    (dotimes (n (length seqParem))
      (when (xpath-eq (elt seqParem n) srchParem nil)
	(setf match-list (append match-list (list (+ n 1))))))
    (if (> (length match-list) 1)
	match-list
	(car match-list))))      

(defun |fn:distinct-values| (arg)
  (let (new-list
	unique)
    (dolist (i arg)
      (setf unique t)
      (dolist (n new-list)
	(when (xpath-eq i n nil)
	  (setf unique nil)))
      (when unique
	(setf new-list (append new-list (list i)))))
    new-list))

(defun |fn:insert-before| (target position inserts)
  (let (new-list)
    (when (< position 1)
      (if (listp inserts)
	    (setf new-list (append new-list inserts))
	    (setf new-list (append new-list (list inserts)))))
    (dotimes (n (length target))
      (when (= (+ n 1) position)
	(if (listp inserts)
	    (setf new-list (append new-list inserts))       
	    (setf new-list (append new-list (list inserts)))))
      (setf new-list (append new-list (list (elt target n)))))
    (when (> position (length target))
      (if (listp inserts)
	  (setf new-list (append new-list inserts))       
	  (setf new-list (append new-list (list inserts)))))
    new-list))

(defun |fn:remove| (target position)
  (let (new-list)
    (dotimes (n (length target))
      (unless (= (+ n 1) position)
	(setf new-list (append new-list (list (elt target n))))))
     new-list))

(defun |fn:reverse| (arg)
  (reverse arg))

(defun |fn:subsequence| (sourceSeq start &optional length) ()
  (decf start)
  (if (< start 0)
      (setf start 0))
  (if (> start (length sourceSeq))
      (setf start (length sourceSeq)))
  (if (not length)
      (setf length (- (length sourceSeq) start)))
  (if (>= (+ start length -1) (length sourceSeq))
      (setf length (- (length sourceSeq) start)))
  (let (new-list)
    (loop for n from start to (+ start length -1) do    
	 (setf new-list (append new-list (list (elt sourceSeq n)))))
    new-list))

(defun |fn:zero-or-one| (arg)
  (cond ((not (listp arg)) arg)
	((not arg) arg)
	((= (length arg) 1) arg)
	(t (error "err:FORG0003, fn:zero-or-one called with a sequence containing more than one item."))))

(defun |fn:one-or-more| (arg)
  (cond ((not (listp arg)) arg)
	((>= (length arg) 1) arg)
	(t (error "err:FORG0004, fn:one-or-more called with a sequence containing no items."))))

(defun |fn:exactly-one| (arg)
  (cond ((not (listp arg)) arg)
	((= (length arg) 1) arg)
	(t (error "err:FORG0005, fn:exactly-one called with a sequence containing zero or more than one item."))))

(defun |fn:avg| (arg)
  (let ((sum 0))
    (dolist (n arg)
      (incf sum n))
    (/ sum (length arg))))

(defun |fn:max| (arg) ;Will Only work for numbers not any strings
  (when arg 
    (let ((max (elt arg 0)))
      (dolist (n arg)
	(if (> n max) (setf max n)))
      max)))

(defun |fn:min| (arg) ;Will Only work for numbers not any strings
  (when arg 
    (let ((min (elt arg 0)))
      (dolist (n arg)
	(if (< n min) (setf min n)))
      min)))

(defun |fn:sum| (arg)
  (let ((sum 0))
    (dolist (n arg)
      (incf sum n))
    sum))

(defun |fn:not| (val)
  (not val))

(defun |fn:position| ()
  *context-position*)

(defun |fn:empty| (val)
  (if val nil t))

(defun |fn:exists| (val)
  (if val t nil))

(defun |fn:last| ()
  *context-size*)



