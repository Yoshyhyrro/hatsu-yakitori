;;; ============================================================
;;; tests/sssp_geometry_tests.scm
;;; Finite Geometry & Group Theory based Stress Tests for SSSP
;;; 有限幾何学と群論に基づくSSSP（最短経路）のストレステスト
;;; ============================================================
;;;
;;; 目的:
;;; Morton符号やGolay符号の性質を利用して「正解（Oracle）がわかっている」
;;; 複雑なグラフ構造を自動生成し、SSSPアルゴリズムのバグを検出する。
;;;
;;; 依存:
;;; machine-constants (ユーザー提供モジュール)
;;;
;;; 使用法:
;;; (import sssp-geometry-tests)
;;; (run-geometry-stress-tests my-shortest-path-function)

(module sssp-geometry-tests
  (run-geometry-stress-tests
   make-morton-grid-graph
   make-hypercube-graph)
   

  (import scheme)
  (import (chicken base)
          (chicken bitwise)  ;; arithmetic-shift, bitwise-and, etc.
          (chicken random)   ;; pseudo-random-integer
          (chicken format)   ;; format
          (chicken sort)     ;; sort
          srfi-1)            ;; lists

  ;; machine-constantsのロード（もしパスが通っていればimport、なければモック）
  ;; ここではテストを自己完結させるため、必要なビット操作のみ再定義またはラップする
  ;; ユーザー環境で machine-constants が使える場合はそちらを優先してください。
  
  ;; ------------------------------------------------------------
  ;; 1. Morton (Z-order) Code Implementation
  ;; ------------------------------------------------------------
  ;; 座標の局所性を保ちながら多次元を1次元にマッピングする
  ;; これにより「見た目は複雑だが、距離計算は単純」なテストケースを作る

  ;; 16bit整数を32bitに拡張（ビット間に0を挿入）: 2次元用
  (define (part1by1 n)
    (let loop ((n (bitwise-and n #x0000FFFF))
               (i 0)
               (res 0))
      (if (= i 16)
          res
          (let ((bit (bitwise-and (arithmetic-shift n (- i)) 1)))
            (loop n 
                  (+ i 1) 
                  (bitwise-ior res (arithmetic-shift bit (* 2 i))))))))

  ;; 2次元座標 (x, y) -> Morton Code (Z-index)
  (define (morton2-encode x y)
    (bitwise-ior (part1by1 x)
                 (arithmetic-shift (part1by1 y) 1)))

  ;; Morton Code -> 2次元座標 (x, y)
  ;; テストの正解検証（Oracle）のためにデコードが必要
  (define (compact1by1 n)
    (let loop ((n n) (i 0) (res 0))
      (if (= i 16)
          res
          (let ((bit (bitwise-and (arithmetic-shift n (* -2 i)) 1)))
            (loop n 
                  (+ i 1) 
                  (bitwise-ior res (arithmetic-shift bit i)))))))

  (define (morton2-decode z)
    (list (compact1by1 z)
          (compact1by1 (arithmetic-shift z -1))))

  ;; ------------------------------------------------------------
  ;; 2. Graph Generators (Implicit Graphs)
  ;; ------------------------------------------------------------
  ;; メモリを圧迫しないよう、隣接リストを動的に生成する関数を返す

  ;; Morton Grid Graph Generator
  ;; width * height のグリッドを生成。
  ;; ノードIDは Morton Code。エッジは上下左右。
  (define (make-morton-grid-graph width height)
    (lambda (node-id)
      (let* ((coords (morton2-decode node-id))
             (x (car coords))
             (y (cadr coords))
             (neighbors '()))
        (let ((candidates 
               `((,(- x 1) ,y) (,(+ x 1) ,y) 
                 (,x ,(- y 1)) (,x ,(+ y 1)))))
          (for-each 
           (lambda (c)
             (let ((cx (car c)) (cy (cadr c)))
               (when (and (>= cx 0) (< cx width) 
                          (>= cy 0) (< cy height))
                 (set! neighbors (cons (morton2-encode cx cy) neighbors)))))
           candidates)
          neighbors))))

  ;; Hypercube (Golay-like) Graph Generator
  ;; ノードは n-bit 整数。
  ;; エッジは「ハミング距離が1」のノード間（ハイパーキューブ）。
  ;; これは高次元のルーティングテストになる。
  (define (make-hypercube-graph bits)
    (lambda (node-id)
      (let loop ((i 0) (neighbors '()))
        (if (= i bits)
            neighbors
            (let ((neighbor (bitwise-xor node-id (arithmetic-shift 1 i))))
              (loop (+ i 1) (cons neighbor neighbors)))))))

  ;; ------------------------------------------------------------
  ;; 3. Oracle Functions (Ground Truth)
  ;; ------------------------------------------------------------
  ;; SSSPアルゴリズムが返すべき「正解」を計算する

  ;; マンハッタン距離 (Grid上の最短距離)
  (define (manhattan-dist node-a node-b)
    (let ((pos-a (morton2-decode node-a))
          (pos-b (morton2-decode node-b)))
      (+ (abs (- (car pos-a) (car pos-b)))
         (abs (- (cadr pos-a) (cadr pos-b))))))

  ;; ハミング距離 (Hypercube上の最短距離)
  ;; machine-constantsのhamming-weightを使用（なければ簡易実装）
  (define (hamming-dist a b)
    (let ((xor-val (bitwise-xor a b)))
      (let loop ((n xor-val) (c 0))
        (if (zero? n) c
            (loop (bitwise-and n (- n 1)) (+ c 1))))))

  ;; ------------------------------------------------------------
  ;; 4. Test Runner
  ;; ------------------------------------------------------------

  (define (run-test name run-fn)
    (display (format "\nRunning Test: ~A... " name))
    (let ((result (run-fn)))
      (if result
          (display "[PASS]\n")
          (display "[FAIL]\n"))))

  ;; sssp-fn は (sssp-fn graph start-node end-node) -> distance を返す関数と仮定
  ;; もしパスそのものを返す場合は、(length path) 等でラップして渡すこと
  (define (run-geometry-stress-tests sssp-fn)
    (display "=== Finite Geometry SSSP Stress Tests ===\n")

    ;; --- Test 1: Morton Grid (Spatial Locality) ---
    (run-test "Morton Grid (32x32) - Manhattan Check"
      (lambda ()
        (let* ((width 32) (height 32)
               (graph (make-morton-grid-graph width height))
               (num-trials 20)
               (passed #t))
          (do ((i 0 (+ i 1)))
              ((= i num-trials) passed)
            (let* ((start (pseudo-random-integer (* width height))) ;; 簡易ランダム
                   (end   (pseudo-random-integer (* width height)))
                   ;; Morton ID空間ではランダムだが、グリッド上では特定の距離
                   ;; アルゴリズムで計算
                   (actual-dist (sssp-fn graph start end))
                   ;; 数学的に計算 (Oracle)
                   (expected-dist (manhattan-dist start end)))
              
              (unless (= actual-dist expected-dist)
                (display (format "\n  FAILED at trial ~A: Start=~A, End=~A\n" i start end))
                (display (format "  Expected (Manhattan): ~A\n" expected-dist))
                (display (format "  Actual (SSSP): ~A\n" actual-dist))
                (set! passed #f)))))))

    ;; --- Test 2: Hypercube (High Connectivity) ---
    (run-test "Hypercube (10-bit) - Hamming Check"
      (lambda ()
        (let* ((bits 10)
               (graph (make-hypercube-graph bits))
               (num-trials 20)
               (passed #t))
          (do ((i 0 (+ i 1)))
              ((= i num-trials) passed)
            (let* ((max-node (arithmetic-shift 1 bits))
                   (start (pseudo-random-integer max-node))
                   (end   (pseudo-random-integer max-node))
                   (actual-dist (sssp-fn graph start end))
                   (expected-dist (hamming-dist start end)))
              
              (unless (= actual-dist expected-dist)
                (display (format "\n  FAILED at trial ~A: Start=~A, End=~A\n" i start end))
                (display (format "  Expected (Hamming): ~A\n" expected-dist))
                (display (format "  Actual (SSSP): ~A\n" actual-dist))
                (set! passed #f)))))))
    
    (display "\nAll Finite Geometry tests completed.\n")))
    