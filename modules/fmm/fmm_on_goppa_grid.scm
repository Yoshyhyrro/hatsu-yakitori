;; module/fmm/fmm_on_goppa_grid.scm

(module fmm_on_goppa_grid
  (make-goppa-grid
   local-parameter
   calculate-geometric-center
   fmm-default-theta
   fmm-default-near-field-cutoff ; deprecated alias of fmm-default-theta
   calculate-cell-radius
   cell-admissible?
   fmm-direct-potential
   cartan-fmm-evaluate
   demo-cartan-fmm)

  (import (scheme)
          (chicken base)
      (chicken bitwise)
      (chicken format)
      (chicken sort)
      (chicken flonum)
      srfi-1
      srfi-69)

  (include "modules/fmm/fmm_kernel_impl.scm"))