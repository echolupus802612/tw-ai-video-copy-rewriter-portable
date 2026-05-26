#!/usr/bin/env bash
set -euo pipefail
TARGET="${1:-.}"
cp "skills/tw-ai-video-copy-rewriter/adapters/codex/AGENTS.md" "$TARGET/AGENTS.tw-ai-video-copy-rewriter.md"
echo "Saved Codex adapter to: $TARGET/AGENTS.tw-ai-video-copy-rewriter.md"
echo "Merge this file into your project's AGENTS.md if one already exists."
