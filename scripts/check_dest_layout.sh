#!/usr/bin/env bash
set -euo pipefail

echo "Checking for remaining 'dist/' references in repository..."

# Search paths to check
paths=("shake/Rules" "scripts" "README.md")

found=0
for p in "${paths[@]}"; do
  if grep -R --line-number "dist/" "$p" >/dev/null 2>&1; then
    echo "Found 'dist/' reference in:"
    grep -R --line-number "dist/" "$p" || true
    found=1
  fi
done

if [[ $found -eq 1 ]]; then
  echo "Please update remaining references to use 'dest/' layout." >&2
  exit 2
else
  echo "No remaining 'dist/' references found in checked paths. ✅"
fi
