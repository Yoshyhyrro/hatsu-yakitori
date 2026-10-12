# hatsu-yakitori

**HATSU-YAKITORI** (Heart of the Skewer) は、**数値物理学**と**代数コーディング理論**の交差点を探求する高性能チキン スキーム フレームワークです。

これは、代数曲線上の **Goppa Codes** のレンズを通して高速多極法 (FMM) を再解釈することにより、有界計算の中核基盤を提供します。物理ポテンシャルを約数にマッピングし、エントロピー ベースの制御フローに **Golay[24,12]** コードを利用することにより、このフレームワークは適応階層計算への新しいアプローチを提供します。

## 中心となる哲学: Goppa-FMM のアナロジー

このプロジェクトは、古典的な N 体アルゴリズムと代数幾何学コードの間の厳密な数学的同型性を実装します。

|物理概念 (FMM) |代数概念 (Goppa/曲線) |
|:--- |:--- |
|**グリッド/スペース** |代数曲線上の点 (約数) |
|**潜在的なフィールド** |有理関数・微分形式 |
|**多極拡張** |ローランシリーズ（主要部品）のポイント |
|**拡張センター** |ローカルパラメータ $t$ / 基底の変更 |
|**特異点** |関数の極 |
|**適応階層** |除数の次数/種数の制約 |

＃＃ 特徴

- 🧬 **代数 FMM**: Goppa グリッド上のローカル パラメーターを使用した多極展開の再導出。
- 🎛️ **Golay-Driven Frontiers**: Golay コードワードの **ハミング重み ($\tau$)** を使用して、「計算エントロピー」に基づいてトラバーサル戦略 (DFS と BFS) を動的に切り替えます。
- 🧮 **KAK 分解**: 相互作用行列を処理するための対数スケール分解。
- 📐 **有限幾何学**: SSSP 検証用の Morton エンコーディングとハイパーキューブ グラフ。
- 🎯 **ε 境界精度**: 明示的なエラー訂正限界を使用して設計されたアルゴリズム。

＃＃ 建築

```
hatsu-yakitori/
├── core/
│   ├── golay_frontier.scm       # Golay[24,12] adaptive frontier logic
│   ├── kak_decomposition.scm    # KAK decomposition strategy
│   └── machine_constants.scm    # Fundamental constants & GF(2) arithmetic
├── modules/
│   ├── fmm/
│   │   └── fmm_on_goppa_grid.scm # The Goppa-FMM implementation
│   ├── sssp/                    # Single-Source Shortest Path
│   └── boids/                   # Particle simulation
└── tools/                       # CLI utilities
```

## 実装のハイライト: Golay が管理するフロンティア

フレームワークの核となるのは **Adaptive Frontier** です。ハードコードされたヒューリスティックの代わりに、シミュレーション戦略は Golay コードのプロパティによって決定されます。

- **低重み (τ < 12)**: 低エントロピー/ノイズを意味します → **DFS (スタック)** モードで深く正確な局所補正を行います。
- **高重み (τ ≥ 12)**: グローバルな多極ベースのスイープの高エントロピー → **BFS (キュー)** モードを意味します。

### コードの抜粋 (`modules/fmm/fmm_on_goppa_grid.scm`)

インタラクション ループは、フロー制御を Golay フロンティアに委任します。

```scheme
;; Inside cartan-fmm-evaluate-golay
(let loop ()
  ;; Pop next task based on Golay-determined strategy (Stack vs Queue)
  (let-values (((level-idx updated-frontier) (adaptive-frontier-pop frontier)))
    (when level-idx
      (set! frontier updated-frontier)
      
      (let ((cell-indices (vector-ref hierarchy level-idx)))
        (unless (null? cell-indices)
          (let* ((level-center (calculate-geometric-center grid cell-indices))
                 (dist (c-abs (c-sub target-pos level-center)))
                 (is-near-field (< dist 0.5))) ; Proximity threshold
            
            (cond
             ;; Near Field: Direct particle-particle interaction
             ;; Corresponds to residue calculation at poles
             (is-near-field
              (for-each 
               (lambda (src-idx)
                 (unless (= src-idx target-idx)
                   (let* ((src-pos (local-parameter grid src-idx))
                          (diff (c-sub target-pos src-pos))
                          (q (list-ref charges src-idx))
                          (contribution (c-div (cons q 0.0) diff)))
                     (set! total-potential (c-add total-potential contribution)))))
               cell-indices))
             
             ;; Far Field: Algebraic multipole expansion
             ;; P2M: Particle → Multipole (Laurent series coefficients)
             ;; M2L: Multipole → Local (basis translation via binomial transform)
             ;; L2P: Local → Potential (series evaluation)
             (else
              (let ((M (p2m-kernel grid cell-indices 
                                   (map (lambda (x) (list-ref charges x)) cell-indices)
                                   level-center order)))
                (let ((L (m2l-translation M level-center target-pos order)))
                  (set! total-potential (c-add total-potential (vector-ref L 0))))))))))
      
      (loop))))
```

### 重要なポイント

1. **Frontier が走査順序を管理**: DFS の場合はスタック (LIFO)、BFS の場合はキュー (FIFO)
2. **ジオメトリ駆動のカットオフ**: `is-near-field` が直接計算と多極計算を決定します
3. **代数的解釈**:
- ニアフィールド = 離散和 (曲線上の極)
- 遠方場 = ローラン展開 (ローカルパラメータベース)
4. **自動適応**: Golay の重量 τ が探索/活用のバランスを制御します

## インストール

### 前提条件

- [チキンスキーム5.x](https://www.call-cc.org/)
- 卵: `srfi-1`、`srfi-69`、`srfi-95`、`srfi-4`、`srfi-133`
- オプション: Shake ベースのビルド パイプラインの [GHC + cabal-install](https://www.haskell.org/cabal/)

このエッグによって公開される主なパブリック モジュールは次のとおりです。

- `machine_constants` — 数値定数、ビット ユーティリティ、ガロア高さヘルパー
- `golay_frontier` — リーン導出不変条件を使用した Golay[24,12] フロンティア制御
- `kak_decomposition` — KAK トラバーサル コアと Golay 制御の最短パス ラッパー
- `kak_quiver_safety` — 矢筒分類、パウリ位相ロジック、および DirectedBanachQuiver 不変量
- `kak_physics_core` — quiver-safe 物理ループで使用される Yee-grid 更新カーネル

### ソースチェックアウトからビルドする

Egg をインストールせずに現在のチェックアウトからビルドされることを検証するには:

```bash
chicken-install -n
```

チェックアウトから構成済みの CHICKEN リポジトリにインストールするには:

```bash
chicken-install
```

### Windows ノート

Windows では、生成されたインストール/ビルド スクリプトは `cmd.exe` を介して実行されるため、ランタイム `PATH` には実際の `gcc.exe` および `cp.exe` バイナリが含まれている必要があります。次の設定は、このリポジトリで動作することがわかっています。

```powershell
$env:Path = 'C:\msys64\ucrt64\bin;C:\msys64\usr\bin;C:\tools\chicken\bin;' + $env:Path
$env:CHICKEN_INSTALL_REPOSITORY = "$env:LOCALAPPDATA\chicken-user-repo\11"
$env:CHICKEN_REPOSITORY_PATH = "$env:LOCALAPPDATA\chicken-user-repo\11;C:\tools\chicken\lib\chicken\11"

chicken-install srfi-1 srfi-69 srfi-95 srfi-4 srfi-133 records
chicken-install -n
```

## REPL の使用法

### 1. Golay フロンティアとリーン不変量

`golay_frontier` モジュールは、Golay 制御のトラバーサルのメイン エントリ ポイントです。リーン由来の重みクラス `{0, 8, 12, 16, 24}` と非ハプス アンチトーン プロファイル `(20 10 0)` を適用するようになりました。

```scheme
(import golay_frontier)

(define cfg (make-adaptive-frontier #x123))

(print-golay-info cfg)
(print-galois-interpretation cfg)

(list (adaptive-frontier-mode cfg)
      (adaptive-frontier-tau cfg)
      (frontier-respects-witt-symmetry? cfg)
      (golay-valid-weight? (adaptive-frontier-tau cfg))
      (profile-strictly-antitone? non-happus-dim-profile))
```

一般的な使用法:

- `make-adaptive-frontier` は、エンコードされた Golay ワードから `stack` または `queue` を選択します
- `frontier- respects-witt-symmetry?` は、現在の実装で使用されているリーン派生の不変式をチェックします。
- `print-galois-interpretation` は、対応する M24 軌道クラスと高さの解釈を出力します。

### 2. 喉制御によるカラスの最短経路

`KAK-apply` は、ハッシュ テーブルまたはアソシエーション リストをグラフとして受け入れます。`KAK-apply-golay` は、Golay 主導の戦略選択でそれをラップします。

```scheme
(import kak_decomposition srfi-69)

(define city-graph
  '((downtown (station . 2.5) (park . 1.8))
    (station  (airport . 15.0) (harbor . 8.5))
    (park     (harbor . 4.0))
    (harbor   (airport . 3.0))
    (airport)))

(define-values (distances frontier-config tau)
  (KAK-apply-golay city-graph '(downtown) 100.0 8 #b101010101010))

(printf "mode=~a tau=~a airport=~a~%"
        (adaptive-frontier-mode frontier-config)
        tau
        (hash-table-ref distances 'airport))
```

トラバーサル モードが事前にわかっている場合は `KAK-apply` を使用し、コードワードで DFS のような動作と BFS のような動作のどちらを決定する必要がある場合は `KAK-apply-golay` を使用します。

### 3. Quiver の安全性と DirectedBanachQuiver の不変条件

「kak_quiver_safety」モジュールは、「DirectedBanachQuiver.lean」のコア構造をミラーリングするようになりました。

```scheme
(import kak_quiver_safety)

(list (bsd-vertex-height-bound 'padic)
      (height->bsd-vertex 4.0)
      (quiver-banach-adjunction? 'affine-dual)
      (bsd-arrow-pauli-phase 'recover)
      (arrow-fv-role 'project-selmer)
      (discrete-picard-condition? '(recover project-selmer tensor-bang)))

(call-with-values
  (lambda () (pauli-conj-weight 3.0 1.0 3))
  list)
```

これにより、次のことが得られます。

- `bsd-vertex-height-bound` — `leech`、`padic`、`affine-dual`、`selmer` の正規の高さ
- `height->bsd-vertex` — 最も近い BSD 頂点に戻す離散化
- `quiver-banach-adjunction?` — リーン付加定理からの往復恒等式
- `discrete-picard-condition?` — `recover + project_selmer ≡ tensor_bang (mod 4)` に対応するフェーズレベルのチェック

### 4. Quiver-safe 物理ループ

Yee-grid ステッピングの場合は、`kak_physics_core` と `kak_quiver_safety` を組み合わせます。

```scheme
(import kak_physics_core kak_quiver_safety)

(define grid (make-yee-grid 8 8 0.01 1.0 1.0 1.0))
(define ctx  (make-quiver-context 4 'queue))

(define (graph-fn node)
  (case node
    ((0) '((1 . 1.0) (2 . 1.0)))
    ((1) '((3 . 1.0)))
    ((2) '((3 . 1.0)))
    (else '())))

(kak-apply-quiver-safe graph-fn grid '(0) ctx)
```

現在の実装は保守的です。安全のために、非 Dynkin-A リージョンはグローバル フィールド更新パスにフォールバックします。

## シェイク/カバールのワークフロー

Egg を直接使用するのではなく、Haskell ビルド パイプラインを使用している場合:

```bash
cabal build
cabal run shake -- fmm
cabal run shake -- --module=fmm test
cabal run shake -- clean
```

履歴ワークフローで使用されるローカル ビルド出力を設定することもできます。

```bash
cabal run shake -- witt
```

## これを使用する理由

- **適応制御**: Golay コードワードが DFS/スタックと BFS/キューの動作を決定します
- **リーンバック不変条件**: 現在のフロンティアおよび quiver モジュールは、Non-Happus、Golay/Witt、および DirectedBanachQuiver 制約を強制します
- **境界トラバーサル**: KAK レイヤーは明示的な反復境界とフロンティア形状を公開します
- **柔軟なグラフ入力**: 最短パス ルーチンはハッシュ テーブルまたはアソシエーション リストを受け入れます
- **物理統合**: 同じフロンティア ロジックで Yee-grid ステッピングと quiver-safe ローカル更新を推進できます

## パフォーマンスに関するメモ

- 階層的な局所性を持つグラフまたはグリッドに最適
- `KAK-apply` および `KAK-apply-golay` の `B` は現在バインドされたパラメーターですが、簡素化された実装ではメトリック プルーニングよりもフロンティア制御がより頻繁に使用されます
- 探索的な実行では、「max-steps」は通常「5」から「10」の範囲に収まります。
- `kak-apply-quiver-safe` は現在、quiver タイプが明らかに Dynkin-A でない場合、積極的なローカル特殊化よりも正確さを優先します。
## 今後の方向性

ロードマップには、`make-goppa-grid` ジェネレーターを単位円 (属 $g=0$) から **楕円曲線** (属 $g=1$) まで拡張することが含まれています。これにより、フレームワークは Weierstrass $\wp$ 関数を介して **周期境界条件 (PBC)** を自然に処理できるようになり、Ewald 総和に代わる統一された代数が提供されます。