;;; ============================================================
;;; core/kak_decomposition.scm
;;; KAK Decomposition & Frontier Logic (Galois-Integrated)
;;; ============================================================
(module kak_decomposition
  (K-frontier K-push K-pop K-empty? K-size
   relax-bound graph-neighbors
   KAK-apply
   KAK-apply-golay ;; The primary interface connecting Physics & Math
   +INF+)

  (import scheme)
  (import (chicken base)
          (chicken format)
          srfi-1
          srfi-69)

  ;; Import the "Brain" (Golay/Galois logic)
  (import golay_frontier)

  (declare (unit kak_decomposition))
  (declare (uses srfi-1 srfi-69 golay_frontier))

  (define +INF+ 1e99)

  ;;; ============================================================
  ;;; Frontier Implementation (Stack/Queue abstraction)
  ;;; ============================================================

  (define (K-frontier mode)
    (cond ((eq? mode 'stack) (cons 'stack '()))
          ((eq? mode 'queue) (cons 'queue (cons '() '())))
          (else (error "Unknown frontier mode" mode))))

  (define (K-push frontier val)
    (let ((mode (car frontier)))
      (case mode
        ((stack)
         ;; Stack: LIFO (cons to front)
         (cons 'stack (cons val (cdr frontier))))
        ((queue)
         ;; Queue: FIFO (amortized O(1) using two lists)
         (let* ((fb (cdr frontier))
                (front (car fb))
                (back (cdr fb)))
           (cons 'queue (cons front (cons val back)))))
        (else (error "Unknown frontier mode" mode)))))

  (define (K-pop frontier)
    (let ((mode (car frontier)))
      (case mode
        ((stack)
         (let ((data (cdr frontier)))
           (if (null? data)
               (values #f #f frontier)
               (values #t (car data) (cons 'stack (cdr data))))))
        ((queue)
         (let* ((fb (cdr frontier))
                (front (car fb))
                (back (cdr fb)))
           (cond
             ((not (null? front))
              ;; Normal case: front has elements
              (values #t (car front)
                      (cons 'queue (cons (cdr front) back))))
             ((null? back)
              ;; Both empty
              (values #f #f frontier))
             (else
              ;; Front empty, back has elements: reverse back to front
              (let ((new-front (reverse back)))
                (values #t (car new-front)
                        (cons 'queue (cons (cdr new-front) '()))))))))
        (else (error "Unknown frontier mode" mode)))))

  (define (K-empty? frontier)
    (let ((mode (car frontier)))
      (case mode
        ((stack) (null? (cdr frontier)))
        ((queue)
         (let ((fb (cdr frontier)))
           (and (null? (car fb)) (null? (cdr fb)))))
        (else (error "Unknown frontier mode" mode)))))

  (define (K-size frontier)
    (let ((mode (car frontier)))
      (case mode
        ((stack) (length (cdr frontier)))
        ((queue)
         (let ((fb (cdr frontier)))
           (+ (length (car fb)) (length (cdr fb)))))
        (else (error "Unknown frontier mode" mode)))))

  ;;; ============================================================
  ;;; Utility
  ;;; ============================================================

  (define (relax-bound dist-table v new-dist)
    (let ((current-dist (hash-table-ref/default dist-table v +INF+)))
      (if (< new-dist current-dist)
          (begin
            (hash-table-set! dist-table v new-dist)
            #t)
          #f)))

  (define (graph-neighbors graph node)
    (cond
      ((hash-table? graph)
       (hash-table-ref/default graph node '()))
      ((list? graph)
       (let ((entry (assoc node graph)))
         (if entry (cdr entry) '())))
      (else '())))

  ;;; ============================================================
  ;;; KAK-apply: Core Algorithm
  ;;; ============================================================

  (define (KAK-apply graph sources B frontier-mode max-steps)
    "Apply KAK decomposition algorithm.

     Args:
       graph: Adjacency structure
       sources: List of source nodes
       B: Decomposition bound (not fully utilized in this simplified BFS/DFS)
       frontier-mode: 'stack (DFS) or 'queue (BFS)
       max-steps: Max iterations

     Returns: Hash table of distances"

    (define dist-table (make-hash-table))
    (for-each (lambda (s) (hash-table-set! dist-table s 0.0)) sources)

    ;; Initialize frontier based on the requested mode (Stack or Queue)
    (define init-front
      (fold (lambda (s acc) (K-push acc s))
            (K-frontier frontier-mode)
            sources))

    (let loop ((frontier init-front)
               (step 0))
      ;; Termination: Step limit or empty frontier
      (if (or (>= step max-steps) (K-empty? frontier))
          dist-table

          ;; Process one node (pop from frontier)
          (call-with-values
              (lambda () (K-pop frontier))
            (lambda (success node new-frontier-base)
              (if (not success)
                  dist-table ;; Frontier empty

                  (let* ((current-dist (hash-table-ref dist-table node))
                         (neighbors (graph-neighbors graph node))
                         ;; Calculate next frontier by relaxing neighbors
                         (next-frontier
                          (fold
                           (lambda (edge acc-f)
                             (let* ((nb (car edge))
                                    (edge-weight (cdr edge))
                                    (new-dist (+ current-dist edge-weight)))
                               ;; Only push if relaxation succeeds
                               (if (relax-bound dist-table nb new-dist)
                                   (K-push acc-f nb)
                                   acc-f)))
                           new-frontier-base
                           neighbors)))

                    ;; Recursive step
                    (loop next-frontier (+ step 1)))))))))

  ;;; ============================================================
  ;;; Golay-Controlled Wrapper (The Link between Math & Physics)
  ;;; ============================================================

  (define (KAK-apply-golay graph sources B max-steps info-bits)
    "Wrapper: apply KAK with Golay-encoded control.

     Logic Flow:
     info-bits (12-bit) -> Golay Code (24-bit) -> Galois Height -> Mode Decision -> KAK Strategy

     The 'info-bits' represent the parametrization of the Galois action.
     Low Hamming weight (low height) implies fundamental orbits -> DFS (Stack).
     High Hamming weight (high height) implies ramified orbits -> BFS (Queue)."

    ;; 1. Generate Golay/Galois configuration
    (let* ((config (make-adaptive-frontier info-bits))
           (mode   (adaptive-frontier-mode config))     ;; 'stack or 'queue
           (tau    (adaptive-frontier-tau config))      ;; Hamming Weight / Galois Height proxy
           (cw     (adaptive-frontier-codeword config)))

      ;; Log the decision for verification
      (printf "[KAK-Golay] Info:0x~X -> Codeword:0x~X (tau=~a) -> Strategy:~a~%"
              info-bits cw tau mode)

      ;; 2. Execute KAK search with the mathematically determined mode
      (let ((dist-table (KAK-apply graph sources B mode max-steps)))

        ;; 3. Return results along with the config for further analysis
        (values dist-table
                config   ;; Caller can inspect Galois height/orbit class here
                tau)))))

 ;; end module kak_decomposition