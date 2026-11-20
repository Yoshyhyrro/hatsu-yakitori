;; ------------------------------------------------------------------
  ;; Math Helpers
  ;; ------------------------------------------------------------------
  ;; Multipole acceptance ratio theta.  A cell is evaluated with a multipole
  ;; expansion only when  radius / distance < theta,  where `radius` is the
  ;; largest distance from the cell center to one of its points and `distance`
  ;; is the distance from the target to the cell center.  The expansion is a
  ;; geometric series in radius / distance, so its truncation error at order p
  ;; decays like theta^p.  Admissible values are 0 <= theta < 1.
  (define fmm-default-theta 0.5)

  ;; Deprecated alias, kept so that existing exports and callers still link.
  ;; It used to be an absolute distance that ignored the cell size; it is now
  ;; the default acceptance ratio.  Prefer `fmm-default-theta`.
  (define fmm-default-near-field-cutoff fmm-default-theta)

  ;; NOTE: Removed incorrect redefinitions of sin, cos, etc.
  ;; Standard Scheme functions handle types correctly and are optimized.

  ;; ------------------------------------------------------------------
  ;; Complex Arithmetic Helpers
  ;; ------------------------------------------------------------------
  (define (c-add a b) (cons (+ (car a) (car b)) (+ (cdr a) (cdr b))))
  (define (c-sub a b) (cons (- (car a) (car b)) (- (cdr a) (cdr b))))
  (define (c-mul a b) (cons (- (* (car a) (car b)) (* (cdr a) (cdr b)))
                            (+ (* (car a) (cdr b)) (* (cdr a) (car b)))))
  (define (c-div a b)
    (let ((den (+ (* (car b) (car b)) (* (cdr b) (cdr b)))))
      (if (zero? den)
          (cons 0.0 0.0)
          (cons (/ (+ (* (car a) (car b)) (* (cdr a) (cdr b))) den)
                (/ (- (* (cdr a) (car b)) (* (car a) (cdr b))) den)))))

  (define (c-abs a) (sqrt (+ (* (car a) (car a)) (* (cdr a) (cdr a)))))

  (define (c-pow z n)
    (let loop ((i 0) (acc (cons 1.0 0.0)))
      (if (= i n) acc (loop (+ i 1) (c-mul acc z)))))

  (define (c-inv z)
    (let ((den (+ (* (car z) (car z)) (* (cdr z) (cdr z)))))
      (if (< den 1.0e-12)
          (cons 0.0 0.0)
          (cons (/ (car z) den) (/ (- (cdr z)) den)))))

  ;; Combinatorics for M2L
  (define (fact n)
    (if (<= n 1) 1 (* n (fact (- n 1)))))

  (define (nCk n k)
    (/ (fact n) (* (fact k) (fact (- n k)))))

  (define (append-vectors left right)
    (list->vector (append (vector->list left) (vector->list right))))

  ;; ------------------------------------------------------------------
  ;; Frontier Policy
  ;; ------------------------------------------------------------------
  (define golay24-generator
    (vector
     #xC75 #x63B #xF68 #x7B4 #x3DA #xD99 #x6CD #x367
     #xDC6 #xA97 #x93E #x8EB))

  (define (golay-weight n)
    (let loop ((value n) (count 0))
      (if (zero? value)
          count
          (loop (arithmetic-shift value -1)
                (+ count (bitwise-and value 1))))))

  (define (encode-golay24 info-bits)
    (let loop ((i 0) (parity 0))
      (if (= i 12)
          (bitwise-ior (arithmetic-shift info-bits 12) parity)
          (let ((info-bit (bitwise-and 1 (arithmetic-shift info-bits (- i)))))
            (if (zero? info-bit)
                (loop (+ i 1) parity)
                (loop (+ i 1)
                      (bitwise-xor parity (vector-ref golay24-generator i))))))))

  (define (frontier-mode-from-golay tau)
    (if (< tau 12) 'stack 'queue))

  ;; The optional argument INFO-BITS (default 0) is taken from a rest list so that
  ;; this definition does not depend on CHICKEN's #!optional extension.
  (define (make-adaptive-frontier . options)
    (let* ((info-bits (if (null? options) 0 (car options)))
           (codeword (encode-golay24 info-bits))
           (tau (golay-weight codeword))
           (mode (frontier-mode-from-golay tau)))
      (vector mode
              tau
              codeword
              (/ tau 24.0)
              '())))

  (define (adaptive-frontier-mode frontier)
    (vector-ref frontier 0))

  (define (adaptive-frontier-tau frontier)
    (vector-ref frontier 1))

  (define (adaptive-frontier-codeword frontier)
    (vector-ref frontier 2))

  (define (print-frontier-info frontier)
    (printf "INFO[FMM_FRONTIER]: golay-codeword=0x~X tau=~a mode=~a~%"
            (adaptive-frontier-codeword frontier)
            (adaptive-frontier-tau frontier)
            (adaptive-frontier-mode frontier)))

  ;; ------------------------------------------------------------------
  ;; Frontier Operations
  ;; ------------------------------------------------------------------
  (define (make-stack) '())
  (define (stack-push stack item) (cons item stack))
  (define (stack-pop stack)
    (if (null? stack)
        (values #f '())
        (values (car stack) (cdr stack))))

  (define (make-queue) (cons '() '()))
  (define (queue-push queue item)
    (let ((new-pair (list item)))
      (if (null? (car queue))
          (begin
            (set-car! queue new-pair)
            (set-cdr! queue new-pair))
          (begin
            (set-cdr! (cdr queue) new-pair)
            (set-cdr! queue new-pair)))
      queue))
  (define (queue-pop queue)
    (if (null? (car queue))
        (values #f queue)
        (let ((item (caar queue)))
          (set-car! queue (cdar queue))
          (when (null? (car queue))
            (set-cdr! queue '()))
          (values item queue))))

  (define (adaptive-frontier-push frontier item)
    (let ((mode (adaptive-frontier-mode frontier))
          (data (vector-ref frontier 4)))
      (vector-set! frontier 4
                   (if (eq? mode 'stack)
                       (stack-push data item)
                       (queue-push data item)))
      frontier))

  (define (adaptive-frontier-pop frontier)
    (let ((mode (adaptive-frontier-mode frontier))
          (data (vector-ref frontier 4)))
      (if (eq? mode 'stack)
          (let-values (((item new-data) (stack-pop data)))
            (vector-set! frontier 4 new-data)
            (values item frontier))
          (let-values (((item new-data) (queue-pop data)))
            (vector-set! frontier 4 new-data)
            (values item frontier)))))

  ;; ------------------------------------------------------------------
  ;; Goppa Grid & Geometry
  ;; ------------------------------------------------------------------
  (define (make-goppa-grid q m num-points)
    (let* ((N num-points)
           (two-pi (* 2.0 (acos -1.0))))
      (do ((k 0 (+ k 1)) (acc (make-vector N '())))
          ((= k N) acc)
        (let* ((theta (* two-pi (/ k (exact->inexact N))))
               (t (cons (cos theta) (sin theta))))
          (vector-set! acc k t)))))

  (define (local-parameter grid i)
    (vector-ref grid (modulo i (vector-length grid))))

  (define (calculate-geometric-center grid indices)
    (if (null? indices)
        (cons 0.0 0.0)
        (let ((sum (cons 0.0 0.0))
              (count (length indices)))
          (for-each (lambda (idx)
                      (set! sum (c-add sum (local-parameter grid idx))))
                    indices)
          (cons (/ (car sum) count) (/ (cdr sum) count)))))

  ;; Largest distance from CENTER to one of the grid points of a cell.
  (define (calculate-cell-radius grid indices center)
    (fold (lambda (idx acc)
            (max acc (c-abs (c-sub (local-parameter grid idx) center))))
          0.0
          indices))

  ;; Multipole acceptance test: #t when radius / dist < theta.
  ;; Written without a division, so a target located at the cell center
  ;; (dist = 0) is classified as near field instead of dividing by zero.
  ;; A target that is itself a point of the cell has dist <= radius, hence
  ;; ratio >= 1 >= theta, and is always routed to the direct sum.
  (define (cell-admissible? radius dist theta)
    (< radius (* theta dist)))

  ;; Reference value: direct summation over every grid point but the target.
  (define (fmm-direct-potential grid charges target-idx)
    (let ((target-pos (local-parameter grid target-idx))
          (q (list->vector charges)))
      (let loop ((idx 0) (acc (cons 0.0 0.0)))
        (if (= idx (vector-length grid))
            acc
            (loop (+ idx 1)
                  (if (= idx target-idx)
                      acc
                      (c-add acc (c-div (cons (vector-ref q idx) 0.0)
                                        (c-sub target-pos (vector-ref grid idx))))))))))

  ;; ------------------------------------------------------------------
  ;; FMM Kernels
  ;; ------------------------------------------------------------------
  (define (p2m-kernel grid sources source-charges center order)
    (let ((M (make-vector order (cons 0.0 0.0))))
      (for-each (lambda (idx q)
                  (let* ((z-s (local-parameter grid idx))
                         (delta (c-sub z-s center)))
                    (do ((k 0 (+ k 1))) ((= k order))
                      (let* ((term-pow (c-pow delta k))
                             (q-complex (cons q 0.0))
                             (term (c-mul q-complex term-pow)))
                        (vector-set! M k (c-add (vector-ref M k) term))))))
                sources source-charges)
      M))

  (define (m2l-translation M z-s z-t order)
    (let ((L (make-vector order (cons 0.0 0.0)))
          (z-diff (c-sub z-t z-s)))

      (do ((j 0 (+ j 1))) ((= j order) L)
        (let ((sum (cons 0.0 0.0)))
          (do ((k 0 (+ k 1))) ((= k order))
            (let* ((binom (exact->inexact (nCk (+ j k) k)))
                   ;; The sign (-1)^j is attached to the local index j, not to the multipole index k:
                   ;;   1/(u+z)^(k+1) = sum_j (-1)^j C(j+k,k) z^j / u^(j+k+1),
                   ;; where u = z-t - z-s.  Attaching the sign to k instead evaluates the
                   ;; kernel at the source mirrored about the cell center, which agrees
                   ;; with the true kernel only for the zeroth multipole term.
                   (sign (if (odd? j) -1.0 1.0))
                   (denom-pow (c-pow z-diff (+ j k 1)))
                   (numerator (cons (* sign binom) 0.0))
                   (factor (c-div numerator denom-pow))
                   (term (c-mul (vector-ref M k) factor)))
              (set! sum (c-add sum term))))
          (vector-set! L j sum)))))

  ;; ------------------------------------------------------------------
  ;; Frontier-driven FMM Evaluation
  ;; ------------------------------------------------------------------
  ;; Rejects acceptance ratios outside 0 <= theta < 1, for which the
  ;; multipole series does not converge.  Returns THETA when it is valid.
  (define (check-acceptance-ratio theta)
    (if (and (real? theta) (<= 0 theta) (< theta 1))
        theta
        (error "cartan-fmm-evaluate: theta must satisfy 0 <= theta < 1" theta)))

  ;; Evaluates the potential at TARGET-IDX using FMM with a local frontier policy.
  ;; An optional trailing argument sets the multipole acceptance ratio theta
  ;; (default: fmm-default-theta).  A cell is expanded only when
  ;; radius / distance < theta; otherwise it is summed directly.
  ;; The optional argument is taken from a rest list on purpose: this entry point
  ;; relies only on standard `define` forms, not on CHICKEN's #!optional extension.
  (define (cartan-fmm-evaluate grid hierarchy sources charges target-idx order frontier-info-bits
                               . options)
    (when (and (pair? options) (pair? (cdr options)))
      (error "cartan-fmm-evaluate: at most one optional argument (theta) is accepted" options))
    (cartan-fmm-evaluate/theta
     grid hierarchy sources charges target-idx order frontier-info-bits
     (check-acceptance-ratio (if (null? options) fmm-default-theta (car options)))))

  (define (cartan-fmm-evaluate/theta grid hierarchy sources charges target-idx order
                                     frontier-info-bits theta)
        (let* ((frontier (make-adaptive-frontier frontier-info-bits))
               (target-pos (local-parameter grid target-idx))
               (total-potential (cons 0.0 0.0)))

          (vector-set! frontier 4
                       (if (eq? (adaptive-frontier-mode frontier) 'stack)
                           (make-stack)
                           (make-queue)))

          (print-frontier-info frontier)

      ;; Seed the frontier with every hierarchy level
         (let ((num-levels (vector-length hierarchy)))
           (do ((i 0 (+ i 1))) ((= i num-levels))
             (set! frontier (adaptive-frontier-push frontier i))))

      ;; Frontier processing loop
         (let loop ()
           (let-values (((level-idx updated-frontier) (adaptive-frontier-pop frontier)))
             (when level-idx
               (set! frontier updated-frontier)

               (let ((cell-indices (vector-ref hierarchy level-idx)))
                 (unless (null? cell-indices)
                   (let* ((level-center (calculate-geometric-center grid cell-indices))
                          (dist (c-abs (c-sub target-pos level-center)))
                          (radius (calculate-cell-radius grid cell-indices level-center))
                          (is-near-field (not (cell-admissible? radius dist theta))))

                     (cond
                      ;; Near Field: Direct Sum
                      (is-near-field
                       (for-each
                        (lambda (src-idx)
                          (unless (= src-idx target-idx)
                            (let* ((src-pos (local-parameter grid src-idx))
                                   (diff (c-sub target-pos src-pos))
                                   (q (list-ref charges src-idx))
                                   (val (c-div (cons q 0.0) diff)))
                              (set! total-potential (c-add total-potential val)))))
                        cell-indices))

                      ;; Far Field: Multipole Expansion
                      (else
                       (let ((M (p2m-kernel grid cell-indices
                                            (map (lambda (x) (list-ref charges x)) cell-indices)
                                            level-center order)))
                         (let ((L (m2l-translation M level-center target-pos order)))
                           (set! total-potential (c-add total-potential (vector-ref L 0))))))))))

               (loop))))

         total-potential))

  ;; ------------------------------------------------------------------
  ;; Demo
  ;; ------------------------------------------------------------------
  (define (demo-cartan-fmm)
    (printf "=== Cartan-FMM with Local Frontier Policy ===\n")

    (let* ((num-points 64)
           (grid (make-goppa-grid 2 5 num-points))
           (sources (iota num-points))
           (charges (make-list num-points 1.0))
           (target-idx 0)
           (order 8)
           (hierarchy (vector
                       (iota 8 1)
                       (iota 8 9)
                       (iota 16 17)
                       (iota 31 33)))
           (reference (fmm-direct-potential grid charges target-idx)))

      (printf "\n--- Run 1: Low Entropy (Stack/DFS) ---\n")
      (let ((res1 (cartan-fmm-evaluate
                   grid hierarchy sources charges target-idx order 0)))
        (printf "Result Potential: ~a + ~ai\n" (car res1) (cdr res1))
        (printf "Direct-sum reference: ~a + ~ai (abs error ~a)\n"
                (car reference) (cdr reference) (c-abs (c-sub res1 reference))))

      (printf "\n--- Run 2: High Entropy (Queue/BFS) ---\n")
      (let ((res2 (cartan-fmm-evaluate
                   grid hierarchy sources charges target-idx order #xFFF)))
        (printf "Result Potential: ~a + ~ai\n" (car res2) (cdr res2))
        (printf "Direct-sum reference: ~a + ~ai (abs error ~a)\n"
                (car reference) (cdr reference) (c-abs (c-sub res2 reference))))

      (printf "\n(Processing order differs based on Golay weight)\n")))