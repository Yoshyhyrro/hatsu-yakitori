;; ============================================================
;; tests/test_golay_frontier.scm
;; Tests for Golay-controlled adaptive frontier
;; ============================================================

(import chicken scheme)
(use srfi-1 machine-constants cartan-utils golay-frontier kak-decomposition)

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
        (printf "  ✓ ~a~n" name))
      (begin
        (set! test-failed (+ test-failed 1))
        (printf "  ✗ ~a~n" name)
        (when message
          (printf "    → ~a~n" message)))))

(define (test-approx name expected actual #!optional (tol 1e-10))
  (test-assert name
               (approx-equal? expected actual tol)
               (sprintf "expected ~a, got ~a" expected actual)))

(define (print-summary)
  (printf "~n╔════════════════════════════════════╗~n")
  (printf "║ Test Results                       ║~n")
  (printf "╠════════════════════════════════════╣~n")
  (printf "║ Total:  ~3d                        ║~n" test-count)
  (printf "║ Passed: ~3d                        ║~n" test-passed)
  (printf "║ Failed: ~3d                        ║~n" test-failed)
  (printf "╚════════════════════════════════════╝~n"))

;; ============================================================
;; Golay Weight Tests
;; ============================================================

(printf "~nTesting Golay weight calculation:~n")

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

(printf "~nTesting Golay[24,12] encoding:~n")

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

(printf "~nTesting Golay[24,12] decoding:~n")

(let ((info 42))
  (let ((encoded (encode-golay24 info)))
    (let-values (((info-out syndrome) (decode-golay24 encoded)))
      (test-assert "decode recovers information"
                   (= (bitwise-and info-out #xFFF) info)))))

;; ============================================================
;; Mode Selection from Golay Weight
;; ============================================================

(printf "~nTesting mode selection from τ:~n")

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

(printf "~nTesting adaptive frontier with Golay control:~n")

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

(printf "~nTesting frontier mode consistency:~n")

(let ((f (make-adaptive-frontier 5)))
  (let ((mode1 (adaptive-frontier-mode f))
        (f2 (adaptive-frontier-push f 'x))
        (mode2 (adaptive-frontier-mode f2)))
    (test-assert "mode preserved after push"
                 (eq? mode1 mode2))))

;; ============================================================
;; KAK-apply-golay Integration
;; ============================================================

(printf "~nTesting KAK-apply-golay integration:~n")

(let ((test-graph
       '((0 . ((1 . 1.0) (2 . 4.0)))
         (1 . ((2 . 2.0) (3 . 5.0)))
         (2 . ((3 . 1.0)))
         (3 . ()))))
  
  ;; Test with low info-bits (stack preference)
  (let-values (((dist tau frontier) 
               (KAK-apply-golay test-graph '(0) 10.0 5 1)))
    (test-assert "KAK-apply-golay returns hash-table"
                 (hash-table? dist))
    
    (test-assert "tau value in valid range"
                 (and (>= tau 0) (<= tau 24)))
    
    (test-approx "source distance is 0"
                 0.0 (hash-table-ref dist 0)))
  
  ;; Test with high info-bits (queue preference)
  (let-values (((dist tau frontier)
               (KAK-apply-golay test-graph '(0) 10.0 5 #xFFF)))
    (test-assert "high-tau KAK-apply-golay works"
                 (> tau 12))))

;; ============================================================
;; τ-dependent Algorithm Behavior
;; ============================================================

(printf "~nTesting τ-dependent behavior (DFS vs BFS):~n")

(let ((linear-graph
       '((0 . ((1 . 1.0)))
         (1 . ((2 . 1.0)))
         (2 . ((3 . 1.0)))
         (3 . ()))))
  
  ;; DFS (stack): explores depth first
  (let-values (((dist-dfs tau-dfs _) 
               (KAK-apply-golay linear-graph '(0) 10.0 3 1)))
    (test-assert "DFS explores linear graph"
                 (eq? (frontier-mode-from-golay tau-dfs) 'stack)))
  
  ;; BFS (queue): explores breadth first
  (let-values (((dist-bfs tau-bfs _)
               (KAK-apply-golay linear-graph '(0) 10.0 3 #xFFF)))
    (test-assert "BFS explores linear graph"
                 (eq? (frontier-mode-from-golay tau-bfs) 'queue))))

;; ============================================================
;; Summary
;; ============================================================

(print-summary)
(exit (if (> test-failed 0) 1 0))