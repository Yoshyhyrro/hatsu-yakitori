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

# Derive C include paths from `csc -cflags` so clang can find chicken.h
CSC_CFLAGS="$($CSC -cflags)"
CSC_INCLUDES=()
for w in $CSC_CFLAGS; do
  case "$w" in
    -I*) CSC_INCLUDES+=("${w#-I}") ;;
  esac
done
if [ ${#CSC_INCLUDES[@]} -ne 0 ]; then
  export C_INCLUDE_PATH="$(IFS=:; echo "${CSC_INCLUDES[*]}")${C_INCLUDE_PATH:+:${C_INCLUDE_PATH}}"
fi

# Resolve repo root from this script location so imports work
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CORE_DIR="$ROOT_DIR/core"
MODULES_DIR="$ROOT_DIR/modules"
DEST_DIR="$ROOT_DIR/dest"
DEST_PROOF_DIR="$ROOT_DIR/dest/proofs"

# Ensure CHICKEN can locate project-local *.import.scm and include files.
# Also allow repository lookup so module.*.import.scm at repo root are found.
export CHICKEN_INCLUDE_PATH="${CORE_DIR}:${MODULES_DIR}:${ROOT_DIR}:${CHICKEN_INCLUDE_PATH:-}"

# Detect Chicken's default library path and add to repository path
# Try multiple common prefixes for Chicken installations
CHICKEN_LIB_PATH=""
for prefix in /usr/local /usr /opt/chicken ~/.local; do
  for ver in 11 10 9 8 7; do
    if [ -d "$prefix/lib/chicken/$ver" ]; then
      CHICKEN_LIB_PATH="$prefix/lib/chicken/$ver"
      break 2
    fi
  done
done

if [ -n "$CHICKEN_LIB_PATH" ]; then
  export CHICKEN_REPOSITORY_PATH="${ROOT_DIR}:${CORE_DIR}:${DEST_DIR}:${MODULES_DIR}:${CHICKEN_LIB_PATH}:${CHICKEN_REPOSITORY_PATH:-}"
else
  export CHICKEN_REPOSITORY_PATH="${ROOT_DIR}:${CORE_DIR}:${DEST_DIR}:${MODULES_DIR}:${CHICKEN_REPOSITORY_PATH:-}"
fi

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
