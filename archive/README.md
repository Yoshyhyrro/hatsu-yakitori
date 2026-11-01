# Archive

Sources in this directory are not part of any build target. They are kept for reference and
history only; `archive/` lies outside every `hs-source-dirs` and `source-dirs` entry.

## `shake/Rules/GC.hs`

Formerly the `Rules.GC` module: a Polysemy-based selection of "topological GC" strategies
(`GomoryHu`, `Ultrametric`, `ConnesKreimer`, `Conservative`) for the Shake build.

### Reasons for archiving

- **No effect on build output.** `Pipeline.compileAndLinkWithGC` built the object returned by
  `GC.buildWithGCStrategy` but never passed it to the linker, and all strategies were compiled
  with identical flags.
- **Not operational.** `csc` 5.3 rejects the flags used by the `gc-*` targets
  (`-scrutinize`, `-inline N`, `-local-optimizations`). The Scheme analysis was driven by an empty
  graph (marked TODO), and the field parser dropped too many characters, so a matching output
  line would have raised a `read` error.
- **Build footprint.** It was the only module in `shake/` that used `polysemy` and
  `polysemy-plugin`; removing it also removes the GHC plugin from the build.
- **Naming.** The `ConnesKreimer` strategy is a connectivity threshold. It implements no
  coproduct, antipode or Hopf-algebraic structure.
- **Consistency.** The Lean counterpart was archived earlier; see
  `dist-proof/lean4/HatsuYakitori/Notes/TopologicalGCNotes.lean`.

### Changes made together with the move

- Removed the `gc-*` Shake targets and the `gcRule` registration (`shake/Shake.hs`).
- Removed `bcGCStrategy`, `withGCStrategy`, `gcOptimizedModule`, `gcOptimizedModuleWith` and
  `compileAndLinkWithGC` (`shake/Pipeline.hs`).
- Removed `Rules.GC`, `polysemy`, `polysemy-plugin` and `-fplugin=Polysemy.Plugin` from
  `package.yaml` and `hatsu-yakitori.cabal`.

### Not changed

- `modules/topological-gc.scm` and its remaining dependants.
- The `polysemy` pins in `stack.yaml` and `stack.yaml.lock`; unused extra-deps are not built.

### Restoring

Move the file back to `shake/Rules/GC.hs`, restore the removed entries listed above from the
commit that archived it (`git show <commit>`), and re-add the Polysemy dependencies.