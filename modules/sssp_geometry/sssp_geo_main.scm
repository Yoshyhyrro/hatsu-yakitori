;;; ============================================================
;;; modules/sssp_geometry/sssp_geo_main.scm
;;; ============================================================



(include "machine_constants.scm")
(include "golay_frontier.scm")
(include "cartan_utils.scm")


(module sssp_geo_main *
  
  (import scheme)
  (import (chicken base)
          (chicken format)
          (chicken bitwise)
          (chicken random)
          (chicken process-context)
          srfi-1
          srfi-69)

  ;; 外部モジュールのインポート
  (import machine_constants)
  (import golay_frontier)
  

  ;; ============================================================
  ;; Morton (Z-order) Code Implementation
  ;; ============================================================

  (define (part1by1 n)
    "Spread 16-bit integer to 32 bits (insert 0 between each bit)"
    (let loop ((n (bitwise-and n #xFFFF))
               (i 0)
               (res 0))
      (if (= i 16)
          res
          (let ((bit (bitwise-and (arithmetic-shift n (- i)) 1)))
            (loop n 
                  (+ i 1) 
                  (bitwise-ior res (arithmetic-shift bit (* 2 i))))))))

  (define (morton2-encode x y)
    "Encode 2D coordinates (x,y) to Morton code (Z-order)"
    (bitwise-ior (part1by1 x)
                 (arithmetic-shift (part1by1 y) 1)))

  (define (compact1by1 n)
    "Compact 32-bit to 16-bit (extract every other bit)"
    (let loop ((n n) (i 0) (res 0))
      (if (= i 16)
          res
          (let ((bit (bitwise-and (arithmetic-shift n (* -2 i)) 1)))
            (loop n 
                  (+ i 1) 
                  (bitwise-ior res (arithmetic-shift bit i)))))))

  (define (morton2-decode z)
    "Decode Morton code to 2D coordinates"
    (list (compact1by1 z)
          (compact1by1 (arithmetic-shift z -1))))

  ;; ============================================================
  ;; Graph Generators (Implicit Graphs)
  ;; ============================================================

  (define (make-morton-grid-graph width height)
    (lambda (node-id)
      (let* ((coords (morton2-decode node-id))
             (x (car coords))
             (y (cadr coords))
             (neighbors '()))
        (let ((candidates 
               `((,(- x 1) ,y) (,(+ x 1) ,y) 
                 (,x ,(- y 1)) (,x ,(+ y 1)))))
          (for-each 
           (lambda (c)
             (let ((cx (car c)) (cy (cadr c)))
               (when (and (>= cx 0) (< cx width) 
                          (>= cy 0) (< cy height))
                 (set! neighbors (cons (cons (morton2-encode cx cy) 1.0) neighbors)))))
           candidates)
          neighbors))))

  (define (make-hypercube-graph bits)
    (lambda (node-id)
      (let loop ((i 0) (neighbors '()))
        (if (= i bits)
            neighbors
            (let ((neighbor (bitwise-xor node-id (arithmetic-shift 1 i))))
              (loop (+ i 1) (cons (cons neighbor 1.0) neighbors)))))))

  ;; ============================================================
  ;; Proof-driven Cascade Graphs
  ;; ============================================================

  (define non-happus-dim-profile '(20 10 0))
  (define non-happus-layer-widths '(20 10 1))
  (define inverse-heegner-dim-profile '(1 3 7 6))
  (define petersen-vertex-count 10)
  (define petersen-cycle-rank 6)

  (define (profile-total-nodes layer-sizes)
    (let loop ((remaining layer-sizes)
               (total 0))
      (if (null? remaining)
          total
          (loop (cdr remaining) (+ total (car remaining))))))

  (define (profile-layer-starts layer-sizes)
    (let loop ((remaining layer-sizes)
               (offset 0)
               (starts '()))
      (if (null? remaining)
          (reverse starts)
          (loop (cdr remaining)
                (+ offset (car remaining))
                (cons offset starts)))))

  (define (profile-strictly-antitone? profile)
    (or (null? profile)
        (null? (cdr profile))
        (and (> (car profile) (cadr profile))
             (profile-strictly-antitone? (cdr profile)))))

  (define (layered-node->layer layer-sizes node-id)
    (let loop ((remaining layer-sizes)
               (layer 0)
               (offset 0))
      (cond
        ((null? remaining)
         (error "layered-node->layer: invalid node id" node-id))
        ((< node-id (+ offset (car remaining)))
         layer)
        (else
         (loop (cdr remaining)
               (+ layer 1)
               (+ offset (car remaining)))))))

  (define (make-layered-cascade-graph layer-sizes)
    (let* ((starts (profile-layer-starts layer-sizes))
           (layer-count (length layer-sizes)))
      (lambda (node-id)
        (let* ((layer (layered-node->layer layer-sizes node-id))
               (neighbors '()))
          (define (append-layer-neighbors target-layer)
            (let ((start (list-ref starts target-layer))
                  (size (list-ref layer-sizes target-layer)))
              (do ((i 0 (+ i 1)))
                  ((= i size))
                (set! neighbors
                      (cons (cons (+ start i) 1.0) neighbors)))))
          (when (> layer 0)
            (append-layer-neighbors (- layer 1)))
          (when (< layer (- layer-count 1))
            (append-layer-neighbors (+ layer 1)))
          neighbors))))

  (define (layered-cascade-distance layer-sizes node-a node-b)
    (if (= node-a node-b)
        0
        (let ((layer-a (layered-node->layer layer-sizes node-a))
              (layer-b (layered-node->layer layer-sizes node-b)))
          (if (= layer-a layer-b)
              2
              (abs (- layer-a layer-b))))))

  ;; ============================================================
  ;; Oracle Functions (Ground Truth)
  ;; ============================================================

  (define (manhattan-dist node-a node-b)
    (let ((pos-a (morton2-decode node-a))
          (pos-b (morton2-decode node-b)))
      (+ (abs (- (car pos-a) (car pos-b)))
         (abs (- (cadr pos-a) (cadr pos-b))))))

  (define (hamming-dist a b)
    (let ((xor-val (bitwise-xor a b)))
      (let loop ((n xor-val) (c 0))
        (if (zero? n) 
            c
            (loop (bitwise-and n (- n 1)) (+ c 1))))))

  ;; ============================================================
  ;; Simple BFS SSSP Implementation (for testing)
  ;; ============================================================

  (define (simple-bfs-sssp graph-fn start end)
    (let ((visited (make-hash-table))
          (dist (make-hash-table))
          (front '())
          (back '()))

      (define (queue-empty?)
        (and (null? front) (null? back)))

      (define (enqueue! node)
        (set! back (cons node back)))

      (define (dequeue!)
        (when (null? front)
          (set! front (reverse back))
          (set! back '()))
        (let ((node (car front)))
          (set! front (cdr front))
          node))
      
      (hash-table-set! dist start 0)
      (set! front (list start))
      
      (let loop ()
        (if (queue-empty?)
            (hash-table-ref/default dist end +inf.0)
            (let ((current (dequeue!)))
              (if (hash-table-exists? visited current)
                  (loop)
                  (begin
                    (hash-table-set! visited current #t)
                    (if (= current end)
                        (hash-table-ref dist current)
                        (begin
                          (let ((current-dist (hash-table-ref dist current))
                                (neighbors (graph-fn current)))
                            (for-each
                             (lambda (edge)
                               (let ((neighbor (car edge))
                                     (weight (cdr edge)))
                                 (let ((new-dist (+ current-dist weight)))
                                   (when (or (not (hash-table-exists? dist neighbor))
                                            (< new-dist (hash-table-ref dist neighbor)))
                                     (hash-table-set! dist neighbor new-dist)
                                     (enqueue! neighbor)))))
                             neighbors))
                          (loop)))))))))

  (define (run-non-happus-test num-trials)
    (printf "~%=== Non-Happus Cascade Test (~a trials) ===~%" num-trials)
    (printf "  Stage profile: ~a~%" non-happus-dim-profile)
    (let* ((graph-fn (make-layered-cascade-graph non-happus-layer-widths))
           (starts (profile-layer-starts non-happus-layer-widths))
           (step0-node (list-ref starts 0))
           (step1-node (list-ref starts 1))
           (collapse-node (list-ref starts 2))
           (total-nodes (profile-total-nodes non-happus-layer-widths))
           (passed 0)
           (failed 0)
           (fixed-checks 6))

      (define (check-true label condition)
        (if condition
            (begin
              (set! passed (+ passed 1))
              (printf "  Check: ~a => PASS~%" label))
            (begin
              (set! failed (+ failed 1))
              (printf "  Check: ~a => FAIL~%" label))))

      (define (check-dist label start end)
        (let* ((actual-dist (simple-bfs-sssp graph-fn start end))
               (expected-dist (layered-cascade-distance non-happus-layer-widths
                                                        start
                                                        end)))
          (if (= actual-dist expected-dist)
              (begin
                (set! passed (+ passed 1))
                (printf "  Check: ~a => PASS (dist=~a)~%" label actual-dist))
              (begin
                (set! failed (+ failed 1))
                (printf "  Check: ~a => FAIL~%" label)
                (printf "    Start=~a, End=~a~%" start end)
                (printf "    Expected=~a, Actual=~a~%"
                        expected-dist actual-dist)))))

      (check-true "20 -> 10 -> 0 is strictly antitone"
                  (profile-strictly-antitone? non-happus-dim-profile))
      (check-true "Jacobi dimension matches 2 * Petersen vertices"
                  (= (car non-happus-dim-profile)
                     (* 2 petersen-vertex-count)))
      (check-true "Cycle rank differs from step 0 dimension"
                  (not (= petersen-cycle-rank (car non-happus-dim-profile))))
      (check-dist "Step 0 to step 1" step0-node step1-node)
      (check-dist "Step 0 to collapse sink" step0-node collapse-node)
      (check-dist "Same-layer reroute" step0-node (+ step0-node 1))

      (do ((i 0 (+ i 1)))
          ((= i num-trials))
        (let* ((start (pseudo-random-integer total-nodes))
               (end (pseudo-random-integer total-nodes))
               (actual-dist (simple-bfs-sssp graph-fn start end))
               (expected-dist (layered-cascade-distance non-happus-layer-widths
                                                        start
                                                        end)))
          (if (= actual-dist expected-dist)
              (begin
                (set! passed (+ passed 1))
                (printf "  Trial ~a/~a: PASS (dist=~a)~%"
                        (+ i 1) num-trials actual-dist))
              (begin
                (set! failed (+ failed 1))
                (printf "  Trial ~a/~a: FAIL~%" (+ i 1) num-trials)
                (printf "    Start=~a, End=~a~%" start end)
                (printf "    Expected=~a, Actual=~a~%"
                        expected-dist actual-dist)))))

      (printf "~%Results: ~a/~a passed, ~a/~a failed~%"
              passed
              (+ fixed-checks num-trials)
              failed
              (+ fixed-checks num-trials))
      (= failed 0)))

  (define (run-unknown-dual-test num-trials)
    (printf "~%=== Unknown Dual Cascade Test (~a trials) ===~%" num-trials)
    (printf "  Stage profile: ~a~%" inverse-heegner-dim-profile)
    (let* ((graph-fn (make-layered-cascade-graph inverse-heegner-dim-profile))
           (starts (profile-layer-starts inverse-heegner-dim-profile))
           (kernel-node (list-ref starts 0))
           (defect-node (list-ref starts 1))
           (full-node (list-ref starts 2))
           (quotient-node (list-ref starts 3))
           (total-nodes (profile-total-nodes inverse-heegner-dim-profile))
           (passed 0)
           (failed 0)
           (fixed-checks 6))

      (define (check-true label condition)
        (if condition
            (begin
              (set! passed (+ passed 1))
              (printf "  Check: ~a => PASS~%" label))
            (begin
              (set! failed (+ failed 1))
              (printf "  Check: ~a => FAIL~%" label))))

      (define (check-dist label start end)
        (let* ((actual-dist (simple-bfs-sssp graph-fn start end))
               (expected-dist (layered-cascade-distance inverse-heegner-dim-profile
                                                        start
                                                        end)))
          (if (= actual-dist expected-dist)
              (begin
                (set! passed (+ passed 1))
                (printf "  Check: ~a => PASS (dist=~a)~%" label actual-dist))
              (begin
                (set! failed (+ failed 1))
                (printf "  Check: ~a => FAIL~%" label)
                (printf "    Start=~a, End=~a~%" start end)
                (printf "    Expected=~a, Actual=~a~%"
                        expected-dist actual-dist)))))

      (check-true "Kernel stage has dimension 1"
                  (= (car inverse-heegner-dim-profile) 1))
      (check-true "Defect stage has dimension 3"
                  (= (cadr inverse-heegner-dim-profile) 3))
      (check-true "Full stage expands to dimension 7"
                  (= (caddr inverse-heegner-dim-profile) 7))
      (check-dist "Kernel to defect" kernel-node defect-node)
      (check-dist "Kernel to quotient" kernel-node quotient-node)
      (check-dist "Same-layer reroute in full stage" full-node (+ full-node 1))

      (do ((i 0 (+ i 1)))
          ((= i num-trials))
        (let* ((start (pseudo-random-integer total-nodes))
               (end (pseudo-random-integer total-nodes))
               (actual-dist (simple-bfs-sssp graph-fn start end))
               (expected-dist (layered-cascade-distance inverse-heegner-dim-profile
                                                        start
                                                        end)))
          (if (= actual-dist expected-dist)
              (begin
                (set! passed (+ passed 1))
                (printf "  Trial ~a/~a: PASS (dist=~a)~%"
                        (+ i 1) num-trials actual-dist))
              (begin
                (set! failed (+ failed 1))
                (printf "  Trial ~a/~a: FAIL~%" (+ i 1) num-trials)
                (printf "    Start=~a, End=~a~%" start end)
                (printf "    Expected=~a, Actual=~a~%"
                        expected-dist actual-dist)))))

      (printf "~%Results: ~a/~a passed, ~a/~a failed~%"
              passed
              (+ fixed-checks num-trials)
              failed
              (+ fixed-checks num-trials))
      (= failed 0)))

  ;; ============================================================
  ;; Test Runners
  ;; ============================================================

  (define (run-morton-grid-test width height num-trials)
    (printf "~%=== Morton Grid Test (~ax~a, ~a trials) ===~%" 
            width height num-trials)
    
    (let ((graph-fn (make-morton-grid-graph width height))
          (passed 0)
          (failed 0))
      
      (do ((i 0 (+ i 1)))
          ((= i num-trials))
        (let* ((start (pseudo-random-integer (* width height)))
               (end (pseudo-random-integer (* width height)))
               (actual-dist (simple-bfs-sssp graph-fn start end))
               (expected-dist (manhattan-dist start end)))
          
          (if (= actual-dist expected-dist)
              (begin
                (set! passed (+ passed 1))
                (printf "  Trial ~a/~a: PASS (dist=~a)~%" 
                        (+ i 1) num-trials actual-dist))
              (begin
                (set! failed (+ failed 1))
                (printf "  Trial ~a/~a: FAIL~%" (+ i 1) num-trials)
                (printf "    Start=~a, End=~a~%" start end)
                (printf "    Expected=~a, Actual=~a~%" 
                        expected-dist actual-dist)))))
      
      (printf "~%Results: ~a/~a passed, ~a/~a failed~%" 
              passed num-trials failed num-trials)
      (= failed 0)))

  (define (run-hypercube-test bits num-trials)
    (printf "~%=== Hypercube Test (~a-bit, ~a trials) ===~%" 
            bits num-trials)
    
    (let ((graph-fn (make-hypercube-graph bits))
          (max-node (arithmetic-shift 1 bits))
          (passed 0)
          (failed 0))
      
      (do ((i 0 (+ i 1)))
          ((= i num-trials))
        (let* ((start (pseudo-random-integer max-node))
               (end (pseudo-random-integer max-node))
               (actual-dist (simple-bfs-sssp graph-fn start end))
               (expected-dist (hamming-dist start end)))
          
          (if (= actual-dist expected-dist)
              (begin
                (set! passed (+ passed 1))
                (printf "  Trial ~a/~a: PASS (dist=~a)~%" 
                        (+ i 1) num-trials actual-dist))
              (begin
                (set! failed (+ failed 1))
                (printf "  Trial ~a/~a: FAIL~%" (+ i 1) num-trials)
                (printf "    Start=~a, End=~a~%" start end)
                (printf "    Expected=~a, Actual=~a~%" 
                        expected-dist actual-dist)))))
      
      (printf "~%Results: ~a/~a passed, ~a/~a failed~%" 
              passed num-trials failed num-trials)
      (= failed 0)))

  ;; ============================================================
  ;; Command-line Interface
  ;; ============================================================

  (define (print-usage)
    (printf "~%SSSP Geometry Tool~%")
    (printf "==================~%~%")
    (printf "Usage: sssp_geometry_app <command> [options]~%~%")
    (printf "Commands:~%")
    (printf "  test-morton <width> <height> [trials]  Run Morton grid test~%")
    (printf "  test-hypercube <bits> [trials]         Run hypercube test~%")
    (printf "  test-non-happus [trials]               Run Non-Happus cascade test~%")
    (printf "  test-unknown-dual [trials]             Run Unknown Dual cascade test~%")
    (printf "  test-all [trials]                      Run all tests~%")
    (printf "  info                                   Show module info~%")
    (printf "  help                                   Show this help~%~%")
    (printf "Examples:~%")
    (printf "  sssp_geometry_app test-morton 32 32 20~%")
    (printf "  sssp_geometry_app test-hypercube 10 20~%")
    (printf "  sssp_geometry_app test-non-happus 20~%")
    (printf "  sssp_geometry_app test-unknown-dual 20~%")
    (printf "  sssp_geometry_app test-all~%~%"))

  (define (show-info)
    (printf "~%SSSP Geometry Tool~%")
    (printf "==================~%")
    (printf "Version: 0.1.0~%")
    (printf "Description: Finite geometry-based SSSP stress testing~%")
    (printf "~%Features:~%")
    (printf "  - Morton-encoded grid graphs (spatial locality)~%")
    (printf "  - Hypercube graphs (high connectivity)~%")
    (printf "  - Non-Happus collapse graph (20 -> 10 -> 0)~%")
    (printf "  - Unknown Dual cascade graph (1 -> 3 -> 7 -> 6)~%")
    (printf "  - Oracle-based validation (Manhattan/Hamming/layered distance)~%")
    (printf "~%Dependencies:~%")
    (printf "  - machine-constants~%")
    (printf "  - golay-frontier~%~%"))

  ;; ============================================================
  ;; Main Entry Point
  ;; ============================================================

  (define (main args)
    (if (null? args)
        (print-usage)
        (let ((command (car args)))
          (cond
            ((equal? command "help")
             (print-usage))
            
            ((equal? command "info")
             (show-info))
            
            ((equal? command "test-morton")
             (if (< (length args) 3)
                 (begin
                   (printf "Error: test-morton requires <width> <height> [trials]~%")
                   (exit 1))
                 (let ((width (string->number (cadr args)))
                       (height (string->number (caddr args)))
                       (trials (if (> (length args) 3)
                                  (string->number (cadddr args))
                                  10)))
                   (let ((result (run-morton-grid-test width height trials)))
                     (exit (if result 0 1))))))
            
            ((equal? command "test-hypercube")
             (if (< (length args) 2)
                 (begin
                   (printf "Error: test-hypercube requires <bits> [trials]~%")
                   (exit 1))
                 (let ((bits (string->number (cadr args)))
                       (trials (if (> (length args) 2)
                                  (string->number (caddr args))
                                  10)))
                   (let ((result (run-hypercube-test bits trials)))
                     (exit (if result 0 1))))))

                ((equal? command "test-non-happus")
                 (let ((trials (if (> (length args) 1)
                      (string->number (cadr args))
                      10)))
                   (let ((result (run-non-happus-test trials)))
               (exit (if result 0 1)))))

                ((equal? command "test-unknown-dual")
                 (let ((trials (if (> (length args) 1)
                      (string->number (cadr args))
                      10)))
                   (let ((result (run-unknown-dual-test trials)))
               (exit (if result 0 1)))))
            
            ((equal? command "test-all")
             (let ((trials (if (> (length args) 1)
                              (string->number (cadr args))
                              10)))
               (printf "~%╔════════════════════════════════════════╗~%")
               (printf "║  SSSP Geometry Full Test Suite        ║~%")
               (printf "╚════════════════════════════════════════╝~%")
               
               (let ((result1 (run-morton-grid-test 32 32 trials))
                   (result2 (run-hypercube-test 10 trials))
                   (result3 (run-non-happus-test trials))
                   (result4 (run-unknown-dual-test trials)))
                 
                 (printf "~%╔════════════════════════════════════════╗~%")
                 (printf "║  Final Results                         ║~%")
                 (printf "╠════════════════════════════════════════╣~%")
                 (printf "║  Morton Grid:  ~a                      ║~%"
                         (if result1 "PASS" "FAIL"))
                 (printf "║  Hypercube:    ~a                      ║~%"
                         (if result2 "PASS" "FAIL"))
               (printf "║  Non-Happus:   ~a                      ║~%"
                 (if result3 "PASS" "FAIL"))
               (printf "║  Unknown Dual: ~a                      ║~%"
                 (if result4 "PASS" "FAIL"))
                 (printf "╚════════════════════════════════════════╝~%")
                 
               (exit (if (and result1 result2 result3 result4) 0 1)))))
            
            (else
             (printf "Unknown command: ~a~%" command)
             (print-usage)
             (exit 1))))))

  ;; コマンドライン引数を使って実行
  (main (command-line-arguments)))