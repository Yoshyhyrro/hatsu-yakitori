;;; ---------------------------------------------------------------------------
;;; cartan_utils.scm - Utility functions for Cartan decomposition
;;; ---------------------------------------------------------------------------

(module cartan-utils
  (pretty-print-decomposition
   validate-decomposition
   cartan-log-decompose)

  (import scheme)
  (import (chicken base)
          (chicken format)
          srfi-1
          srfi-13          ;; string-pad のために必要
          machine-constants)

  ;; Validate decomposition parameters
  (define (validate-decomposition B steps)
    (and (> B 0)
         (> steps 0)
         (integer? steps)))

  ;; Compute log-spaced Cartan decomposition levels
  (define (cartan-log-decompose B steps)
    (let ((lnB (safe-log B)))
      (map (lambda (k)
             (exp (/ (* k lnB) steps)))
           (iota (+ steps 1)))))

  ;; Pretty print decomposition hierarchy
  ;; FIX: Use Chicken Scheme's format syntax
  (define (pretty-print-decomposition B steps)
    (let ((decomp (cartan-log-decompose B steps)))
      (printf "Cartan decomposition (B=~a, steps=~a):~%" B steps)
      (for-each (lambda (k v)
                  ;; Chicken Scheme format: ~a (any), ~s (string), ~% (newline)
                  ;; Use string formatting for precise control
                  (printf "  Level ~a: ~a~%" 
                          (string-pad (number->string k) 2 #\space)
                          (string-pad (number->string v) 10 #\space)))
                (iota (+ steps 1))
                decomp))))

   ;; end module