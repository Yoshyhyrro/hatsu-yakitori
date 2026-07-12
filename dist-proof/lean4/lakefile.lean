import Lake
open Lake DSL

package «hatsu-yakitori-proof» where
  version := v!"0.1.0"

  leanOptions := #[
    ⟨`diagnostics, true⟩,
    ⟨`pp.proofs, false⟩,
    ⟨`pp.motives, false⟩,
    ⟨`pp.maxSteps, 500⟩,
    ⟨`synthInstance.maxHeartbeats, 3000⟩
  ]

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"

@[default_target]
lean_lib «HatsuYakitori» where
  globs := #[.submodules `HatsuYakitori]
