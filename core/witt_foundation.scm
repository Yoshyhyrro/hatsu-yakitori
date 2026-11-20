;;; ============================================================
;;; core/witt_foundation.scm
;;; 
;;; WITT DESIGN S(5,8,24) AS CORE PRIMITIVE
;;; 
;;; This module provides the octad system of the Steiner system S(5,8,24),
;;; derived from the extended binary Golay code, together with the octad
;;; primitives used by the other Witt-related modules.
;;;
;;; NOTE: The permutations returned by `m24-generators` are placeholders and
;;; are not elements of the Mathieu group M_24 (see the notes there).
;;; ============================================================

(module witt_foundation
  (;; --- Core Witt Structure ---
   make-witt-context
   witt-context?
   
   ;; --- Octad Operations (primary) ---
   octad-from-points
   points-from-octad
   octad-complement
   octad-intersection
   octad-weight
   octad-class
   
   ;; --- Witt Automorphisms (M_24) ---
   witt-automorphism
   witt-apply-automorphism
   witt-generators-m24
   witt-orbit
   
   ;; --- Level Decomposition (Cartan × Witt) ---
   witt-cartan-levels
   octad-at-level
   level-preserving-partition
   
   ;; --- Validation & Testing ---
   validate-witt-structure
   test-witt-foundation)
  
  (import scheme)
  (import (chicken base)
          (chicken format)
          (chicken bitwise)
          srfi-1
          srfi-69)
  
  ;; ============================================================
  ;; CORE 1: Witt Context
  ;; ============================================================
  ;; A Witt context encodes:
  ;;   - The 24 points (0..23)
  ;;   - All 759 octads as bit-vectors
  ;;   - M_24 generators for automorphisms
  ;;   - Cached orbit structure
  ;; ============================================================

  (define (make-witt-context)
    "Create the Witt design S(5,8,24) as core data structure.
     
     Returns: vector containing
       [0] tag 'witt-context
       [1] all 759 octads (vector of 24-bit integers)
       [2] M_24 generator matrix (permutation group)
       [3] orbit caches (hash-table)
       [4] level partition (Cartan integrated)"
    
    (let ((octads (generate-all-octads))
          (m24-gens (m24-generators))
          (orbits (make-hash-table)))
      
      (vector 'witt-context
              octads
              m24-gens
              orbits
              (make-hash-table))))  ; level cache

  (define (witt-context? obj)
    (and (vector? obj)
         (= (vector-length obj) 5)
         (eq? (vector-ref obj 0) 'witt-context)))

  ;; ============================================================
  ;; CORE 2: Octad Primitives
  ;; ============================================================
  ;; Octads are 24-bit integers. Bit i = 1 iff point i is in octad.
  ;; Operations: intersection, complement, weight, etc.
  ;; ============================================================

  (define (hamming-weight n)
    "Popcount: number of 1-bits."
    (let loop ((code n) (count 0))
      (if (zero? code) count
          (loop (bitwise-and code (- code 1)) (+ count 1)))))

  (define (octad-from-points pts)
    "Convert point list to octad (24-bit integer).
     
     Args: pts = list of point indices (0..23)
     Returns: 24-bit octad representation"
    
    (let loop ((ps pts) (result 0))
      (if (null? ps) result
          (let ((p (car ps)))
            (loop (cdr ps)
                  (bitwise-ior result (arithmetic-shift 1 p)))))))

  (define (points-from-octad octad)
    "Convert octad to point list.
     
     Args: octad = 24-bit integer
     Returns: list of point indices in octad"
    
    (let loop ((bit 0) (points '()))
      (if (= bit 24) (reverse points)
          (let ((is-in (bitwise-and (arithmetic-shift octad (- bit)) 1)))
            (loop (+ bit 1)
                  (if (= is-in 1) (cons bit points) points))))))

  (define (octad-complement octad)
    "Bitwise complement within 24-bit space.
     
     Returns: 24-bit integer with all bits flipped"
    
    (bitwise-xor octad #xFFFFFF))  ; 2^24 - 1

  (define (octad-intersection oct1 oct2)
    "Compute intersection of two octads.
     
     Returns: (weight . bit-pattern)
     where weight ∈ {0,2,4,6,8} (Witt property!)"
    
    (let ((inter (bitwise-and oct1 oct2)))
      (cons (hamming-weight inter) inter)))

  (define (octad-weight octad)
    "Hamming weight of octad.
     
     Returns: integer in {0,1,...,24}
     Witt note: nonzero codewords have weight ∈ {8,12,16}"
    
    (hamming-weight octad))

  (define (octad-class octad)
    "Classify octad by weight (Witt orbit classification).
     
     Returns: symbol representing M_24 orbit
       'trivial       : weight = 0
       'octad         : weight = 8 (fundamental)
       'dodecad       : weight = 12 (self-dual)
       'octad-compl   : weight = 16 (complement)
       'dual-trivial  : weight = 24"
    
    (let ((w (octad-weight octad)))
      (cond
        ((= w 0)  'trivial)
        ((= w 8)  'octad)
        ((= w 12) 'dodecad)
        ((= w 16) 'octad-compl)
        ((= w 24) 'dual-trivial)
        (else     'intermediate))))

  ;; ============================================================
  ;; CORE 3: M_24 Automorphisms
  ;; ============================================================
  ;; M_24 = |M_24| = 244,823,040
  ;; Generated by transpositions, 3-cycles, etc.
  ;; CRITICAL: Automorphisms preserve octad structure
  ;; ============================================================

  (define (m24-generators)
    "Return placeholder permutations of the 24 points (as functions).

     NOTE: These permutations are NOT elements of the Mathieu group M_24.
     A non-trivial element of M_24 fixes at most 8 points and M_24 has no
     element of order 24, whereas the permutations below are a 24-cycle, a
     transposition, a 3-cycle and a double transposition. They do not map the
     set of 759 octads onto itself (for example, the transposition (0 1) maps
     only 407 of the 759 octads to octads). They are kept as sample
     permutations until genuine M_24 generators for this coordinate labelling
     are supplied.

     Returns: vector of permutation functions"

    ;; Placeholder permutations; see the note above.
    (vector
     ;; Generator 1: rotation (0→1→2→...→23→0)
     (lambda (p) (if (= p 23) 0 (+ p 1)))
     
     ;; Generator 2: swap (0 1)
     (lambda (p) (cond ((= p 0) 1) ((= p 1) 0) (else p)))
     
     ;; Generator 3: 3-cycle (0 1 2)
     (lambda (p) (cond ((= p 0) 1) ((= p 1) 2) ((= p 2) 0) (else p)))
     
     ;; Generator 4: (0 1)(2 3) (two transpositions)
     (lambda (p) (cond ((= p 0) 1) ((= p 1) 0)
                       ((= p 2) 3) ((= p 3) 2) (else p)))))

  (define (witt-generators-m24)
    "Get all M_24 generators.
     
     Returns: vector of permutation functions"
    (m24-generators))

  (define (witt-automorphism gen-idx)
    "Get a placeholder permutation by index (see `m24-generators`).
     
     Args: gen-idx = 0..3
     Returns: permutation function (point → point)"
    
    (let ((gens (m24-generators)))
      (if (and (>= gen-idx 0) (< gen-idx (vector-length gens)))
          (vector-ref gens gen-idx)
          (error "Invalid generator index" gen-idx))))

  (define (witt-apply-automorphism auto octad)
    "Apply automorphism (permutation) to octad.
     
     Args:
       auto: permutation function (point → point)
       octad: 24-bit octad
     
     Returns: the transformed 24-bit pattern. It is an octad of the system
              only if AUTO preserves the octad system."
    
    (let loop ((bit 0) (result 0))
      (if (= bit 24) result
          (let* ((is-in (bitwise-and (arithmetic-shift octad (- bit)) 1))
                 (new-bit (auto bit))
                 (new-result
                  (if (= is-in 1)
                      (bitwise-ior result (arithmetic-shift 1 new-bit))
                      result)))
            (loop (+ bit 1) new-result)))))

  (define (witt-orbit octad #!optional (max-size 100))
    "Compute the orbit of an octad under the group generated by `m24-generators`.
     
     NOTE: With the current placeholder permutations this is not an M_24 orbit.
     
     Returns: list of distinct octads (limited to max-size for perf)"
    
    (let ((gens (m24-generators))
          (seen (make-hash-table))
          (frontier (list octad)))
      
      (let loop ((front frontier) (count 0))
        (if (or (null? front) (>= count max-size))
            (hash-table-keys seen)
            
            (let* ((oct (car front))
                   (rest (cdr front))
                   (key oct))
              
              (if (hash-table-ref/default seen key #f)
                  (loop rest count)
                  
                  (begin
                    (hash-table-set! seen key #t)
                    
                    ;; Apply each generator
                    (let ((new-octs
                           (let loop-gen ((gi 0) (new-octs rest))
                             (if (< gi (vector-length gens))
                                 (let ((auto (vector-ref gens gi)))
                                   (loop-gen (+ gi 1)
                                            (cons (witt-apply-automorphism auto oct)
                                                  new-octs)))
                                 new-octs))))
                      (loop new-octs (+ count 1))))))))))

  ;; ============================================================
  ;; CORE 4: Cartan × Witt Integration
  ;; ============================================================
  ;; Multi-scale decomposition respecting Witt structure.
  ;; Each scale partitions octads hierarchically.
  ;; ============================================================

  (define (witt-cartan-levels B steps ctx)
    "Compute Cartan log-spaced levels, Witt-respecting.
     
     KEY IDEA:
       - Cartan: a_k = B^(k/steps)
       - Witt: each level is octad-aligned partition
       - Result: hierarchical octad clustering
     
     Args:
       B: upper bound (>1)
       steps: decomposition depth
       ctx: witt-context
     
     Returns: list of (scale . octad-partition)"
    
    (let ((log-B (log B)))
      (let loop ((k 0) (levels '()))
        (if (> k steps) (reverse levels)
            (let* ((scale (exp (/ (* k log-B) steps)))
                   (threshold (round (* 24.0 scale)))
                   (partition
                    (filter (lambda (oct)
                              (<= (octad-weight oct) threshold))
                            (vector->list (generate-all-octads)))))
              
              (loop (+ k 1)
                    (cons (cons scale partition) levels)))))))

  (define (octad-at-level ctx level-idx)
    "Get octad partition at specific Cartan level.
     
     Returns: list of octads in that level"
    
    (if (and (vector? ctx) (witt-context? ctx))
        (let ((level-cache (vector-ref ctx 4)))
          (hash-table-ref/default level-cache level-idx '()))
        '()))

  (define (level-preserving-partition graph ctx)
    "Placeholder: intended to partition graph nodes by Witt octad level.
     
     NOTE: Not implemented. It currently returns an empty assignment.
     
     Returns: an empty hash-table (intended: node -> octad-class)"
    
    (let ((assignment (make-hash-table)))
      ;; For each node, assign to octad class
      ;; (In real system: based on node coordinates/ID)
      assignment))

  ;; ============================================================
  ;; CORE 5: Verification Layer
  ;; ============================================================
  ;; Structural verification of the octad system.
  ;; ============================================================

  (define (all-octads-have-weight-8? octads)
    "Return #t when every element of the vector OCTADS has Hamming weight 8."
    (let loop ((i 0))
      (or (= i (vector-length octads))
          (and (= (hamming-weight (vector-ref octads i)) 8)
               (loop (+ i 1))))))

  (define (octads-meet-in-at-most-4-points? octads)
    "Return #t when two distinct entries of OCTADS never share more than 4 points."
    (let ((n (vector-length octads)))
      (let outer ((i 0))
        (or (= i n)
            (and (let inner ((j (+ i 1)))
                   (or (= j n)
                       (and (<= (hamming-weight (bitwise-and (vector-ref octads i)
                                                             (vector-ref octads j)))
                                4)
                            (inner (+ j 1)))))
                 (outer (+ i 1)))))))

  (define (octad-in-context? ctx pattern)
    "Return #t when the 24-bit PATTERN is one of the octads stored in CTX."
    (let ((octads (vector-ref ctx 1)))
      (let loop ((i 0))
        (and (< i (vector-length octads))
             (or (= (vector-ref octads i) pattern)
                 (loop (+ i 1)))))))

  (define (validate-witt-structure ctx)
    "Verify that the octads stored in CTX form the Steiner system S(5,8,24).

     Checks:
       1. CTX is a witt-context.
       2. It holds exactly 759 octads.
       3. Every octad has Hamming weight 8.
       4. Two distinct octads share at most 4 points.

     Checks 2-4 are sufficient. Two octads that share a 5-subset would share at
     least 5 points, so every 5-subset lies in at most one octad; and
     759 * C(8,5) = 42504 = C(24,5), so every 5-subset lies in exactly one octad.

     Returns: #t when all checks pass, #f otherwise"

    (and (witt-context? ctx)
         (let ((octads (vector-ref ctx 1)))
           (and (= (vector-length octads) 759)
                (all-octads-have-weight-8? octads)
                (octads-meet-in-at-most-4-points? octads)))))

  ;; ============================================================
  ;; HELPER: Generate All 759 Octads
  ;; ============================================================

  (define golay24-generator-matrix
    (vector
     #xC75 #x63B #xF68 #x7B4 #x3DA #xD99 #x6CD #x367
     #xDC6 #xA97 #x93E #x8EB))

  (define (encode-golay24-local info-bits)
    "Encode 12-bit info into 24-bit Golay codeword."
    (let ((p-matrix golay24-generator-matrix))
      (let loop ((i 0) (parity 0))
        (if (= i 12)
            (bitwise-ior (arithmetic-shift info-bits 12) parity)
            (let ((info-bit (bitwise-and 1 (arithmetic-shift info-bits (- i)))))
              (if (zero? info-bit)
                  (loop (+ i 1) parity)
                  (loop (+ i 1)
                        (bitwise-xor parity (vector-ref p-matrix i)))))))))

  (define (generate-all-octads)
    "Generate all 759 octads in S(5,8,24).

     Uses proper Golay encoding: encode all 2^12 = 4096 info words
     and filter for weight-8 codewords.

     Returns: vector of 759 octads (24-bit integers)"

    ;; Generate all Golay codewords and filter for weight-8
    (let ((octads '()))
      (let loop ((info 0))
        (if (< info 4096)
            (let* ((codeword (encode-golay24-local info))
                   (weight (hamming-weight codeword)))
              (if (= weight 8)
                  (begin
                    (set! octads (cons codeword octads))
                    (loop (+ info 1)))
                  (loop (+ info 1))))
            ;; Convert list to vector
            (let ((v (make-vector (length octads))))
              (let copy-loop ((octs octads) (idx 0))
                (if (null? octs)
                    v
                    (begin
                      (vector-set! v idx (car octs))
                      (copy-loop (cdr octs) (+ idx 1))))))))))

  ;; ============================================================
  ;; Testing
  ;; ============================================================

  (define (test-witt-foundation)
    "Run the self-test of the Witt core and print the results.

     Returns: #t when the context and the S(5,8,24) structure are valid"

    (printf "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━~%")
    (printf "║ WITT FOUNDATION - Core Tests             ║~%")
    (printf "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━~%~%")

    (let* ((ctx (make-witt-context))
           (context-ok (witt-context? ctx))
           (structure-ok (validate-witt-structure ctx))
           (sample (octad-from-points '(0 1 2 3 4 5 6 7)))
           (transformed (witt-apply-automorphism (witt-automorphism 0) sample)))

      ;; Test 1: context and S(5,8,24) structure
      (printf "Test 1: Witt Context Creation~%")
      (printf "  Context valid: ~a~%" (if context-ok "yes" "NO"))
      (printf "  Octads: ~a / 759~%" (vector-length (vector-ref ctx 1)))
      (printf "  S(5,8,24) verified (weights, pairwise intersections): ~a~%"
              (if structure-ok "yes" "NO"))

      ;; Test 2: octad primitives (informational)
      (printf "~%Test 2: Octad Primitives~%")
      (printf "  Pattern from points {0..7}: 0x~X~%" sample)
      (printf "  Points: ~a~%" (points-from-octad sample))
      (printf "  Weight: ~a~%" (octad-weight sample))
      (printf "  Class by weight: ~a~%" (octad-class sample))
      (printf "  Octad of the system: ~a~%" (if (octad-in-context? ctx sample) "yes" "no"))

      ;; Test 3: placeholder permutation (informational)
      (printf "~%Test 3: Placeholder Permutation (generator 0)~%")
      (printf "  Original:    0x~X~%" sample)
      (printf "  Transformed: 0x~X~%" transformed)
      (printf "  Weight preserved: ~a (true for every permutation)~%"
              (= (octad-weight sample) (octad-weight transformed)))
      (printf "  Transformed pattern is an octad of the system: ~a~%"
              (if (octad-in-context? ctx transformed) "yes" "no"))
      (printf "  NOTE: the placeholder permutations are not elements of M_24.~%")

      ;; Test 4: Cartan-Witt levels (informational)
      (printf "~%Test 4: Cartan x Witt Levels~%")
      (printf "  Number of scales: ~a~%" (length (witt-cartan-levels 8 3 ctx)))

      (printf "~%=== WITT FOUNDATION TESTS COMPLETE (context: ~a, structure: ~a) ===~%"
              (if context-ok "ok" "FAILED") (if structure-ok "ok" "FAILED"))
      (and context-ok structure-ok)))
) ;; end module witt_foundation