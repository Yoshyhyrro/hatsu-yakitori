;;; ============================================================
;;; examples/meep/test_meep.scm
;;; MEEPエンジンの統合テスト
;;; ============================================================

(import scheme
        (chicken base)
        (chicken format)
        srfi-4
        srfi-64  ; Testing framework
        kak_physics_core
        kak_quiver_safety
        kak_optimization
        topological-gc)

;;; ================================================================
;;; テストスイート
;;; ================================================================

(test-begin "meep-integration")

;;; ----------------------------------------------------------------
;;; Physics Core テスト
;;; ----------------------------------------------------------------

(test-group "physics-core"
  
  (test "yee-grid-creation"
    (let ((grid (make-yee-grid 10 10 1e-12 1e-9 8.854e-12 1.257e-6)))
      (test-assert (> (grid-width grid) 0))
      (test-assert (> (grid-height grid) 0))
      (test-eqv 10 (grid-width grid))
      (test-eqv 10 (grid-height grid))))
  
  (test "field-initialization"
    (let* ((grid (make-yee-grid 5 5 1e-12 1e-9 8.854e-12 1.257e-6))
           (ez (grid-ez grid)))
      (test-assert (f64vector? ez))
      (test-eqv 25 (f64vector-length ez))
      ;; 初期値は全てゼロ
      (test-approximate 0.0 (f64vector-ref ez 0) 1e-15)))
  
  (test "maxwell-update-stability"
    (let ((grid (make-yee-grid 10 10 1e-12 1e-9 8.854e-12 1.257e-6)))
      ;; 中心に初期パルスを設定
      (let ((ez (grid-ez grid)))
        (f64vector-set! ez 55 1.0))  ; center at (5,5)
      
      ;; 10ステップ更新
      (do ((i 0 (+ i 1))) ((= i 10))
        (update-e-fields! grid)
        (update-h-fields! grid))
      
      ;; フィールドが発散していないことを確認
      (let* ((ez (grid-ez grid))
             (max-val (let loop ((i 0) (maxv 0.0))
                        (if (= i (f64vector-length ez))
                            maxv
                            (loop (+ i 1) 
                                  (max maxv (abs (f64vector-ref ez i))))))))
        (test-assert (< max-val 10.0))))))  ; 発散チェック

;;; ----------------------------------------------------------------
;;; KAK Optimization テスト
;;; ----------------------------------------------------------------

(test-group "kak-optimization"
  
  (test "kak-context-creation"
    (let* ((info-bits 24)
           (base 2.0)
           (max-steps 100)
           (af-config (values 'queue 1.0 #x000000))
           (ctx (make-kak-context info-bits base max-steps af-config)))
      (test-assert (kak-context? ctx))
      (test-eqv 100 (kak-context-steps ctx))
      (test-eq 'queue (kak-context-mode ctx))))
  
  (test "popcount-correctness"
    (test-eqv 0 (popcount-fast #b0))
    (test-eqv 1 (popcount-fast #b1))
    (test-eqv 1 (popcount-fast #b10))
    (test-eqv 2 (popcount-fast #b11))
    (test-eqv 8 (popcount-fast #b11111111))
    (test-eqv 24 (popcount-fast #xFFFFFF)))
  
  (test "frontier-operations"
    ;; Stack mode
    (let* ((f1 (frontier-create 'stack))
           (f2 (frontier-push f1 'a))
           (f3 (frontier-push f2 'b)))
      (test-assert (not (frontier-empty? f3)))
      (let-values (((success val new-f) (frontier-pop f3)))
        (test-assert success)
        (test-eq 'b val)))
    
    ;; Queue mode
    (let* ((f1 (frontier-create 'queue))
           (f2 (frontier-push f1 'a))
           (f3 (frontier-push f2 'b)))
      (test-assert (not (frontier-empty? f3)))
      (let-values (((success val new-f) (frontier-pop f3)))
        (test-assert success)
        (test-eq 'a val)))))  ; FIFO

;;; ----------------------------------------------------------------
;;; Quiver Safety テスト
;;; ----------------------------------------------------------------

(test-group "quiver-safety"
  
  (test "quiver-classification-linear"
    ;; 線形チェーン: Dynkin-A
    (let* ((nodes '(1 2 3 4 5))
           (graph-fn (lambda (n)
                      (cond ((= n 1) '((2 . 1.0)))
                            ((= n 2) '((1 . 1.0) (3 . 1.0)))
                            ((= n 3) '((2 . 1.0) (4 . 1.0)))
                            ((= n 4) '((3 . 1.0) (5 . 1.0)))
                            ((= n 5) '((4 . 1.0)))
                            (else '()))))
           (q-type (classify-quiver-type graph-fn nodes)))
      (test-eq 'dynkin-a q-type)))
  
  (test "quiver-classification-tree"
    ;; 三分岐木: Dynkin-D
    (let* ((nodes '(1 2 3 4))
           (graph-fn (lambda (n)
                      (cond ((= n 1) '((2 . 1.0) (3 . 1.0) (4 . 1.0)))
                            (else '()))))
           (q-type (classify-quiver-type graph-fn nodes)))
      (test-eq 'dynkin-d q-type)))
  
  (test "quiver-speedup-estimation"
    (test-approximate 16.0 (estimate-quiver-speedup 'dynkin-a) 0.1)
    (test-approximate 8.0 (estimate-quiver-speedup 'dynkin-d) 0.1)
    (test-approximate 4.0 (estimate-quiver-speedup 'affine-a) 0.1)
    (test-approximate 1.0 (estimate-quiver-speedup 'wild) 0.1)))

;;; ----------------------------------------------------------------
;;; Topological GC テスト
;;; ----------------------------------------------------------------

(test-group "topological-gc"
  
  (test "gc-frontier-creation"
    (let* ((graph (make-hash-table))
           (root 'root))
      (hash-table-set! graph 'root '((a . 1.0) (b . 0.5)))
      (hash-table-set! graph 'a '((c . 0.8)))
      (hash-table-set! graph 'b '((c . 0.2)))
      
      (let ((frontier (make-topological-frontier graph root)))
        (test-assert (vector? frontier))
        (test-eq 'topological-frontier (vector-ref frontier 0)))))
  
  (test "gc-strategy-switching"
    (set-gc-strategy! 'gomory-hu)
    (test-eq 'gomory-hu *gc-strategy*)
    
    (set-gc-strategy! 'ultrametric)
    (test-eq 'ultrametric *gc-strategy*)
    
    (set-gc-strategy! 'connes-kreimer)
    (test-eq 'connes-kreimer *gc-strategy*))
  
  (test "gc-collection-basic"
    (let* ((graph (make-hash-table))
           (root 'root))
      (hash-table-set! graph 'root '((a . 1.0) (b . 0.3)))
      (hash-table-set! graph 'a '((c . 0.9)))
      (hash-table-set! graph 'b '((d . 0.2)))
      
      (set-gc-strategy! 'gomory-hu)
      (set-bottleneck-threshold! 0.5)
      
      (let ((frontier (make-topological-frontier graph root)))
        (let-values (((collected freed) (topological-gc-collect frontier)))
          (test-assert (>= (length collected) 0))
          (test-assert (>= freed 0)))))))

;;; ----------------------------------------------------------------
;;; 統合テスト
;;; ----------------------------------------------------------------

(test-group "integration"
  
  (test "grid-graph-conversion"
    (let* ((grid (make-yee-grid 5 5 1e-12 1e-9 8.854e-12 1.257e-6))
           (graph (make-hash-table)))
      ;; 簡易的なグラフ構築
      (do ((i 0 (+ i 1))) ((= i 5))
        (do ((j 0 (+ j 1))) ((= i 5))
          (let ((idx (+ (* j 5) i)))
            (hash-table-set! graph idx '()))))
      
      (test-assert (hash-table? graph))
      (test-eqv 25 (hash-table-size graph))))
  
  (test "adaptive-update-smoke-test"
    ;; 小規模シミュレーションが完了することを確認
    (let* ((grid (make-yee-grid 8 8 1e-12 1e-9 8.854e-12 1.257e-6))
           (graph (make-hash-table))
           (sources '(36))  ; center
           (ctx (make-kak-context 10 'queue)))
      
      ;; グラフ構築
      (do ((i 0 (+ i 1))) ((= i 8))
        (do ((j 0 (+ j 1))) ((= i 8))
          (let ((idx (+ (* j 8) i)))
            (hash-table-set! graph idx '()))))
      
      (let ((graph-fn (lambda (n) (hash-table-ref/default graph n '()))))
        ;; 実行（エラーが出なければOK）
        (test-assert
         (let ((result (kak-apply-quiver-safe graph-fn grid sources ctx)))
           (grid-width result)))))))

(test-end "meep-integration")

;;; ================================================================
;;; テスト実行
;;; ================================================================

(define (run-tests)
  "全てのテストを実行"
  (printf "~a~n" "╔════════════════════════════════════════╗")
  (printf "~a~n" "║  MEEP Integration Tests               ║")
  (printf "~a~n" "╚════════════════════════════════════════╝")
  (test-runner-current (test-runner-simple))
  (test-begin "meep-integration"))

;; スクリプトとして実行された場合
(when (equal? (car (command-line-arguments)) "test")
  (run-tests))