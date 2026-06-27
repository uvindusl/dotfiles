#!/usr/bin/env bash
set -e

REPO="$HOME/Documents/dotfiles"

cd "$REPO"

# Only commit if there are changes
if [[ -z "$(git status --porcelain)" ]]; then
  exit 0
fi

git add -A
git commit -m "auto-sync: $(date '+%Y-%m-%d %H:%M')"
git push origin fedora-setup
