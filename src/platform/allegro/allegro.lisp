;;; The two "make-executable*" functions below should probably be moved to
;;; a file that is specific to the platform they are used on.

#+Allegro
(defun make-executable ()
  (declare (special excl:*restart-init-function*
		    excl:*read-init-files*))
  (excl:chdir "/private/bin")
  (require :loop)
  (excl:gc t)
  (setf excl:*restart-init-function* #'restart-expresso)
  (setf excl:*read-init-files* nil)
  (format t "~% before...")
  (excl:dumplisp :name "expresso_210and203.dxl"
		 :ignore-command-line-arguments t)
  (format t "~% ...after"))


#+Allegro
(defun make-executable-50 ()
  (pushnew :EXPRESSO-COMMAND-LINE *features*)
  (format t "~% ---------------> building bin~a <-----------" (1+ *destination-directory-count*))
  (excl:generate-application 
   "expresso_210and203"			; application name
   (format nil "/private/expresso/bin~a/" ;destination directory
	   (incf *destination-directory-count*))
   '("/private/expresso/fast-load.lsp")	; input files
   :runtime :standard
   :restart-init-function 'restart-expresso
   :read-init-files nil
   :include-compiler nil))
