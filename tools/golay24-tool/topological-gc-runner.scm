;;; ============================================================
;;; tools/topological-gc-runner.scm
;;;
;;; トポロジー GC の実行インターフェース
;;; (modules/topological-gc.scm を利用)
;;;
;;; Usage:
;;;   (run-topological-gc heap 1000)
;;;   (analyze-gc-strategy heap 0.5)
;;;   (benchmark-gc-strategies heap 'traditional 'topological)
;;; ============================================================

(declare (uses topological-gc))

(module topological-gc-runner
  ;; Public API
  (run-topological-gc
   analyze-gc-strategy
   benchmark-gc-strategies
   gc-report
   gc-config)

  (import scheme
          (chicken base)
          (chicken format)
          srfi-1
          topological-gc)

  ;;; ============================================================
  ;;; Configuration
  ;;; ============================================================

  (define *gc-config*
    '((threshold-tau . 0.5)          ;; Gomory-Hu容量閾値
      (max-objects-per-cycle . 100)  ;; 1サイクルの回収上限
      (enable-analysis . #t)         ;; 詳細分析を有効化
      (enable-profiling . #f)))      ;; パフォーマンスプロファイリング

  (define (gc-config key)
    "GC設定値の取得"
    (assoc-ref *gc-config* key))

  (define (gc-config-set! key value)
    "GC設定値の変更"
    (set! *gc-config* 
          (alist-update key value *gc-config*)))

  ;;; ============================================================
  ;;; Main GC Runner
  ;;; ============================================================

  (define (run-topological-gc heap max-objects-to-collect)
    "トポロジーGCを実行
     
     Args:
       heap: メモリヒープ
       max-objects-to-collect: 回収対象オブジェクト数
     
     Returns: (values collected-count freed-bytes report)"
    
    (let* ((root (heap 'root))
           (threshold (gc-config 'threshold-tau))
           
           ;; GC戦略の生成
           (gc-strategy (make-topological-gc-strategy heap root threshold))
           
           ;; 回収対象を決定
           (targets (gc-strategy 'collect max-objects-to-collect))
           (target-count (length targets))
           
           ;; 回収実行
           (freed-bytes (execute-collection heap targets)))
      
      ;; オプション: 詳細分析
      (when (gc-config 'enable-analysis)
        (let ((analysis (topological-gc-analyze gc-strategy)))
          (display-gc-analysis analysis)))
      
      ;; グラフ再構築
      (gc-strategy 'rebuild-graph)
      
      ;; 戻り値
      (values target-count 
              freed-bytes
              `((timestamp . ,(current-time))
                (collected . ,target-count)
                (freed-bytes . ,freed-bytes)
                (mode . topological)))))

  ;;; ============================================================
  ;;; Analysis & Reporting
  ;;; ============================================================

  (define (analyze-gc-strategy heap threshold-tau)
    "GC戦略の詳細分析を実行
     
     Args:
       heap: メモリヒープ
       threshold-tau: 容量閾値 (デフォルト: 0.5)
     
     Returns: 分析結果alist"
    
    (let* ((root (heap 'root))
           (gc-strategy (make-topological-gc-strategy heap root threshold-tau))
           (analysis (topological-gc-analyze gc-strategy)))
      
      ;; 詳細統計の追加計算
      (let ((total (alist-ref 'total-objects analysis)))
        (append analysis
                `((primitive-ratio . 
                   ,(/ (alist-ref 'primitive-count analysis) total))
                  (coproduct-ratio . 
                   ,(/ (alist-ref 'coproduct-count analysis) total))
                  (bottleneck-ratio . 
                   ,(/ (alist-ref 'bottleneck-count analysis) total)))))))

  (define (display-gc-analysis analysis)
    "分析結果を見やすく表示"
    
    (format #t "~%=== Topological GC Analysis ===~%")
    (format #t "Total Objects: ~a~%" (alist-ref 'total-objects analysis))
    (format #t "  Primitive (High-Priority): ~a (~a%)~%"
            (alist-ref 'primitive-count analysis)
            (round (* 100 (alist-ref 'primitive-ratio analysis))))
    (format #t "  Coproduct (Medium-Priority): ~a (~a%)~%"
            (alist-ref 'coproduct-count analysis)
            (round (* 100 (alist-ref 'coproduct-ratio analysis))))
    (format #t "  Bottleneck (Low-Priority): ~a (~a%)~%"
            (alist-ref 'bottleneck-count analysis)
            (round (* 100 (alist-ref 'bottleneck-ratio analysis))))
    (format #t "~%"))

  (define (gc-report)
    "現在のGC設定レポートを生成"
    
    (format #t "~%=== Topological GC Configuration ===~%")
    (format #t "Gomory-Hu Threshold Tau: ~a~%" (gc-config 'threshold-tau))
    (format #t "Max Objects per Cycle: ~a~%" (gc-config 'max-objects-per-cycle))
    (format #t "Analysis Enabled: ~a~%" (gc-config 'enable-analysis))
    (format #t "Profiling Enabled: ~a~%" (gc-config 'enable-profiling))
    (format #t "~%"))

  ;;; ============================================================
  ;;; Benchmarking
  ;;; ============================================================

  (define (benchmark-gc-strategies heap . strategies)
    "複数のGC戦略をベンチマーク比較
     
     Args:
       heap: テストヒープ
       strategies: 'traditional, 'topological, etc.
     
     Returns: ベンチマーク結果"
    
    (let ((results '()))
      
      (for-each
       (lambda (strategy-name)
         (format #t "Benchmarking ~a GC...~%" strategy-name)
         
         (let-values (((count bytes report)
                       (case strategy-name
                         ((topological)
                          (run-topological-gc heap 100))
                         ((traditional)
                          ;; 従来型GC（スタブ実装）
                          (values 95 8192 
                                  '((mode . traditional))))
                         (else
                          (error "Unknown strategy" strategy-name)))))
           
           ;; 結果を記録
           (set! results
                 (cons `((strategy . ,strategy-name)
                         (collected . ,count)
                         (freed-bytes . ,bytes))
                       results))))
       
       strategies)
      
      ;; 比較表示
      (display-benchmark-results (reverse results))))

  (define (display-benchmark-results results)
    "ベンチマーク結果を表形式で表示"
    
    (format #t "~%=== Benchmark Results ===~%")
    (format #t "Strategy          | Collected | Freed Bytes~%")
    (format #t "~64a~%" "")
    
    (for-each
     (lambda (result)
       (format #t "~16a | ~9a | ~11a~%"
               (alist-ref 'strategy result)
               (alist-ref 'collected result)
               (alist-ref 'freed-bytes result)))
     results)
    
    (format #t "~%"))

  ;;; ============================================================
  ;;; Helper Functions
  ;;; ============================================================

  (define (execute-collection heap targets)
    "実際にオブジェクトを回収する
     
     返す: 解放したバイト数"
    
    ;; スタブ実装: 実際はheap APIに委譲
    (let ((freed-bytes 0))
      (for-each
       (lambda (target)
         ;; target オブジェクトを回収
         ;; freed-bytes に加算
         (set! freed-bytes (+ freed-bytes 1024)))  ;; 仮定: 1KB/object
       targets)
      freed-bytes))

  (define (current-time)
    "現在時刻（秒単位UNIX timestamp）"
    ;; Chicken Scheme の時刻関数を使用
    (let ((t (current-seconds)))
      t))

  (define (alist-ref key alist)
    "alist から key の値を取得（ショートカット）"
    (let ((pair (assoc key alist)))
      (if pair (cdr pair) #f)))

  (define (alist-update key value alist)
    "alist 内の key を更新（または追加）"
    (let ((pair (assoc key alist)))
      (if pair
          (map (lambda (p)
                 (if (eq? (car p) key)
                     (cons key value)
                     p))
               alist)
          (cons (cons key value) alist)))))

   ;; end module