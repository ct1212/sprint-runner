#!/usr/bin/env bash
set -euo pipefail

REPO="https://github.com/ct1212/sprint-runner.git"
TMP_DIR="$(mktemp -d)"

# Clone the template
git clone --quiet "$REPO" "$TMP_DIR"

# Copy scripts and sprints directory
cp -r "$TMP_DIR/scripts" ./scripts
cp -r "$TMP_DIR/sprints" ./sprints
chmod +x scripts/sprint_*.sh

# Cleanup
rm -rf "$TMP_DIR"

# Init git if not already a repo
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  git init
  git commit --allow-empty -m "Initial commit"
fi

echo "Sprint runner installed."
echo ""
echo "Get started:"
echo "  ./scripts/sprint_new.sh v1 \"Your goal here\""
echo "  vi sprints/v1/00-goal.md"
echo "  ./scripts/sprint_prd.sh v1"
echo "  ./scripts/sprint_dev.sh v1 --loop"
