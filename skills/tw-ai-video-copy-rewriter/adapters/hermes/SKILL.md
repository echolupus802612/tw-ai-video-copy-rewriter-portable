---
name: 改寫
description: Analyze market-validated viral short videos, extract their copy content, viral reasons, and video rhythm, then rewrite a new entertainment-style AI teaching script that closely matches the source video's proven structure for Taiwanese audiences.
version: 1.3.0
author: Hermes Agent
license: MIT
metadata:
  hermes:
    tags: [copywriting, rewrite, viral-video-analysis, taiwan, ai-teaching, short-video, script, tiktok, reels, youtube-shorts]
    related_skills: [ig-tiktok-ai-growth-command, reels, youtube-content]
---

# Taiwan Viral AI Video Copy Rewriter

Use the canonical workflow from `../../core/` as the source of truth.

This Hermes adapter is the host-specific entrypoint. When activated, execute the canonical behavior defined in:
- `../../core/prompt.md`
- `../../core/output-structure.md`
- `../../core/html-report-requirements.md`
- `../../core/quality-bar.md`

Hermes-specific notes:
- Visible language defaults to Traditional Chinese.
- If an IG Reels / TikTok / Douyin URL is provided, inspect the actual video with available tools before analysis.
- If file tools are available, create a complete HTML report file by default and return the saved file path.
- Prefer `~/Downloads/` or the current workspace when the user does not specify an output path.
- Prioritize 改寫版腳本、視頻製作建議、執行清單 over decorative analysis.
- Do not simplify the analysis when creating the HTML report.
- Do not invent unsupported percentages, ROI claims, or dramatic performance promises.
