＃Ha2 Yakitori

**HATSU-YAKITORI** (Corazón del pincho) es un marco de esquema de pollo de alto rendimiento que explora la intersección de la **Física numérica** y la **Teoría de codificación algebraica**.

Proporciona una base central para el cálculo acotado al reinterpretar el método rápido multipolar (FMM) a través de la lente de **Códigos Goppa** en curvas algebraicas.Al asignar potenciales físicos a divisores y utilizar códigos **Golay[24,12]** para el flujo de control basado en entropía, el marco ofrece un enfoque novedoso para el cálculo jerárquico adaptativo.

## Filosofía central: la analogía de Goppa-FMM

Este proyecto implementa un isomorfismo matemático riguroso entre algoritmos clásicos de N cuerpos y códigos de geometría algebraica:

|Concepto Físico (FMM) |Concepto Algebraico (Goppa/Curva) |
|:--- |:--- |
|**Cuadrícula/Espacio** |Puntos de una curva algebraica (divisores) |
|**Campo potencial** |Función Racional / Forma Diferencial |
|**Expansión multipolar** |Serie Laurent (Partes principales) en un punto |
|**Centro de Expansión** |Parámetro Local $t$ / Cambio de Base |
|**Singularidad** |Polo de una función |
|**Jerarquía adaptativa** |Restricciones de grado/género del divisor |

## Características

- 🧬 **FMM algebraico**: Rederivación de expansiones multipolares utilizando parámetros locales en redes Goppa.
- 🎛️ **Fronteras impulsadas por Golay**: utiliza el **peso de Hamming ($\tau$)** de las palabras en clave de Golay para cambiar dinámicamente estrategias transversales (DFS frente a BFS) en función de la "entropía computacional".
- 🧮 **Descomposición KAK**: Descomposición en escala logarítmica para el manejo de matrices de interacción.
- 📐 **Geometría finita**: codificación Morton y gráficos de hipercubo para validación SSSP.
- 🎯 **ε-Precisión limitada**: Algoritmos diseñados con límites explícitos de corrección de errores.

## Arquitectura

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

## Aspectos destacados de la implementación: Frontera controlada por Golay

El núcleo del marco es **Adaptive Frontier**.En lugar de heurísticas codificadas, la estrategia de simulación está dictada por las propiedades del código Golay.

- **Bajo peso (τ < 12)**: Implica baja entropía/ruido → modo **DFS (Stack)** para correcciones locales profundas y precisas.
- **Peso alto (τ ≥ 12)**: Implica alta entropía → modo **BFS (Cola)** para barridos globales basados ​​en multipolos.

### Extracto de código (`modules/fmm/fmm_on_goppa_grid.scm`)

El bucle de interacción delega el control de flujo a la frontera de Golay:

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

### Puntos clave

1. **Frontier gestiona el orden transversal**: Pila (LIFO) para DFS, Cola (FIFO) para BFS
2. **Corte impulsado por la geometría**: "es de campo cercano" determina el cálculo directo versus multipolar
3. **Interpretación algebraica**:
- Campo cercano = suma discreta (polos en curva)
- Campo lejano = expansión de Laurent (base de parámetros locales)
4. **Adaptación automática**: el peso Golay τ controla el equilibrio exploración/explotación

## Instalación

### Requisitos previos

- [Esquema POLLO 5.x](https://www.call-cc.org/)
- Huevos: `srfi-1`, `srfi-69`, `srfi-95`, `srfi-4`, `srfi-133`
- Opcional: [GHC + cabal-install](https://www.haskell.org/cabal/) para el proceso de compilación basado en Shake

Los principales módulos públicos expuestos por este huevo son:

- `machine_constants` — constantes numéricas, utilidades de bits, ayudantes de altura de Galois
- `golay_frontier` — Control de frontera Golay[24,12] con invariantes derivadas de Lean
- `kak_decomposition` — Núcleo transversal KAK y contenedor de ruta más corta controlado por Golay
- `kak_quiver_safety` — clasificación de carcaj, lógica de fase de Pauli e invariantes de DirectedBanachQuiver
- `kak_physics_core` — Kernel de actualización de Yee-grid utilizado por el bucle de física seguro para quiver

### Construir desde una fuente

Para validar que el huevo se construye desde el pago actual sin instalarlo:

```bash
chicken-install -n
```

Para instalar desde la caja en su repositorio CHICKEN configurado:

```bash
chicken-install
```

### Notas de Windows

En Windows, los scripts de instalación/compilación generados se ejecutan a través de `cmd.exe`, por lo que la `PATH` en tiempo de ejecución debe contener los binarios reales `gcc.exe` y `cp.exe`.Se sabe que la siguiente configuración funciona con este repositorio:

```powershell
$env:Path = 'C:\msys64\ucrt64\bin;C:\msys64\usr\bin;C:\tools\chicken\bin;' + $env:Path
$env:CHICKEN_INSTALL_REPOSITORY = "$env:LOCALAPPDATA\chicken-user-repo\11"
$env:CHICKEN_REPOSITORY_PATH = "$env:LOCALAPPDATA\chicken-user-repo\11;C:\tools\chicken\lib\chicken\11"

chicken-install srfi-1 srfi-69 srfi-95 srfi-4 srfi-133 records
chicken-install -n
```

## Uso de REPL

### 1. Frontera de Golay e invariantes Lean

El módulo `golay_frontier` es el principal punto de entrada para el recorrido controlado por Golay.Ahora aplica las clases de peso derivadas de Lean `{0, 8, 12, 16, 24}` y el perfil de antitono Non-Happus `(20 10 0)`.

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

Uso típico:

- `make-adaptive-frontier` elige `stack` o `queue` de la palabra Golay codificada
- `frontier-respects-witt-symmetry?` comprueba las invariantes derivadas de Lean utilizadas en la implementación actual
- `print-galois-interpretation` imprime la clase de órbita M24 correspondiente y la interpretación de altura

### 2. El camino más corto del cuervo con control de garganta

`KAK-apply` accepts either a hash table or an association list as a graph. `KAK-apply-golay` wraps it with a Golay-driven strategy selection.

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

Utilice `KAK-apply` cuando el modo transversal se conozca de antemano, y `KAK-apply-golay` cuando desee que la palabra clave decida entre un comportamiento tipo DFS y tipo BFS.

### 3. Quiver Safety and DirectedBanachQuiver Invariants

The `kak_quiver_safety` module now mirrors the core constructions from `DirectedBanachQuiver.lean`.

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

This gives you:

- `bsd-vertex-height-bound` — alturas canónicas para `leech`, `padic`, `affine-dual`, `selmer`
- `height->bsd-vertex` — la discretización de regreso al vértice BSD más cercano
- "¿Conjunción-carcaj-banach?": la identidad de ida y vuelta del teorema de la conjunción Lean
- `¿condición-picard discreta?` — la verificación de nivel de fase correspondiente a `recover + project_selmer ≡ tensor_bang (mod 4)`

### 4. Quiver-Safe Physics Loop

Para el paso a paso de Yee-grid, combine `kak_physics_core` con `kak_quiver_safety`:

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

La implementación actual es conservadora: las regiones que no son Dynkin-A recurren a la ruta de actualización de campo global por motivos de seguridad.

## Shake / Cabal Workflow

If you are using the Haskell build pipeline rather than the egg directly:

```bash
cabal build
cabal run shake -- fmm
cabal run shake -- --module=fmm test
cabal run shake -- clean
```

También puede completar los resultados de compilación locales utilizados por el flujo de trabajo histórico:

```bash
cabal run shake -- witt
```

## ¿Por qué usar esto?

- **Adaptive control**: Golay codewords determine DFS/stack vs BFS/queue behavior
- **Lean-backed invariants**: current frontier and quiver modules enforce Non-Happus, Golay/Witt, and DirectedBanachQuiver constraints
- **Bounded traversal**: the KAK layer exposes explicit iteration bounds and frontier shape
- **Flexible graph input**: shortest-path routines accept either hash tables or association lists
- **Physics integration**: the same frontier logic can drive Yee-grid stepping and quiver-safe local updates

## Notas de rendimiento

- Best suited for graphs or grids with hierarchical locality
- `B` in `KAK-apply` and `KAK-apply-golay` is currently a bound parameter, but the simplified implementation uses frontier control more heavily than metric pruning
- `max-steps` usually lands in the `5` to `10` range for exploratory runs
- `kak-apply-quiver-safe` currently prioritizes correctness over aggressive local specialization when the quiver type is not clearly Dynkin-A
## Future Direction

La hoja de ruta incluye extender el generador `make-goppa-grid` desde el círculo unitario (género $g=0$) a **Curvas elípticas** (género $g=1$).Esto permitirá que el marco maneje **Condiciones de límite periódicas (PBC)** de forma natural a través de funciones $\wp$ de Weierstrass, proporcionando una alternativa algebraica unificada a la suma de Ewald.