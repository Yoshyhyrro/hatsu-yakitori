(module kak_quiver_safety
  (analyze-frontier-as-quiver
   classify-quiver-type
   kak-apply-quiver-safe
   estimate-quiver-speedup
   make-quiver-context
   quiver-context-steps
   quiver-context-mode)

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
  ;;; Frontier Utilities
  ;;; ============================================================

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
    (analyze-frontier-as-quiver (cons 'stack representative-nodes) graph-fn))

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
      
      (let loop ((frontier (cons mode sources)) (step 0))
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
              (loop (cons mode next-nodes) (+ step 1))))))))

 ;; end module