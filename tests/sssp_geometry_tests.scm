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