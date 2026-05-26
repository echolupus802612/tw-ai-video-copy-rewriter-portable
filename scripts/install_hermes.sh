#!/usr/bin/env bash
set -euo pipefail
TARGET="$HOME/.hermes/skills/social-media/tw-ai-video-copy-rewriter"
mkdir -p "$TARGET"
cp "skills/tw-ai-video-copy-rewriter/adapters/hermes/SKILL.md" "$TARGET/SKILL.md"
echo "Installed Hermes skill to: $TARGET/SKILL.md"
