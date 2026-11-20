;;; ============================================================
;;; core/witt_symmetry_explicit.scm
;;; 
;;; Witt Design S(5,8,24) - Explicit Structure Validation
;;; Fixed: proper Chicken Scheme imports
;;; ============================================================

(module witt_symmetry_explicit
  (golay-encodes-witt-octad
   tau-to-octad-size
   octad-level-from-tau
   verify-frontier-preserves-witt
   describe-cartan-octad-scaling
   test-witt-implicit-structure)
  
  (import scheme)
  (import (chicken base))
  (import (chicken format))
  (import (chicken bitwise))
  
  ;; ============================================================
  ;; Helper: Hamming Weight (Popcount)
  ;; ============================================================
  
  (define (hamming-weight n)
    "Count 1-bits in binary representation."
    (let loop ((code n) (count 0))
      (if (zero? code)
          count
          (loop (bitwise-and code (- code 1))
                (+ count 1)))))
  
  ;; ============================================================
  ;; Helper: List utilities (inline, no srfi-1)
  ;; ============================================================
  
  (define (reverse-list lst)
    "Reverse a list."
    (let loop ((l lst) (acc '()))
      (if (null? l) acc
          (loop (cdr l) (cons (car l) acc)))))
  
  (define (map-list fn lst)
    "Map function over list."
    (if (null? lst) '()
        (cons (fn (car lst)) (map-list fn (cdr lst)))))
  
  (define (filter-list pred lst)
    "Filter list by predicate."
    (cond
      ((null? lst) '())
      ((pred (car lst))
       (cons (car lst) (filter-list pred (cdr lst))))
      (else (filter-list pred (cdr lst)))))
  
  (define (for-each-list fn lst)
    "Execute fn for each element."
    (if (not (null? lst))
        (begin (fn (car lst))
               (for-each-list fn (cdr lst)))))
  
  ;; ============================================================
  ;; PART 1: Golay → Witt Octad Mapping
  ;; ============================================================
  
  (define (codeword->octad-support codeword)
    "Extract point indices from codeword (24-bit → list of points)."
    (let loop ((bit 0) (points '()))
      (if (= bit 24)
          (reverse-list points)
          (let ((is-in (bitwise-and (arithmetic-shift codeword (- bit)) 1)))
            (loop (+ bit 1)
                  (if (= is-in 1) (cons bit points) points))))))
  
  (define (codeword->witt-class codeword)
    "Classify Golay codeword into Witt orbit by weight."
    (let ((w (hamming-weight codeword)))
      (cond
        ((= w 0)   'identity)
        ((= w 8)   'octad)
        ((= w 12)  'dodecad)
        ((= w 16)  'octad-complement)
        ((= w 24)  'dual-identity)
        (else      'intermediate))))
  
  (define (golay-encodes-witt-octad codeword)
    "Classify a Golay codeword by weight and report its support.
     
     Returns: an association list with the keys octad-class, hamming-weight,
              octad-support and witt-level"
    
    (let ((weight (hamming-weight codeword))
          (support (codeword->octad-support codeword)))
      
      (list 
       (cons 'octad-class (codeword->witt-class codeword))
       (cons 'hamming-weight weight)
       (cons 'octad-support support)
       (cons 'witt-level (octad-level-from-tau weight)))))
  
  ;; ============================================================
  ;; PART 2: Tau → Octad Level
  ;; ============================================================
  
  (define (tau-to-octad-size tau)
    "Map Hamming weight τ to Witt octad decomposition.
     
     Returns: (interior-size exterior-size decomposition-type)"
    
    (let ((tau-norm (/ tau 24.0)))
      (cond
        ((<= tau-norm 0.25)
         (list 2 22 'small-octad))
        
        ((and (> tau-norm 0.25) (<= tau-norm 0.5))
         (list 8 16 'octad))
        
        ((and (> tau-norm 0.5) (< tau-norm 0.75))
         (list 12 12 'dodecad))
        
        ((>= tau-norm 0.75)
         (list 16 8 'octad-exterior)))))
  
  (define (octad-level-from-tau tau)
    "Map tau to a frontier mode using the threshold tau / 24 < 0.5 (tau < 12).
     
     Returns: (mode tau-normalized octad-type explanation)"
    
    (let ((normalized (/ (min tau 24) 24.0)))
      (if (< normalized 0.5)
          (list 'stack normalized 'octad-interior 
                "DFS into octad fine structure")
          (list 'queue normalized 'octad-exterior
                "BFS across octad complement lattice"))))
  
  ;; ============================================================
  ;; PART 3: Consistency Checks
  ;; ============================================================

  (define (range-list from to)
    "List of the integers FROM, FROM+1, ..., TO."
    (let loop ((i to) (acc '()))
      (if (< i from)
          acc
          (loop (- i 1) (cons i acc)))))

  (define (all-pass? results)
    "Return #t when every element of RESULTS is true."
    (or (null? results)
        (and (car results)
             (all-pass? (cdr results)))))

  (define (report-check description passed?)
    "Print one PASS/FAIL line for DESCRIPTION and return PASSED?."
    (printf "  [~A] ~A\n" (if passed? "PASS" "FAIL") description)
    passed?)

  (define (verify-frontier-preserves-witt)
    "Run internal consistency checks of the Golay-to-Witt mapping of this module.

     Checks:
       1. For every tau in 0..24 the floating-point rule of octad-level-from-tau
          agrees with the integer rule (tau < 12 gives stack, otherwise queue).
       2. For every tau in 0..24 the interior and exterior sizes returned by
          tau-to-octad-size add up to the 24 points.
       3. codeword->witt-class maps the five weights of the extended Golay code
          (0, 8, 12, 16, 24) to their classes and any other weight to
          'intermediate.
       4. golay-encodes-witt-octad reports a support whose size equals the weight.

     Returns: #t when every check passes, #f otherwise"

    (display "╔═══════════════════════════════════════════════╗\n")
    (display "║ Consistency Checks: Golay <-> Witt Mapping    ║\n")
    (display "╚═══════════════════════════════════════════════╝\n\n")

    (let* ((taus (range-list 0 24))
           (weight-pattern (lambda (w) (- (arithmetic-shift 1 w) 1)))
           (class-is?
            (lambda (w expected)
              (eq? (codeword->witt-class (weight-pattern w)) expected)))
           (results
            (list
             (report-check
              "frontier mode: floating-point threshold agrees with the integer threshold (tau = 0..24)"
              (all-pass?
               (map-list (lambda (tau)
                           (eq? (car (octad-level-from-tau tau))
                                (if (< tau 12) 'stack 'queue)))
                         taus)))
             (report-check
              "decomposition sizes add up to 24 points (tau = 0..24)"
              (all-pass?
               (map-list (lambda (tau)
                           (let ((sizes (tau-to-octad-size tau)))
                             (= (+ (car sizes) (cadr sizes)) 24)))
                         taus)))
             (report-check
              "weight classes for 0, 8, 12, 16, 24 and for an off-spectrum weight (5)"
              (and (class-is? 0 'identity)
                   (class-is? 8 'octad)
                   (class-is? 12 'dodecad)
                   (class-is? 16 'octad-complement)
                   (class-is? 24 'dual-identity)
                   (class-is? 5 'intermediate)))
             (report-check
              "support size equals the Hamming weight (weights 0, 8, 12, 16, 24)"
              (all-pass?
               (map-list (lambda (w)
                           (let ((info (golay-encodes-witt-octad (weight-pattern w))))
                             (= (length (cdr (assq 'octad-support info))) w)))
                         '(0 8 12 16 24)))))))
      (all-pass? results)))

  (define (describe-cartan-octad-scaling)
    "Print how the Cartan log-spacing relates to the octad weight thresholds.

     This is explanatory text only; it performs no check."

    (display "Cartan scales and octad weight thresholds (explanatory text, not a check):\n")
    (display "  - Log-spacing: a_k = B^(k/n)\n")
    (display "  - witt-cartan-levels keeps the octads whose weight is at most round(24 * a_k)\n")
    (display "  - See witt-cartan-levels in core/witt_foundation.scm\n"))

  ;; ============================================================
  ;; PART 4: Combined Report
  ;; ============================================================

  (define (test-witt-implicit-structure)
    "Run the consistency checks and print a summary.

     Returns: #t when every check passed, #f otherwise"

    (display "\n╔═══════════════════════════════════════════════╗\n")
    (display "║ Witt Design S(5,8,24) - CONSISTENCY CHECKS    ║\n")
    (display "╚═══════════════════════════════════════════════╝\n\n")

    (let ((ok (verify-frontier-preserves-witt)))
      (display "\n")
      (describe-cartan-octad-scaling)
      (display "\n")
      (printf "Result: ~A\n" (if ok "all consistency checks passed" "SOME CHECKS FAILED"))
      ok)))

 ;; end module witt_symmetry_explicit