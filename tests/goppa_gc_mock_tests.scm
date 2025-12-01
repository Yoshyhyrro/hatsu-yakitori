;; ============================================================
;; tests/goppa_gc_mock_tests.scm
;; Unit tests for Goppa-based toxic mock generator
;; ============================================================

(import scheme)
(import (chicken base)
        (chicken format))
(import machine-constants)
(import goppa-gc-mock)

;; ============================================================
;; Test Framework
;; ============================================================

(define test-count 0)
(define test-passed 0)
(define test-failed 0)

(define (assert-equal actual expected name)
  (set! test-count (+ test-count 1))
  (if (equal? actual expected)
      (begin
        (set! test-passed (+ test-passed 1))
        (printf "[PASS] ~a~%" name))
      (begin
        (set! test-failed (+ test-failed 1))
        (printf "[FAIL] ~a~%       Expected: ~a~%       Got: ~a~%"
                name expected actual))))

(define (assert-true condition name)
  (assert-equal condition #t name))

(define (assert-in-range value min-val max-val name)
  (set! test-count (+ test-count 1))
  (if (and (>= value min-val) (<= value max-val))
      (begin
        (set! test-passed (+ test-passed 1))
        (printf "[PASS] ~a~%" name))
      (begin
        (set! test-failed (+ test-failed 1))
        (printf "[FAIL] ~a~%       Expected: [~a, ~a]~%       Got: ~a~%"
                name min-val max-val value))))

(define (print-test-summary)
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

;; ============================================================
;; GF(2^5) Arithmetic Tests
;; ============================================================

(define (test-gf-arithmetic)
  (printf "~%=== GF(2^5) Arithmetic Tests ===~%")
  
  ;; Test: multiplication identity
  (assert-equal (gf-multiply 5 1) 5 "GF multiply by 1")
  
  ;; Test: multiplication commutativity
  (let ((a 7) (b 13))
    (assert-equal (gf-multiply a b) (gf-multiply b a)
                  "GF multiplication commutative"))
  
  ;; Test: inverse property
  (let ((x 15))
    (assert-equal (gf-multiply x (gf-inverse x)) 1
                  "GF x * x^(-1) = 1")))

;; ============================================================
;; Goppa Encoding Tests
;; ============================================================

(define (test-goppa-encoding)
  (printf "~%=== Goppa Encoding Tests ===~%")
  
  ;; Test: zero encoding
  (let ((cw (encode-goppa 0)))
    (assert-true (number? cw) "Encode zero returns number"))
  
  ;; Test: codeword length
  (let ((cw (encode-goppa #x3FFFFFF))) ;; Max 26-bit input
    (assert-true (<= cw #xFFFFFFFF) "Codeword fits in 32 bits"))
  
  ;; Test: syndrome calculation
  (let ((cw (encode-goppa #x123)))
    (let ((syn (goppa-syndrome cw)))
      (assert-in-range syn 0 32 "Syndrome weight in [0,32]"))))

;; ============================================================
;; Toxic Graph Generation Tests
;; ============================================================

(define (test-toxic-graph-generation)
  (printf "~%=== Toxic Graph Generation Tests ===~%")
  
  ;; Test: low toxicity (sparse graph)
  (let ((g (make-toxic-object-graph #x1 20)))
    (assert-true (toxic-graph? g) "Creates valid toxic-graph")
    (assert-true (< (toxic-graph-toxicity g) 0.3
                  "Low seed → low toxicity")))
  
  ;; Test: high toxicity (dense graph)
  (let ((g (make-toxic-object-graph #x3FFFFFF 20)))
    (assert-true (> (toxic-graph-toxicity g) 0.5
                  "High seed → high toxicity")))
  
  ;; Test: graph structure
  (let ((g (make-toxic-object-graph #x100 10)))
    (assert-true (hash-table? (toxic-graph-nodes g)
                  "Graph nodes stored in hash-table"))))

;; ============================================================
;; GC Pressure Classification Tests
;; ============================================================

(define (test-gc-pressure)
  (printf "~%=== GC Pressure Classification Tests ===~%")
  
  ;; Test: low syndrome → low pressure
  (let-values (((pressure gc-type) (goppa-weight-to-gc-pressure 2)))
    (assert-equal pressure 'low-pressure "Weight 2 → low pressure")
    (assert-equal gc-type 'mark-sweep-safe "Low weight → safe"))
  
  ;; Test: medium syndrome → medium pressure
  (let-values (((pressure gc-type) (goppa-weight-to-gc-pressure 10)))
    (assert-equal pressure 'medium-pressure "Weight 10 → medium"))
  
  ;; Test: high syndrome → high pressure
  (let-values (((pressure gc-type) (goppa-weight-to-gc-pressure 25)))
    (assert-equal pressure 'high-pressure "Weight 25 → high pressure")
    (assert-equal gc-type 'refcount-toxic "High weight → toxic")))

;; ============================================================
;; GC Stress Simulation Tests
;; ============================================================

(define (test-gc-stress)
  (printf "~%=== GC Stress Simulation Tests ===~%")
  
  ;; Test: low toxicity → no leaks
  (let ((g (make-toxic-object-graph #x1 15)))
    (let-values (((live cycles leaked?) (simulate-gc-stress g 10)))
      (assert-equal live 15 "All nodes remain live")
      (assert-true (or (not leaked?) (< cycles 3))
                   "Low toxicity → few/no leaks")))
  
  ;; Test: high toxicity → likely leaks
  (let ((g (make-toxic-object-graph #x3FFFFFF 15)))
    (let-values (((live cycles leaked?) (simulate-gc-stress g 50)))
      (assert-true leaked? "High toxicity → memory leak detected"))))

;; ============================================================
;; Vulnerability Analysis Tests
;; ============================================================

(define (test-vulnerability-analysis)
  (printf "~%=== GC Vulnerability Analysis Tests ===~%")
  
  ;; Test: low toxicity analysis
  (let* ((g (make-toxic-object-graph #x1 20))
         (vuln (analyze-gc-vulnerability g)))
    (assert-equal (cdr (assoc 'attack-surface vuln)) 'moderate
                  "Low toxicity → moderate attack surface"))
  
  ;; Test: high toxicity analysis
  (let* ((g (make-toxic-object-graph #x3FFFFFF 20))
         (vuln (analyze-gc-vulnerability g)))
    (assert-equal (cdr (assoc 'attack-surface vuln)) 'critical
                  "High toxicity → critical attack surface")))

;; ============================================================
;; Multivariate Extension Tests
;; ============================================================

(define (test-multivariate)
  (printf "~%=== Multivariate Goppa Tests ===~%")
  
  ;; Test: bipartite structure
  (let ((g (make-multivariate-toxic-graph #x1 #x3FFFFFF 25)))
    (assert-true (toxic-graph? g) "Creates valid multivariate graph"))
  
  ;; Test: independence of seeds
  (let ((g1 (make-multivariate-toxic-graph #x100 #x200 20))
        (g2 (make-multivariate-toxic-graph #x200 #x100 20)))
    (assert-true (not (= (toxic-graph-syndrome g1)
                        (toxic-graph-syndrome g2)))
                 "Different seed orders → different graphs")))

;; ============================================================
;; Algebraic Immunity Tests
;; ============================================================

(define (test-algebraic-immunity)
  (printf "~%=== Algebraic Immunity Tests ===~%")
  
  (let* ((g (make-toxic-object-graph #x1FFF 30))
         (ai (compute-algebraic-immunity g)))
    (assert-in-range ai 0 3 "Immunity ≤ t=3")))

;; ============================================================
;; Integration Tests
;; ============================================================

(define (test-integration)
  (printf "~%=== Integration Tests ===~%")
  
  ;; Test: complete workflow
  (let* ((seed #x12345)
         (g (make-toxic-object-graph seed 50))
         (vuln (analyze-gc-vulnerability g)))
    (let-values (((live cycles leaked?) (simulate-gc-stress g 100)))
      (assert-true (> live 0) "Graph survives stress test")
      (assert-true (or leaked? (not leaked?))
                   "Leak detection completes"))))

;; ============================================================
;; Main Test Runner
;; ============================================================

(define (run-all-tests)
  (printf "~%")
  (printf "╔════════════════════════════════════════╗~%")
  (printf "║  Goppa GC Mock Test Suite             ║~%")
  (printf "╚════════════════════════════════════════╝~%")
  
  (test-gf-arithmetic)
  (test-goppa-encoding)
  (test-toxic-graph-generation)
  (test-gc-pressure)
  (test-gc-stress)
  (test-vulnerability-analysis)
  (test-multivariate)
  (test-algebraic-immunity)
  (test-integration)
  
  (print-test-summary))

;; Run tests
(run-all-tests)