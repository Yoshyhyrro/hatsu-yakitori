＃Ha2 烤雞肉串

**HATSU-YAKITORI**（Heart of the Skewer）是一個高性能的雞肉方案框架，探索**數值物理**和**代數編碼理論**的交叉點。

它透過代數曲線上 **Goppa 代碼** 的視角重新解釋快速多極方法 (FMM)，為有界計算提供核心基礎。透過將物理位勢映射到除數並利用 **Golay[24,12]** 程式碼進行基於熵的控制流，該框架提供了一種自適應分層計算的新方法。

## 核心理念：Goppa-FMM 類比

該專案在經典 N 體演算法和代數幾何程式碼之間實現了嚴格的數學同構：

|物理概念 (FMM) |代數概念（Goppa/曲線）|
| :--- | :--- |
| **網格/空間** |代數曲線上的點（除數）|
| **位勢場** |有理函數/微分形式 |
| **多極擴展** |洛朗級數（主要部分）在一點 |
| **拓展中心** |局部參數 $t$ / 基礎變化 |
| **奇點** |函數的極點 |
| **自適應層次結構** |除數度/屬約束|

＃＃ 特徵

- 🧬 **代數 FMM**：使用 Goppa 網格上的局部參數重新推導多極展開式。
- 🎛️ **Golay 驅動的前沿**：使用 Golay 碼字的 **漢明權重 ($\tau$)** 基於「計算熵」動態切換遍歷策略（DFS 與 BFS）。
- 🧮 **KAK 分解**：用於處理交互作用矩陣的對數尺度分解。
- 📐 **有限幾何**：用於 SSSP 驗證的 Morton 編碼和超立方圖。
- 🎯 **ε-Bounded Precision**：採用明確糾錯界限設計的演算法。

＃＃ 建築學

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

## 實施亮點：戈萊控制的邊境

此框架的核心是**自適應前緣**。模擬策略不是由硬編碼的啟發式方法決定，而是由 Golay 程式碼的屬性決定。

- **低權重 (τ < 12)**：意味著低熵/雜訊 → **DFS（堆疊）** 模式用於深度、精確的局部校正。
- **高權重 (τ ≥ 12)**：意味著高熵 → **BFS（佇列）** 模式用於全域、基於多極的掃描。

### 代碼摘錄 (`modules/fmm/fmm_on_goppa_grid.scm`)

交互循環將流量控制委託給 Golay 邊界：

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

### 要點

1. **Frontier管理遍歷順序**：對於DFS來說是堆疊（LIFO），對於BFS來說是佇列（FIFO）
2. **幾何驅動截止**：`is-near-field`決定直接計算與多極計算
3. **代數解釋**：
- 近場 = 離散且（曲線上的極點）
- 遠場 = 洛朗展開（局部參數基礎）
4. **自動適應**：Golay權重τ控制探索/利用平衡

＃＃ 安裝

### 先決條件

- [雞肉計畫 5.x](https://www.call-cc.org/)
- 蛋：`srfi-1`、`srfi-69`、`srfi-95`、`srfi-4`、`srfi-133`
- 可選：[GHC + cabal-install](https://www.haskell.org/cabal/) 用於基於 Shake 的建造管道

此egg暴露的主要公共模組有：

- `machine_constants` — 數值常數、位元實用程式、伽羅瓦高度助手
- `golay_frontier` — Golay[24,12] 具有精實派生不變量的邊界控制
- `kak_decomposition` — KAK 遍歷核心和 Golay 控制的最短路徑包裝器
- `kak_quiver_safety` — 箭袋分類、泡利相邏輯和 DirectedBanachQuiver 不變量
- `kak_physical_core` — 箭袋安全物理循環使用的 Yee-grid 更新內核

### 從原始碼建立結帳

要驗證 Egg 是否是從目前結帳建置的而不安裝它：

```bash
chicken-install -n
```

若要從結帳安裝到您設定的 CHICKEN 儲存庫：

```bash
chicken-install
```

### Windows 註釋

在 Windows 上，產生的安裝/建置腳本透過「cmd.exe」執行，因此執行時間「PATH」必須包含實際的「gcc.exe」和「cp.exe」二進位檔案。已知以下設定可用於此儲存庫：

```powershell
$env:Path = 'C:\msys64\ucrt64\bin;C:\msys64\usr\bin;C:\tools\chicken\bin;' + $env:Path
$env:CHICKEN_INSTALL_REPOSITORY = "$env:LOCALAPPDATA\chicken-user-repo\11"
$env:CHICKEN_REPOSITORY_PATH = "$env:LOCALAPPDATA\chicken-user-repo\11;C:\tools\chicken\lib\chicken\11"

chicken-install srfi-1 srfi-69 srfi-95 srfi-4 srfi-133 records
chicken-install -n
```

## REPL 用法

### 1.Golay 前緣與精實不變量

`golay_frontier` 模組是 Golay 控制的遍歷的主要入口點。現在，它強制執行 Lean 派生的權重類別「{0, 8, 12, 16, 24}」和非 Happus 反音配置檔案「(20 10 0)」。

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

典型用途：

- `make-adaptive-frontier` 從編碼的 Golay 字中選擇 `stack` 或 `queue`
- `frontier-respects-witt-symmetry?` 檢查目前實作中使用的精實派生不變量
- `print-galois-interpretation` 列印相應的 M24 軌道等級和高度解釋

### 2.有喉嚨控制的Crow最短路徑

「KAK-apply」接受雜湊表或關聯清單作為圖形。「KAK-apply-golay」用 Golay 驅動的策略選擇來包裝它。

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

當您預先知道遍歷模式時，請使用「KAK-apply」；當您希望代碼字在類似 DFS 和 BFS 的行為之間做出決定時，請使用「KAK-apply-golay」。

### 3. Quiver 安全性與 DirectedBanachQuiver 不變量

“kak_quiver_safety”模組現在反映了“DirectedBanachQuiver.lean”的核心結構。

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

這給你：

- `bsd-vertex-height-bound` — `leech`、`padic`、`affine-dual`、`selmer` 的規範高度
- `height->bsd-vertex` — 離散化回最近的 BSD 頂點
- `quiver-banach-adjunction?` — 精實附加定理的往返恆等式
- `discrete-picard-condition?` — 對應於 `recover + project_selmer ≡ tensor_bang (mod 4)` 的階段級檢查

### 4.箭袋安全實體環

對於 Yee-grid 步進，將 `kak_physical_core` 與 `kak_quiver_safety` 結合：

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

目前的實作是保守的：為了安全起見，非 Dynkin-A 區域回退到全域欄位更新路徑。

## Shake / Cabal 工作流程

如果您使用 Haskell 建置管道而不是直接使用 Egg：

```bash
cabal build
cabal run shake -- fmm
cabal run shake -- --module=fmm test
cabal run shake -- clean
```

您也可以填入歷史工作流程所使用的本機建置輸出：

```bash
cabal run shake -- witt
```

## 為什麼要使用這個？

- **自適應控制**：Golay 碼字決定 DFS/堆疊與 BFS/佇列行為
- **精實支援的不變量**：目前的前緣和箭袋模組強制執行 Non-Happus、Golay/Witt 和 DirectedBanachQuiver 約束
- **有界遍歷**：KAK 層公開明確迭代邊界與邊界形狀
- **靈活的圖形輸入**：最短路徑例程接受雜湊表或關聯列表
- **實體整合**：相同的前沿邏輯可以驅動 Yee-grid 步進和箭袋安全本地更新

## 效能說明

- 最適合具有分層局部性的圖形或網格
- 「KAK-apply」和「KAK-apply-golay」中的「B」目前是一個綁定參數，但簡化的實現比度量剪枝更常使用邊界控制
- 對於探索性運行，「最大步數」通常落在「5」到「10」範圍內
- 當箭袋類型不明顯為 Dynkin-A 時，「kak-apply-quiver-safe」目前優先考慮正確性而不是激進的局部專業化
## 未來的方向

此路線圖包括將「make-goppa-grid」產生器從單位圓（genus $g=0$）擴展到**橢圓曲線**（genus $g=1$）。這將允許框架透過 Weierstrass $\wp$ 函數自然地處理**週期性邊界條件 (PBC)**，為 Ewald 求和提供統一的代數替代方案。