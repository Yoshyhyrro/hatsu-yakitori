;; module/fmm/fmm_on_goppa_grid.scm

(module fmm_on_goppa_grid *
  (make-goppa-grid
   local-parameter
  calculate-geometric-center
  fmm-default-near-field-cutoff
  cartan-fmm-evaluate
   cartan-fmm-evaluate-golay
  demo-cartan-fmm
  demo-cartan-golay)

  (import (scheme)
          (chicken base)
      (chicken bitwise)
          (chicken format)
          (chicken sort)
          (chicken flonum)
          srfi-1
      srfi-69)

        (include "modules/fmm/fmm_kernel_impl.scm"))