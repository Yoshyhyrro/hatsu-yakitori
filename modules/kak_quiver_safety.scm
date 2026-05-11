(module kak_quiver_safety
  (analyze-frontier-as-quiver
   classify-quiver-type
   kak-apply-quiver-safe
   estimate-quiver-speedup
   make-quiver-context
   quiver-context-steps
   quiver-context-mode
   ;; --- DirectedBanachQuiver.lean invariants ---
   bsd-vertex-height-bound     ; §4: vertex → canonical height
   bsd-arrow-pauli-phase       ; §7: arrow → Pauli phase ∈ {0,1,2,3}
   arrow-fv-role               ; §9: arrow → frobenius | verschiebung
   pauli-conj-weight           ; §2: Pauli conjugation on (re . im) weight
   height->bsd-vertex          ; §6: real height → BSD vertex (discretisation)
   quiver-banach-adjunction?   ; §6: round-trip identity check
   discrete-picard-condition?) ; §9: phase-sum DPC check for arrow sequences

  (import scheme 
          (chicken base)
          (chicken sort)
          srfi-1 
          srfi-69
          kak_physics_core)

  ;;; ============================================================
  ;;; Data Structure: Quiver Context
  ;;; ============================================================
  (define-record-type quiver-context
    (make-quiver-context steps mode)
    quiver-context?
    (steps quiver-context-steps)
    (mode  quiver-context-mode))

  ;;; ============================================================
  ;;; DirectedBanachQuiver.lean — BSD vertices, arrows, heights
  ;;; §4: vertex height bounds
  ;;; §7: arrow Pauli phases
  ;;; §6: height discretisation + adjunction
  ;;; §9: Discrete Picard Condition
  ;;; ============================================================

  ;; BSD vertex set: leech | padic | affine-dual | selmer
  ;; §4: canonical Berkovich height bound for each vertex
  (define (bsd-vertex-height-bound vertex)
    "Height bound for each BSD vertex (DirectedBanachQuiver §4).
     leech=0, padic=8/3, affine-dual=4, selmer=16/3."
    (case vertex
      ((leech)       0)
      ((padic)       (/ 8.0 3.0))
      ((affine-dual) 4.0)
      ((selmer)      (/ 16.0 3.0))
      (else (error "bsd-vertex-height-bound: unknown vertex" vertex))))

  ;; §7: each BSD arrow maps to a Pauli phase ∈ {0,1,2,3}
  ;;   tensor-bang    → 1 (X)  swap re↔im
  ;;   oplus-padic    → 0 (I)  identity
  ;;   project-selmer → 3 (Z)  complex conjugate
  ;;   recover        → 2 (Y)  negate weight
  (define (bsd-arrow-pauli-phase arrow)
    "Pauli phase (0–3) for BSD arrow (DirectedBanachQuiver §7)."
    (case arrow
      ((tensor-bang)    1)
      ((oplus-padic)    0)
      ((project-selmer) 3)
      ((recover)        2)
      (else (error "bsd-arrow-pauli-phase: unknown arrow" arrow))))

  ;; §9: Frobenius/Verschiebung role of each arrow
  (define (arrow-fv-role arrow)
    "Frobenius/Verschiebung role of arrow (DirectedBanachQuiver §9).
     tensor-bang/oplus-padic = frobenius; project-selmer/recover = verschiebung."
    (case arrow
      ((tensor-bang oplus-padic) 'frobenius)
      ((project-selmer recover)  'verschiebung)
      (else (error "arrow-fv-role: unknown arrow" arrow))))

  ;; §2: Pauli conjugation on weight represented as (re . im) pair.
  ;;   phase 0 (I): identity
  ;;   phase 1 (X): swap re↔im
  ;;   phase 2 (Y): negate  (re,im) → (-re,-im)
  ;;   phase 3 (Z): complex conjugate  (re,im) → (re,-im)
  (define (pauli-conj-weight re im phase)
    "Apply Pauli conjugation to weight (re,im) with given phase.
     Returns (values new-re new-im).
     DirectedBanachQuiver §2 / pauliConjWeight."
    (case (modulo phase 4)
      ((0) (values re im))
      ((1) (values im re))
      ((2) (values (- re) (- im)))
      (else (values re (- im)))))

  ;; §6: discretise real height to nearest BSD vertex
  ;;   ≤ 4/3           → leech
  ;;   4/3 < h ≤ 10/3  → padic
  ;;   10/3 < h ≤ 14/3 → affine-dual
  ;;   > 14/3          → selmer
  (define (height->bsd-vertex h)
    "Discretise real height to nearest BSD vertex (DirectedBanachQuiver §6)."
    (cond
      ((<= h (/ 4.0 3.0))  'leech)
      ((<= h (/ 10.0 3.0)) 'padic)
      ((<= h (/ 14.0 3.0)) 'affine-dual)
      (else                 'selmer)))

  ;; §6: round-trip adjunction: height->bsd-vertex ∘ bsd-vertex-height-bound = id
  (define (quiver-banach-adjunction? vertex)
    "Check the round-trip adjunction identity for VERTEX
     (DirectedBanachQuiver theorem quiver_banach_adjunction)."
    (eq? (height->bsd-vertex (bsd-vertex-height-bound vertex)) vertex))

  ;; §9: Discrete Picard Condition (DPC)
  ;;   For a sequence of arrows, the sum of Verschiebung phases ≡ Frobenius phase (mod 4).
  ;;   The canonical instance: phase(recover)+phase(project-selmer) = phase(tensor-bang)
  ;;   i.e. 2 + 3 = 5 ≡ 1 (mod 4).
  (define (discrete-picard-condition? arrows)
    "Return #t iff the arrow sequence ARROWS satisfies the Discrete Picard Condition.
     Checks: sum of V-phases ≡ first F-phase (mod 4).
     DirectedBanachQuiver §9, theorem discrete_picard_phase."
    (let* ((v-phases (filter-map
                      (lambda (a)
                        (and (eq? (arrow-fv-role a) 'verschiebung)
                             (bsd-arrow-pauli-phase a)))
                      arrows))
           (f-phases (filter-map
                      (lambda (a)
                        (and (eq? (arrow-fv-role a) 'frobenius)
                             (> (bsd-arrow-pauli-phase a) 0)  ; skip identity
                             (bsd-arrow-pauli-phase a)))
                      arrows)))
      (if (or (null? v-phases) (null? f-phases))
          #t  ; vacuously true
          (= (modulo (apply + v-phases) 4)
             (car f-phases)))))

  ;;; ============================================================
  ;;; Frontier Utilities
  ;;; ============================================================

  (define (make-analysis-frontier mode nodes)
    "Normalize a frontier representation for quiver analysis.
     stack -> (stack . nodes)
     queue -> (queue front-list . back-list) with initial back = ()."
    (case mode
      ((stack) (cons 'stack nodes))
      ((queue) (cons 'queue (cons nodes '())))
      (else (error "Unknown frontier mode" mode))))

  (define (frontier-to-list frontier)
    "Convert K-frontier format (mode . data) to list"
    (let ((mode (car frontier))
          (data (cdr frontier)))
      (case mode
        ((stack) data)
        ((queue) (append (car data) (reverse (cdr data))))
        (else (error "Unknown frontier mode" mode)))))

  ;;; ============================================================
  ;;; Quiver Analysis Logic
  ;;; ============================================================

  (define (detect-cycle nodes adj-list)
    (let ((visited (make-hash-table))
          (rec-stack (make-hash-table))
          (found #f))
      (define (dfs u)
        (hash-table-set! visited u #t)
        (hash-table-set! rec-stack u #t)
        (for-each (lambda (v)
                    (cond ((not (hash-table-ref/default visited v #f))
                           (dfs v))
                          ((hash-table-ref/default rec-stack v #f)
                           (set! found #t))))
                  (hash-table-ref/default adj-list u '()))
        (hash-table-set! rec-stack u #f))
      (for-each (lambda (n) (unless (hash-table-ref/default visited n #f) (dfs n))) nodes)
      found))

  (define (analyze-frontier-as-quiver frontier graph-fn)
    (let* ((nodes (frontier-to-list frontier))
           (adj-list (make-hash-table))
           (max-deg 0))
      (for-each 
       (lambda (u)
         (let ((neighbors (graph-fn u)))
           (for-each 
            (lambda (edge)
              (let ((v (car edge)))
                (when (member v nodes)
                  (hash-table-set! adj-list u (cons v (hash-table-ref/default adj-list u '())))
                  (set! max-deg (max max-deg (length (hash-table-ref adj-list u)))))))
            neighbors)))
       nodes)
      (let ((has-cycle (detect-cycle nodes adj-list)))
        (cond
         ((and (<= max-deg 2) (not has-cycle)) 'dynkin-a)
         ((and (= max-deg 3) (not has-cycle))  'dynkin-d)
         ((and (<= max-deg 2) has-cycle)       'affine-a)
         ((> max-deg 3)                        'wild)
         (else 'dynkin-e)))))

  (define (estimate-quiver-speedup type)
    (case type
      ((dynkin-a) 16.0) ((dynkin-d) 8.0) ((affine-a) 4.0) (else 1.0)))

  (define (classify-quiver-type graph-fn representative-nodes)
    (analyze-frontier-as-quiver (make-analysis-frontier 'stack representative-nodes) graph-fn))

  ;;; ============================================================
  ;;; Physics Simulation Helper Functions
  ;;; ============================================================

  (define (compute-next-frontier frontier graph-fn)
    "Identify regions requiring computation in next step from current wavefront"
    (let ((next-f '()))
      (for-each (lambda (node)
                  (let ((neighbors (graph-fn node)))
                    (for-each (lambda (edge) (set! next-f (cons (car edge) next-f)))
                              neighbors)))
                (frontier-to-list frontier))
      (delete-duplicates next-f)))

  (define (update-localized-fields! frontier grid)
    "Careful local update for non-Dynkin-A cases (placeholder)"
    (print "Warning: update-localized-fields! called (fallback to global update for safety)")
    (update-e-fields! grid)
    (update-h-fields! grid))

  ;;; ============================================================
  ;;; Execution Step Materialization (Maxwell Update Compatible)
  ;;; ============================================================

  (define (execute-vectorized-step! frontier graph-fn grid step context)
    "Execute Maxwell update in batch for physically safe nodes (frontier)"
    (let ((q-type (analyze-frontier-as-quiver frontier graph-fn)))
      (if (eq? q-type 'dynkin-a)
          (begin
            (update-e-fields! grid)
            (update-h-fields! grid))
          (update-localized-fields! frontier grid))
      
      (compute-next-frontier frontier graph-fn)))

  (define (execute-synchronized-step! frontier graph-fn grid step context)
    (update-localized-fields! frontier grid)
    (compute-next-frontier frontier graph-fn))

  (define (execute-sequential-step! frontier graph-fn grid step context)
    (update-localized-fields! frontier grid)
    (compute-next-frontier frontier graph-fn))

  ;;; ============================================================
  ;;; Main API
  ;;; ============================================================

  (define (kak-apply-quiver-safe graph-fn grid sources context #!key (aggressive #f))
    "Receive physics grid and adaptively time-evolve based on Quiver analysis"
    (let ((max-steps (quiver-context-steps context))
          (mode (quiver-context-mode context)))
      
      (let loop ((frontier (make-analysis-frontier mode sources)) (step 0))
        (if (or (>= step max-steps) (null? (cdr frontier)))
            grid
            (let* ((q-type (analyze-frontier-as-quiver frontier graph-fn))
                   (next-nodes
                    (case q-type
                      ((dynkin-a dynkin-d dynkin-e)
                       (execute-vectorized-step! frontier graph-fn grid step context))
                      ((affine-a)
                       (execute-synchronized-step! frontier graph-fn grid step context))
                      (else
                       (execute-sequential-step! frontier graph-fn grid step context)))))
                  (loop (make-analysis-frontier mode next-nodes) (+ step 1))))))))

 ;; end module