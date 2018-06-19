
(in-package :cl-user)
#-LispWorks(error "This file is only valid in LispWorks")

;;; To use this file:
;;;  1. cd to source directory
;;;  2. execute: 
;;;               /local/LispWorks/bin/xml-tty-2005-04-16 -init platform/modlisp-deliver
;;;               e:/local/win32/lisp/tty-xml-4406.exe -init platform/deliver
;;;
;;;     - 2006-04-05 : created from miv/platform/deliver.lisp

(load-all-patches)
(load "/local/lisp/mod_lisp/mod-lisp.lisp")	

(dv::deliver 'cl-user::start-apache-listener "modlisp-test.exe" 5
       :interface			nil
       :multiprocessing			t
       :keep-lisp-reader                t ; I get msg about reading some motif thing!
       :keep-pretty-printer             t
       :keep-structure-info             t
       :keep-eval			t   ;; it says I (cl-xml) use it, but do I? Yes.
       :shake-shake-shake               nil ;; 30MB --> 16MB, but it doesn't work! >= 2 --> t
       :keep-package-manipulation       t   ;; KIF export-safe-symbols...
       :shake-externals                 nil
       :compact                         t
       :console                         :input
       :keep-debug-mode                 nil
       )


(quit)
