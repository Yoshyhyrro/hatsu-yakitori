import Lake
open Lake DSL

package «hatsu-yakitori-proof» where
  version := v!"0.1.0"

  leanOptions := #[
    ⟨`pp.explicit, true⟩,
    ⟨`pp.universes, true⟩,
    ⟨`pp.analyze, true⟩,
    ⟨`pp.coercions, true⟩,
    ⟨`diagnostics, true⟩,
    ⟨`trace.Meta.SynthInstance, true⟩
  ]

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"

@[default_target]
lean_lib «HatsuYakitori» where
  globs := #[.submodules `HatsuYakitori]
