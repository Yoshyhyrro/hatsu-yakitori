(module kak_quiver_safety
  (analyze-frontier-as-quiver
   classify-quiver-type
   kak-apply-quiver-safe
   estimate-quiver-speedup
   make-kak-context
   kak-context-steps
   kak-context-mode
   kak-context-info-bits
   kak-context-base)

  (import scheme 
          (chicken base)
          (chicken sort)
          srfi-1 
          srfi-69
          kak_physics_core)

  ;;; ============================================================
  ;;; データ構造定義: KAK Context (修正版)
  ;;; ============================================================
  ;; main.scm の呼び出し (make-kak-context steps mode bits base) に合わせる
  (define-record-type kak-context
    (make-kak-context steps mode info-bits base)
    kak-context?
    (steps     kak-context-steps)
    (mode      kak-context-mode)
    (info-bits kak-context-info-bits)
    (base      kak-context-base))

  ;;; ============================================================
  ;;; フロンティア操作のユーティリティ
  ;;; ============================================================

  (define (frontier-to-list frontier)
    "K-frontier 形式 (mode . data) をリストに変換する"
    (let ((mode (car frontier))
          (data (cdr frontier)))
      (case mode
        ((stack) data)
        ((queue) 
         (if (pair? data)
             (append (car data) (reverse (cdr data)))
             '()))
        (else (if (list? data) data (list data))))))
  ;;; ============================================================
  ;;; Quiver解析ロジック
  ;;; ============================================================

  (define (detect-cycle nodes adj-list)
    (let ((visited (make-hash-table))
          (rec-stack (make-hash-table))
          (found #f))
      (define (dfs u)
        (hash-table-set! visited u #t)
        (hash-table-set! rec-stack u #t)
        (for-each (lambda (v)
                    (cond ((not (hash-table-ref/default visited v #f))
                           (dfs v))
                          ((hash-table-ref/default rec-stack v #f)
                           (set! found #t))))
                  (hash-table-ref/default adj-list u '()))
        (hash-table-set! rec-stack u #f))
      (for-each (lambda (n) (unless (hash-table-ref/default visited n #f) (dfs n))) nodes)
      found))

  (define (analyze-frontier-as-quiver frontier graph-fn)
    (let* ((nodes (frontier-to-list frontier))
           (adj-list (make-hash-table))
           (max-deg 0))
      (for-each 
       (lambda (u)
         (let ((neighbors (graph-fn u)))
           (for-each 
            (lambda (edge)
              (let ((v (car edge)))
                (when (member v nodes)
                  (hash-table-set! adj-list u (cons v (hash-table-ref/default adj-list u '())))
                  (set! max-deg (max max-deg (length (hash-table-ref adj-list u)))))))
            neighbors)))
       nodes)
      (let ((has-cycle (detect-cycle nodes adj-list)))
        (cond
         ((and (<= max-deg 2) (not has-cycle)) 'dynkin-a)
         ((and (= max-deg 3) (not has-cycle))  'dynkin-d)
         ((and (<= max-deg 2) has-cycle)       'affine-a)
         ((> max-deg 3)                        'wild)
         (else 'dynkin-e)))))

  (define (estimate-quiver-speedup type)
    (case type
      ((dynkin-a) 16.0) ((dynkin-d) 8.0) ((affine-a) 4.0) (else 1.0)))

  (define (classify-quiver-type graph-fn representative-nodes)
    (analyze-frontier-as-quiver (cons 'stack representative-nodes) graph-fn))

;;; ============================================================
;;; 物理シミュレーション用ヘルパー関数
;;; ============================================================

  (define (compute-next-frontier frontier graph-fn)
    (let ((next-f '())
          (nodes (frontier-to-list frontier)))
      (for-each (lambda (node)
                  (let ((neighbors (graph-fn node)))
                    (for-each (lambda (edge) (set! next-f (cons (car edge) next-f)))
                              neighbors)))
                nodes)
      (delete-duplicates next-f)))

  (define (update-localized-fields! frontier grid)
    "Dynkin-A以外の場合の慎重な局所更新 (プレースホルダー)"
    ;; 必要に応じてここに局所的なFDTD更新ロジックを実装
    ;; 例えば、frontierに含まれるインデックスのみ更新するなど
    (print "Warning: update-localized-fields! called (fallback to global update for safety)")
    (update-e-fields! grid)
    (update-h-fields! grid))

  ;;; ============================================================
  ;;; 実行ステップの具体化 (Maxwell更新対応版)
  ;;; ============================================================

  (define (execute-vectorized-step! frontier graph-fn grid step context)
    "物理的に安全なノード群（フロンティア）に対して、一括して Maxwell 更新を実行"
    (let ((q-type (analyze-frontier-as-quiver frontier graph-fn)))
      (if (eq? q-type 'dynkin-a)
          ;; Dynkin-Aなら、依存関係を気にせず SIMD/ベクトル更新を呼び出す
          (begin
            (update-e-fields! grid) ; 物理コアの更新
            (update-h-fields! grid))
          ;; そうでなければ、より慎重な（あるいは局所的な）更新を行う
          (update-localized-fields! frontier grid))
      
      ;; 次のステップのフロンティアを計算（波の伝播に合わせて拡張）
      (compute-next-frontier frontier graph-fn)))

  (define (execute-synchronized-step! frontier graph-fn grid step context)
    ;; Affine型用: 境界条件の同期などが必要な場合
    (update-localized-fields! frontier grid)
    (compute-next-frontier frontier graph-fn))

  (define (execute-sequential-step! frontier graph-fn grid step context)
    ;; Wild型など: 安全のためシーケンシャルまたは慎重に更新
    (update-localized-fields! frontier grid)
    (compute-next-frontier frontier graph-fn))

  ;;; ============================================================
  ;;; メイン API (kak-apply-quiver-safe)
  ;;; ============================================================

  (define (kak-apply-quiver-safe graph-fn grid sources context #!key (aggressive #f))
    (let ((max-steps (kak-context-steps context))
          (mode (kak-context-mode context)))
      
      (let loop ((frontier (cons mode sources)) (step 0))
        (if (or (>= step max-steps) (null? (cdr frontier)))
            grid
            (let* ((q-type (analyze-frontier-as-quiver frontier graph-fn))
                   (next-nodes
                    (case q-type
                      ((dynkin-a dynkin-d dynkin-e)
                       (execute-vectorized-step! frontier graph-fn grid step context))
                      ((affine-a)
                       (execute-synchronized-step! frontier graph-fn grid step context))
                      (else
                       (execute-sequential-step! frontier graph-fn grid step context)))))
              (loop (cons mode next-nodes) (+ step 1))))))))
 ;; end module