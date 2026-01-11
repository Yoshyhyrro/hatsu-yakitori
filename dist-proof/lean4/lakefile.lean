import Lake
open Lake DSL

package «hatsu-yakitori-proof» where
  version := v!"0.1.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"

@[default_target]
lean_lib «HatsuYakitori» where
  globs := #[.submodules `HatsuYakitori]

-- ここを追加：単一モジュールをビルドするためのターゲット
lean_exe MachineConstants where
  root := `HatsuYakitori.MachineConstants
