;; ============================================================
;; core/golay_frontier.scm
;; Golay code-based adaptive frontier management for KAK decomposition
;; 
;; The Golay[24,12] code has length 24 and 2048 codewords.
;; Weight distribution drives stack/queue switching:
;; τ = codeword weight acts as control parameter
;; ============================================================

(module golay-frontier
  (
   ;; --- Golay codes ---
   golay24-generator
   golay24-parity-check
   encode-golay24
   decode-golay24
   golay-weight
   
   ;; --- Frontier with Golay control ---
   make-adaptive-frontier
   adaptive-frontier-push
   adaptive-frontier-pop
   adaptive-frontier-mode
   adaptive-frontier-tau
   
   ;; --- Integration with KAK ---
   frontier-mode-from-golay
   )
  
  (import chicken scheme)
  (use srfi-1 srfi-69 bitwise machine-constants)
  
  ;; ============================================================
  ;; Golay[24,12] Code Constants
  ;; ============================================================
  
  ;; Generator matrix for Golay[24,12]
  ;; Converts 12-bit information to 24-bit codeword
  (define golay24-generator
    '#(0x#xB25 0x#xB2D 0x#xB33 0x#xB36 0x#xB39 0x#xB3A 0x#xB3C 0x#xB44
       0x#xB46 0x#xB49 0x#xB4A 0x#xB4C))
  
  ;; Parity check matrix
  (define golay24-parity-check
    '#(0x#xB25 0x#xB2D 0x#xB33 0x#xB36 0x#xB39 0x#xB3A 0x#xB3C 0x#xB44
       0x#xB46 0x#xB49 0x#xB4A 0x#xB4C))
  
  ;; ============================================================
  ;; Golay Weight Calculation
  ;; ============================================================
  
  ;; Hamming weight (population count) of a 24-bit codeword
  ;; (golay-weight codeword)
  ;;   codeword: 24-bit integer
  ;; Returns: number of 1-bits (0-24)
  ;; τ = weight ∈ [0, 24], acts as decomposition parameter
  (define (golay-weight codeword)
    (let loop ((code (bitwise-and codeword #xFFFFFF))
               (count 0))
      (if (zero? code)
          count
          (loop (bitwise-and code (- code 1))
                (+ count 1)))))
  
  ;; ============================================================
  ;; Golay[24,12] Encoding (Simplified)
  ;; ============================================================
  
  ;; Encode 12-bit information to 24-bit Golay codeword
  ;; (encode-golay24 info)
  ;;   info: 12-bit integer (0-4095)
  ;; Returns: 24-bit codeword
  ;; 
  ;; Simplified: uses XOR-based systematic encoding
  ;; Real Golay uses matrix multiplication over GF(2)
  (define (encode-golay24 info)
    (let* ((m (int->bits info 12))
           (code23 (encode-23 m))
           (code24-list (extend-24 code23)))
      (bits->int code24-list)))
  
  ;; ============================================================
  ;; Decode Golay[24,12] (Error Correction Capability)
  ;; ============================================================
  
  ;; Decode received 24-bit word with error correction
  ;; (decode-golay24 received)
  ;;   received: potentially corrupted 24-bit word
  ;; Returns: (values info syndrome)
  ;;   info: corrected 12-bit information
  ;;   syndrome: error pattern (indicates how many bit flips corrected)
  (define (decode-golay24 received)
    (let* ((r24 (bitwise-and received #xFFFFFF))
           (map (codeword->info-map))
           (best (let loop ((pairs map) (best-pair #f) (best-dist 999))
                   (if (null? pairs)
                       best-pair
                       (let* ((pair (car pairs))
                              (cw (car pair))
                              (info (cdr pair))
                              (dist (golay-weight (bitwise-xor cw r24))))
                         (if (< dist best-dist)
                             (loop (cdr pairs) pair dist)
                             (loop (cdr pairs) best-pair best-dist)))))))
      (if best
          (values (cdr best) ;; info corrected
                  (let ((cw (car best)))
                    (bitwise-xor cw r24))) ;; syndrome/diff as integer
          (values 0 r24))))
  
  ;; ============================================================
  ;; Adaptive Frontier Control
  ;; ============================================================
  
  ;; Frontier mode determined by Golay weight (τ)
  ;; τ ∈ [0,24] → normalized to [0,1]
  ;; τ < 0.5 → stack (DFS, explores deeply)
  ;; τ ≥ 0.5 → queue (BFS, explores broadly)
  ;;
  ;; This creates τ-dependent behavior in KAK decomposition:
  ;; - Low τ: prioritize depth (good for SSSP with deep graphs)
  ;; - High τ: prioritize breadth (good for wide graphs)
  (define (frontier-mode-from-golay tau-weight)
    (let ((normalized (/ (min tau-weight 24) 24.0)))
      (if (< normalized 0.5)
          'stack
          'queue)))
  
  ;; Create adaptive frontier with Golay code control
  ;; (make-adaptive-frontier info-bits)
  ;;   info-bits: 12-bit seed for Golay encoding
  ;; Returns: frontier object with embedded τ parameter
  (define (make-adaptive-frontier #!optional (info-bits 0))
    (let* ((codeword (encode-golay24 info-bits))
           (tau (golay-weight codeword))
           (mode (frontier-mode-from-golay tau)))
      (vector mode
              tau
              codeword
              (/ tau 24.0)  ;; normalized tau
              '())))        ;; data
  
  ;; Get current frontier mode
  (define (adaptive-frontier-mode frontier)
    (vector-ref frontier 0))
  
  ;; Get tau parameter (weight)
  (define (adaptive-frontier-tau frontier)
    (vector-ref frontier 1))
  
  ;; Get normalized tau [0, 1]
  (define (adaptive-frontier-tau-normalized frontier)
    (vector-ref frontier 3))
  
  ;; Push value onto adaptive frontier
  ;; (adaptive-frontier-push frontier val)
  ;;   frontier: adaptive frontier object
  ;;   val: value to push
  ;; Returns: updated frontier
  (define (adaptive-frontier-push frontier val)
    (let ((mode (vector-ref frontier 0))
          (tau (vector-ref frontier 1))
          (codeword (vector-ref frontier 2))
          (tau-norm (vector-ref frontier 3))
          (data (vector-ref frontier 4)))
      (let ((new-data (case mode
                        ((stack) (cons val data))
                        ((queue) (append data (list val)))
                        (else data))))
        (vector mode tau codeword tau-norm new-data))))
  
  ;; Pop value from adaptive frontier
  ;; (adaptive-frontier-pop frontier)
  ;;   frontier: adaptive frontier object
  ;; Returns: (values val frontier')
  (define (adaptive-frontier-pop frontier)
    (let ((mode (vector-ref frontier 0))
          (tau (vector-ref frontier 1))
          (codeword (vector-ref frontier 2))
          (tau-norm (vector-ref frontier 3))
          (data (vector-ref frontier 4)))
      (if (null? data)
          (values #f frontier)
          (values (car data)
                  (vector mode tau codeword tau-norm (cdr data))))))
  
  ;; ============================================================
  ;; Frontier Information Display
  ;; ============================================================
  
  ;; Display frontier control parameters
  (define (print-frontier-info frontier)
    (let ((mode (adaptive-frontier-mode frontier))
          (tau (adaptive-frontier-tau frontier))
          (tau-norm (adaptive-frontier-tau-normalized frontier)))
      (printf "╔════════════════════════════════════════╗~n")
      (printf "║ Golay-Controlled Adaptive Frontier    ║~n")
      (printf "╠════════════════════════════════════════╣~n")
      (printf "║ Mode (τ-dependent):  ~a~n" mode)
      (printf "║ Codeword weight τ:   ~2d / 24~n" tau)
      (printf "║ Normalized τ̂:      ~5,3f~n" tau-norm)
      (printf "║ Behavior:            ~a~n"
              (if (< tau-norm 0.5)
                  "DFS (deep exploration)"
                  "BFS (broad exploration)"))
      (printf "╚════════════════════════════════════════╝~n")))
  
  ) ;; end module