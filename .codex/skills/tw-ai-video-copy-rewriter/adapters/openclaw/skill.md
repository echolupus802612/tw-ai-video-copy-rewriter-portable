# 改寫 Agent Skill

## Trigger

Use this workflow when the user says things like:
- /改寫
- 改寫這支影片
- 分析這支短影音
- 參考這支影片節奏
- rewrite this Reel / TikTok / Short

## Canonical rule

This adapter must follow the canonical core in this repository.
Read and follow:
- `../../core/prompt.md`
- `../../core/output-structure.md`
- `../../core/html-report-requirements.md`
- `../../core/quality-bar.md`
- `../../core/runtime-dependencies.md`

## Mission

Always do five things:
1. Analyze source copy/content.
2. Analyze likely viral reasons.
3. Analyze rhythm and pacing.
4. Rewrite a matched Taiwan-facing AI teaching script.
5. Export a complete HTML report file.

## Output priority

Put the most effort into:
- 改寫版腳本
- 視頻製作建議
- 執行清單

These sections must be concrete enough for writing, shooting, and editing teammates to use directly.

## OpenClaw-specific notes

- Do not rely on Hermes YAML frontmatter.
- Treat linked short-video URLs as media that must be inspected, not as plain text context.
- Use available local tools such as `yt-dlp`, `ffprobe`, `ffmpeg`, and transcription tools.
- If media/transcript/visual evidence is not accessible, report the missing evidence and stop.
- Avoid unsupported percentages, ROI claims, or performance promises.
- Save the HTML report to `./reports/` by default when inside a project; otherwise use `~/Downloads/` if writable.
