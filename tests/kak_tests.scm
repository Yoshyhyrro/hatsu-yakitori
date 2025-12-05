;; ============================================================
;; tests/kak_tests.scm
;; Unit tests for kak_decomposition module
;; ============================================================

(import scheme)
(import (chicken base)
        (chicken format)
        srfi-1
        srfi-69  ;; hash-table用に追加 (もしcoreに含まれていなければ)
        core/kak_decomposition
        core/machine_constants
        core/cartan_utils)

;; Test framework
(define test-count 0)
(define test-passed 0)
(define test-failed 0)

(define (assert-true condition description)
  (set! test-count (+ test-count 1))
  (if condition
      (begin
        (set! test-passed (+ test-passed 1))
        (printf "[PASS] ~a~%" description))
      (begin
        (set! test-failed (+ test-failed 1))
        (printf "[FAIL] ~a~%" description))))

(define (assert-equal actual expected description)
  (set! test-count (+ test-count 1))
  (if (equal? actual expected)
      (begin
        (set! test-passed (+ test-passed 1))
        (printf "[PASS] ~a~%" description))
      (begin
        (set! test-failed (+ test-failed 1))
        (printf "[FAIL] ~a~%       Expected: ~a~%       Got: ~a~%"
                description expected actual))))

;; 数値専用の比較アサートを追加 (0 と 0.0 を同一視するため)
(define (assert-num-equal actual expected description)
  (set! test-count (+ test-count 1))
  (if (= actual expected)
      (begin
        (set! test-passed (+ test-passed 1))
        (printf "[PASS] ~a~%" description))
      (begin
        (set! test-failed (+ test-failed 1))
        (printf "[FAIL] ~a~%       Expected: ~a~%       Got: ~a~%"
                description expected actual))))

;; ============================================================
;; Frontier Tests
;; ============================================================

(define (test-frontier-operations)
  (printf "~%=== Frontier Operations ===~%")
  
  (let* ((f1 (K-frontier 'stack))
         (f2 (K-push f1 'a))
         (f3 (K-push f2 'b)))
    (assert-true (not (K-empty? f3)) "Stack not empty after pushes")
    (assert-equal (K-size f3) 2 "Stack size is 2")
    
    (call-with-values
        (lambda () (K-pop f3))
      (lambda (success val f4)
        (assert-true success "Stack pop succeeds")
        (assert-equal val 'b "Stack pops last item (LIFO)"))))
  
  (let* ((f1 (K-frontier 'queue))
         (f2 (K-push f1 'x))
         (f3 (K-push f2 'y)))
    (assert-equal (K-size f3) 2 "Queue size is 2")
    
    (call-with-values
        (lambda () (K-pop f3))
      (lambda (success val f4)
        (assert-equal val 'x "Queue pops first item (FIFO)")))))

;; ============================================================
;; Graph Operations Tests
;; ============================================================

(define (test-graph-operations)
  (printf "~%=== Graph Operations ===~%")
  
  (let ((graph '((a . ((b . 1.0) (c . 2.0)))
                 (b . ((c . 1.5)))
                 (c . ()))))
    (let ((neighbors-a (graph-neighbors graph 'a)))
      (assert-equal (length neighbors-a) 2 "Node 'a' has 2 neighbors")
      ;; memberの戻り値はリストか#fなので、リストならTrue扱い
      (assert-true (if (member '(b . 1.0) neighbors-a) #t #f) "Neighbor 'b' with weight 1.0 exists"))))

;; ============================================================
;; KAK-apply Tests
;; ============================================================

(define (test-kak-apply)
  (printf "~%=== KAK-apply Tests ===~%")
  
  (let ((test-graph
         '((0 . ((1 . 1.0) (2 . 4.0)))
           (1 . ((2 . 2.0) (3 . 5.0)))
           (2 . ((3 . 1.0)))
           (3 . ()))))
    
    (let ((dist (KAK-apply test-graph '(0) 10.0 'stack 10)))
      (assert-true (hash-table? dist) "KAK-apply returns hash-table")
      
      ;; 修正箇所: hash-table-ref/default を使い、数値比較を使用
      (let ((d0 (hash-table-ref/default dist 0 -1)))
         (assert-num-equal d0 0.0 "Source distance is 0"))
         
      (let ((d1 (hash-table-ref/default dist 1 +INF+)))
         (assert-true (< d1 +INF+) "Node 1 is reachable")))))

;; ============================================================
;; Cartan Decomposition Integration Test
;; ============================================================

(define (test-pretty-print-decomposition)
  (printf "~%=== Cartan Decomposition ===~%")
  (let ((B 1000)
        (steps 5))
    ;; エラーが起きずに通過すればOK
    (pretty-print-decomposition B steps)
    (assert-true #t "Decomposition prints without error")))

;; ============================================================
;; Main Test Runner
;; ============================================================

(define (run-tests)
  (printf "~%")
  (printf "╔════════════════════════════════════════╗~%")
  (printf "║  KAK Decomposition Test Suite          ║~%")
  (printf "╚════════════════════════════════════════╝~%")
  
  (test-frontier-operations)
  (test-graph-operations)
  (test-kak-apply)
  (test-pretty-print-decomposition)
  
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

(run-tests)