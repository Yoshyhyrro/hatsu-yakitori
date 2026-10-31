;;; ============================================================
;;; core/algebraic_brackets.scm
;;; Commutator and Anticommutator for Galois Action Operators
;;; ============================================================

(module algebraic_brackets
  (compute-commutator
   compute-anticommutator
   evaluate-operator-product)

  (import scheme)
  (import (chicken base)
          (chicken bitwise)
          machine_constants
          golay_frontier)

  ;;; Compute the Lie bracket (commutator) [Lu, Lv] = Lu Lv - Lv Lu.
  ;;; In Galois deformation theory, this captures the non-commutative
  ;;; obstruction corresponding to the Ihara bracket.
  (define (compute-commutator op-u op-v)
    "Compute commutator of two discrete operators acting on state space."
    (lambda (state)
      (let ((uv-state (op-u (op-v state)))
            (vu-state (op-v (op-u state))))
        ;; In GF(2) or bitwise representation, subtraction is equivalent to bitwise-xor
        (bitwise-xor uv-state vu-state))))

  ;;; Compute the anticommutator {Li, Lj} = Li Lj + Lj Li.
  ;;; Represents the symmetric Jordan product structure in the operator ring.
  (define (compute-anticommutator op-i op-j)
    "Compute anticommutator of two discrete operators."
    (lambda (state)
      (let ((ij-state (op-i (op-j state)))
            (ji-state (op-j (op-i state))))
        (bitwise-xor ij-state ji-state))))

  ;;; Evaluate operator composition mapped to Golay codeword space
  (define (evaluate-operator-product op-a op-b codeword)
    "Evaluate the combined operator action on a target Golay codeword."
    (let ((composite-op (compute-commutator op-a op-b)))
      (composite-op codeword))))