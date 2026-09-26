(*
  flang.dats
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
*)

#include "share/atspre_staload.hats"

// ── Vocabulary types ────────────────────────────────────────────────────────

// Severity reflects build failure impact.
datatype Severity =
  | SeverityError of ()    // build will fail or produce silently wrong output
  | SeverityWarning of ()  // degraded behaviour; build may still succeed
  | SeverityNote of ()     // informational; no correctness risk
  | SeverityInfo of ()     // cosmetic / housekeeping

// Status tracks resolution lifecycle.
datatype Status =
  | StatusOpen of ()        // not yet started
  | StatusInProgress of ()  // branch exists or PR open
  | StatusBlocked of ()     // waiting on another gap or upstream
  | StatusResolved of ()    // merged and verified

// GapCategory partitions the failure modes.
datatype GapCategory =
  | GapCategoryDependencyResolution of ()  // Fortran .mod / USE order
  | GapCategoryPipelineAsymmetry of ()     // delta between LLVM_IR.hs and Flang.hs
  | GapCategoryPathCollision of ()         // output-path naming hazards
  | GapCategoryPreprocessing of ()         // CPP / macro support

// Structured remedy: a quick workaround + a proper fix target.
// `proper` is Optional because some gaps have no clean long-term fix yet.
typedef Remedy = @{
  immediate = string,         // what to do right now (flag, guard, skip)
  proper    = Option(string)  // Haskell implementation target
}

// Gap record capturing each architectural discrepancy.
typedef Gap = @{
  category         = GapCategory,
  code             = string,          // FLG-NNN
  diagCode         = Option(string),  // corresponding HYK* in Diag.hs
  severity         = Severity,
  status           = Status,
  blockedBy        = Option(string),  // FLG-NNN of blocking gap, if any
  affectedModules  = List(string),    // shake/*.hs files that need changes
  title            = string,
  issueDescription = string,
  technicalImpact  = string,
  remedy           = Remedy
}

// ── Shared path constants ────────────────────────────────────────────────────

#define buildRoot   "_build_flang"
#define distIR      "dist-flang/llvm-ir"
#define distModules "dist-flang/modules"

// Test/example constants (inspired by NonHappusMatroid examples)
typedef Constants = @{
  petersenVertexCount = int,
  petersenEdgeCount   = int,
  petersenComponents  = int,
  petersenCycleRank   = int,
  petersenJacobiDim   = int
}

val constants : Constants = @{
  petersenVertexCount = 10,
  petersenEdgeCount   = 15,
  petersenComponents  = 1,
  petersenCycleRank   = 6,
  petersenJacobiDim   = 20
}

// ── Functional helpers ───────────────────────────────────────────────────────

fun{a:t@ype}
list_sing (x1: a): List(a) =
  list_cons(x1, list_nil())

fun{a:t@ype}
list_pair (x1: a, x2: a): List(a) =
  list_cons(x1, list_cons(x2, list_nil()))

fun{a:t@ype}
list_triple (x1: a, x2: a, x3: a): List(a) =
  list_cons(x1, list_cons(x2, list_cons(x3, list_nil())))

fun{a:t@ype}
list_filter
  (xs: List(a), p: (a) -<cloref1> bool): List(a) =
  case+ xs of
  | list_nil () => list_nil ()
  | list_cons (x, xs_tl) =>
    if p (x) then
      list_cons (x, list_filter<a> (xs_tl, p))
    else
      list_filter<a> (xs_tl, p)

fun{a:t@ype}
list_length (xs: List(a)): int =
  case+ xs of
  | list_nil () => 0
  | list_cons (_, xs_tl) => 1 + list_length<a> (xs_tl)

fun
is_status_open (s: Status): bool =
  case+ s of
  | StatusOpen () => true
  | _ => false

fun
gap_is_open (g: Gap): bool =
  is_status_open (g.status)

// ── Gap definitions ──────────────────────────────────────────────────────────

val gap1 : Gap = @{
  category  = GapCategoryDependencyResolution(),
  code      = "FLG-001",
  diagCode  = Some("HYK007E"),
  severity  = SeverityError(),
  status    = StatusOpen(),
  blockedBy = None{string}(),
  affectedModules = list_sing<string>("shake/Rules/Proof/Flang.hs"),
  title = "No topological sort for Fortran module dependencies",
  issueDescription =
    "Fortran compilation is order-sensitive: if module A uses module B " +
    "(via USE), B must be compiled first to generate b.mod. " +
    "discoverFortranSources returns files in filesystem order " +
    "without parsing USE statements.",
  technicalImpact =
    "Multi-module codebases and parallel Shake builds will " +
    "fail non-deterministically with 'module not found'.",
  remedy = @{
    immediate =
      "Compile all sources sequentially (nJobs 1) as a short-term guard.",
    proper = Some(
      "Parse USE/MODULE declarations (analogous to extractDeclareUses " +
      "in Compile.hs) and express compile order via Shake `need` " +
      "on the corresponding .mod outputs."
    )
  }
}

val gap2 : Gap = @{
  category  = GapCategoryDependencyResolution(),
  code      = "FLG-002",
  diagCode  = Some("HYK008W"),
  severity  = SeverityWarning(),
  status    = StatusOpen(),
  blockedBy = None{string}(),
  affectedModules = list_sing<string>("shake/Rules/Proof/Flang.hs"),
  title = "Uncontrolled .mod artifact placement",
  issueDescription =
    "compileFortranToIR does not pass -module-dir, " +
    "so flang writes .mod files beside the source or in cwd, " +
    "leaking outside " + buildRoot + "/.",
  technicalImpact =
    "Violates Shake build isolation; .mod files from different " +
    "invocations collide in the source tree.",
  remedy = @{
    immediate =
      "cd into " + buildRoot + " before invoking flang so " +
      ".mod files land there.",
    proper = Some(
      "Add \"-module-dir " + distModules + "\" (flang-new) " +
      "or \"-module\" (classic flang) to compileFortranToIR args; " +
      "create " + distModules + " in ensureFlangDirs."
    )
  }
}

val gap3 : Gap = @{
  category  = GapCategoryPipelineAsymmetry(),
  code      = "FLG-003",
  diagCode  = None{string}(),
  severity  = SeverityWarning(),
  status    = StatusBlocked(),
  blockedBy = Some("FLG-001"),
  affectedModules = list_pair<string>(
    "shake/Rules/Proof/Flang.hs",
    "shake/Rules/Proof/LLVM_IR.hs"
  ),
  title = "Missing StageOpt1 / StageOpt2 optimisation passes",
  issueDescription =
    "LLVM_IR.hs pipelines raw IR through opt -passes=default<O1> " +
    "and opt -passes=default<O2> (StageOpt1/StageOpt2) to verify " +
    "stability across optimisations. Flang.hs only checks raw IR.",
  technicalImpact =
    "Optimizer-induced miscompilations in Fortran IR " +
    "will go undetected.",
  remedy = @{
    immediate = "Document the gap; no workaround changes correctness.",
    proper = Some(
      "Port VerifyStage (StageRaw, StageOpt1, StageOpt2) from " +
      "LLVM_IR.hs into Flang.hs; thread through verifyFlangModules."
    )
  }
}

val gap4 : Gap = @{
  category  = GapCategoryPipelineAsymmetry(),
  code      = "FLG-004",
  diagCode  = None{string}(),
  severity  = SeverityError(),
  status    = StatusBlocked(),
  blockedBy = Some("FLG-003"),
  affectedModules = list_triple<string>(
    "shake/Rules/Proof/Flang.hs",
    "shake/Rules/Proof/SBV_Bridge.hs",
    "shake/Shake.hs"
  ),
  title = "No SBV / theorem-prover integration hook",
  issueDescription =
    "LLVM_IR.hs exposes StageSBV and calls SBV_Bridge.verifySBVSpec. " +
    "Flang.hs has no equivalent; Fortran modules cannot participate " +
    "in symbolic execution or formal property verification.",
  technicalImpact =
    "Fortran proof targets are compile-only; " +
    "no SMT properties can be checked.",
  remedy = @{
    immediate =
      "None; depends on FLG-003 landing first.",
    proper = Some(
      "Introduce StageSBV in Flang.hs; add a flang-sbv phony target " +
      "in Shake.hs that wires verifyFlangModules -> SBV_Bridge."
    )
  }
}

val gap5 : Gap = @{
  category  = GapCategoryPathCollision(),
  code      = "FLG-005",
  diagCode  = Some("HYK007E"),
  severity  = SeverityWarning(),
  status    = StatusOpen(),
  blockedBy = None{string}(),
  affectedModules = list_sing<string>("shake/Rules/Proof/Flang.hs"),
  title = "Flat output directory causes base-name collisions",
  issueDescription =
    "flangIrOutputPath uses takeBaseName, ignoring subdirectory " +
    "structure. Two sources sharing a base name " +
    "(e.g. src/math/utils.f90 and src/io/utils.f90) " +
    "overwrite each other under " + distIR + "/.",
  technicalImpact =
    "Silent data loss: the second compile silently overwrites " +
    "the first .ll without error.",
  remedy = @{
    immediate =
      "Enforce unique base names as a precondition check " +
      "in discoverFortranSources; abort with HYK007E on collision.",
    proper = Some(
      "Compute output path as " +
      distIR + "/<makeRelative srcRoot src>.ll " +
      "preserving the full relative hierarchy."
    )
  }
}

val gap6 : Gap = @{
  category  = GapCategoryPreprocessing(),
  code      = "FLG-006",
  diagCode  = Some("HYK006W"),
  severity  = SeverityError(),
  status    = StatusOpen(),
  blockedBy = None{string}(),
  affectedModules = list_sing<string>("shake/Rules/Proof/Flang.hs"),
  title = "CPP preprocessing not activated for uppercase extensions",
  issueDescription =
    "isFortranSource accepts .F90 / .F95 / .F / .FOR, which " +
    "conventionally require a CPP pass. compileFortranToIR passes " +
    "no -cpp flag, so #ifdef / #include directives crash the frontend.",
  technicalImpact =
    "Any Fortran source using conditional compilation " +
    "will fail at the flang -emit-llvm stage with a parse error.",
  remedy = @{
    immediate =
      "Filter uppercase extensions out of isFortranSource " +
      "until CPP support is wired in.",
    proper = Some(
      "Detect uppercase extension in compileFortranToIR and " +
      "prepend \"-cpp\" (flang-new) or \"-Mpreprocess\" " +
      "(classic flang) to the argument list."
    )
  }
}

// ── Top-level registry ───────────────────────────────────────────────────────

val gaps : List(Gap) =
  list_cons(gap1,
  list_cons(gap2,
  list_cons(gap3,
  list_cons(gap4,
  list_cons(gap5,
  list_cons(gap6,
  list_nil()))))))

typedef Meta = @{
  schemaVersion = string,
  targetModule  = string,
  diagRegistry  = string,
  openCount     = int,
  constants     = Constants
}

val meta : Meta = @{
  schemaVersion = "1.1.0",
  targetModule  = "shake/Rules/Proof/Flang.hs",
  diagRegistry  = "shake/Diag.hs",
  openCount     = list_length<Gap>(list_filter<Gap>(gaps, lam (g) => gap_is_open(g))),
  constants     = constants
}

typedef Registry = @{
  meta = Meta,
  gaps = List(Gap)
}

val registry : Registry = @{
  meta = meta,
  gaps = gaps
}

// Verification entry point: prints openCount to confirm integrity.
implement main0 () = {
  val () = println! ("Flang Registry initialized.")
  val () = println! ("Schema Version: ", registry.meta.schemaVersion)
  val () = println! ("Target Module:  ", registry.meta.targetModule)
  val () = println! ("Open Gap Count: ", registry.meta.openCount)
}