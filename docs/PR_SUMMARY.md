Summary of changes: "dest/" layout, SBV rules, and CI integration

What I changed

- Introduced `dest/` top-level for build outputs and proofs (replacing previous `dist/` usage in the build pipeline).
  - Files updated: `shake/Rules/Compile.hs`, `shake/Rules/MEEP.hs`, `shake/Pipeline.hs`, `shake/Rules/Link.hs` (dest-awareness), `scripts/generate_llvm.sh`, `README.md`, `.gitignore`.

- Added SBV support and verification rule
  - `shake/Rules/SBVModules.hs`: rule to generate SBV spec skeletons and a `verify-sbv` phony target that runs verification (writes `.log` and `.result` to `dest/proofs`).
  - `shake/Rules/Proof/SBV_Bridge.hs`: `verifySBVSpec` now runs `stack exec -- runhaskell` (falls back to `runhaskell`) and writes logs/results.

- Added a safe, hidden-linking utility
  - `shake/Rules/ModuleLinking.hs`: `linkHiddenExe` and `withHiddenRepoEnv` to set `CHICKEN_REPOSITORY_PATH` locally for link invocations.

- CI integration
  - `.github/workflows/verify-ci.yml`: PR-runner that checks for lingering `dist/` references and a manual/main-only SBV verification job that runs on `workflow_dispatch` or `push` to `main`.
  - `scripts/check_dest_layout.sh`: helper script to find `dist/` references.

- Minor docs & helper scripts
  - `docs/PR_SUMMARY.md` (this file), adjustments to `README.md`.

Why this change

- Separates generated artifacts to avoid top-level conflicts and to reduce subtle bugs caused by mixing transient outputs (e.g., `dist/`) with versioned files.
- Keeps SBV proof generation/execution isolated so proof failures don't pollute the normal build flow.
- Adds CI checks to prevent regressions.

How to test locally

1. Run the layout checker:
   ```bash
   ./scripts/check_dest_layout.sh
   ```
2. Generate a SBV spec skeleton and run verification locally:
   ```bash
   cabal run shake -- SBV_Skel # or the relevant phony target
   cabal run shake -- verify-sbv
   ```

(If using Stack: replace `cabal run shake --` with `stack exec -- runhaskell shake/Shake.hs`.)

Notes & follow-ups

- The SBV verification step will install Haskell dependencies in CI and can be heavy: it runs only on `main` pushes or manually via the workflow to avoid slowing down every PR.
- We can add a staged job to run SBV on a selected sample list of modules for PRs in the future.
