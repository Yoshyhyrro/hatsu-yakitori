#!/usr/bin/env bash
set -euo pipefail

# Generate LLVM IR from a Scheme source by keeping the C stub emitted by csc
# and piping it through clang. This keeps raw IR for proof/verification.

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <source.scm> <output.ll>" >&2
  exit 2
fi

SRC="$1"
OUT="$2"

if [ ! -f "$SRC" ]; then
  echo "Source not found: $SRC" >&2
  exit 1
fi

CSC=${CSC:-csc}
CLANG=${CLANG:-clang}

# Resolve repo root from this script location so imports work
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CORE_DIR="$ROOT_DIR/core"
MODULES_DIR="$ROOT_DIR/modules"
DIST_DIR="$ROOT_DIR/dist"
DIST_PROOF_DIR="$ROOT_DIR/dist-proof"

# Ensure CHICKEN can locate project-local *.import.scm and include files.
# Avoid overriding CHICKEN_REPOSITORY_PATH (it can mask standard libraries).
export CHICKEN_INCLUDE_PATH="${CORE_DIR}:${MODULES_DIR}:${ROOT_DIR}:${CHICKEN_INCLUDE_PATH:-}"

WORKDIR="${TMPDIR:-/tmp}/hatsu-llvm-$(basename "$SRC" .scm)-$$"
mkdir -p "$WORKDIR"
cp "$SRC" "$WORKDIR/"

pushd "$WORKDIR" >/dev/null
BASE=$(basename "$SRC")
NAME="${BASE%.scm}"

# Compile Scheme to C while keeping the generated C file (-k)
"$CSC" -k -c "$BASE" -o "$NAME.o"

CFILE="$WORKDIR/$NAME.c"
if [ ! -f "$CFILE" ]; then
  echo "Expected C file not found after csc -k: $CFILE" >&2
  popd >/dev/null
  exit 1
fi

TMP_LL="$WORKDIR/$NAME.ll"
"$CLANG" -S -emit-llvm "$CFILE" -o "$TMP_LL"

popd >/dev/null
mkdir -p "$(dirname "$OUT")"
mv "$TMP_LL" "$OUT"
rm -rf "$WORKDIR"

echo "Generated LLVM IR: $OUT" >&2
