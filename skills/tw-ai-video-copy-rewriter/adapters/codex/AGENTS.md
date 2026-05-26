# Viral Video Rewrite Workflow

When the user asks to rewrite or analyze a short video, follow this workflow.

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
4. Analyze:
   - copy/content
   - viral reasons
   - rhythm
5. Rewrite into a Taiwan-facing AI teaching script.
6. Export a complete self-contained HTML report.
7. When evidence quality differs, separate:
   - direct evidence
   - secondary evidence
   - inference
8. When transcript-like material exists, include a confidence note instead of flattening it into fact.
9. Prefer mechanism-level mapping over flashy unsupported metrics.

## Source of truth

Read and follow:
- `../../core/prompt.md`
- `../../core/output-structure.md`
- `../../core/html-report-requirements.md`
- `../../core/quality-bar.md`

## File output

Default output directory:
- `./reports/` if inside a project
- user-specified path if provided
- `~/Downloads/` if no project output path exists

## Codex reporting preference

When producing the report, prefer the upgraded internal-report style:
- include a 「素材與證據」 section early
- include 「旁白轉錄與可信度」 when transcript-like evidence exists
- include 「逐句機制對照」 or beat mapping when possible
- include 「執行清單」 for handoff
- avoid unsupported percentages, engagement-rate claims, or comment-distribution claims unless the underlying evidence was actually retrieved
