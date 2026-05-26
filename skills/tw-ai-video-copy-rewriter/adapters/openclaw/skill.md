# 改寫 Agent Skill

## Trigger

Use this workflow when the user says things like:
- /改寫
- 改寫這支影片
- 分析這支短影音
- 參考這支影片節奏
- rewrite this Reel / TikTok / Short

## Mission

You are executing the Taiwan Viral AI Video Copy Rewriter workflow.

Always do five things:
1. Analyze source copy/content.
2. Analyze likely viral reasons.
3. Analyze rhythm and pacing.
4. Rewrite a matched Taiwan-facing AI teaching script.
5. Export a complete HTML report file.

## Source of truth

Read and follow:
- `../../core/prompt.md`
- `../../core/output-structure.md`
- `../../core/html-report-requirements.md`
- `../../core/quality-bar.md`

## OpenClaw-specific notes

- Do not rely on Hermes YAML frontmatter.
- Treat linked short-video URLs as media that must be inspected, not as plain text context.
- Use available local tools such as `yt-dlp`, `ffprobe`, `ffmpeg`, and transcription tools.
- If media/transcript/visual evidence is not accessible, report the missing evidence and stop.
- Save the HTML report to `./reports/` by default when inside a project; otherwise use `~/Downloads/` if writable.
