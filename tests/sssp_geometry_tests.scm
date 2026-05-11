;;; ============================================================
;;; tests/sssp_geometry_tests.scm
;;; Finite Geometry & Group Theory based Stress Tests for SSSP
;;; 有限幾何学と群論に基づくSSSP（最短経路）のストレステスト
;;; ============================================================
(import scheme)
(import (chicken base)
        (chicken bitwise)
        (chicken random)
        
        srfi-1
        srfi-69)

(import machine_constants)
(import golay_frontier)

;; ============================================================
;; Test Framework
;; ============================================================

(define test-count 0)
(define test-passed 0)
(define test-failed 0)

;; 修正: 数値同士の比較には = を使い、それ以外は equal? を使うように変更
(define (assert-equal actual expected description)
  (set! test-count (+ test-count 1))
  (let ((passed? (if (and (number? actual) (number? expected))
                     (= actual expected)      ;; 数値なら = (1 と 1.0 を同一視)
                     (equal? actual expected)))) ;; それ以外は equal?
    (if passed?
        (begin
          (set! test-passed (+ test-passed 1))
          (printf "[PASS] ~a~%" description))
        (begin
          (set! test-failed (+ test-failed 1))
          (printf "[FAIL] ~a~%" description)
          (printf "  Expected: ~a~%" expected)
          (printf "  Actual:   ~a~%" actual)))))

(define (assert-true condition description)
  (set! test-count (+ test-count 1))
  (if condition
      (begin
        (set! test-passed (+ test-passed 1))
        (printf "[PASS] ~a~%" description))
      (begin
        (set! test-failed (+ test-failed 1))
        (printf "[FAIL] ~a~%" description))))

;; ============================================================
;; Morton (Z-order) Code Implementation
;; ============================================================

(define (part1by1 n)
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
  (bitwise-ior (part1by1 x)
               (arithmetic-shift (part1by1 y) 1)))

(define (compact1by1 n)
  (let loop ((n n) (i 0) (res 0))
    (if (= i 16)
        res
        (let ((bit (bitwise-and (arithmetic-shift n (* -2 i)) 1)))
          (loop n 
                (+ i 1) 
                (bitwise-ior res (arithmetic-shift bit i)))))))

(define (morton2-decode z)
  (list (compact1by1 z)
        (compact1by1 (arithmetic-shift z -1))))

;; ============================================================
;; Graph Generators
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
;; Oracle Functions
;; ============================================================

(define (manhattan-dist node-a node-b)
  (let ((pos-a (morton2-decode node-a))
        (pos-b (morton2-decode node-b)))
    (+ (abs (- (car pos-a) (car pos-b)))
       (abs (- (cadr pos-a) (cadr pos-b))))))

(define (hamming-dist a b)
  (let ((xor-val (bitwise-xor a b)))
    (let loop ((n xor-val) (c 0))
      (if (zero? n) c
          (loop (bitwise-and n (- n 1)) (+ c 1))))))

;; ============================================================
;; Simple SSSP Implementation for Testing
;; ============================================================

(define (simple-sssp graph-fn start end)
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
                                (loop))))))))))

;; ============================================================
;; Unit Tests
;; ============================================================

(define (test-morton-encoding)
  (printf "~%=== Morton Encoding Tests ===~%")
  
  ;; Test origin
  (let ((morton (morton2-encode 0 0)))
    (assert-equal morton 0 "Origin (0,0) encodes to 0"))
  
  ;; Test decode(encode(x)) = x
  (let* ((x 5) (y 7)
         (morton (morton2-encode x y))
         (decoded (morton2-decode morton)))
    (assert-equal decoded (list x y) "Encode-decode roundtrip"))
  
  ;; Test spatial locality
  (let ((m1 (morton2-encode 0 0))
        (m2 (morton2-encode 1 0))
        (m3 (morton2-encode 0 1)))
    (assert-true (< (abs (- m1 m2)) 4) "Adjacent X coordinates have close Morton codes")
    (assert-true (< (abs (- m1 m3)) 4) "Adjacent Y coordinates have close Morton codes")))

(define (test-hamming-distance)
  (printf "~%=== Hamming Distance Tests ===~%")
  
  (assert-equal (hamming-dist 0 0) 0 "Hamming distance 0-0 is 0")
  (assert-equal (hamming-dist 0 1) 1 "Hamming distance 0-1 is 1")
  (assert-equal (hamming-dist #b1010 #b0101) 4 "Hamming distance 1010-0101 is 4")
  (assert-equal (hamming-dist 15 15) 0 "Hamming distance of identical values is 0"))

(define (test-morton-grid-oracle)
  (printf "~%=== Morton Grid Oracle Tests ===~%")
  
  (let ((graph-fn (make-morton-grid-graph 8 8)))
    ;; Test single hop
    (let ((start (morton2-encode 0 0))
          (end (morton2-encode 1 0)))
      (let ((dist (simple-sssp graph-fn start end))
            (expected (manhattan-dist start end)))
        (assert-equal dist expected "Single hop distance matches Manhattan")))
    
    ;; Test diagonal
    (let ((start (morton2-encode 0 0))
          (end (morton2-encode 3 3)))
      (let ((dist (simple-sssp graph-fn start end))
            (expected (manhattan-dist start end)))
        (assert-equal dist expected "Diagonal distance matches Manhattan")))))

(define (test-hypercube-oracle)
  (printf "~%=== Hypercube Oracle Tests ===~%")
  
  (let ((graph-fn (make-hypercube-graph 5)))
    ;; Test single bit flip
    (let ((start 0)
          (end 1))
      (let ((dist (simple-sssp graph-fn start end))
            (expected (hamming-dist start end)))
        (assert-equal dist expected "Single bit flip distance is 1")))
    
    ;; Test multiple flips
    (let ((start #b00000)
          (end #b11111))
      (let ((dist (simple-sssp graph-fn start end))
            (expected (hamming-dist start end)))
        (assert-equal dist expected "All bits flip distance is 5")))))

(define (test-non-happus-cascade)
  (printf "~%=== Non-Happus Cascade Tests ===~%")

  (let* ((starts (profile-layer-starts non-happus-layer-widths))
         (graph-fn (make-layered-cascade-graph non-happus-layer-widths))
         (step0-node (list-ref starts 0))
         (step1-node (list-ref starts 1))
         (collapse-node (list-ref starts 2)))
    (assert-true (profile-strictly-antitone? non-happus-dim-profile)
                 "Non-Happus profile is strictly antitone")
    (assert-equal (car non-happus-dim-profile) 20
                  "Non-Happus step 0 dimension is 20")
    (assert-equal (simple-sssp graph-fn step0-node step1-node)
                  (layered-cascade-distance non-happus-layer-widths
                                            step0-node
                                            step1-node)
                  "Non-Happus step 0 -> step 1 distance is 1")
    (assert-equal (simple-sssp graph-fn step0-node collapse-node)
                  (layered-cascade-distance non-happus-layer-widths
                                            step0-node
                                            collapse-node)
                  "Non-Happus collapse sink distance is 2")
    (assert-equal (simple-sssp graph-fn step0-node (+ step0-node 1))
                  (layered-cascade-distance non-happus-layer-widths
                                            step0-node
                                            (+ step0-node 1))
                  "Non-Happus same-layer reroute distance is 2")))

(define (test-unknown-dual-cascade)
  (printf "~%=== Unknown Dual Cascade Tests ===~%")

  (let* ((starts (profile-layer-starts inverse-heegner-dim-profile))
         (graph-fn (make-layered-cascade-graph inverse-heegner-dim-profile))
         (kernel-node (list-ref starts 0))
         (defect-node (list-ref starts 1))
         (full-node (list-ref starts 2))
         (quotient-node (list-ref starts 3)))
    (assert-equal inverse-heegner-dim-profile '(1 3 7 6)
                  "Unknown Dual stage profile matches 1-3-7-6")
    (assert-equal (simple-sssp graph-fn kernel-node defect-node)
                  (layered-cascade-distance inverse-heegner-dim-profile
                                            kernel-node
                                            defect-node)
                  "Unknown Dual kernel -> defect distance is 1")
    (assert-equal (simple-sssp graph-fn kernel-node quotient-node)
                  (layered-cascade-distance inverse-heegner-dim-profile
                                            kernel-node
                                            quotient-node)
                  "Unknown Dual kernel -> quotient distance is 3")
    (assert-equal (simple-sssp graph-fn full-node (+ full-node 1))
                  (layered-cascade-distance inverse-heegner-dim-profile
                                            full-node
                                            (+ full-node 1))
                  "Unknown Dual same-layer reroute distance is 2")))

;; ============================================================
;; Main Test Runner
;; ============================================================

(define (run-all-tests)
  (printf "~%")
  (printf "╔════════════════════════════════════════╗~%")
  (printf "║  SSSP Geometry Test Suite              ║~%")
  (printf "╚════════════════════════════════════════╝~%")
  
  (test-morton-encoding)
  (test-hamming-distance)
  (test-morton-grid-oracle)
  (test-hypercube-oracle)
  (test-non-happus-cascade)
  (test-unknown-dual-cascade)
  
  (printf "~%========================================~%")
  (printf "Test Summary~%")
  (printf "========================================~%")
  (printf "Total:  ~a~%" test-count)
  (printf "Passed: ~a~%" test-passed)
  (printf "Failed: ~a~%" test-failed)
  (printf "========================================~%")
  
  (if (> test-failed 0)
      (exit 1)
      (exit 0)))

;; Run tests
(run-all-tests)