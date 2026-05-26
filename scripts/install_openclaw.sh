#!/usr/bin/env bash
set -euo pipefail
TARGET="${1:-.}"
mkdir -p "$TARGET/openclaw"
cp "skills/tw-ai-video-copy-rewriter/adapters/openclaw/skill.md" "$TARGET/openclaw/tw-ai-video-copy-rewriter.skill.md"
echo "Saved OpenClaw adapter to: $TARGET/openclaw/tw-ai-video-copy-rewriter.skill.md"
