# HTML Report Requirements

After producing the analysis and rewrite, create an HTML report file by default whenever file tools are available.

The HTML file is for company-wide internal reading. Its purpose is layout, hierarchy, scanability, and handoff clarity — not content simplification.

## Hard requirements

- Do not shorten, dumb down, or remove analytical content just to make the HTML look simpler.
- Preserve the full substance of the analysis, including copy mechanics, viral hypotheses, rhythm map, rewrite strategy, script table, production notes, and matching check.
- Use visual hierarchy to make the same content easier to read: cards, sections, tables, callouts, badges, timelines, and highlighted key takeaways.
- Use Traditional Chinese for visible labels by default.
- Make the HTML self-contained: inline CSS, no external CDN dependency, no remote fonts, no tracking scripts.
- Include report metadata at the top: source URL or file name when available, analysis date if available from tools, video duration when available, account/title when available, and evidence basis such as transcript / metadata / sampled visuals.
- Include a dedicated 「報告資訊」 card near the top so every report exposes the same core metadata and runtime stack.
- Include evidence discipline in the report structure when useful:
  - what was directly verified in the current run
  - what came from secondary reports or partial extraction
  - what remains inferred
- Include a short executive summary card, but keep the complete detailed sections below it.
- Include a table of contents with anchor links.
- Format rhythm maps and rewritten scripts as readable HTML tables.
- Visually prioritize the production-critical sections: 「改寫版腳本」「製作建議」「執行清單」 should receive the clearest hierarchy and the most usable table/card layout.
- Use the canonical visible section labels in this order unless the user explicitly requests another structure:
  1. 「重點摘要」
  2. 「報告資訊」
  3. 「素材與證據」
  4. 「旁白轉錄與可信度」
  5. 「原影片文案內容分析」
  6. 「逐句機制對照」
  7. 「爆火理由分析」
  8. 「視頻節奏分析」
  9. 「改寫匹配策略」
  10. 「改寫版腳本」
  11. 「視頻製作建議」
  12. 「執行清單」
  13. 「匹配度檢查」
- For production teams, add a dedicated 「執行清單」 section that extracts shoot/edit/action items from the analysis without deleting the original details.
- If screenshots, sampled frames, or local media paths are available and safe to reference, include them as optional evidence thumbnails or file references. If not, state what evidence was used instead.
- Save the file with a descriptive filename, preferably under the current workspace or a user-accessible output directory, e.g. `viral-video-rewrite-report-YYYYMMDD-HHMM.html`.
- At the end of the chat response, clearly provide the created HTML file path.

## Standardized body rules

- Keep section naming consistent across reports so teams can compare output from different agents without relearning the structure.
- Use flat, operational prose. Avoid turning the report into a dramatic essay.
- Use the same canonical tables when the evidence supports them:
  - 逐句機制對照表
  - 節奏地圖表
  - 改寫版腳本表
  - 執行清單表
- In 「報告資訊」, explicitly state the extraction/runtime stack used in the current run.
- In 「素材與證據」, state what was directly verified and what was not.
- In 「改寫版腳本」, always keep the time / visual / spoken copy / source-rhythm mapping columns unless the user explicitly requests another production format.

## Credibility and reporting rules

- Default behavior: do not use another model's or another agent's report or transcript as evidence in the main analysis.
- Only reference another report when the user explicitly asks for comparison, review, or synthesis across reports.
- If such comparison is explicitly requested, clearly separate it from the first-party evidence gathered in the current run.
- If the report includes transcript-like content with incomplete verification, add a short confidence note rather than silently blending it with direct evidence.
- Prefer mechanism-level analysis over fake precision. Avoid unsupported percentages, engagement-rate claims, comment-distribution claims, ROI projections, or other quantified statements unless the underlying data was actually retrieved.
- When useful, include a 「逐句機制對照」 or beat-by-beat mapping table that shows:
  - original line or beat
  - what it does psychologically / structurally
  - what must be preserved in the rewrite

## If file writing is not available

- Still output the normal analysis in chat.
- Also provide a complete HTML document inside a fenced code block only if the user explicitly asks for inline HTML.
- Clearly state that the environment cannot create an HTML file directly.

## Design guidelines

- Use clean internal-report styling: max-width container, readable font stack, generous line height, neutral background, white cards, subtle borders.
- Use color sparingly to mark section types: analysis, rhythm, rewrite, production, CTA.
- Avoid decorative clutter. This is an operations report, not a landing page.
- Ensure tables are responsive with horizontal scrolling on narrow screens.
- Prefer semantic HTML: `header`, `main`, `section`, `table`, `thead`, `tbody`, `aside`.
- Escape user-provided content safely in HTML.
- Favor trustworthy polish over flashy dashboards. A plainer report with clear evidence labels is better than a dramatic report that implies unsupported certainty.
- Keep the design language stable across runs so the report feels canonical rather than improvisational.
