#!/usr/bin/env bash
set -euo pipefail
TARGET="${1:-.}"
mkdir -p "$TARGET/.claude/commands"
cp "skills/tw-ai-video-copy-rewriter/adapters/claude-code/.claude/commands/改寫.md" "$TARGET/.claude/commands/改寫.md"
echo "Installed Claude Code command to: $TARGET/.claude/commands/改寫.md"
