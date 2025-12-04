;;; ---------------------------------------------------------------------------
;;; cartan_utils.scm - Utility functions for Cartan decomposition
;;; ---------------------------------------------------------------------------

(module core/cartan_utils
  (pretty-print-decomposition
   validate-decomposition
   cartan-log-decompose)

  (import scheme)
  (import (chicken base)
          (chicken format)
          srfi-1
          core/machine_constants)

  ;; Simple string padding helper (avoids SRFI-13 dependency)
  (define (pad-left str width pad-char)
    (let* ((len (string-length str))
           (needed (max 0 (- width len))))
      (string-append (make-string needed pad-char) str)))

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
  ;; Simple formatting without external dependencies
  (define (pretty-print-decomposition B steps)
    (let ((decomp (cartan-log-decompose B steps)))
      (printf "Cartan decomposition (B=~a, steps=~a):~%" B steps)
      (for-each (lambda (k v)
                  ;; Format: "  Level  0: 1.000000"
                  (printf "  Level ~a: ~a~%" 
                          (pad-left (number->string k) 2 #\space)
                          v))
                (iota (+ steps 1))
                decomp))))

   ;; end module