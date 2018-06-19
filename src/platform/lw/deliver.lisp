;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; Package: CL-USER; Base: 10 -*-
#-LispWorks
(error "This file is only valid in LispWorks")

;;; Copyright (c) 2001 Logicon, Inc.
;;;
;;; Permission is hereby granted, free of charge, to any person
;;; obtaining a copy of this software and associated documentation
;;; files (the "Software"), to deal in the Software without restriction,
;;; including without limitation the rights to use, copy, modify,
;;; merge, publish, distribute, sublicense, and/or sell copies of the
;;; Software, and to permit persons to whom the Software is furnished
;;; to do so, subject to the following conditions:
;;;
;;; The above copyright notice and this permission notice shall be
;;; included in all copies or substantial portions of the Software.
;;;
;;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
;;; IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR
;;; ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
;;; CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
;;; WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
;;;-----------------------------------------------------------------------

(in-package :CL-USER)


;;; To use this file:
;;;  1. cd to Expresso source tree root
;;;  2. execute "lispworks -init lw/deliver"

(load-all-patches)
(load "load-expresso-asd")		;Load Expresso
;(load "fast-load-mk.lsp")

;;; compile and load GF templates if present
(when (probe-file "lw/gf-templates.lsp")
  (compile-file "lw/gf-templates.lsp" :load t))

;; Change the "expo" logical host that is delivered
#+Unix  (load "linux/runtime.hst")
#+Win32 (load "win32/runtime.hst")

(require "arraymac")
(require "loop")
(require "describe")
(require "fli-inspector")
(require "inspector-values")
(require "indenting-stream")

(setf expo:*production* t)
(apply #'dv::deliver 'expo::restart-expresso "expressow" 4
       :interface			:capi
       :condition-deletion-action	nil
       :multiprocessing			t
       :keep-clos			:no-empty
       :keep-clos-object-printing	t
       :keep-conditions			:all
       :keep-complex-numbers		nil
       :keep-documentation		nil
       :keep-eval			t
       :keep-lisp-reader		t
       :keep-load-function		:full
       :keep-macros			t
       :keep-package-manipulation	t
       :keep-structure-info		t
       ;; Set to this to t when :keep-debug-mode nil (save 4MB)
       :compact				nil
       :keep-debug-mode			t
       :packages-to-keep		'(:cl :clos :eu :expo :p11 :ee11 :p14 :ee14)
       :shake-shake-shake		nil
       :shake-externals			nil
       :generic-function-collapse	nil
       :editor-commands-to-keep		:all-groups
       #+Win32
       `(:console			:input
	 :icon-file			"win32/expresso.ico"
	 :startup-bitmap-file		"win32/splash.bmp"
;	 :versioninfo		(:binary-version ,(error "not sure what goes here")
;				 :version-string ,(format nil "~D.~D.0.0"
;							  expo::*ee-major*
;							  expo::*ee-minor*)
;				 :company-name "Express Engine Team"
;				 :product-name "Express Engine"
;				 :file-description "desc")
	 )
       #-(or Win32) nil
       )
(quit)
