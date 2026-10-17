{-
  flang.dhall
  Architectural gap registry for Rules.Proof.Flang
  (Fortran -> LLVM IR -> Proof pipeline).

  Design principles
  -----------------
  - Every gap carries a `diagCode` linking it back to Diag.hs (HYK*).
  - `blockedBy` makes the dependency graph between gaps explicit.
  - `remedy` is split into `immediate` (shell-level workaround) and
    `proper` (Haskell implementation target), mirroring JCL philosophy.
  - `status` lets CI tooling filter gaps without touching free text.
  - `affectedModules` names every .hs file that needs to change.
-}

-- ── Vocabulary types ────────────────────────────────────────────────────────

let Severity =
      < Error    -- build will fail or produce silently wrong output
      | Warning  -- degraded behaviour; build may still succeed
      | Note     -- informational; no correctness risk
      | Info     -- cosmetic / housekeeping
      >

let Status =
      < Open        -- not yet started
      | InProgress  -- branch exists or PR open
      | Blocked     -- waiting on another gap or upstream
      | Resolved    -- merged and verified
      >

let GapCategory =
      < DependencyResolution  -- Fortran .mod / USE order
      | PipelineAsymmetry     -- delta between LLVM_IR.hs and Flang.hs
      | PathCollision         -- output-path naming hazards
      | Preprocessing         -- CPP / macro support
      >

-- Structured remedy: a quick workaround + a proper fix target.
-- `proper` is Optional because some gaps have no clean long-term fix yet.
let Remedy =
      { immediate : Text        -- what to do right now (flag, guard, skip)
      , proper    : Optional Text  -- Haskell implementation target
      }

let Gap =
      { category       : GapCategory
      , code           : Text           -- FLG-NNN
      , diagCode       : Optional Text  -- corresponding HYK* in Diag.hs
      , severity       : Severity
      , status         : Status
      , blockedBy      : Optional Text  -- FLG-NNN of blocking gap, if any
      , affectedModules : List Text     -- shake/*.hs files that need changes
      , title          : Text
      , issueDescription : Text
      , technicalImpact  : Text
      , remedy           : Remedy
      }

-- ── Shared path constants ────────────────────────────────────────────────────

let buildRoot   = "_build_flang"
let distIR      = "dist-flang/llvm-ir"
let distModules = "dist-flang/modules"

-- Test/example constants (inspired by NonHappusMatroid examples)
let constants =
    { petersenVertexCount = 10
    , petersenEdgeCount   = 15
    , petersenComponents  = 1
    , petersenCycleRank   = 6
    , petersenJacobiDim   = 20
    }

-- ── Gap definitions ──────────────────────────────────────────────────────────

let gaps : List Gap =
  [ { category  = GapCategory.DependencyResolution
    , code      = "FLG-001"
    , diagCode  = Some "HYK007E"
    , severity  = Severity.Error
    , status    = Status.Open
    , blockedBy = None Text
    , affectedModules = [ "shake/Rules/Proof/Flang.hs" ]
    , title = "No topological sort for Fortran module dependencies"
    , issueDescription =
        "Fortran compilation is order-sensitive: if module A uses module B "
        ++ "(via USE), B must be compiled first to generate b.mod. "
        ++ "discoverFortranSources returns files in filesystem order "
        ++ "without parsing USE statements."
    , technicalImpact =
        "Multi-module codebases and parallel Shake builds will "
        ++ "fail non-deterministically with 'module not found'."
    , remedy =
        { immediate =
            "Compile all sources sequentially (nJobs 1) as a short-term guard."
        , proper = Some (
            "Parse USE/MODULE declarations (analogous to extractDeclareUses "
            ++ "in Compile.hs) and express compile order via Shake `need` "
            ++ "on the corresponding .mod outputs."
          )
        }
    }

  , { category  = GapCategory.DependencyResolution
    , code      = "FLG-002"
    , diagCode  = Some "HYK008W"
    , severity  = Severity.Warning
    , status    = Status.Open
    , blockedBy = None Text
    , affectedModules = [ "shake/Rules/Proof/Flang.hs" ]
    , title = "Uncontrolled .mod artifact placement"
    , issueDescription =
        "compileFortranToIR does not pass -module-dir, "
        ++ "so flang writes .mod files beside the source or in cwd, "
        ++ "leaking outside " ++ buildRoot ++ "/."
    , technicalImpact =
        "Violates Shake build isolation; .mod files from different "
        ++ "invocations collide in the source tree."
    , remedy =
        { immediate =
            "cd into " ++ buildRoot ++ " before invoking flang so "
            ++ ".mod files land there."
        , proper = Some (
            "Add \"-module-dir " ++ distModules ++ "\" (flang-new) "
            ++ "or \"-module\" (classic flang) to compileFortranToIR args; "
            ++ "create " ++ distModules ++ " in ensureFlangDirs."
          )
        }
    }

  , { category  = GapCategory.PipelineAsymmetry
    , code      = "FLG-003"
    , diagCode  = None Text
    , severity  = Severity.Warning
    , status    = Status.Blocked
    , blockedBy = Some "FLG-001"
    , affectedModules =
        [ "shake/Rules/Proof/Flang.hs"
        , "shake/Rules/Proof/LLVM_IR.hs"
        ]
    , title = "Missing StageOpt1 / StageOpt2 optimisation passes"
    , issueDescription =
        "LLVM_IR.hs pipelines raw IR through opt -passes=default<O1> "
        ++ "and opt -passes=default<O2> (StageOpt1/StageOpt2) to verify "
        ++ "stability across optimisations. Flang.hs only checks raw IR."
    , technicalImpact =
        "Optimizer-induced miscompilations in Fortran IR "
        ++ "will go undetected."
    , remedy =
        { immediate = "Document the gap; no workaround changes correctness."
        , proper = Some (
            "Port VerifyStage (StageRaw, StageOpt1, StageOpt2) from "
            ++ "LLVM_IR.hs into Flang.hs; thread through verifyFlangModules."
          )
        }
    }

  , { category  = GapCategory.PipelineAsymmetry
    , code      = "FLG-004"
    , diagCode  = None Text
    , severity  = Severity.Error
    , status    = Status.Blocked
    , blockedBy = Some "FLG-003"
    , affectedModules =
        [ "shake/Rules/Proof/Flang.hs"
        , "shake/Rules/Proof/SBV_Bridge.hs"
        , "shake/Shake.hs"
        ]
    , title = "No SBV / theorem-prover integration hook"
    , issueDescription =
        "LLVM_IR.hs exposes StageSBV and calls SBV_Bridge.verifySBVSpec. "
        ++ "Flang.hs has no equivalent; Fortran modules cannot participate "
        ++ "in symbolic execution or formal property verification."
    , technicalImpact =
        "Fortran proof targets are compile-only; "
        ++ "no SMT properties can be checked."
    , remedy =
        { immediate =
            "None; depends on FLG-003 landing first."
        , proper = Some (
            "Introduce StageSBV in Flang.hs; add a flang-sbv phony target "
            ++ "in Shake.hs that wires verifyFlangModules -> SBV_Bridge."
          )
        }
    }

  , { category  = GapCategory.PathCollision
    , code      = "FLG-005"
    , diagCode  = Some "HYK007E"
    , severity  = Severity.Warning
    , status    = Status.Open
    , blockedBy = None Text
    , affectedModules = [ "shake/Rules/Proof/Flang.hs" ]
    , title = "Flat output directory causes base-name collisions"
    , issueDescription =
        "flangIrOutputPath uses takeBaseName, ignoring subdirectory "
        ++ "structure. Two sources sharing a base name "
        ++ "(e.g. src/math/utils.f90 and src/io/utils.f90) "
        ++ "overwrite each other under " ++ distIR ++ "/."
    , technicalImpact =
        "Silent data loss: the second compile silently overwrites "
        ++ "the first .ll without error."
    , remedy =
        { immediate =
            "Enforce unique base names as a precondition check "
            ++ "in discoverFortranSources; abort with HYK007E on collision."
        , proper = Some (
            "Compute output path as "
            ++ distIR ++ "/<makeRelative srcRoot src>.ll "
            ++ "preserving the full relative hierarchy."
          )
        }
    }

  , { category  = GapCategory.Preprocessing
    , code      = "FLG-006"
    , diagCode  = Some "HYK006W"
    , severity  = Severity.Error
    , status    = Status.Open
    , blockedBy = None Text
    , affectedModules = [ "shake/Rules/Proof/Flang.hs" ]
    , title = "CPP preprocessing not activated for uppercase extensions"
    , issueDescription =
        "isFortranSource accepts .F90 / .F95 / .F / .FOR, which "
        ++ "conventionally require a CPP pass. compileFortranToIR passes "
        ++ "no -cpp flag, so #ifdef / #include directives crash the frontend."
    , technicalImpact =
        "Any Fortran source using conditional compilation "
        ++ "will fail at the flang -emit-llvm stage with a parse error."
    , remedy =
        { immediate =
            "Filter uppercase extensions out of isFortranSource "
            ++ "until CPP support is wired in."
        , proper = Some (
            "Detect uppercase extension in compileFortranToIR and "
            ++ "prepend \"-cpp\" (flang-new) or \"-Mpreprocess\" "
            ++ "(classic flang) to the argument list."
          )
        }
    }
  ]

-- ── Top-level registry ───────────────────────────────────────────────────────

in  { meta =
        { schemaVersion  = "1.1.0"
        , targetModule   = "shake/Rules/Proof/Flang.hs"
        , diagRegistry   = "shake/Diag.hs"
        , openCount      =
            Natural/toInteger
              ( List/length
                  Gap
                  ( List/filter
                      Gap
                      (\(g : Gap) -> g.status === Status.Open)
                      gaps
                  )
              )
        , constants = constants
        }
    , gaps = gaps
    }
