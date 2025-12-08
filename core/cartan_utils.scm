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

  ;;; ============================================================
  ;;; String Formatting Helpers
  ;;; ============================================================

  ;; Simple string padding helper (avoids SRFI-13 dependency)
  (define (pad-left str width pad-char)
    "Pad string on the left to reach specified width.
     Args:
       str: input string
       width: desired total width
       pad-char: character to use for padding
     Returns: padded string"
    (let* ((len (string-length str))
           (needed (max 0 (- width len))))
      (string-append (make-string needed pad-char) str)))

  ;;; ============================================================
  ;;; Validation
  ;;; ============================================================

  ;; Validate decomposition parameters
  (define (validate-decomposition B steps)
    "Validate Cartan decomposition parameters.
     Args:
       B: upper bound (must be > 1)
       steps: number of steps (must be positive integer)
     Returns: #t if valid, #f otherwise"
    (and (number? B)
         (> B 1)
         (integer? steps)
         (> steps 0)))

  ;;; ============================================================
  ;;; Cartan Log-Space Decomposition (FIXED)
  ;;; ============================================================

  (define (cartan-log-decompose B steps)
    "Compute log-spaced Cartan decomposition levels.
     
     This function generates exactly 'steps' levels in logarithmic space
     from B^(1/steps) to B^(steps/steps) = B.
     
     Mathematical formulation:
       For k ∈ {1, 2, ..., steps}:
         a_k = exp(k * ln(B) / steps) = B^(k/steps)
     
     Args:
       B: upper bound (must be > 1)
       steps: number of decomposition steps (must be positive integer)
     
     Returns: list of 'steps' floating-point levels
              [B^(1/steps), B^(2/steps), ..., B^(steps/steps)]
     
     Example:
       (cartan-log-decompose 8 3)
       => (2.0 4.0 8.0)
       
       Explanation: 8^(1/3) = 2, 8^(2/3) = 4, 8^(3/3) = 8
     
     Note: The initial level B^0 = 1 is NOT included, as it represents
           the starting point (distance 0) rather than a decomposition step.
     
     Bug fix: Previously returned (steps+1) elements including B^0,
              causing index mismatch in KAK-apply algorithm."
    
    ;; Validate input parameters
    (unless (validate-decomposition B steps)
      (error "cartan-log-decompose: invalid parameters"
             (list 'B B 'steps steps)))
    
    ;; Compute ln(B) once for efficiency
    (let ((lnB (safe-log B)))
      ;; Generate steps levels: k ∈ {1, 2, ..., steps}
      ;; iota with start=1 generates [1, 2, ..., steps]
      (map (lambda (k)
             ;; a_k = exp(k * ln(B) / steps) = B^(k/steps)
             (exp (/ (* k lnB) steps)))
           (iota steps 1))))

  ;;; ============================================================
  ;;; Pretty Printing
  ;;; ============================================================

  (define (pretty-print-decomposition B steps)
    "Display Cartan decomposition hierarchy in readable format.
     
     Args:
       B: upper bound
       steps: number of steps
     
     Output format:
       Cartan decomposition (B=8, steps=3):
         Level  1: 2.000000  (= 8^(1/3))
         Level  2: 4.000000  (= 8^(2/3))
         Level  3: 8.000000  (= 8^(3/3))"
    
    ;; Validate parameters
    (unless (validate-decomposition B steps)
      (error "pretty-print-decomposition: invalid parameters"
             (list 'B B 'steps steps)))
    
    ;; Compute decomposition
    (let ((decomp (cartan-log-decompose B steps)))
      
      ;; Print header
      (printf "Cartan decomposition (B=~a, steps=~a):~%" B steps)
      
      ;; Print each level with formatted output
      (for-each 
       (lambda (k v)
         (let ((level-str (pad-left (number->string k) 2 #\space))
               (value-str (if (integer? v)
                              (number->string v)
                              (sprintf "~,6f" v)))
               (exponent-str (sprintf "~a/~a" k steps)))
           (printf "  Level ~a: ~a  (= ~a^(~a))~%" 
                   level-str 
                   value-str
                   B
                   exponent-str)))
       (iota steps 1)  ; k = 1, 2, ..., steps
       decomp)
      
      ;; Print summary
      (printf "~%Total levels: ~a~%" (length decomp))
      (printf "Range: [~a, ~a]~%" 
              (car decomp) 
              (last decomp))))

  ;;; ============================================================
  ;;; Additional Utility Functions
  ;;; ============================================================

  (define (cartan-inverse-lookup decomp target tolerance)
    "Find which decomposition level is closest to target value.
     
     Args:
       decomp: list of decomposition levels
       target: target value to search for
       tolerance: acceptable error margin
     
     Returns: (level-index . actual-value) or #f if not found"
    (let loop ((levels decomp)
               (index 1))
      (cond
       ((null? levels) #f)
       ((< (abs (- (car levels) target)) tolerance)
        (cons index (car levels)))
       (else (loop (cdr levels) (+ index 1))))))

  (define (cartan-step-ratio decomp)
    "Compute ratio between consecutive decomposition levels.
     
     Args:
       decomp: list of decomposition levels
     
     Returns: list of ratios [a_2/a_1, a_3/a_2, ...]
     
     Note: For true log-space decomposition, all ratios should be equal."
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
  ;;; Testing and Validation
  ;;; ============================================================

  (define (test-cartan-decomposition)
    "Self-test function to verify decomposition correctness."
    
    (printf "=== Cartan Decomposition Self-Test ===~%~%")
    
    ;; Test 1: Basic decomposition
    (printf "Test 1: B=8, steps=3~%")
    (let ((decomp (cartan-log-decompose 8 3)))
      (printf "  Result: ~a~%" decomp)
      (printf "  Length: ~a (expected: 3)~%" (length decomp))
      (printf "  First:  ~a (expected: ~a)~%" (car decomp) 2.0)
      (printf "  Last:   ~a (expected: ~a)~%" (last decomp) 8.0)
      (printf "  Pass: ~a~%~%" 
              (and (= (length decomp) 3)
                   (< (abs (- (car decomp) 2.0)) 1e-10)
                   (< (abs (- (last decomp) 8.0)) 1e-10))))
    
    ;; Test 2: Single step
    (printf "Test 2: B=10, steps=1~%")
    (let ((decomp (cartan-log-decompose 10 1)))
      (printf "  Result: ~a~%" decomp)
      (printf "  Length: ~a (expected: 1)~%" (length decomp))
      (printf "  Value:  ~a (expected: 10)~%" (car decomp))
      (printf "  Pass: ~a~%~%" 
              (and (= (length decomp) 1)
                   (< (abs (- (car decomp) 10.0)) 1e-10))))
    
    ;; Test 3: Verify constant ratio (geometric progression)
    (printf "Test 3: Constant ratio verification (B=1000, steps=5)~%")
    (let* ((decomp (cartan-log-decompose 1000 5))
           (ratios (cartan-step-ratio decomp)))
      (printf "  Decomposition: ~a~%" decomp)
      (printf "  Ratios: ~a~%" ratios)
      (printf "  Expected ratio: ~a~%" (expt 1000 (/ 1 5)))
      (let ((expected-ratio (expt 1000 0.2))
            (ratio-variance (apply max (map (lambda (r) 
                                              (abs (- r expected-ratio))) 
                                            ratios))))
        (printf "  Variance: ~a~%" ratio-variance)
        (printf "  Pass: ~a~%~%" (< ratio-variance 1e-10))))
    
    ;; Test 4: Pretty print
    (printf "Test 4: Pretty printing~%")
    (pretty-print-decomposition 16 4)
    
    (printf "~%=== All tests completed ===~%")))

   ;; end module