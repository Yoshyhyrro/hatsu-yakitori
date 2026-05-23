#!/usr/bin/env sh
set -e
git config core.hooksPath .githooks
if [ -f .githooks/pre-commit ]; then
  chmod +x .githooks/pre-commit || true
fi
echo "Git hooks path set to .githooks"
