;;; ============================================================
;;; core/golay_frontier.scm
;;; Golay Code Logic & Adaptive Strategy Decision
;;; ============================================================

(module golay_frontier
  (
   ;; --- Golay Math Exports ---
   golay24-generator
   golay24-parity-check
   encode-golay24
   decode-golay24
   golay-weight
   
   ;; --- Strategy/Config Exports ---
   make-adaptive-frontier
   adaptive-frontier-mode
   adaptive-frontier-tau
   adaptive-frontier-codeword
   frontier-mode-from-golay
   adaptive-frontier-push
   adaptive-frontier-pop
   
   ;; --- Utility ---
   print-golay-info)
   
  (import scheme)
  (import (chicken base)
          (chicken bitwise)
          (chicken format)
          srfi-1)

  ;; ============================================================
  ;; Golay[24,12] Code Constants & Math
  ;; ============================================================

  (define golay24-generator
    (vector
     #xC75 #x63B #xF68 #x7B4 #x3DA #xD99 #x6CD #x367 #xDC6 #xA97 #x93E #x8EB))

  (define golay24-parity-check
    (vector
     #x8CE #xC67 #x8DD #x4B7 #x1DB #xEE1 #xC1F #xC8F #x573 #x9F9 #xB35 #xACA))

  (define (golay-weight n)
    (let loop ((n n) (count 0))
      (if (zero? n)
          count
          (loop (arithmetic-shift n -1)
                (+ count (bitwise-and n 1))))))

  (define (encode-golay24 info-bits)
    (let ((p-matrix golay24-generator))
      (let loop ((i 0) (parity 0))
        (if (= i 12)
            (bitwise-ior (arithmetic-shift info-bits 12) parity)
            (let ((info-bit (bitwise-and 1 (arithmetic-shift info-bits (- i)))))
              (if (zero? info-bit)
                  (loop (+ i 1) parity)
                  (loop (+ i 1) (bitwise-xor parity (vector-ref p-matrix i)))))))))

  (define (calculate-syndrome codeword)
    (let ((recalculated-parity
           (let ((info-prime (arithmetic-shift codeword -12)))
             (let loop ((i 0) (parity 0))
               (if (= i 12)
                   parity
                   (let ((info-bit (bitwise-and 1 (arithmetic-shift info-prime (- i)))))
                     (if (zero? info-bit)
                         (loop (+ i 1) parity)
                         (loop (+ i 1) (bitwise-xor parity (vector-ref golay24-generator i))))))))))
      (bitwise-xor (bitwise-and codeword #xFFF) recalculated-parity)))

  (define (decode-golay24 codeword)
    (let* ((p-matrix golay24-generator)
           (info-prime (arithmetic-shift codeword -12))
           (syndrome (calculate-syndrome codeword))
           (syndrome-weight (golay-weight syndrome)))
      (cond
       ((zero? syndrome)
        (values info-prime 0))
       ((<= syndrome-weight 3)
        (values info-prime syndrome))
       (else
        (values info-prime syndrome)))))

  ;; ============================================================
  ;; Adaptive Strategy Logic
  ;; ============================================================
  
  (define (frontier-mode-from-golay tau)
    (let ((normalized (/ (min tau 24) 24.0)))
      (if (< normalized 0.5)
          'stack
          'queue)))
  
  (define (make-adaptive-frontier #!optional (info-bits 0))
    (let* ((codeword (encode-golay24 info-bits))
           (tau (golay-weight codeword))
           (mode (frontier-mode-from-golay tau)))
      ;; Vector structure: #(mode tau codeword normalized-tau data-structure)
      (vector mode
              tau
              codeword
              (/ tau 24.0)
              '()))) ;; データ格納用の空リスト (インデックス 4)
              
  
  ;; --- Accessors ---
  (define (adaptive-frontier-mode config) (vector-ref config 0))
  (define (adaptive-frontier-tau config)  (vector-ref config 1))
  (define (adaptive-frontier-codeword config) (vector-ref config 2))
  (define (adaptive-frontier-tau-norm config) (vector-ref config 3))
  (define (adaptive-frontier-data config) (vector-ref config 4))
  (define (adaptive-frontier-set-data! config new-data) (vector-set! config 4 new-data)) ;; mutableなベクタ操作

  ;; --- Core Frontier Operations ---
  
  (define (adaptive-frontier-push config item)
    "Adds an item to the frontier based on its mode ('stack' or 'queue'). Mutates the config vector."
    (let* ((mode (adaptive-frontier-mode config))
           (current-data (adaptive-frontier-data config))
           (new-data
            (cond
             ((eq? mode 'stack) (cons item current-data))        ; Stack: LIFO (cons to front)
             ((eq? mode 'queue) (append current-data (list item))) ; Queue: FIFO (append to back)
             (else (error "Unknown frontier mode" mode)))))
      
      ;; ベクタの中身を更新する
      (adaptive-frontier-set-data! config new-data)
      config)) ; 修正された設定（ベクタ）を返す

  (define (adaptive-frontier-pop config)
    "Removes and returns an item from the frontier (LIFO or FIFO determined by mode). Mutates the config vector. Returns (values item config)."
    (let* ((current-data (adaptive-frontier-data config)))
      (if (null? current-data)
          (error "Cannot pop from empty frontier" config)
          (let ((item (car current-data))
                (new-data (cdr current-data)))
            
            ;; ベクタの中身を更新する
            (adaptive-frontier-set-data! config new-data)
            
            ;; itemと修正された設定を返す
            (values item config)))))
            
  ;; ============================================================
  ;; Display / Debug
  ;; ============================================================
  
  (define (print-golay-info config)
    (let ((mode (adaptive-frontier-mode config))
          (tau (adaptive-frontier-tau config))
          (tau-norm (adaptive-frontier-tau-norm config))
          (codeword (adaptive-frontier-codeword config)))
      (printf "╔═══════════════════════════════════════╗~%")
      (printf "║ Golay Control Configuration           ║~%")
      (printf "╠═══════════════════════════════════════╣~%")
      (printf "║ Codeword:            0x~X~%" codeword)
      (printf "║ Hamming Weight (τ):  ~a / 24~%" tau)
      (printf "║ Normalized τ̂:        ~a~%" tau-norm)
      (printf "║ Decided Mode:        ~a~%" mode)
      (printf "║ Strategy:            ~a~%"
              (if (eq? mode 'stack)
                  "DFS (Deep / Exploitation)"
                  "BFS (Broad / Exploration)"))
      (printf "╚═══════════════════════════════════════╝~%"))))