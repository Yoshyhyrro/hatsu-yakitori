;; ============================================================
;; tests/golay24_tests.scm
;; Unit tests for Golay[24,12] code and adaptive frontier
;; ============================================================

(import scheme)
(import (chicken base)
        (chicken format))
(import machine-constants)
(import golay-frontier)

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
;; Golay Encoding Tests
;; ============================================================

(define (test-golay-encoding)
  (printf "~%=== Golay Encoding Tests ===~%")
  
  ;; Test: encoding zero
  (let ((codeword (encode-golay24 0)))
    (assert-equal codeword 0 "Encode zero"))
  
  ;; Test: encoding non-zero values produces 24-bit codewords
  (let ((codeword (encode-golay24 #x123)))
    (assert-true (<= codeword #xFFFFFF) "Codeword fits in 24 bits"))
  
  ;; Test: systematic property (info bits in upper 12 bits)
  (let* ((info #xABC)
         (codeword (encode-golay24 info))
         (extracted (bitwise-and (arithmetic-shift codeword -12) #xFFF)))
    (assert-equal extracted info "Systematic encoding preserves info bits")))

;; ============================================================
;; Golay Weight Tests
;; ============================================================

(define (test-golay-weight)
  (printf "~%=== Golay Weight Tests ===~%")
  
  ;; Test: weight of zero
  (assert-equal (golay-weight 0) 0 "Weight of zero codeword")
  
  ;; Test: weight of all-ones in 24 bits
  (assert-equal (golay-weight #xFFFFFF) 24 "Weight of all-ones")
  
  ;; Test: weight of single bit
  (assert-equal (golay-weight #x000001) 1 "Weight of single bit")
  (assert-equal (golay-weight #x800000) 1 "Weight of high bit")
  
  ;; Test: weight properties
  (let* ((info #x555)  ; alternating bits
         (codeword (encode-golay24 info))
         (weight (golay-weight codeword)))
    (assert-true (and (>= weight 0) (<= weight 24))
                 "Weight in valid range [0,24]")))

;; ============================================================
;; Adaptive Frontier Tests
;; ============================================================

(define (test-adaptive-frontier)
  (printf "~%=== Adaptive Frontier Tests ===~%")
  
  ;; Test: frontier creation with low weight (stack mode)
  (let ((frontier (make-adaptive-frontier 0)))
    (assert-equal (adaptive-frontier-mode frontier) 'stack
                  "Low weight → stack mode"))
  
  ;; Test: frontier creation with high weight (queue mode)
  (let ((frontier (make-adaptive-frontier #xFFF)))  ; all info bits set
    (let ((tau (adaptive-frontier-tau frontier)))
      (assert-true (> tau 12) "High info bits → high weight")))
  
  ;; Test: push/pop operations
  (let* ((frontier (make-adaptive-frontier 0))
         (f1 (adaptive-frontier-push frontier 'a))
         (f2 (adaptive-frontier-push f1 'b))
         (f3 (adaptive-frontier-push f2 'c)))
    (let-values (((val1 f4) (adaptive-frontier-pop f3)))
      (assert-equal val1 'c "Stack mode: pop returns last pushed (LIFO)")))
  
  ;; Test: empty frontier
  (let ((frontier (make-adaptive-frontier 0)))
    (let-values (((val _) (adaptive-frontier-pop frontier)))
      (assert-equal val #f "Pop from empty frontier returns #f"))))

;; ============================================================
;; Frontier Mode Control Tests
;; ============================================================

(define (test-frontier-mode)
  (printf "~%=== Frontier Mode Control Tests ===~%")
  
  ;; Test: low tau → stack
  (assert-equal (frontier-mode-from-golay 0) 'stack
                "τ=0 → stack")
  (assert-equal (frontier-mode-from-golay 6) 'stack
                "τ=6 → stack")
  
  ;; Test: high tau → queue
  (assert-equal (frontier-mode-from-golay 12) 'queue
                "τ=12 → queue")
  (assert-equal (frontier-mode-from-golay 24) 'queue
                "τ=24 → queue")
  
  ;; Test: boundary
  (let ((mode-11 (frontier-mode-from-golay 11))
        (mode-12 (frontier-mode-from-golay 12)))
    (assert-equal mode-11 'stack "τ=11 → stack (< 0.5)")
    (assert-equal mode-12 'queue "τ=12 → queue (≥ 0.5)")))

;; ============================================================
;; Integration Tests
;; ============================================================

(define (test-integration)
  (printf "~%=== Integration Tests ===~%")
  
  ;; Test: complete encode-decode cycle
  (let* ((info #x123)
         (codeword (encode-golay24 info)))
    (let-values (((decoded syndrome) (decode-golay24 codeword)))
      (assert-equal decoded info "Decode(Encode(x)) = x")))
  
  ;; Test: frontier with sequence of operations
  (let* ((frontier (make-adaptive-frontier #x100))
         (items '(1 2 3 4 5))
         (f-with-items (fold (lambda (item f)
                               (adaptive-frontier-push f item))
                             frontier
                             items)))
    (let-values (((val _) (adaptive-frontier-pop f-with-items)))
      (assert-true (member val items) "Can retrieve pushed items"))))

;; ============================================================
;; Main Test Runner
;; ============================================================

(define (run-all-tests)
  (printf "~%")
  (printf "╔════════════════════════════════════════╗~%")
  (printf "║  Golay24 Tool Test Suite              ║~%")
  (printf "╚════════════════════════════════════════╝~%")
  
  (test-golay-encoding)
  (test-golay-weight)
  (test-adaptive-frontier)
  (test-frontier-mode)
  (test-integration)
  
  (print-test-summary))

;; Run tests
(run-all-tests)
(module-export all)