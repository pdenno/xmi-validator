;;; -*- Mode: LISP; Syntax: ANSI-Common-Lisp; Package: CL-USER; Base: 10 -*-

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

#-LispWorks
(error "This file valid only in LispWorks")

(in-package :CL-USER)


;;;
;;; This file contains Generic Function templates that need to be
;;; compiled and loaded during delivery of the application.
;;;

;; (clos::pre-compiled-eql-templates &body shapes)
(clos::pre-compiled-eql-templates
 (5  nil nil 3)
 (10 nil nil 0)
 (10 nil nil 1)
 )

;; (pre-compile-combined-methods &rest patterns)
(clos::pre-compile-combined-methods
 ((0 1) nil (progn (clos::_call-method_)
		   (multiple-value-prog1
		    (clos::_call-method_)
		    (clos::_call-method_))))
 )

#+ffi-x11-xlib
(fli::define-precompiled-foreign-object-setter-functions
 ((x-library:x-error-event :size 20)))

#+ffi-x11-xm
(fli::define-precompiled-foreign-object-accessor-functions
 ((xm-library::$file-selection-box-callback-reason :no-alloc-p :error :size nil)))
