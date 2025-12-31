#!/usr/bin/env bash
set -euo pipefail

# Diagnose CHICKEN module import resolution issues.
# Intended to be run under WSL/Linux where `chicken`/`csc` are available.

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CORE_DIR="$ROOT_DIR/core"
MODULES_DIR="$ROOT_DIR/modules"
DIST_DIR="$ROOT_DIR/dist"
DIST_PROOF_DIR="$ROOT_DIR/dist-proof"

echo "[diag] ROOT_DIR=$ROOT_DIR" >&2
command -v chicken >/dev/null && echo "[diag] chicken=$(command -v chicken)" >&2
command -v csc >/dev/null && echo "[diag] csc=$(command -v csc)" >&2

echo "[diag] machine_constants sources:" >&2
ls -la "$ROOT_DIR/machine_constants.scm" "$CORE_DIR/machine_constants.scm" 2>/dev/null || true
ls -la "$ROOT_DIR/machine_constants.import.scm" 2>/dev/null || true

export CHICKEN_INCLUDE_PATH="${CORE_DIR}:${MODULES_DIR}:${ROOT_DIR}:${CHICKEN_INCLUDE_PATH:-}"

echo "[diag] CHICKEN_INCLUDE_PATH=$CHICKEN_INCLUDE_PATH" >&2

WORKDIR="${TMPDIR:-/tmp}/hatsu-diag-$$"
mkdir -p "$WORKDIR"

cleanup() {
  rm -rf "$WORKDIR"
}
trap cleanup EXIT

# 1) Can we compile a core file that imports machine_constants (like golay_frontier)?
for f in "$CORE_DIR/golay_frontier.scm" "$CORE_DIR/kak_decomposition.scm"; do
  if [ -f "$f" ]; then
    echo "[diag] compiling (to C) with chicken: $f" >&2
    chicken "$f" -output-file "$WORKDIR/$(basename "$f" .scm).c"
    echo "[diag] OK: chicken produced C for $(basename "$f")" >&2
  else
    echo "[diag] SKIP missing: $f" >&2
  fi
done

# 2) Mimic generate_llvm.sh behavior: compile inside /tmp after copying only the source.
#    This should FAIL without the env vars set above, and PASS with them.
SRC_COPY="$WORKDIR/golay_frontier.scm"
cp "$CORE_DIR/golay_frontier.scm" "$SRC_COPY" 2>/dev/null || true
if [ -f "$SRC_COPY" ]; then
  pushd "$WORKDIR" >/dev/null
  echo "[diag] csc -k -c golay_frontier.scm (in tmp dir)" >&2
  csc -k -c golay_frontier.scm -o golay_frontier.o
  test -f "$WORKDIR/golay_frontier.c"
  echo "[diag] OK: csc -k produced golay_frontier.c" >&2
  popd >/dev/null
fi

echo "[diag] DONE" >&2
