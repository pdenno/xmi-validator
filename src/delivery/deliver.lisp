
(in-package :cl-user)
#-LispWorks(error "This file is only valid in LispWorks")

;;; IN A CYGWIN SHELL: Remove win32 .ofasl files with shell script: c:/users/pdenno/projects/sei/bin/rmfsl-win32
;;; scp ~/validator.zip syseng:/home/pdenno/projects/sei/source/iface/http/static/ 

;;; IF BUILDING FOR WIN32:
;;; (1) cd /cygdrive/c/users/pdenno/projects/source/sei ; cvs update -d -P . 
;;; (2) bin/rmfsl-win32
;;; (3) cd /cygdrive/c/local/lisp/pod-utils ; cvs update -d -P . 
;;; (4) uncomment (push :home *features*). 
;;; (5) In cmd.exe shell: c:/local/LispWorks/lisp/tty-61-xml.exe -init delivery/deliver
;;; (6) rm ~/validator.zip
;;; (7) zip ~/validator.zip ./sei-win32.exe delivery/README ./dirs/lib/pod-utils/uml-utils/models/miwg/canonical/*.xmi ./dirs/tmp/diff ./dirs/tmp/hunchentoot ./dirs/miwg ./iface/http/static/style.css ./iface/http/static/*.html ./iface/http/image/*.png ./iface/http/image/*.gif
;;; (8) scp ~/validator.zip amber.omg.org:/home/pdenno/projects/sei/source/iface/http/static/
;;;  
;;; AMBER stuff joe@omg.org (Joe Harth)
;;;  (1) http://www.omg.org/cgi-bin/mailip.cgi?username=pdenno
;;;  " you need to ssh to 23.30.177.19 after clicking on the link..."
;;;  (2) ssh nx... (but in English)
;;;  (3) sudo /etc/init.d/sei start  -- pw like google.



;;; Compilation;
;;;    #+linux /local/lib/LispWorks/tty-xml-2016-10-26 -init delivery/deliver
;;;    #+linux /local/lib/LispWorks/tty-xml-2015-05-20 -init delivery/deliver  ; 2018 - no 2016 image
;;;    #+win32 c:/local/LispWorks/lisp/tty-61-xml.exe -init delivery/deliver   ; Did you uncomment :home ?
;;;
;;;    Cd /local/lisp/pod-utils/uml-utils ; tar czf ~/uml-utils.tzg . 
;;;    cd ~/projects/sei/source ; tar czf ~/projects-sei-source.tzg . 

;;; scp /local/lisp/pod-utils/uml-utils/models/*.lisp syseng:/local/lisp/pod-utils/uml-utils/models/
;;; scp /local/lisp/pod-utils/uml-utils/models/miwg/canonical/*.xmi syseng:/local/lisp/pod-utils/uml-utils/models/miwg/canonical/


;;; --- NOTE THAT NONE OF THESE ARE LOADED AT START TIME (they are in the image) THUS NOT REALLY NECESSARY

(load-all-patches)
#+linux(cd "~/projects/sei/source/")
#+mswindows(cd "c:/users/pdenno/projects/sei/source/")
#+mswindows(load (compile-file "c:/local/lisp/asdf/asdf-2012-05-22.lisp")) ; don't know why this is needed.

(pushnew :sei.exe *features*) ; but don't rely on it at compile time....

;(pushnew :price.exe *features*) ;; for price, NOT mutually exclusive of sei.exe
;(pushnew :qvt *features*)       ;; for price
;(pushnew :mexico *features*)    ;; for price
;(pushnew :ap233  *features*)    ;; for price

(load "load")	

#+mexico(defclass bnfp::vdl-prolog () ())  ; should have been defined in cl-xml

(require "tty-inspect")
(require "inspector-values")
(require "describe")

#+iface-http
(deliver #+home 'phttp:sei-start-home-version
	 #-home 'phttp:sei-start
	 #+linux "sei.exe" #+mswindows "sei-win32.exe"
	 1 ; 2013-11-25 Level 5 is 57MB, Level 1 is 58MB.
	 #+mswindows :icon-file #+mswindows "delivery/n-v.ico"
	 :interface		      #-:home nil #+home :capi
	 :multiprocessing	      t
	 :keep-lisp-reader            t     ;; I get msg about reading some motif thing!
	 :keep-pretty-printer         t     ;; POD: not checked whether necessary.
	 :keep-eval		      t     ;; bunch of stuff uses it. (not mine)
	 :shake-shake-shake           t     ;; 79MB --> 58MB  (was 30MB --> 21MB last I checked, but maybe that was level 5)
	 :keep-package-manipulation   t     ;; Beijing ... but doesn't add 6MB, but something added 2.5MB
	 :shake-externals             t
	 :console                     :input
	 :compact                     t
	 :keep-debug-mode             :all  ;; Despite the name, seem to need this.
;        :keep-clos :meta-object-slots       ;; Saves 10MB! Requires fancy :classes-to-keep-effective-slots below.
	 :keep-clos :full-dynamic-definition ;; needed now that using programmatic classes. Ugh! 26MB image!
	 :keep-clos-object-printing   t
	 :generic-function-collapse   nil
	 :structure-packages-to-keep '(:tbnl :mofi) 
	 :packages-to-keep            '(:xmi21 :xmi211 :xmi24 :xmi241 :xmi25
					"http://schema.omg.org/spec/XMI/2.1"
					"http://schema.omg.org/spec/XMI/2.1.1"
					"http://www.omg.org/spec/XMI/2.4"
					"http://www.omg.org/spec/XMI/2.4.1"
					"http://schema.omg.org/spec/XMI/20100901"
					"http://www.omg.org/spec/XMI/20100901"
					"http://www.omg.org/spec/XMI/20110701" 
					"http://www.omg.org/spec/XMI/20131001") ; 2.5
;	 :delete-packages             nil
	 :classes-to-keep-effective-slots '(tbnl::request)
	 :keep-documentation t
	 :never-shake-packages '(:tbnl :mofi :tr) 
	 :keep-conditions       :all) ;; So that conditions:stack-overflow can be caught. 

#+iface-cgtk
(deliver 'gui:gui "se-interop.exe" 5
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


