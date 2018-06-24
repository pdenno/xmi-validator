;;; -*- Mode: lisp; Syntax: ansi-common-lisp; Base: 10; Package: de.setf.utility.implementation; -*-

#|
<DOCUMENTATION>
 <DESCRIPTION>
  <p>
  a definition and execution mechanism for simple tests.
  each test step corresponds to a named leaf in a test tree and comprises its path name,
  a function to perform and a predicate to apply to that functions result. a test definition
  supplies the function as an s-expression form and the predicate either as an s-expression form
  to be comapred to the result, or a function name or a lambda expression to be applied to the result.</p>
  <p>
  the parameter <code>*test-mode*</code> species, as a keyword list, whether the tests are stored performed immediately
  <code>(:execute)</code>, stored only <code>(:define)</code>, or ignored <code>()</code>.
  definition and execution modes may be combined.</p>  
  </DESCRIPTION>
 <COPYRIGHT YEAR='2002' AUTHOR='james adam anderson' MARK='(C)'
            href='file://xml/sysdcl.lisp' />
 <DELTA DATE='20020601'>new</DELTA>
 <DELTA DATE='20020601'>path/hashtable-based rather than tree-based</DELTA>
 </DOCUMENTATION>
|#

(in-package :de.setf.utility.implementation)

(modPackage :de.setf.utility.test
  (:use-only )
  (:use-by :de.setf.utility.implementation)
  (:export
   :*class.test-unit*
   :*test-output*
   :deftest
   :deftests
   :execute-test
   :execute-tests
   :find-test
   :intern-test
   :make-test-unit
   :test-unit
   :unintern-test
   ))

(ensure-package :de.setf.utility.string :if-does-not-exist :error)


(defParameter *class.test-unit* 'test-unit)

(defParameter *test-verbose* nil)

(defVar *tests* (make-hash-table :test 'equal)
  "s-expression test tree")

(defParameter *test-output* nil)

(defun test-output (&key (window-title "Test Log" window-title-p))
  #-mcl (declare (ignore window-title))
  (flet ((new-test-output ()
           #-digitool *trace-output*
           #+digitool (make-instance 'fred-window :scratch-p t :window-title window-title)))
    (cond #+digitool ((typep *test-output* 'fred-window)
                      (cond ((wptr *test-output*)
                             (when window-title-p (set-window-title *test-output* window-title))
                             *test-output*)
                            (t
                             (setf *test-output* (new-test-output)))))
          ((and (typep *test-output* 'stream) (open-stream-p *test-output*))
           *test-output*)
          (t
           (setq *test-output* (new-test-output))))))
 
   

(defClass test-unit ()
  ((path :initarg :path :reader test-unit-path)
   (form :initarg :form :reader test-unit-form)
   (function :initarg :function :reader test-unit-function)
   (documentation :initarg :documentation :initform nil :reader test-unit-documentation)
   (predicate-function :initarg :predicate-function :reader test-unit-predicate-function)
   (predicate-form :initarg :predicate-form :reader test-unit-predicate-form)
   (predicate :initarg :predicate :reader test-unit-predicate)
   (prerequisites :initarg :prerequisites :initform nil :reader test-unit-prerequisites)
   (status :initform nil :accessor test-unit-status)
   (verbose :initarg :verbose :initform nil :reader test-unit-verbose)))

(defmethod print-object ((instance test-unit) stream)
  (print-unreadable-object (instance stream :type t)
    (format stream "\"~{~a~^:~}\" " (test-unit-path instance))))


(defMethod test-unit-path ((path string))
  (test-unit-path (split-string path " :/")))

(defMethod test-unit-path ((path cons))
  (mapcar #'(lambda (step)
              (cond ((string-equal step "*") (setf (first path) :wild))
                    ((string-equal step "**") (setf (first path) :wild-inferiors))
                    ((member step '(:wild :wild-inferiors)) step)
                    ((symbolp step) (string step))
                    ((stringp step) (if (find-if #'upper-case-p step) (string-downcase step) step))
                    (t (error "illegal path step: ~s." step))))
          path))


(defun walk-prerequisites (unit function &key (mode :walk-call) (self-p nil) (exclude nil))
  (labels ((prerequisites (unit)
             (mapcar #'(lambda (path) (or (find-tests path)
                                          (error "test not found: ~s." path)))
                     (test-unit-prerequisites unit)))
           (walk (unit)
             (etypecase unit
               (list (map nil #'walk unit))
               (test-unit
                (unless (find unit exclude)
                  (push unit exclude)
                  (ecase mode
                    (:walk-call (map nil #'walk (prerequisites unit)) (funcall function unit))
                    (:call-walk (funcall function unit) (map nil #'walk (prerequisites unit)))))))))
    (when self-p (walk unit))
    (map nil #'walk (prerequisites unit))))

(defun is-prerequisite (unit1 unit2)
  (unless (eq unit1 unit2)
    (walk-prerequisites unit2 #'(lambda (prerequisite) (when (eq unit1 prerequisite) (return-from is-prerequisite t)))
                        :mode :call-walk)))

(defGeneric unit-path-lessp (path1 path2)
  (:method ((path1 null) (path2 t)) t)
  (:method ((path1 null) (path2 null)) nil)
  (:method ((path1 t) (path2 null)) nil)
  (:method ((path1 string) (path2 string)) (string-lessp path1 path2))
  (:method ((path1 cons) (path2 cons))
           (or (unit-path-lessp (first path1) (first path2))
               (unit-path-lessp (rest path1) (rest path2))))
  (:method ((path1 cons) (path2 string))
           (unit-path-lessp (first path1) path2))
  (:method ((path1 string) (path2 cons))
           (unit-path-lessp path1 (first path2))))

(defun wild-unit-path-p (path)
  (and (consp path) (or (find :wild path) (find :wild-inferiors path))))

(defGeneric unit-path-match-p (path path-pattern)
  (:method ((path t) (path-pattern t)) nil)
  (:method ((path null) (path-pattern null)) t)
  (:method ((path null) (path-pattern (eql :wild))) nil)
  (:method ((path string) (path-pattern string)) (string-equal path path-pattern))
  (:method ((path symbol) (path-pattern symbol)) (string-equal path path-pattern))
  (:method ((path string) (path-pattern (eql :wild))) t)
  (:method ((path symbol) (path-pattern (eql :wild))) t)
  (:method ((path null) (path-pattern cons)) (equal path-pattern '(:wild-inferiors)))
  (:method ((path cons) (path-pattern cons))
           (or (and (unit-path-match-p (first path) (first path-pattern))
                    (unit-path-match-p (rest path) (rest path-pattern)))
               (when (eq (first path-pattern) :wild-inferiors)
                 (or (unit-path-match-p path (rest path-pattern))
                     (unit-path-match-p (rest path) path-pattern))))))
          

(defGeneric find-tests (path-to-match)
  (:method ((path-to-match cons))
           (when (find-if #'(lambda (step)
                              (if (stringp step)
                                (find-if #'upper-case-p step)
                                (not (member step '(:wild :wild-inferiors)))))
                          path-to-match)
             (setf path-to-match (test-unit-path path-to-match)))
           (flet ((execute-before (u1 u2)
                    (or (is-prerequisite u1 u2)
                        (unit-path-lessp (test-unit-path u1) (test-unit-path u2)))))
             (or (if (wild-unit-path-p path-to-match)
                   (let ((units nil))
                     (maphash #'(lambda (path unit)
                                  (when (unit-path-match-p path path-to-match) (push unit units)))
                              *tests*)
                     (if (rest units)
                       (sort units #'execute-before)
                       units))
                   (let ((unit (gethash path-to-match *tests*)))
                     (when unit (list unit))))
                 (error "test not found: ~s." path-to-match))))
  (:method ((path-to-match string))
           (find-tests (test-unit-path path-to-match))))


(defGeneric set-tests (path-to-set unit)
  (:method ((path string) (unit t))
           (set-tests (test-unit-path path) unit))
  (:method ((path null) (unit t))
           unit)
  (:method ((path-to-set cons) (unit null))
           (if (wild-unit-path-p path-to-set)
             (maphash #'(lambda (path old-unit)
                          (declare (ignore old-unit))
                          (when (unit-path-match-p path path-to-set)
                            (remhash path *tests*)))
                      *tests*)
             (remhash (test-unit-path path-to-set) *tests*))
           nil)
  (:method ((path-to-set cons) (unit test-unit))
           (if (wild-unit-path-p path-to-set)
             (error "wild path provided for test instance: ~s: ~s." path-to-set unit)
             (setf (gethash (test-unit-path path-to-set) *tests*) unit))))

(defGeneric intern-test (test)
  (:method ((test test-unit)) (set-tests (test-unit-path test) test))
  (:method ((test null)) nil))

(defun unintern-test (test) (set-tests (test-unit-path test) nil))

(defun make-test-unit (&rest args)
  (when *class.test-unit*
    (apply #'make-instance *class.test-unit* args)))


(defun clear-tests () (clrhash *tests*))

(defMacro deftests (&rest test-trees)
  (let ((tests nil) (*path* nil) (eval-when '(:execute)))
    (declare (special *path*))
    (loop (unless (keywordp (first test-trees)) (return))
          (ecase (pop test-trees)
            (:eval-when (etypecase (setf eval-when (pop test-trees))
                          (keyword (setf eval-when (ecase eval-when (:load '(:load)) (:execute '(:execute)))))
                          (cons (assert (null (set-difference eval-when '(:load :execute)))))))))
    (flet ((test-error (tree)
             (error "malformed test tree: ~s." tree)))
      (labels ((walk-test-tree (tree)
                 (destructuring-bind (step &rest rest &aux (*path* *path*)  unit-path)
                                     tree
                   (declare (special *path*))
                   (cond ((null rest)
                          (test-error tree))
                         ((consp (first rest))
                          (push (string step) *path*)
                          (map nil #'walk-test-tree rest))
                         ((keywordp (first rest))
                          ;; a test leaf
                          (destructuring-bind (&key form documentation value predicate type
                                                    prerequisite (prerequisites (when prerequisite (list prerequisite)))
                                                    (verbose  *test-verbose*)
                                                    &aux function predicate-function)
                                              rest
                            (unless (>= 1 (count-if #'identity (list value predicate type)))
                              (test-error tree))
                            (typecase form
                              (cons
                               (setf function `(function (lambda () ,form))))
                              ((and symbol (not null))
                               (setf function `(function form)))
                              (t
                               (test-error tree)))
                            (typecase predicate
                              (null (setf predicate-function (if value
                                                               `(function (lambda (result) (equalp result ,value)))
                                                               (if type
                                                                 `(function (lambda (result) (typep result ',type)))
                                                                 '(function identity)))))
                              (symbol
                               (setf predicate-function `(function ,predicate)))
                              (cons
                               (unless (eq (first predicate) 'lambda)
                                 (test-error tree))
                               (setf predicate-function `(function ,predicate)))
                              (t
                               (test-error tree)))
                            (etypecase step
                              (list (setf *path* (append step *path*)))
                              ((or string symbol)
                               (push (string step) *path*)
                               (setf unit-path (reverse *path*))))
                            (push (list :form `(quote ,form)
                                        :path (when unit-path `(quote ,unit-path))
                                        :verbose `(quote ,verbose)
                                        :function function
                                        :documentation documentation
                                        :predicate-function predicate-function
                                        :predicate-form (cond (predicate `'(function ,predicate))
                                                              (value `'(equalp ,value))
                                                              (type `'(typep ,type))
                                                              (t t))
                                        :prerequisites `(quote ,(mapcar #'test-unit-path prerequisites)))
                                  tests)))
                         (t
                          (test-error tree))))))
        (map nil #'walk-test-tree test-trees)))
    `(progn
       ,@(mapcar #'(lambda (form)
                     (destructuring-bind (&key path &allow-other-keys) form
                       (setf form (cons 'make-test-unit form))
                       (when (and (find :execute eval-when) path)
                         (setf form `(intern-test ,form)))
                       (when (or (find :load eval-when) (null path))
                         (setf form `(execute-test ,form))))
                     form)
                 tests))))
     

(defMacro deftest (path form &rest options)
  (etypecase path
    (cons )
    (string (setf path (test-unit-path path)))
    (symbol (setf path (test-unit-path (string path)))))
  `(deftests (,path :form ,form ,@options)))

(defGeneric execute-test (unit &key &allow-other-keys)
  (:method ((path cons) &rest args &key (prerequisites t) &aux (units (find-tests path)) (specified-units (copy-list units)))
           (when prerequisites
             (map nil #'(lambda (unit) (walk-prerequisites unit #'(lambda (unit) (push unit units)) :exclude units)) units))
           (map nil #'(lambda (unit) (apply #'execute-test unit :force-p (or (eq prerequisites :force) (find unit specified-units)) args))
                (sort units #'is-prerequisite)))
  (:method ((path string) &rest args)
           (apply #'execute-test (test-unit-path path) args))
  (:method ((path symbol) &rest args)
           (apply #'execute-test (string path) args))
  (:method ((unit null) &key &allow-other-keys)
           nil)
  (:method ((unit test-unit) &key ((:verbose *test-verbose*) (or (test-unit-verbose unit) *test-verbose*)) (force-p nil)&aux result)
           (handler-bind ((error (lambda (condition)
                                   (warn "signaled condition: ~a." condition)
                                   (return-from execute-test condition))))
             (cond ((and (not force-p) (eq (test-unit-status unit) :passed))
                    (when *test-verbose*
                      (format *trace-output* "~%~s: skipped." (test-unit-path unit))))
                   (t
                    (format *trace-output* "~%~s: " (or (test-unit-path unit) (test-unit-form unit)))
                    (setf (test-unit-status unit) nil)
                    (setf result (handler-case (funcall (test-unit-function unit))
                                   (error (condition) condition)))
                    (cond ((funcall (test-unit-predicate-function unit) result)
                           (format *trace-output* "passed~:[.~; with result:~% ~s~]" *test-verbose* result)
                           (setf (test-unit-status unit) :passed)
                           t)
                          (t
                           (format *trace-output* "failed.")
                           (setf (test-unit-status unit) :failed)
                           (when *test-verbose*
                             (let ((stream (test-output :window-title (write-to-string (test-unit-path unit)))))
                               (format stream "~%test failed: ~s" (test-unit-path unit))
                               (format stream "~@[~%----------------------------------------~%~a~%----------------------------------------~]"
                                       (test-unit-documentation unit))
                               (format stream
                                       "~%~%form: ~s~%produced: ~:W~%~@[expected: ~:W~]~@[predicate: ~s~]"
                                       (test-unit-form unit)
                                       result
                                       (test-unit-predicate-form unit)
                                       (test-unit-predicate unit))
                               (terpri stream)
                               (finish-output stream)))
                           nil)))))))

(defun execute-tests (&rest args)
  (mapcar #'execute-test args))

#|
(deftests
  (context1
   (test1 :form (list 1 2) :value '(1 2))
   (test2 :form (symbol-name '|asdf|) :value "asdf"))
  (fails
   (test2 :form (symbol-name 'asdf) :value "asdfq" :prerequisites ("context1:test2"))))
;(trace unit-path-match-p find-tests wild-unit-path-p test-unit-path execute-test) (untrace)
(find-tests '(context1 :wild-inferiors))
(execute-tests '(context1 :wild-inferiors))
(execute-tests "FAILS:TEST2")
(execute-test "fails:test2" :prerequisites nil)
(execute-test "fails:test2" :prerequisites :force)
(clear-tests )
|#

:EOF
