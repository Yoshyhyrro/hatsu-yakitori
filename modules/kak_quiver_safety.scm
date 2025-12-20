(module kak_quiver_safety
  (analyze-frontier-as-quiver
   classify-quiver-type
   kak-apply-quiver-safe
   estimate-quiver-speedup
   ;; 新たに追加したレコード等のエクスポート
   make-kak-context
   kak-context-steps
   kak-context-mode)

  (import scheme 
          (chicken base)
          (chicken sort)
          srfi-1 
          srfi-69)

  ;;; ============================================================
  ;;; データ構造定義: KAK Context
  ;;; ============================================================
  (define-record-type kak-context
    (make-kak-context steps mode)
    kak-context?
    (steps kak-context-steps)
    (mode  kak-context-mode))

  ;;; ============================================================
  ;;; フロンティア操作のユーティリティ
  ;;; ============================================================

  (define (frontier-to-list frontier)
    "K-frontier 形式 (mode . data) をリストに変換する"
    (let ((mode (car frontier))
          (data (cdr frontier)))
      (case mode
        ((stack) data)
        ((queue) (append (car data) (reverse (cdr data))))
        (else (error "Unknown frontier mode" mode)))))

  ;;; ============================================================
  ;;; Quiver解析ロジック (前述の定義)
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
  ;;; 実行ステップの具体化
  ;;; ============================================================

  ;; 内部ヘルパー: 更新の共通ロジック
  (define (internal-update! frontier graph-fn dist-table step)
    (let ((next-f '()))
      (for-each (lambda (u)
                  (let ((neighbors (graph-fn u)))
                    (for-each (lambda (edge)
                                (let* ((v (car edge))
                                       (new-val (+ (hash-table-ref/default dist-table u 0) (cdr edge))))
                                  (when (< new-val (hash-table-ref/default dist-table v 1e99))
                                    (hash-table-set! dist-table v new-val)
                                    (set! next-f (cons v next-f)))))
                              neighbors)))
                (frontier-to-list frontier))
      (delete-duplicates next-f)))

  (define (execute-vectorized-step! frontier graph-fn dist-table step context)
    (internal-update! frontier graph-fn dist-table step))

  (define (execute-synchronized-step! frontier graph-fn dist-table step context)
    ;; Affine型用: ここに境界条件の同期などを入れる
    (internal-update! frontier graph-fn dist-table step))

  (define (execute-sequential-step! frontier graph-fn dist-table step context)
    (internal-update! frontier graph-fn dist-table step))

  ;;; ============================================================
  ;;; メイン API
  ;;; ============================================================

  (define (kak-apply-quiver-safe graph-fn sources context #!key (aggressive #f))
    (let ((dist-table (make-hash-table))
          (max-steps (kak-context-steps context))
          (mode (kak-context-mode context)))
      
      (let loop ((frontier (cons mode sources)) (step 0))
        (if (or (>= step max-steps) (null? (cdr frontier)))
            dist-table
            (let* ((q-type (analyze-frontier-as-quiver frontier graph-fn))
                   (next-nodes
                    (case q-type
                      ((dynkin-a dynkin-d dynkin-e)
                       (execute-vectorized-step! frontier graph-fn dist-table step context))
                      ((affine-a)
                       (execute-synchronized-step! frontier graph-fn dist-table step context))
                      (else
                       (execute-sequential-step! frontier graph-fn dist-table step context)))))
              (loop (cons mode next-nodes) (+ step 1))))))))

 ;; end module