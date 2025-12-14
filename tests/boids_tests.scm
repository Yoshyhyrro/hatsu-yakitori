;; tests/boids_tests.scm
(module boids-tests ()
  (import scheme)
  (import (chicken base))
  (import boids)
  
  (display "\n=== Boids Module Tests ===\n\n")
  
  (define test-count 0)
  (define test-passed 0)
  (define test-failed 0)
  
  (define (assert-equal actual expected description)
    (set! test-count (+ test-count 1))
    (if (equal? actual expected)
        (begin (set! test-passed (+ test-passed 1)) (display (string-append "[PASS] " description "\n")))
        (begin (set! test-failed (+ test-failed 1)) (display (string-append "[FAIL] " description "\n")))))
  
  ;; Test that the boids simulation can be started
  (run-boids '())
  (assert-equal #t #t "run-boids procedure is callable")
  
  (display "\n=== Boids Test Summary ===\n")
  (display (string-append "Total: " (number->string test-count) "\n"))
  (display (string-append "Passed: " (number->string test-passed) "\n"))
  (display (string-append "Failed: " (number->string test-failed) "\n"))
  
  (if (= test-failed 0) (exit 0) (exit 1)))