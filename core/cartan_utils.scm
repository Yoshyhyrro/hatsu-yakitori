;;; ---------------------------------------------------------------------------
;;; cartan_utils.scm - Utility functions for Cartan decomposition
;;; Combines Hausdorff distance considerations with Cartan decomposition
;;; ---------------------------------------------------------------------------

(module core/cartan_utils
  (pretty-print-decomposition
   validate-decomposition
   cartan-log-decompose
   cartan-inverse-lookup
   cartan-step-ratio
   test-cartan-decomposition)

  (import scheme)
  (import (chicken base)
          (chicken format)
          srfi-1
          core/machine_constants)

  ;;; ============================================================
  ;;; String Formatting Helpers
  ;;; ============================================================

  (define (pad-left str width pad-char)
    "Pad string on the left to reach specified width."
    (let* ((len (string-length str))
           (needed (max 0 (- width len))))
      (string-append (make-string needed pad-char) str)))
  
  (define (format-float v #!optional (precision 6))
    "Format number as string with approximate precision."
    ;; Note: Hausdorff distance computations often require careful rounding
    (let ((s (number->string (exact->inexact v))))
      (if (> (string-length s) (+ precision 2))
          (substring s 0 (+ precision 2))
          s)))

  ;;; ============================================================
  ;;; Validation (Compressed version)
  ;;; ============================================================

  (define (validate-decomposition B steps)
    "Validate parameters for Cartan decomposition."
    (and (number? B)
         (> B 1)              ; B must be > 1 for log scaling
         (integer? steps)
         (> steps 0)))

  ;;; ============================================================
  ;;; Core Cartan Decomposition Function
  ;;; ============================================================

  (define (cartan-log-decompose B steps)
    "Compute log-spaced Cartan decomposition levels.
     
     Generates (steps + 1) levels from B^0 to B^1 (1.0 to B).
     Useful for multi-scale analysis and Hausdorff distance approximations.
     
     Args:
       B: upper bound (must be > 1)
       steps: number of decomposition steps
     
     Returns: list of (steps + 1) floating-point levels
     "
    (unless (validate-decomposition B steps)
      (error "cartan-log-decompose: invalid parameters" 
             (list 'B B 'steps steps)))
    
    (let ((lnB (safe-log B)))  ; safe-log should handle edge cases
      ;; Generate k = 0, 1, ..., steps
      (map (lambda (k)
             ;; a_k = exp(k * ln(B) / steps)
             (exp (/ (* k lnB) steps)))
           (iota (+ steps 1) 0))))  ; Explicit start at 0

  ;;; ============================================================
  ;;; Pretty Printing (Enhanced)
  ;;; ============================================================

  (define (pretty-print-decomposition B steps)
    "Display Cartan decomposition in human-readable format."
    (unless (validate-decomposition B steps)
      (error "pretty-print-decomposition: invalid parameters"
             (list 'B B 'steps steps)))
    
    (let ((decomp (cartan-log-decompose B steps)))
      (printf "Cartan decomposition (B=~a, steps=~a):~%" B steps)
      
      (for-each 
       (lambda (k v)
         (let ((level-str (pad-left (number->string k) 2 #\space))
               (value-str (format-float v 6)))
           ;; Show both value and exponent form
           (printf "  Level ~a: ~a  (= ~a^(~a/~a))~%" 
                   level-str 
                   value-str
                   B
                   k
                   steps)))
       (iota (+ steps 1) 0)  ; Consistent with decompose
       decomp)
      
      ;; Summary statistics
      (printf "~%Summary:~%")
      (printf "  Total levels: ~a~%" (length decomp))
      (printf "  Range: [~a, ~a]~%" 
              (format-float (car decomp)) 
              (format-float (last decomp)))
      (printf "  Hausdorff scaling: logarithmic~%")))

  ;;; ============================================================
  ;;; Hausdorff-Related Utilities (Compressed)
  ;;; ============================================================

  (define (cartan-inverse-lookup decomp target tolerance)
    "Find the decomposition level closest to target value.
     Useful for Hausdorff distance lookups in multi-scale analysis."
    (let loop ((levels decomp)
               (index 0))
      (cond
       ((null? levels) #f)
       ((< (abs (- (car levels) target)) tolerance)
        (cons index (car levels)))  ; Return (index . value)
       (else (loop (cdr levels) (+ index 1))))))

  (define (cartan-step-ratio decomp)
    "Compute ratios between consecutive decomposition levels.
     Constant ratios indicate perfect logarithmic scaling."
    (if (< (length decomp) 2)
        '()
        (let loop ((levels (cdr decomp))
                   (prev (car decomp))
                   (ratios '()))
          (if (null? levels)
              (reverse ratios)
              (let ((ratio (/ (car levels) prev)))
                (loop (cdr levels)
                      (car levels)
                      (cons ratio ratios)))))))

  ;;; ============================================================
  ;;; Testing (Self-contained)
  ;;; ============================================================

  (define (test-cartan-decomposition)
    "Run comprehensive tests including edge cases."
    (printf "=== Cartan Decomposition Self-Test ===~%~%")
    
    ;; Test 1: Basic decomposition (should match both versions)
    (printf "Test 1: B=8, steps=3~%")
    (let ((decomp (cartan-log-decompose 8 3)))
      (printf "  Result: ~a~%" (map format-float decomp))
      (printf "  Length: ~a (expected: 4)~%" (length decomp))
      (printf "  Ratios: ~a (should be constant)~%" 
              (map format-float (cartan-step-ratio decomp)))
      (printf "  Pass: ~a~%~%" 
              (and (= (length decomp) 4)
                   (< (abs (- (car decomp) 1.0)) 1e-10)
                   (< (abs (- (last decomp) 8.0)) 1e-10))))
    
    ;; Test 2: Inverse lookup
    (printf "Test 2: Inverse lookup~%")
    (let ((decomp (cartan-log-decompose 100 5))
          (test-value (exp (/ (safe-log 100) 2))))  ; sqrt(100) = 10
      (printf "  Looking for ~a in decomposition~%" (format-float test-value))
      (let ((found (cartan-inverse-lookup decomp test-value 0.1)))
        (printf "  Found: ~a~%" found)
        (printf "  Pass: ~a~%~%" (and found (< (abs (- (cdr found) 10.0)) 0.1)))))
    
    (printf "=== All tests completed ===~%")))

   ;; end module