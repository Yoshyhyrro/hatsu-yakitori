;; module/fmm/fmm_on_goppa_grid.scm
;; Minimal prototype: Represent FMM-like multipole/local expansions on a Goppa-grid
;; Uses Chicken Scheme style modules and common SRFIs. This is a conceptual, annotated
;; library for experimentation — numeric heavy lifting (FFT, BLAS) should be linked
;; via FFI or calls to external libraries for production use.
;;
;; Exports:
;;  - make-goppa-grid: (q m points) -> grid
;;  - local-parameter: (grid i) -> t_i (local coordinate)
;;  - compute-laurent-coefs: (grid center idx order) -> vector of coefficients
;;  - aggregate-multipoles: (grid order) -> hash-table mapping cell->multipole-vector
;;  - translate-multipole-to-local: (M center->L center order) -> local vector
;;  - demo-run: small demo constructing grid and doing simple multipole sum
;;  - demo-cartan: demo with Cartan decomposition based FMM hierarchy
;;
(module module.fmm.fmm-goppa
  (make-goppa-grid local-parameter compute-laurent-coefs
   aggregate-multipoles translate-multipole-to-local demo-run
   demo-cartan make-hierarchical-grid cartan-fmm-evaluate)

  (import (scheme)
          (chicken base)
          (chicken format)
          (chicken math)
          srfi-1
          srfi-69
          core/cartan_utils)  ; Import Cartan decomposition utilities

  ;; ------------------------------------------------------------------
  ;; Utilities
  ;; ------------------------------------------------------------------
  (define (vec->string v)
    (format #f "[~{~a~^, ~}]" (vector->list v)))

  ;; safe numeric inverse with tiny regularizer
  (define (safe-inv x eps)
    (if (< (abs x) eps) (/ x (+ (abs x) eps)) (/ 1.0 x)))

  ;; Complex arithmetic helpers (pairs)
  (define (c-add a b) (cons (+ (car a) (car b)) (+ (cdr a) (cdr b))))
  (define (c-sub a b) (cons (- (car a) (car b)) (- (cdr a) (cdr b))))
  (define (c-mul a b) (cons (- (* (car a) (car b)) (* (cdr a) (cdr b)))
                           (+ (* (car a) (cdr b)) (* (cdr a) (car b)))))
  (define (c-div a b)
    (let ((den (+ (* (car b) (car b)) (* (cdr b) (cdr b)))))
      (cons (/ (+ (* (car a) (car b)) (* (cdr a) (cdr b))) den)
            (/ (- (* (cdr a) (car b)) (* (car a) (cdr b))) den))))
  (define (c-abs a) (sqrt (+ (* (car a) (car a)) (* (cdr a) (cdr a)))))
  (define (c-pow z n)
    (let loop ((i 0) (acc (cons 1.0 0.0)))
      (if (= i n) acc
          (loop (+ i 1) (c-mul acc z)))))
  (define (c-inv z)
    (let ((den (+ (* (car z) (car z)) (* (cdr z) (cdr z)))))
      (cons (/ (car z) den) (/ (- (cdr z)) den))))

  ;; ------------------------------------------------------------------
  ;; 1) Goppa grid construction (conceptual)
  ;; ------------------------------------------------------------------
  (define (make-goppa-grid q m num-points)
    "Make a conceptual Goppa-like grid: returns a vector of complex local parameters t_i."
    (let* ((N num-points)
           (two-pi (* 2.0 (acos -1.0))))
      (do ((k 0 (+ k 1)) (acc (make-vector N '())))
          ((= k N) acc)
        (let* ((theta (* two-pi (/ k (exact->inexact N))))
               (t (cons (cos theta) (sin theta))))
          (vector-set! acc k t)))))

  (define (local-parameter grid i)
    (vector-ref grid (modulo i (vector-length grid))))

  ;; ------------------------------------------------------------------
  ;; 2) Compute Laurent coefficients for kernel 1/(t - t_center)
  ;; ------------------------------------------------------------------
  (define (compute-laurent-coefs grid t-center idx order)
    "Compute order Laurent coefficients for kernel 1/(t - t_idx) about t-center.
     Returns a vector of length 'order' representing coefficients for n=0..order-1."
    (let* ((t-idx (local-parameter grid idx))
           (z (c-sub t-idx t-center))
           (vec (make-vector order (cons 0.0 0.0))))
      (let loop ((n 0))
        (when (< n order)
          (let* ((zp (c-pow z (+ n 1)))
                 (inv-zp (c-inv zp))
                 (an (cons (- (car inv-zp)) (- (cdr inv-zp)))))
            (vector-set! vec n an)
            (loop (+ n 1)))))
      vec))

  ;; ------------------------------------------------------------------
  ;; 3) Aggregate multipoles: naive O(N^2) aggregation (conceptual)
  ;; ------------------------------------------------------------------
  (define (aggregate-multipoles grid order)
    "Return hash-table: index -> multipole-vector (vector of complex coefs)"
    (let ((N (vector-length grid))
          (table (make-hash-table)))
      (do ((i 0 (+ i 1))) ((= i N) table)
        (let ((t-center (local-parameter grid i))
              (M (make-vector order (cons 0.0 0.0))))
          (do ((j 0 (+ j 1))) ((= j N))
            (when (not (= i j))
              (let ((coefs (compute-laurent-coefs grid t-center j order)))
                (do ((n 0 (+ n 1))) ((= n order))
                  (let ((prev (vector-ref M n))
                        (add (vector-ref coefs n)))
                    (vector-set! M n (c-add prev add)))))))
          (hash-table-set! table i M)))))

  ;; ------------------------------------------------------------------
  ;; 4) Translate multipole to local: change-of-center via binomial convolution
  ;; ------------------------------------------------------------------
  (define (translate-multipole-to-local M t-a t-b order)
    "Translate multipole M (vector len order) at center t-a to local L at t-b."
    (let ((L (make-vector order (cons 0.0 0.0)))
          (delta (c-sub t-b t-a)))
      (do ((k 0 (+ k 1))) ((= k order) L)
        (let ((acc (cons 0.0 0.0)))
          (do ((n 0 (+ n 1))) ((= n order))
            (let* ((Mn (vector-ref M n))
                   (exponent (+ n k 1))
                   (dpow (c-pow delta exponent))
                   (inv-dpow (c-inv dpow))
                   (term (c-mul Mn inv-dpow)))
              (set! acc (c-add acc term))))
          (vector-set! L k acc)))))

  ;; ------------------------------------------------------------------
  ;; 5) Cartan decomposition enhanced FMM functions
  ;; ------------------------------------------------------------------
  (define (make-hierarchical-grid B steps num-points)
    "Create hierarchical grid using Cartan decomposition levels"
    (unless (validate-decomposition B steps)
      (error "Invalid Cartan decomposition parameters"))
    
    (let* ((grid (make-goppa-grid 2 5 num-points))  ; q=2, m=5 for demo
           (levels (cartan-log-decompose B steps))
           (level-count (length levels)))
      (printf "Cartan decomposition levels (B=~a, steps=~a):~%" B steps)
      (pretty-print-decomposition B steps)
      
      ;; Create hierarchy: assign points to levels based on distance from origin
      ;; In real implementation, would use geometric clustering
      (let ((hierarchy (make-vector level-count '())))
        (do ((i 0 (+ i 1))) ((= i (vector-length grid)))
          (let* ((point (local-parameter grid i))
                 (dist (c-abs point))
                 ;; Find appropriate level based on distance
                 (level-index 
                  (let loop ((j 0) (min-diff 1e10) (best-level 0))
                    (if (>= j level-count)
                        best-level
                        (let ((diff (abs (- dist (list-ref levels j)))))
                          (if (< diff min-diff)
                              (loop (+ j 1) diff j)
                              (loop (+ j 1) min-diff best-level)))))))
            (vector-set! hierarchy level-index
                         (cons i (vector-ref hierarchy level-index)))))
        (cons grid hierarchy))))

  (define (cartan-fmm-evaluate B steps sources target-idx order)
    "Evaluate FMM using Cartan decomposition hierarchy"
    (let* ((num-sources (length sources))
           (grid-hierarchy (make-hierarchical-grid B steps num-sources))
           (grid (car grid-hierarchy))
           (hierarchy (cdr grid-hierarchy))
           (target (local-parameter grid target-idx))
           (result (make-vector order (cons 0.0 0.0))))
      
      ;; For each level in hierarchy
      (do ((level 0 (+ level 1))) ((= level (vector-length hierarchy)) result)
        (let ((indices (vector-ref hierarchy level)))
          (unless (null? indices)
            ;; Compute multipole at level center (simplified: use first point)
            (let* ((level-center (local-parameter grid (car indices)))
                   (M (make-vector order (cons 0.0 0.0))))
              ;; Aggregate contributions from all sources in this level
              (for-each (lambda (idx)
                          (when (not (= idx target-idx))
                            (let ((coefs (compute-laurent-coefs grid level-center idx order)))
                              (do ((n 0 (+ n 1))) ((= n order))
                                (vector-set! M n 
                                  (c-add (vector-ref M n) 
                                         (vector-ref coefs n)))))))
                        indices)
              
              ;; Translate to target and accumulate
              (let ((L (translate-multipole-to-local M level-center target order)))
                (do ((n 0 (+ n 1))) ((= n order))
                  (vector-set! result n 
                    (c-add (vector-ref result n) 
                           (vector-ref L n)))))))))))

  ;; ------------------------------------------------------------------
  ;; Demo runners
  ;; ------------------------------------------------------------------
  (define (demo-run)
    "Small demo: build grid, aggregate multipoles, translate one multipole to local, print."
    (let* ((grid (make-goppa-grid 2 5 16))
           (order 6)
           (M-table (aggregate-multipoles grid order))
           (i 0)
           (j 3)
           (M (hash-table-ref M-table i))
           (ta (local-parameter grid i))
           (tb (local-parameter grid j))
           (L (translate-multipole-to-local M ta tb order)))
      (printf "Grid size: ~a\n" (vector-length grid))
      (printf "Multipole @ ~a: ~a\n" i (vec->string M))
      (printf "Local @ ~a from multipole ~a: ~a\n" j i (vec->string L))))

  (define (demo-cartan)
    "Demo using Cartan decomposition for hierarchical FMM"
    (let* ((B 10.0)
           (steps 4)
           (order 4)
           (num-points 32)
           (sources (iota num-points))
           (target-idx 8))
      
      (printf "=== Cartan-FMM Demo ===\n")
      (printf "Parameters: B=~a, steps=~a, points=~a, order=~a\n" 
              B steps num-points order)
      
      (let ((result (cartan-fmm-evaluate B steps sources target-idx order)))
        (printf "Evaluation at target ~a:\n" target-idx)
        (do ((n 0 (+ n 1))) ((= n order))
          (let ((coef (vector-ref result n)))
            (printf "  Coefficient[~a] = ~a + ~ai\n" 
                    n (car coef) (cdr coef))))
        
        ;; Compare with direct calculation for verification
        (printf "\nDirect calculation for verification:\n")
        (let ((direct (make-vector order (cons 0.0 0.0)))
              (grid (make-goppa-grid 2 5 num-points))
              (target (local-parameter grid target-idx)))
          (do ((i 0 (+ i 1))) ((= i num-points))
            (when (not (= i target-idx))
              (let ((coefs (compute-laurent-coefs grid target i order)))
                (do ((n 0 (+ n 1))) ((= n order))
                  (vector-set! direct n 
                    (c-add (vector-ref direct n) 
                           (vector-ref coefs n)))))))
          (printf "Direct result at target ~a:\n" target-idx)
          (do ((n 0 (+ n 1))) ((= n order))
            (let ((coef (vector-ref direct n)))
              (printf "  Coefficient[~a] = ~a + ~ai\n" 
                      n (car coef) (cdr coef))))))))

) ;; end module
