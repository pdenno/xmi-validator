;;; -*- Package: de.setf.utility.implementation; -*-

(in-package :de.setf.utility.implementation)

(modPackage :setf.conditions
  (:nicknames :de.setf.utility.conditions)
  (:use-only )
  (:use-by :de.setf.utility.implementation)
  (:export
   :continuable-error
   :report-condition
   :initialize-condition
   :make-initialized-condition
   :simple-continuable-condition
   :continue-format-control
   :continue-format-arguments
   :condition-continue-format-control
   :condition-continue-format-arguments
   :condition-report
   )
  (:documentation
   "the package :setf.conditions augments the ANSI condition system with implementations for report and instantiation protocols."))

;; patch restrictive condition implementations

(let ((def (fdefinition 'SIMPLE-CONDITION-FORMAT-ARGUMENTS)))
  (unless (typep def 'generic-function)
    (warn "redefining SIMPLE-CONDITION-FORMAT-ARGUMENTS")
    (fmakunbound 'simple-condition-format-arguments)
    (defGeneric SIMPLE-CONDITION-FORMAT-ARGUMENTS (condition)
      (:method ((condition t)) (funcall def condition)))))

(when (fboundp 'SIMPLE-CONDITION-FORMAT-CONTROL)
  (let ((def (fdefinition 'SIMPLE-CONDITION-FORMAT-CONTROL)))
    (unless (typep def 'generic-function)
      (warn "redefining SIMPLE-CONDITION-FORMAT-CONTROL")
      (fmakunbound 'simple-condition-format-control)
      (defGeneric SIMPLE-CONDITION-FORMAT-CONTROL (condition)
	(:method ((condition t)) (funcall def condition))))))

(when (fboundp 'SIMPLE-CONDITION-FORMAT-STRING)
  (let ((def (fdefinition 'SIMPLE-CONDITION-FORMAT-STRING)))
    (unless (typep def 'generic-function)
      (warn "redefining SIMPLE-CONDITION-FORMAT-STRING")
      (fmakunbound 'simple-condition-format-string)
      (defGeneric SIMPLE-CONDITION-FORMAT-string (condition)
	(:method ((condition t)) (funcall def condition))))))


;;

(define-condition continuable-error (error)
  ((continue-format-control :initform "attempt to continue."
                           :initarg :continue-format-control
                           :reader condition-continue-format-control)
   (continue-format-arguments :initform nil
                              :initarg :continue-format-arguments
                              :reader condition-continue-format-arguments)))

(define-method-combination condition-report (&key (fresh-line-p t)) 
                           ((prefix (:prefix))
                            (primary () :required t)
                            (suffix (:suffix)))
  (:arguments condition stream)
  "combine primary methods as a progn with intervening calls to fresh-line. :prefix and :suffix methods are combined with allowance for call-next method, with order most-specific-first and least-specific-first, respectively."
  (declare (ignore condition))
  (let ((form (cons 'progn
                    (reduce #'nconc
                            (mapcar #'(lambda (method)
                                        (if fresh-line-p
                                          (list `(fresh-line ,stream)
                                                `(call-method ,method ()))
                                          `((call-method ,method ()))))
                                    primary)))))
    (when prefix
      (setf form `(progn (call-method ,(first prefix) ,(rest prefix))
                         ,form)))
    (when suffix
      (setf suffix (nreverse suffix))
      (setf form
            `(multiple-value-prog1 ,form
               (call-method ,(first suffix) ,(rest suffix)))))
    form))
                           
(defGeneric report-condition (condition stream)
  (:documentation
   "the function report-condition accepts two arguments, a condition and an output stream. it is intended to be specified as the :report option to define-condition where it provides an specializable protocol for formatting condition descriptions. its method combination condition-report, for which the primary are combined as a progn with intervening calls to fresh-line. each individual method should format those properties specific to the respective condition type only. the base method for simple-condition applies the function simple-condition-format-control to the condition, and if the value is not null, it applies format to the control value and the result of applying simple-condition-format-arguments to the condition.")
  (:method-combination condition-report)
  (:method :prefix ((condition condition) stream)
           (format stream "~a signaled:" (type-of condition)))
  (:method ((condition simple-condition) stream)
           (let ((control (simple-condition-format-control condition)))
             (when control
               (apply #'format stream control
                      (simple-condition-format-arguments condition))))
           condition))

(defGeneric initialize-condition (condition &rest args)
  (:documentation
   "the generic function initialize-condition is called by make-initialized-condition to initialize newly made conditions. the function initialize-condition is called with one argument, the new condition. note that condition instances themselves are not portably mutable; the initialization protocol is intended to afford an opportnity to augment delegated mutable state in connection with the condition.")
  (:method ((condition condition) &key &allow-other-keys)
           condition))

(defGeneric make-initialized-condition (condition-designator &rest args)
  (:documentation
   "the generic function make-initialized-condition creates and initializes a new condition. it accepts as arguments a condition designator and a list of alternating initialization argument names and values. the standard methods first resolve the designator to a condition class, delegate the instantiation to the function make-condition, apply initialize-condition to the new condition, and finally return it.")
  (:method ((designator class) &rest args)
           (apply #'make-initialized-condition (class-name designator) args))
  (:method ((designator condition) &rest args)
           "given a condition instance, treat it as a prototype by delegating to its type."
           ; use the class name rather than the class, in case make-condition is not conform.
           (apply #'make-initialized-condition (type-of designator) args))
  (:method ((designator symbol) &rest args &aux condition)
           (declare (dynamic-extent args))
           (setf condition (apply #'make-condition designator args))
           (initialize-condition condition)
           condition))

#+(and mcl digitool)
(unless (eql (rest (assoc 'define-condition *FRED-SPECIAL-INDENT-ALIST*)) 2)
  (push (cons 'define-condition 2) *FRED-SPECIAL-INDENT-ALIST*))



#|
(define-condition test-condition (simple-error)
                  ((prop1 :initarg :prop1 :reader test-condition-prop1))
  (:report report-condition)
  (:default-initargs :format-control "static error message for test condition"))

(define-condition test-condition+ (test-condition)
                  ((prop2 :initarg :prop2 :reader test-condition-prop2))
  (:default-initargs :format-control "static error message for test condition +"))

(defMethod report-condition ((condition test-condition) stream)
  (format stream "test condition aspects: ~a." (test-condition-prop1 condition)))

(defMethod report-condition :prefix ((condition test-condition) stream)
  (format stream "(test prefix) ")
  (call-next-method))

(defMethod report-condition ((condition test-condition+) stream)
  (format stream "test condition + aspects: ~a." (test-condition-prop2 condition)))

(defMethod report-condition :prefix ((condition test-condition+) stream)
  (format stream "(test+ prefix)"))

(error 'test-condition+ :prop1 1 :prop2 2)
(error (make-initialized-condition 'test-condition :prop1 1))
(typep (make-condition 'test-condition) (find-class 'test-condition))
(typep (make-condition 'test-condition) 'test-condition)
(typep (make-condition (find-class 'test-condition)) 'test-condition)

|#
:EOF
