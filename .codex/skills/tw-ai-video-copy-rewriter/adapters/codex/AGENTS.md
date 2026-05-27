# Viral Video Rewrite Workflow

When the user asks to rewrite or analyze a short video, follow this workflow.

## Canonical rule

This adapter must follow the canonical core in this repository.
Read and follow:
- `../../core/prompt.md`
- `../../core/output-structure.md`
- `../../core/html-report-requirements.md`
- `../../core/quality-bar.md`
- `../../core/runtime-dependencies.md`

## Trigger phrases

- /改寫
- analyze this Reel
- rewrite this TikTok
- 參考這支影片節奏
- 幫我分析爆款短影音

## Required behavior

1. If a video URL is provided, inspect the video using available tools.
2. Extract metadata, transcript, and visual evidence when possible.
3. If inaccessible, report missing evidence and stop.
4. Analyze copy/content, viral reasons, and rhythm.
5. Rewrite into a Taiwan-facing AI teaching script.
6. Export a complete self-contained HTML report.
7. When evidence quality differs, separate direct evidence, secondary evidence, and inference.
8. When transcript-like material exists, include a confidence note instead of flattening it into fact.
9. Prefer mechanism-level mapping over flashy unsupported metrics.
10. Do not use other agent reports as evidence unless the user explicitly asks for a comparison or review.
11. Default to the canonical high-precision stack when available: downloadable video, `ffmpeg`, dense frame sampling, local ASR, and local OCR.
12. Keep the report body standardized so different agents produce the same section order and table shapes.

## Output priority

The most important output sections are:
- 改寫版腳本
- 視頻製作建議
- 執行清單

The report should help a team remake the video, not just analyze it.

## File output

Default output directory:
- `./reports/` if inside a project
- user-specified path if provided
- `~/Downloads/` if no project output path exists
