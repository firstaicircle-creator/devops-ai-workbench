#!/usr/bin/env bash
# Create a project folder from the templates.
# Usage: scripts/new-project.sh <NN> <short-slug> "<Title>"
set -euo pipefail

if [ $# -lt 3 ]; then
  echo "Usage: $0 <NN> <short-slug> \"<Title>\"" >&2
  exit 1
fi

root="$(cd "$(dirname "$0")/.." && pwd)"
num=$(printf '%02d' "$((10#$1))")
slug="$2"
title="$3"
dir="$root/projects/project-$num-$slug"

if [ -e "$dir" ]; then
  echo "Already exists: $dir" >&2
  exit 1
fi

mkdir -p "$dir/src" "$dir/infra" "$dir/tests"
touch "$dir/src/.gitkeep" "$dir/infra/.gitkeep" "$dir/tests/.gitkeep"

escaped_title=$(printf '%s' "$title" | sed 's/[&|\\]/\\&/g')
sed "s|{{TITLE}}|$escaped_title|g" "$root/templates/project-README.md" > "$dir/README.md"
sed "s|{{TITLE}}|$escaped_title|g" "$root/templates/lessons-learned.md" > "$dir/LESSONS.md"

echo "Created ${dir#"$root"/}"
