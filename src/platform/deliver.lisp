
(in-package :cl-user)
#-LispWorks(error "This file is only valid in LispWorks")

;;; To use this file:
;;;  1. cd /local/lisp/pod-utils ; cvs commit -m "syseng release" .
;;;  2. cd ~/projects/expresso/source ; cvs commit -m "syseng release" .
;;;  3. cd to source directory
;;;  4. execute: 
;;;    /local/lib/LispWorks/xml-2008-12-16 -init platform/deliver
;;;    e:\local\win32\lisp\xml-5-0-1.exe -init e:/pdenno/projects/expresso/source/platform/deliver
;;; On syseng:
;;;  5. /etc/rc.d/mexico stop
;;;  6. cd ~/projects/expresso/source ; mv mexico.exe mexico-2008-mm-dd.exe
;;;; 7  (on local): scp mexico.exe syseng:/home/pdenno/projects/expresso/source/
;;;  6. cd /local/lisp/pod-utils ; cvs update -Pd .
;;;  7. cd ~/projects/expresso/source ; cvs update -Pd .
;;;  8. /etc/rc.d/mexico start
;;;
;;;     - 2006-04-05 : created from miv/platform/deliver.lisp

(load-all-patches)
(cd "~/projects/expresso/source/")
(push :mexico.exe *features*) ; but don't rely on it at compile time....
(load "load")	

#+mexico(defclass bnfp::vdl-prolog () ())  ; should have been defined in cl-xml

#+iface-http
(deliver 'project-http:mexico-start "mexico.exe" 1 ; POD Fix this!
       :interface		    nil
       :multiprocessing		    t
;       :keep-compiler               t     ;; 2008-08-19 2x speed up!
       :keep-lisp-reader            t     ;; I get msg about reading some motif thing!
       :keep-pretty-printer         t     ;; POD: not checked whether necessary.
       :keep-eval		    t     ;; bunch of stuff uses it. (not mine)
       :shake-shake-shake           t     ;; 30MB --> 21MB 
       :keep-package-manipulation   t     ;; Beijing ... but doesn't add 6MB, but something added 2.5MB
; Removed in LW 5.1 version
;       :packages-to-keep '("http://www.omg.org/MEXICO/Errors" 
;			   "http://www.omg.org/MEXICO/EXPRESS_v2" 
;			   "http://schema.omg.org/spec/UML/2.1.1"
;			   "http://schema.omg.org/spec/XMI/2.1"
;			   "http://www.omg.org/XMI") ;; POD that's not the correct name.
       :shake-externals             t
       :console                     :input
       :compact                     t
       :keep-debug-mode             :all  ;; Despite the name, seem to need this.
;      :keep-clos :meta-object-slots       ;; Saves 10MB! Requires fancy :classes-to-keep-effective-slots below.
       :keep-clos :full-dynamic-definition ;; needed now that using programmatic classes. Ugh! 26MB image!
       :keep-clos-object-printing   t
       :generic-function-collapse   nil
       :structure-packages-to-keep '(:tbnl :mofi) ; pod7 mofi was emm
       :classes-to-keep-effective-slots '(tbnl::request)
       :keep-documentation t
       :never-shake-packages '(:tbnl :mofi :tr) ; pod7 added mofi;
       :keep-conditions       :all) ;; So that conditions:stack-overflow can be caught. 

#+iface-cgtk
(deliver 'gui:gui "expresso.exe" 5
       :interface			nil
       :multiprocessing			t
       :keep-lisp-reader                t ; I get msg about reading some motif thing!
       :keep-pretty-printer             t
       :keep-structure-info             t
       :keep-eval			t   ;; it says I (cl-xml) use it, but do I? Yes.
       :shake-shake-shake               nil ;; 30MB --> 11MB, Works on MEXICO! Doesn't work on Expresso.
       :keep-package-manipulation       t   ;; KIF export-safe-symbols...
       :shake-externals                 t
       :compact                         t
       :console                         :input
;;; Now with problems with GTK:
;       :keep-debug-mode                 nil
;       :keep-clos-object-printing	nil
       :keep-debug-mode                 :all
       :keep-clos-object-printing	t
       :keep-modules                    t
       :keep-top-level                  t
       :keep-walker                     t
;;; End GTK mods.
       :condition-deletion-action	nil
       :keep-clos			t
       :keep-conditions			:all
       :keep-complex-numbers		nil
       :keep-documentation		nil
       :keep-lisp-reader		nil
       :keep-load-function		t
       :keep-macros			t
       :keep-package-manipulation	t
       :keep-structure-info		nil
       ;; Set :compact to t when :keep-debug-mode nil (save 4MB)
       :compact				nil
       :shake-shake-shake		t
       :shake-externals			nil
       :generic-function-collapse	nil)

(quit)


(defun tryme ()
  (loop for c across "'“T" collect (char-code c)))