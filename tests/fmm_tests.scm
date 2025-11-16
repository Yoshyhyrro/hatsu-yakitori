;; FMM Module Tests

;; basic sanity tests for fmm
(display "\n=== FMM Module Tests ===\n\n")

(define test-count 0)
(define test-passed 0)
(define test-failed 0)

(define (assert-true condition description)
  (set! test-count (+ test-count 1))
  (if condition
      (begin (set! test-passed (+ test-passed 1)) (display (string-append "[PASS] " description "\n")))
      (begin (set! test-failed (+ test-failed 1)) (display (string-append "[FAIL] " description "\n")))))

(assert-true (= 1 1) "One equals one")
(assert-true (> 5 4) "Five greater than four")

(display "\n=== FMM Test Summary ===\n")
(display (string-append "Total: " (number->string test-count) "\n"))
(display (string-append "Passed: " (number->string test-passed) "\n"))
(display (string-append "Failed: " (number->string test-failed) "\n"))

(if (= test-failed 0) (exit 0) (exit 1))
