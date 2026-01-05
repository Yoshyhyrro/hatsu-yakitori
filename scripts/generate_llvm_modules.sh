#!/usr/bin/env bash
set -euo pipefail

# Generate LLVM IR for all Scheme sources under modules/
# Outputs to dist-proof/llvm-ir/modules with path components joined by '-'

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GEN_SCRIPT="$ROOT_DIR/scripts/generate_llvm.sh"
MODULES_DIR="$ROOT_DIR/modules"
OUT_DIR="$ROOT_DIR/dist-proof/llvm-ir/modules"

if [ ! -x "$GEN_SCRIPT" ] && [ ! -f "$GEN_SCRIPT" ]; then
  echo "Missing generator script: $GEN_SCRIPT" >&2
  exit 1
fi

mkdir -p "$OUT_DIR"

echo "Scanning $MODULES_DIR for .scm files..."
find "$MODULES_DIR" -type f -name '*.scm' | while read -r SRC; do
  # Compute a safe output name: drop leading modules/ and replace / with -
  REL=${SRC#"$MODULES_DIR/"}
  SAFE=${REL//\//-}
  BASENAME=${SAFE%.scm}
  OUT="$OUT_DIR/${BASENAME}.raw.ll"
  echo "Generating: $OUT <- $SRC"
  bash "$GEN_SCRIPT" "$SRC" "$OUT"
done

echo "All done. LLVM IR files are in: $OUT_DIR"
