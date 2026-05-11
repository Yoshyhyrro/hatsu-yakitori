＃Ha2 Yakitori

**HATSU-YAKITORI** (Heart of the Skewer) je vysoce výkonný rámec Chicken Scheme zkoumající průnik **Numerické fyziky** a **Teorie algebraického kódování**.

Poskytuje základní základ pro omezené výpočty reinterpretací rychlé vícepólové metody (FMM) prostřednictvím **Goppa kódů** na algebraických křivkách.Mapováním fyzických potenciálů na dělitele a využitím **Golay[24,12]** kódů pro tok řízení založených na entropii nabízí rámec nový přístup k adaptivním hierarchickým výpočtům.

## Základní filozofie: Analogie Goppa-FMM

Tento projekt implementuje přísný matematický izomorfismus mezi klasickými algoritmy N-těles a kódy algebraické geometrie:

|Fyzický koncept (FMM) |Algebraický koncept (Goppa/křivka) |
|:--- |:--- |
|**Mřížka / Prostor** |Body na algebraické křivce (dělitelé) |
|**Potenciální pole** |Racionální funkce / diferenciální forma |
|**Vícepólové rozšíření** |Laurentova řada (hlavní díly) v bodě |
|**Expanzní centrum** |Místní parametr $t$ / Změna základu |
|**Singularita** |Pól funkce |
|**Adaptivní hierarchie** |Omezení stupně dělitele / rodu |

## Funkce

- 🧬 **Algebraický FMM**: Opětovné odvození vícepólových expanzí pomocí lokálních parametrů na mřížkách Goppa.
- 🎛️ **Golay-Driven Frontiers**: Používá **Hammingovu váhu ($\tau$)** Golayových kódových slov k dynamickému přepínání strategií procházení (DFS vs. BFS) na základě „výpočtové entropie“.
- 🧮 **KAK Decomposition**: Logaritmický rozklad pro manipulaci s interakčními maticemi.
- 📐 **Konečná geometrie**: Mortonovo kódování a grafy hyperkrychle pro ověření SSSP.
- 🎯 **ε-Bounded Precision**: Algoritmy navržené s explicitními hranicemi opravy chyb.

## Architektura

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

## Implementace Highlight: Golay-Controlled Frontier

Jádrem frameworku je **Adaptive Frontier**.Místo pevně zakódované heuristiky je strategie simulace diktována vlastnostmi Golayova kódu.

- **Nízká hmotnost (τ < 12)**: Znamená nízkou entropii/šum → režim **DFS (Stack)** pro hluboké a přesné lokální korekce.
- **Vysoká váha (τ ≥ 12)**: Znamená vysokou entropii → **BFS (Fronta)** režim pro globální, vícepólové rozmítání.

### Výňatek kódu (`modules/fmm/fmm_on_goppa_grid.scm`)

Interakční smyčka deleguje řízení toku na Golayovu hranici:

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

### Klíčové body

1. **Frontier spravuje pořadí procházení**: zásobník (LIFO) pro DFS, fronta (FIFO) pro BFS
2. **Rozhraní řízené geometrií**: „je-blízké pole“ určuje přímý vs. vícepólový výpočet
3. **Algebraický výklad**:
- Blízké pole = diskrétní součet (póly na křivce)
- Vzdálené pole = Laurentova expanze (základ místních parametrů)
4. **Automatická adaptace**: Golayova váha τ řídí rovnováhu průzkumu/vykořisťování

## Instalace

### Předpoklady

- [CHICKEN Scheme 5.x](https://www.call-cc.org/)
- Vejce: `srfi-1`, `srfi-69`, `srfi-95`, `srfi-4`, `srfi-133`
– Volitelné: [GHC + cabal-install](https://www.haskell.org/cabal/) pro sestavení založené na Shake

Hlavní veřejné moduly vystavené tímto vejcem jsou:

- `machine_constants` — číselné konstanty, bitové nástroje, pomocníci Galois-height
- `golay_frontier` — Golay[24,12] hraniční kontrola s invarianty odvozenými od Lean
- `kak_decomposition` — KAK traversal core a Golay řízený obal s nejkratší cestou
- `kak_quiver_safety` — klasifikace toulec, logika Pauli-phase a invarianty DirectedBanachQuiver
- `kak_physics_core` — aktualizační jádro Yee-grid používané fyzikální smyčkou quiver-safe

### Sestavte z pokladny zdroje

Chcete-li ověřit, že se vajíčko staví z aktuální pokladny bez jeho instalace:

```bash
chicken-install -n
```

Chcete-li nainstalovat z pokladny do nakonfigurovaného úložiště CHICKEN:

```bash
chicken-install
```

### Poznámky systému Windows

V systému Windows se vygenerované skripty instalace/sestavení spouštějí prostřednictvím `cmd.exe`, takže běhová `PATH` musí obsahovat skutečné binární soubory `gcc.exe` a `cp.exe`.Je známo, že s tímto úložištěm funguje následující nastavení:

```powershell
$env:Path = 'C:\msys64\ucrt64\bin;C:\msys64\usr\bin;C:\tools\chicken\bin;' + $env:Path
$env:CHICKEN_INSTALL_REPOSITORY = "$env:LOCALAPPDATA\chicken-user-repo\11"
$env:CHICKEN_REPOSITORY_PATH = "$env:LOCALAPPDATA\chicken-user-repo\11;C:\tools\chicken\lib\chicken\11"

chicken-install srfi-1 srfi-69 srfi-95 srfi-4 srfi-133 records
chicken-install -n
```

## Použití REPL

### 1. Golay Frontier a Lean Invarianty

Modul `golay_frontier` je hlavním vstupním bodem pro Golayem řízený traversal.Nyní prosazuje váhové třídy odvozené od štíhlé výroby „{0, 8, 12, 16, 24}“ a profil Non-Happus antitone „(20 10 0)“.

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

Typické použití:

- `make-adaptive-frontier` vybere `stack` nebo `queue` ze zakódovaného slova Golay
- `frontier-respects-witt-symetry?` kontroluje invarianty odvozené od Lean použité v aktuální implementaci
- `print-galois-interpretation` vytiskne odpovídající interpretaci orbitální třídy M24 a výšky

### 2. Vrána nejkratší cesta s ovládáním hrdla

`KAK-použít` akceptuje jako graf buď hašovací tabulku, nebo seznam asociací.`KAK-apply-golay` to zabalí do výběru strategie řízené Golayem.

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

Použijte „KAK-apply“, když je režim procházení předem znám, a „KAK-apply-golay“, když chcete, aby se kódové slovo rozhodlo mezi chováním podobným DFS a BFS.

### 3. Bezpečnost toulec a směrované invarianty BanachQuiver

Modul `kak_quiver_safety` nyní zrcadlí základní konstrukce z `DirectedBanachQuiver.lean`.

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

To vám dává:

- `bsd-vertex-height-bound` — kanonické výšky pro `leech`, `padic`, `affine-dual`, `selmer`
- `height->bsd-vertex` — diskretizace zpět na nejbližší vrchol BSD
- `quiver-banach-adjunkce?` — zpáteční identita z věty o štíhlé adjunkci
- `discrete-picard-condition?` — kontrola na úrovni fáze odpovídající `recover + project_selmer ≡ tensor_bang (mod 4)`

### 4. Toulec bezpečná fyzikální smyčka

Pro krokování po mřížce Yee zkombinujte `kak_physics_core` s `kak_quiver_safety`:

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

Současná implementace je konzervativní: regiony, které nejsou Dynkin-A, se kvůli bezpečnosti vrací ke globální cestě aktualizace pole.

## Shake / Cabal Workflow

Pokud používáte sestavovací potrubí Haskell spíše než přímo vejce:

```bash
cabal build
cabal run shake -- fmm
cabal run shake -- --module=fmm test
cabal run shake -- clean
```

Můžete také naplnit místní výstupy sestavení používané historickým pracovním postupem:

```bash
cabal run shake -- witt
```

## Proč toto používat?

- **Adaptivní řízení**: Golay kódová slova určují chování DFS/stack vs BFS/fronty
- **Invarianty se štíhlou linií**: aktuální hraniční a quiver moduly prosazují omezení Non-Happus, Golay/Witt a DirectedBanachQuiver
- **Ohraničený průchod**: vrstva KAK odhaluje explicitní iterační hranice a tvar hranice
- **Flexibilní vstup do grafu**: rutiny s nejkratší cestou akceptují hašovací tabulky nebo seznamy asociací
- **Fyzikální integrace**: stejná hraniční logika může řídit krokování po mřížce Yee a bezpečné místní aktualizace

## Poznámky k výkonu

- Nejvhodnější pro grafy nebo mřížky s hierarchickou lokalitou
- `B` v `KAK-apply` a `KAK-apply-golay` je aktuálně vázaný parametr, ale zjednodušená implementace využívá hraniční kontrolu více než metrické ořezávání
- `max-steps` obvykle končí v rozsahu `5` až `10` pro průzkumné běhy
- `kak-apply-quiver-safe` v současnosti upřednostňuje korektnost před agresivní lokální specializací, když typ toulec není jasně Dynkin-A
## Budoucí směr

Plán zahrnuje rozšíření generátoru `make-goppa-grid` z kruhu jednotek (rod $g=0$) na **Eliptické křivky** (rod $g=1$).To umožní frameworku zpracovávat **Periodické okrajové podmínky (PBC)** přirozeně prostřednictvím Weierstrass $\wp$-funkcí, což poskytuje jednotnou algebraickou alternativu k Ewaldově sumaci.