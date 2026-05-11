＃Ха2 Якитори

**ХАТСУ-ЯКИТОРИ** (Сердце шампура) — это высокопроизводительная платформа Chicken Scheme, исследующая пересечение **численной физики** и **алгебраической теории кодирования**.

Он обеспечивает основу для ограниченных вычислений, переосмысливая метод быстрых мультиполей (FMM) через призму **кодов Гоппы** на алгебраических кривых.Сопоставляя физические потенциалы с делителями и используя коды **Голея[24,12]** для управления потоком управления на основе энтропии, фреймворк предлагает новый подход к адаптивным иерархическим вычислениям.

## Основная философия: аналогия Гоппа-FMM

Этот проект реализует строгий математический изоморфизм между классическими алгоритмами N-тел и кодами алгебраической геометрии:

|Физическая концепция (FMM) |Алгебраическая концепция (Гоппа/Кривая) |
|:--- |:--- |
|**Сетка/Пространство** |Точки на алгебраической кривой (делители) |
|**Потенциальное поле** |Рациональная функция/Дифференциальная форма |
|**Многополюсное расширение** |Ряд Лорана (главные части) в точке |
|**Центр расширения** |Локальный параметр $t$ / Изменение базиса |
|**Сингулярность** |Полюс функции |
|**Адаптивная иерархия** |Ограничения степени/рода делителя |

## Функции

- 🧬 **Алгебраический FMM**: повторный вывод мультипольных разложений с использованием локальных параметров в сетках Гоппы.
- 🎛️ **Границы, управляемые Голеем**: использует **вес Хэмминга ($\tau$)** кодовых слов Голея для динамического переключения стратегий обхода (DFS против BFS) на основе «вычислительной энтропии».
- 🧮 **Разложение KAK**: разложение в логарифмическом масштабе для обработки матриц взаимодействия.
- 📐 **Конечная геометрия**: кодировка Мортона и графики гиперкубов для проверки SSSP.
- 🎯 **ε-ограниченная точность**: алгоритмы, разработанные с явными границами исправления ошибок.

## Архитектура

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

## Основной момент реализации: граница, контролируемая Голеем

Ядром системы является **Adaptive Frontier**.Вместо жестко запрограммированной эвристики стратегия моделирования определяется свойствами кода Голея.

- **Малый вес (τ < 12)**: подразумевает низкую энтропию/шум → режим **DFS (стек)** для глубокой и точной локальной коррекции.
- **Высокий вес (τ ≥ 12)**: подразумевает высокую энтропию → режим **BFS (Очередь)** для глобальных многополюсных разверток.

### Отрывок кода (`modules/fmm/fmm_on_goppa_grid.scm`)

Цикл взаимодействия делегирует управление потоком границе Голея:

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

### Ключевые моменты

1. **Frontier управляет порядком обхода**: стек (LIFO) для DFS, очередь (FIFO) для BFS.
2. **Отсечение на основе геометрии**: «близкое поле» определяет прямой или многополюсный расчет.
3. **Алгебраическая интерпретация**:
- Ближнее поле = дискретная сумма (полюсы на кривой)
- Дальнее поле = расширение Лорана (база локальных параметров)
4. **Автоматическая адаптация**: вес Голея τ контролирует баланс разведки/эксплуатации.

## Установка

### Предварительные условия

- [КУРИЦА Схема 5.x](https://www.call-cc.org/)
- Яйца: `срфи-1`, `срфи-69`, `срфи-95`, `срфи-4`, `срфи-133`
- Необязательно: [GHC + cabal-install](https://www.haskell.org/cabal/) для конвейера сборки на основе Shake.

Основными общедоступными модулями, предоставляемыми этим яйцом, являются:

- `machine_constants` — числовые константы, битовые утилиты, помощники высоты Галуа.
- `golay_frontier` — пограничный контроль Golay[24,12] с инвариантами, полученными из Lean.
- `kak_decomposition` — ядро обхода KAK и оболочка кратчайшего пути, контролируемая Голеем.
- `kak_quiver_safety` — классификация колчанов, логика фазы Паули и инварианты DirectedBanachQuiver.
- `kak_physical_core` — ядро обновления Yee-grid, используемое в цикле физики, безопасном для колчанов.

### Сборка из исходного кода

Чтобы убедиться, что яйцо создается на основе текущей проверки без ее установки:

```bash
chicken-install -n
```

Чтобы установить из оформления заказа в настроенный репозиторий CHICKEN:

```bash
chicken-install
```

### Примечания Windows

В Windows сгенерированные сценарии установки/сборки выполняются через cmd.exe, поэтому PATH среды выполнения должен содержать фактические двоичные файлы gcc.exe и cp.exe.Известно, что с этим репозиторием работает следующая настройка:

```powershell
$env:Path = 'C:\msys64\ucrt64\bin;C:\msys64\usr\bin;C:\tools\chicken\bin;' + $env:Path
$env:CHICKEN_INSTALL_REPOSITORY = "$env:LOCALAPPDATA\chicken-user-repo\11"
$env:CHICKEN_REPOSITORY_PATH = "$env:LOCALAPPDATA\chicken-user-repo\11;C:\tools\chicken\lib\chicken\11"

chicken-install srfi-1 srfi-69 srfi-95 srfi-4 srfi-133 records
chicken-install -n
```

## Использование REPL

### 1. Голейская граница и бережливые инварианты

Модуль golay_frontier является основной точкой входа для обхода, контролируемого Голеем.Теперь он применяет весовые классы, полученные от Lean, `{0, 8, 12, 16, 24}` и антитонный профиль Non-Happus `(20 10 0)`.

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

Типичное использование:

- `make-adaptive-frontier` выбирает `stack` или `queue` из закодированного слова Голея
- `frontier-respects-witt-symmetry?` проверяет инварианты, полученные из Lean, используемые в текущей реализации.
- `print-galois-interpretation` печатает соответствующий класс орбиты M24 и интерпретацию высоты.

### 2. Кратчайший путь вороны с контролем горла

KAK-apply принимает в виде графа либо хеш-таблицу, либо список ассоциаций.KAK-apply-golay оборачивает его выбором стратегии, управляемым Голеем.

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

Используйте KAK-apply, если режим обхода известен заранее, и KAK-apply-golay, если вы хотите, чтобы кодовое слово определяло поведение, подобное DFS или BFS.

### 3. Безопасность колчана и направленные инварианты Банаха Колчана

Модуль `kak_quiver_safety` теперь отражает основные конструкции из `DirectedBanachQuiver.lean`.

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

Это дает вам:

- `bsd-vertex-height-bound` — канонические высоты для `leech`, `padic`, `affine-dual`, `selmer`
- `height->bsd-vertex` — дискретизация до ближайшей вершины BSD
- `quiver-banach-adjunction?` — тождество туда и обратно из теоремы Лина о присоединении.
- `discrete-picard-condition?` — проверка фазового уровня, соответствующая `recover + project_selmer ≡ tensor_bang (mod 4)`

### 4. Цикл физики, безопасный для колчана

Для шага Yee-grid объедините kak_physical_core с kak_quiver_safety:

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

Текущая реализация является консервативной: регионы, не поддерживающие Dynkin-A, в целях безопасности возвращаются к глобальному пути обновления полей.

## Рабочий процесс Shake/Cabal

Если вы используете конвейер сборки Haskell, а не яйцо напрямую:

```bash
cabal build
cabal run shake -- fmm
cabal run shake -- --module=fmm test
cabal run shake -- clean
```

Вы также можете заполнить выходные данные локальной сборки, используемые историческим рабочим процессом:

```bash
cabal run shake -- witt
```

## Зачем это использовать?

- **Адаптивное управление**: кодовые слова Голея определяют поведение DFS/стека и BFS/очереди.
- **Инварианты с наклонной поддержкой**: текущие модули Frontier и Quiver применяют ограничения Non-Happus, Golay/Witt и DirectedBanachQuiver.
- **Ограниченный обход**: слой KAK предоставляет явные границы итерации и форму границы.
- **Гибкий ввод графов**: подпрограммы поиска кратчайшего пути принимают либо хеш-таблицы, либо списки ассоциаций.
- **Интеграция физики**: одна и та же пограничная логика может управлять шагом Yee-grid и безопасными локальными обновлениями.

## Примечания по производительности

- Лучше всего подходит для графиков или сеток с иерархической локальностью.
- `B` в `KAK-apply` и `KAK-apply-golay` в настоящее время является привязанным параметром, но упрощенная реализация использует граничный контроль более интенсивно, чем сокращение показателей.
- для исследовательских запусков параметр «максимальное количество шагов» обычно находится в диапазоне от «5» до «10».
- `kak-apply-quiver-safe` в настоящее время отдает приоритет правильности над агрессивной местной специализацией, когда тип колчана явно не является Dynkin-A.
## Будущее направление

Дорожная карта включает расширение генератора make-goppa-grid от единичного круга (род $g=0$) до **Эллиптических кривых** (род $g=1$).Это позволит платформе обрабатывать **Периодические граничные условия (PBC)** естественным образом через $\wp$-функции Вейерштрасса, предоставляя унифицированную алгебраическую альтернативу суммированию Эвальда.