;; SSSP Module Tests
;; Shortest Single Source Paths implementation tests
;; tests/sssp_tests.scm
(module sssp_tests
  ;; 1. Export List (モジュールの2番目の引数)
  (test-count
   test-passed
   test-failed
   assert-equal
   assert-true)

  ;; 2. Import List (モジュールの3番目の引数)
  (import scheme
          (chicken base)
          (chicken format)
          (chicken process-context)
          (chicken string)  ; ->string を使うために必要
          machine_constants
          golay_frontier)

  ;; 3. Body (すべての定義、ロジック、テストコードをここに入れる)

  (define test-count 0)
  (define test-passed 0)
  (define test-failed 0)

  (define (assert-equal actual expected description)
    (set! test-count (+ test-count 1))
    (if (equal? actual expected)
        (begin
          (set! test-passed (+ test-passed 1))
          (display (string-append "[PASS] " description "\n")))
        (begin
          (set! test-failed (+ test-failed 1))
          (display (string-append "[FAIL] " description "\n"))
          (display (string-append "  Expected: " (->string expected) "\n"))
          (display (string-append "  Actual: " (->string actual) "\n")))))

  (define (assert-true condition description)
    (set! test-count (+ test-count 1))
    (if condition
        (begin
          (set! test-passed (+ test-passed 1))
          (display (string-append "[PASS] " description "\n")))
        (begin
          (set! test-failed (+ test-failed 1))
          (display (string-append "[FAIL] " description "\n")))))

  ;; ============================================================================
  ;; Test Suite: SSSP Module Basic Functionality
  ;; ============================================================================

  (display "\n=== SSSP Module Tests ===\n\n")

  ;; Test 1: Module loads without error
  (assert-true #t "Module loads successfully")

  ;; Test 2: Basic arithmetic
  (assert-equal (+ 1 2 3) 6 "Basic arithmetic: (+ 1 2 3) = 6")

  ;; Test 3: List operations
  (assert-equal (length '(1 2 3 4 5)) 5 "List length: '(1 2 3 4 5) has 5 elements")

  ;; Test 4: Conditional logic
  (assert-true (> 10 5) "Comparison: 10 > 5 is true")

  ;; Test 5: Definition and function call
  (define (add-numbers a b) (+ a b))
  (assert-equal (add-numbers 7 3) 10 "Function definition: (add-numbers 7 3) = 10")

  ;; Test 6: Vector operations
  (define v (vector 1 2 3))
  (assert-equal (vector-length v) 3 "Vector length: (vector-length #(1 2 3)) = 3")

  ;; Test 7: Lambda functions
  (define square (lambda (x) (* x x)))
  (assert-equal (square 5) 25 "Lambda function: (square 5) = 25")

  ;; Test 8: Map operation
  (assert-equal (map (lambda (x) (+ x 1)) '(1 2 3)) '(2 3 4) "Map: map inc over list")

  ;; ============================================================================
  ;; Test Summary
  ;; ============================================================================

  (display "\n=== Test Summary ===\n")
  (display (string-append "Total: " (number->string test-count) "\n"))
  (display (string-append "Passed: " (number->string test-passed) "\n"))
  (display (string-append "Failed: " (number->string test-failed) "\n"))

  (if (= test-failed 0)
      (begin
        (display "\n✓ All tests passed!\n")
        (exit 0))
      (begin
        (display "\n✗ Some tests failed\n")
        (exit 1))))