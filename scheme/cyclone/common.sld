;;;; Cyclone Scheme
;;;; https://github.com/justinethier/cyclone
;;;;
;;;; Copyright (c) 2014-2016, Justin Ethier
;;;; All rights reserved.
;;;;
;;;; This module contains definitions used by the compiler and interpreter.
;;;;
(define-library (scheme cyclone common)
  (export 
    *Cyc-version-banner*
    *version*
    *version-banner*
    *c-file-header-comment*)
  (begin
(define *version* "0.1.0 (alpha)")

(define *version-banner* 
 (string-append "
              :@ 
            @@@  
          @@@@:  
        `@@@@@+  
       .@@@+@@@      Cyclone  
       @@     @@     Scheme-to-C compiler
      ,@             http://justinethier.github.io/cyclone/
      '@        
      .@        
       @@     #@     (c) 2014-2016 Justin Ethier
       `@@@#@@@.     Version " *version* "
        #@@@@@   
        +@@@+    
        @@#      
      `@.  
     
"))

(define *Cyc-version-banner* *version-banner*)

(define *c-file-header-comment* 
  (string-append "/**
 ** This file was automatically generated by the Cyclone scheme compiler
 ** http://justinethier.github.io/cyclone/
 **
 ** (c) 2014-2016 Justin Ethier
 ** Version " *version* "
 **
 **/
"))

))
