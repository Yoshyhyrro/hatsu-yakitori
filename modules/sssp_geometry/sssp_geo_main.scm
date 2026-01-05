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
          (queue '()))
      
      (hash-table-set! dist start 0)
      (set! queue (list start))
      
      (let loop ()
        (unless (null? queue)
          (let ((current (car queue)))
            (set! queue (cdr queue))
            
            (unless (hash-table-exists? visited current)
              (hash-table-set! visited current #t)
              
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
                         (set! queue (append queue (list neighbor)))))))
                 neighbors)))
            
            (loop))))
      
      (hash-table-ref/default dist end +inf.0)))

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
    (printf "  test-all [trials]                      Run all tests~%")
    (printf "  info                                   Show module info~%")
    (printf "  help                                   Show this help~%~%")
    (printf "Examples:~%")
    (printf "  sssp_geometry_app test-morton 32 32 20~%")
    (printf "  sssp_geometry_app test-hypercube 10 20~%")
    (printf "  sssp_geometry_app test-all~%~%"))

  (define (show-info)
    (printf "~%SSSP Geometry Tool~%")
    (printf "==================~%")
    (printf "Version: 0.1.0~%")
    (printf "Description: Finite geometry-based SSSP stress testing~%")
    (printf "~%Features:~%")
    (printf "  - Morton-encoded grid graphs (spatial locality)~%")
    (printf "  - Hypercube graphs (high connectivity)~%")
    (printf "  - Oracle-based validation (Manhattan/Hamming distance)~%")
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
            
            ((equal? command "test-all")
             (let ((trials (if (> (length args) 1)
                              (string->number (cadr args))
                              10)))
               (printf "~%╔════════════════════════════════════════╗~%")
               (printf "║  SSSP Geometry Full Test Suite        ║~%")
               (printf "╚════════════════════════════════════════╝~%")
               
               (let ((result1 (run-morton-grid-test 32 32 trials))
                     (result2 (run-hypercube-test 10 trials)))
                 
                 (printf "~%╔════════════════════════════════════════╗~%")
                 (printf "║  Final Results                         ║~%")
                 (printf "╠════════════════════════════════════════╣~%")
                 (printf "║  Morton Grid:  ~a                      ║~%"
                         (if result1 "PASS" "FAIL"))
                 (printf "║  Hypercube:    ~a                      ║~%"
                         (if result2 "PASS" "FAIL"))
                 (printf "╚════════════════════════════════════════╝~%")
                 
                 (exit (if (and result1 result2) 0 1)))))
            
            (else
             (printf "Unknown command: ~a~%" command)
             (print-usage)
             (exit 1))))))

  ;; コマンドライン引数を使って実行
  (main (command-line-arguments)))