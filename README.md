# tw-ai-video-copy-rewriter-portable

Portable repo version of the Taiwan Viral AI Video Copy Rewriter skill.

This repository packages one canonical workflow and multiple adapters for:
- Hermes
- OpenClaw
- Claude Code
- Codex

## What it does

Given a short-video URL, transcript, or local media file, this workflow:
1. Analyzes source copy/content.
2. Analyzes likely viral reasons.
3. Analyzes rhythm / structure / pacing.
4. Rewrites a matched Taiwan-facing AI teaching script.
5. Exports a complete HTML report file.

Important: the HTML report is a layout-organized full report, not a simplified summary.

## Repository layout

```text
skills/tw-ai-video-copy-rewriter/
├── core/
│   ├── prompt.md
│   ├── output-structure.md
│   ├── html-report-requirements.md
│   └── quality-bar.md
├── adapters/
│   ├── hermes/SKILL.md
│   ├── openclaw/skill.md
│   ├── claude-code/.claude/commands/改寫.md
│   └── codex/AGENTS.md
├── templates/report-outline.html
├── examples/input-example.md
└── README.md
```

## Install

### Hermes
Copy `skills/tw-ai-video-copy-rewriter/adapters/hermes/SKILL.md` to:
`~/.hermes/skills/social-media/tw-ai-video-copy-rewriter/SKILL.md`

### OpenClaw
Import `skills/tw-ai-video-copy-rewriter/adapters/openclaw/skill.md` into your workflow/skills area.

### Claude Code
Copy the `.claude` folder under `skills/tw-ai-video-copy-rewriter/adapters/claude-code/` into your project root.

### Codex
Merge `skills/tw-ai-video-copy-rewriter/adapters/codex/AGENTS.md` into your repo-level `AGENTS.md`, or place it in a dedicated project that uses this workflow.

## Default output path

If the user does not specify a path:
1. Use `./reports/` when inside a project repo.
2. Else use `~/Downloads/` when writable.
3. Else use the current writable directory.

## Notes

- Visible language should default to Traditional Chinese.
- Do not hallucinate access to IG/TikTok/Douyin media.
- Prefer direct extraction with `yt-dlp`, `ffprobe`, `ffmpeg`, and transcription tools when available.
- Preserve the source video’s mechanism rather than copying literal wording.
