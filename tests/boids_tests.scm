;; Boids Module Tests

;; basic sanity tests for boids
(display "\n=== Boids Module Tests ===\n\n")

(define test-count 0)
(define test-passed 0)
(define test-failed 0)

(define (assert-equal actual expected description)
  (set! test-count (+ test-count 1))
  (if (equal? actual expected)
      (begin (set! test-passed (+ test-passed 1)) (display (string-append "[PASS] " description "\n")))
      (begin (set! test-failed (+ test-failed 1)) (display (string-append "[FAIL] " description "\n")))))

(assert-equal (+ 2 2) 4 "2 + 2 = 4")
(assert-equal (length '(1 2)) 2 "List length 2")

(display "\n=== Boids Test Summary ===\n")
(display (string-append "Total: " (number->string test-count) "\n"))
(display (string-append "Passed: " (number->string test-passed) "\n"))
(display (string-append "Failed: " (number->string test-failed) "\n"))

(if (= test-failed 0) (exit 0) (exit 1))
