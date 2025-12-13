;; ============================================================
;; tests/golay24_tests.scm
;; Tests for Golay-controlled adaptive frontier
;; ============================================================

;; include-relative ではなく include を使用
(include "core/machine_constants.scm")
(include "core/golay_frontier.scm")

(import scheme
        (chicken base)       
        (chicken format)     
        (chicken process-context))

;; 以下のimportを追加
(import machine_constants)
(import golay_frontier)

;; ============================================================
;; Test Framework
;; ============================================================

(define test-count 0)
(define test-passed 0)
(define test-failed 0)

(define (test-assert name condition #!optional message)
  (set! test-count (+ test-count 1))
  (if condition
      (begin
        (set! test-passed (+ test-passed 1))
        (printf "  ✓ ~a~%" name))
      (begin
        (set! test-failed (+ test-failed 1))
        (printf "  ✗ ~a~%" name)
        (when message
          (printf "    → ~a~%" message)))))

(define (test-approx name expected actual #!optional (tol 1e-10))
  (test-assert name
               (< (abs (- expected actual)) tol)
               (sprintf "expected ~a, got ~a" expected actual)))

(define (print-summary)
  (printf "~%╔═══════════════════════════════════╗~%")
  (printf "║ Test Results                      ║~%")
  (printf "╠═══════════════════════════════════╣~%")
  (printf "║ Total:  ~a~a║~%" 
          test-count 
          (make-string (max 0 (- 28 (string-length (number->string test-count)))) #\space))
  (printf "║ Passed: ~a~a║~%" 
          test-passed 
          (make-string (max 0 (- 28 (string-length (number->string test-passed)))) #\space))
  (printf "║ Failed: ~a~a║~%" 
          test-failed 
          (make-string (max 0 (- 28 (string-length (number->string test-failed)))) #\space))
  (printf "╚═══════════════════════════════════╝~%"))

;; ============================================================
;; Golay Weight Tests
;; ============================================================

(printf "~%Testing Golay weight calculation:~%")

(test-assert "zero weight for zero"
             (= (golay-weight 0) 0))

(test-assert "weight 1 for single bit"
             (= (golay-weight 1) 1))

(test-assert "weight 2 for two bits"
             (= (golay-weight 3) 2))

(test-assert "weight 12 for 0xFFF"
             (= (golay-weight #xFFF) 12))

(test-assert "weight 24 for max 24-bit"
             (= (golay-weight #xFFFFFF) 24))

;; ============================================================
;; Golay Encoding Tests
;; ============================================================

(printf "~%Testing Golay[24,12] encoding:~%")

(let ((cw0 (encode-golay24 0)))
  (test-assert "encode zero produces codeword"
               (number? cw0)))

(let ((cw1 (encode-golay24 1)))
  (test-assert "encode 1 produces nonzero codeword"
               (> cw1 0)))

(let ((cw-max (encode-golay24 #xFFF)))
  (test-assert "encode max 12-bit produces 24-bit"
               (<= cw-max #xFFFFFF)))

;; ============================================================
;; Golay Decoding Tests
;; ============================================================

(printf "~%Testing Golay[24,12] decoding:~%")

(let ((info 42))
  (let ((encoded (encode-golay24 info)))
    (let-values (((info-out syndrome) (decode-golay24 encoded)))
      (test-assert "decode recovers information"
                   (= (bitwise-and info-out #xFFF) info)))))

;; ============================================================
;; Mode Selection from Golay Weight
;; ============================================================

(printf "~%Testing mode selection from τ:~%")

(test-assert "τ=0 (0/24) → stack"
             (eq? (frontier-mode-from-golay 0) 'stack))

(test-assert "τ=6 (6/24=0.25) → stack"
             (eq? (frontier-mode-from-golay 6) 'stack))

(test-assert "τ=12 (12/24=0.5) → queue"
             (eq? (frontier-mode-from-golay 12) 'queue))

(test-assert "τ=18 (18/24=0.75) → queue"
             (eq? (frontier-mode-from-golay 18) 'queue))

(test-assert "τ=24 (24/24=1.0) → queue"
             (eq? (frontier-mode-from-golay 24) 'queue))

;; ============================================================
;; Adaptive Frontier Tests
;; ============================================================

(printf "~%Testing adaptive frontier with Golay control:~%")

;; Low τ seed (should prefer stack)
(let ((f-low (make-adaptive-frontier 1)))
  (let ((tau-low (adaptive-frontier-tau f-low)))
    (test-assert "low-seed frontier created"
                 (and (vector? f-low)
                      (< tau-low 12)))
    
    (let ((f-pushed (adaptive-frontier-push f-low 'a)))
      (test-assert "push succeeds"
                   (> (length (vector-ref f-pushed 4)) 0))
      
      (let-values (((v f-popped) (adaptive-frontier-pop f-pushed)))
        (test-assert "pop retrieves value"
                     (eq? v 'a))))))

;; High τ seed (should prefer queue)
(let ((f-high (make-adaptive-frontier #xFFF)))
  (let ((tau-high (adaptive-frontier-tau f-high)))
    (test-assert "high-seed frontier created"
                 (and (vector? f-high)
                      (> tau-high 12)))))

;; ============================================================
;; Frontier Mode Consistency
;; ============================================================

(printf "~%Testing frontier mode consistency:~%")

(let ((f (make-adaptive-frontier 5)))
  (let* ((mode1 (adaptive-frontier-mode f))
         (f2 (adaptive-frontier-push f 'x))
         (mode2 (adaptive-frontier-mode f2)))
    (test-assert "mode preserved after push"
                 (eq? mode1 mode2))))

;; ============================================================
;; Summary
;; ============================================================

(print-summary)
(exit (if (> test-failed 0) 1 0))