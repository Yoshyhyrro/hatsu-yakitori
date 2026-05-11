＃Ha2 Yakitori

**HATSU-YAKITORI** (Heart of the Skewer) ist ein leistungsstarkes Chicken Scheme-Framework, das die Schnittstelle zwischen **Numerischer Physik** und **Algebraischer Kodierungstheorie** untersucht.

Es bietet eine zentrale Grundlage für begrenzte Berechnungen, indem es die Fast Multipole Method (FMM) durch die Linse von **Goppa-Codes** für algebraische Kurven neu interpretiert.Durch die Zuordnung physikalischer Potenziale zu Teilern und die Verwendung von **Golay[24,12]**-Codes für den entropiebasierten Kontrollfluss bietet das Framework einen neuartigen Ansatz für adaptive hierarchische Berechnungen.

## Kernphilosophie: Die Goppa-FMM-Analogie

Dieses Projekt implementiert einen strengen mathematischen Isomorphismus zwischen klassischen N-Körper-Algorithmen und algebraischen Geometriecodes:

|Physikalisches Konzept (FMM) |Algebraisches Konzept (Goppa/Kurve) |
|:--- |:--- |
|**Gitter / Raum** |Punkte auf einer algebraischen Kurve (Teiler) |
|**Potentialfeld** |Rationale Funktion / Differentialform |
|**Multipolerweiterung** |Laurent-Serie (Hauptteile) an einem Punkt |
|**Expansion Center** |Lokaler Parameter $t$ / Basisänderung |
|**Singularität** |Pol einer Funktion |
|**Adaptive Hierarchie** |Teilergrad-/Gattungsbeschränkungen |

## Merkmale

- 🧬 **Algebraisches FMM**: Neuableitung von Multipolentwicklungen unter Verwendung lokaler Parameter auf Goppa-Gittern.
- 🎛️ **Golay-Driven Frontiers**: Verwendet das **Hamming-Gewicht ($\tau$)** von Golay-Codewörtern, um Traversierungsstrategien (DFS vs. BFS) basierend auf „Rechenentropie“ dynamisch zu wechseln.
- 🧮 **KAK-Zerlegung**: Logarithmische Zerlegung zur Handhabung von Interaktionsmatrizen.
- 📐 **Finite Geometry**: Morton-Kodierung und Hypercube-Graphen für die SSSP-Validierung.
- 🎯 **ε-begrenzte Präzision**: Algorithmen, die mit expliziten Fehlerkorrekturgrenzen entwickelt wurden.

## Architektur

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

## Implementierungshighlight: Golay-kontrollierte Grenze

Der Kern des Frameworks ist die **Adaptive Frontier**.Anstelle fest codierter Heuristiken wird die Simulationsstrategie durch die Eigenschaften des Golay-Codes bestimmt.

- **Geringes Gewicht (τ < 12)**: Bedeutet geringe Entropie/Rauschen → **DFS (Stack)**-Modus für tiefe, präzise lokale Korrekturen.
- **Hohes Gewicht (τ ≥ 12)**: Impliziert hohe Entropie → **BFS (Queue)**-Modus für globale, multipolbasierte Sweeps.

### Codeauszug (`modules/fmm/fmm_on_goppa_grid.scm`)

Die Interaktionsschleife delegiert die Flusskontrolle an die Golay-Grenze:

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

### Wichtige Punkte

1. **Frontier verwaltet die Durchlaufreihenfolge**: Stack (LIFO) für DFS, Queue (FIFO) für BFS
2. **Geometriegesteuerter Cutoff**: „Ist-Nahfeld“ bestimmt die direkte vs. Multipolberechnung
3. **Algebraische Interpretation**:
- Nahfeld = diskrete Summe (Pole auf Kurve)
- Fernfeld = Laurent-Entwicklung (lokale Parameterbasis)
4. **Automatische Anpassung**: Das Golay-Gewicht τ steuert das Gleichgewicht zwischen Erkundung und Ausbeutung

## Installation

### Voraussetzungen

- [HUHN-Schema 5.x](https://www.call-cc.org/)
- Eier: „srfi-1“, „srfi-69“, „srfi-95“, „srfi-4“, „srfi-133“.
– Optional: [GHC + cabal-install](https://www.haskell.org/cabal/) für die Shake-basierte Build-Pipeline

Die wichtigsten öffentlichen Module, die von diesem Ei bereitgestellt werden, sind:

- „machine_constants“ – numerische Konstanten, Bit-Dienstprogramme, Galois-Höhen-Helfer
- „golay_frontier“ – Golay[24,12]-Grenzkontrolle mit Lean-abgeleiteten Invarianten
- „kak_decomposition“ – KAK-Traversalkern und Golay-gesteuerter Shortest-Path-Wrapper
- „kak_quiver_safety“ – Köcherklassifizierung, Pauli-Phasenlogik und DirectedBanachQuiver-Invarianten
- „kak_physics_core“ – Yee-Grid-Update-Kernel, der von der köchersicheren Physikschleife verwendet wird

### Build From a Source Checkout

Um zu überprüfen, ob das Ei aus dem aktuellen Checkout erstellt wird, ohne es zu installieren:

```bash
chicken-install -n
```

So installieren Sie vom Checkout aus in Ihr konfiguriertes CHICKEN-Repository:

```bash
chicken-install
```

### Windows-Notizen

Unter Windows werden die generierten Installations-/Build-Skripte über „cmd.exe“ ausgeführt, daher muss der Laufzeit-„PATH“ tatsächliche „gcc.exe“- und „cp.exe“-Binärdateien enthalten.Es ist bekannt, dass das folgende Setup mit diesem Repository funktioniert:

```powershell
$env:Path = 'C:\msys64\ucrt64\bin;C:\msys64\usr\bin;C:\tools\chicken\bin;' + $env:Path
$env:CHICKEN_INSTALL_REPOSITORY = "$env:LOCALAPPDATA\chicken-user-repo\11"
$env:CHICKEN_REPOSITORY_PATH = "$env:LOCALAPPDATA\chicken-user-repo\11;C:\tools\chicken\lib\chicken\11"

chicken-install srfi-1 srfi-69 srfi-95 srfi-4 srfi-133 records
chicken-install -n
```

## REPL-Nutzung

### 1. Golay-Grenze und Lean-Invarianten

Das Modul „golay_frontier“ ist der Haupteinstiegspunkt für die von Golay kontrollierte Durchquerung.Es erzwingt jetzt die von Lean abgeleiteten Gewichtsklassen „{0, 8, 12, 16, 24}“ und das Non-Happus-Antitone-Profil „(20 10 0)“.

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

Typische Verwendung:

- „make-adaptive-frontier“ wählt „stack“ oder „queue“ aus dem codierten Golay-Wort
- „frontier-respects-witt-symmetry?“ prüft die von Lean abgeleiteten Invarianten, die in der aktuellen Implementierung verwendet werden
- „print-galois-interpretation“ druckt die entsprechende M24-Orbit-Klasse und Höheninterpretation

### 2. Kürzester Weg der Krähe mit Kehlkopfkontrolle

„KAK-apply“ akzeptiert entweder eine Hash-Tabelle oder eine Assoziationsliste als Diagramm.„KAK-apply-golay“ rundet das Ganze mit einer Golay-gesteuerten Strategieauswahl ab.

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

Verwenden Sie „KAK-apply“, wenn der Traversalmodus im Voraus bekannt ist, und „KAK-apply-golay“, wenn das Codewort zwischen DFS-ähnlichem und BFS-ähnlichem Verhalten entscheiden soll.

### 3. Köchersicherheit und gerichteteBanachQuiver-Invarianten

Das Modul „kak_quiver_safety“ spiegelt nun die Kernkonstruktionen von „DirectedBanachQuiver.lean“ wider.

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

Das gibt Ihnen:

- „bsd-vertex-height-bound“ – kanonische Höhen für „leech“, „padic“, „affine-dual“, „selmer“.
- „height->bsd-vertex“ – die Diskretisierung zurück zum nächsten BSD-Scheitelpunkt
- „Quiver-Banach-Adjunction?“ – die Round-Trip-Identität aus dem Lean-Adjunktionssatz
- „discrete-picard-condition?“ – die Prüfung auf Phasenebene, die „recover + project_selmer ≡ tensor_bang (mod 4)“ entspricht

### 4. Köchersichere Physikschleife

Für Yee-Grid-Stepping kombinieren Sie „kak_physics_core“ mit „kak_quiver_safety“:

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

Die aktuelle Implementierung ist konservativ: Nicht-Dynkin-A-Regionen greifen aus Sicherheitsgründen auf den globalen Feldaktualisierungspfad zurück.

## Shake/Cabal-Workflow

Wenn Sie die Haskell-Build-Pipeline anstelle des Eggs direkt verwenden:

```bash
cabal build
cabal run shake -- fmm
cabal run shake -- --module=fmm test
cabal run shake -- clean
```

Sie können auch die lokalen Build-Ausgaben füllen, die vom historischen Workflow verwendet werden:

```bash
cabal run shake -- witt
```

## Warum dies verwenden?

- **Adaptive Steuerung**: Golay-Codewörter bestimmen das Verhalten von DFS/Stack gegenüber BFS/Warteschlange
- **Lean-backed-Invarianten**: Aktuelle Frontier- und Quiver-Module erzwingen Non-Happus-, Golay/Witt- und DirectedBanachQuiver-Einschränkungen
- **Begrenzte Durchquerung**: Die KAK-Ebene legt explizite Iterationsgrenzen und Grenzformen offen
- **Flexible Diagrammeingabe**: Routinen mit kürzestem Pfad akzeptieren entweder Hash-Tabellen oder Assoziationslisten
- **Physik-Integration**: Die gleiche Grenzlogik kann Yee-Grid-Stepping und köchersichere lokale Updates vorantreiben

## Leistungshinweise

- Am besten geeignet für Diagramme oder Gitter mit hierarchischer Lokalität
– „B“ in „KAK-apply“ und „KAK-apply-golay“ ist derzeit ein gebundener Parameter, aber die vereinfachte Implementierung nutzt die Grenzkontrolle stärker als die metrische Bereinigung
- „max-steps“ liegt bei Erkundungsläufen normalerweise im Bereich „5“ bis „10“.
- „kak-apply-quiver-safe“ priorisiert derzeit Korrektheit gegenüber aggressiver lokaler Spezialisierung, wenn der Köchertyp nicht eindeutig Dynkin-A ist
## Zukünftige Richtung

Die Roadmap beinhaltet die Erweiterung des „make-goppa-grid“-Generators vom Einheitskreis (Gattung $g=0$) auf **Elliptische Kurven** (Gattung $g=1$).Dadurch kann das Framework **Periodische Randbedingungen (PBC)** auf natürliche Weise über Weierstrass-$\wp$-Funktionen verarbeiten und bietet so eine einheitliche algebraische Alternative zur Ewald-Summierung.