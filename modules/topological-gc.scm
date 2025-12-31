;; filepath: c:\Users\tyuuw\hatsu-yakitori\modules\machine_constants.scm
;;; ============================================================
;;; modules/machine_constants.scm
;;;
;;; Machine-specific constants for numerical computation
;;; ============================================================

(module machine_constants
  (;; Floating point constants
   machine-epsilon
   machine-precision
   max-float
   min-float
   
   ;; Integer constants
   fixnum-bits
   max-fixnum
   min-fixnum)

  (import scheme chicken.base)

  ;;; ================================================================
  ;;; Floating Point Constants
  ;;; ================================================================

  ;; Machine epsilon: smallest x such that 1.0 + x != 1.0
  (define machine-epsilon 2.220446049250313e-16)  ;; IEEE 754 double

  ;; Decimal precision
  (define machine-precision 15)

  ;; Maximum representable float
  (define max-float 1.7976931348623157e+308)

  ;; Minimum positive normalized float
  (define min-float 2.2250738585072014e-308)

  ;;; ================================================================
  ;;; Integer Constants
  ;;; ================================================================

  ;; Number of bits in a fixnum (platform dependent)
  (define fixnum-bits 62)  ;; 64-bit system with tag bits

  ;; Maximum fixnum value
  (define max-fixnum (- (expt 2 (- fixnum-bits 1)) 1))

  ;; Minimum fixnum value
  (define min-fixnum (- (expt 2 (- fixnum-bits 1)))))

 ;; end module machine_constants