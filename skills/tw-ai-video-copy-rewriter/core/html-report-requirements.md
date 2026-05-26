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
- Include a short executive summary card, but keep the complete detailed sections below it.
- Include a table of contents with anchor links.
- Format rhythm maps and rewritten scripts as readable HTML tables.
- Use employee-friendly section labels: 「重點摘要」「原影片拆解」「爆火原因」「節奏地圖」「改寫策略」「可拍攝腳本」「製作建議」「匹配度檢查」「素材與證據」.
- For production teams, add a dedicated 「執行清單」 section that extracts shoot/edit/action items from the analysis without deleting the original details.
- If screenshots, sampled frames, or local media paths are available and safe to reference, include them as optional evidence thumbnails or file references. If not, state what evidence was used instead.
- Save the file with a descriptive filename, preferably under the current workspace or a user-accessible output directory, e.g. `viral-video-rewrite-report-YYYYMMDD-HHMM.html`.
- At the end of the chat response, clearly provide the created HTML file path.

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
