# Default Output Structure

Unless the user requests another format, return in this order.

Priority note:
- Keep sections 1-6 rigorous enough to support the conclusion.
- Spend the most effort on sections 8-10: 改寫版腳本 / 視頻製作建議 / 執行清單.
- The final report should help a team remake the video, not just admire the analysis.

Standardization note:
- Keep the visible section titles consistent across agents.
- Do not rename sections casually if the content is materially the same.
- Reuse the same core tables so reports are easier to compare and easier for teams to scan.

1. 重點摘要
- 3-6 bullet-sized takeaways
- must include: hook mechanism, retention mechanism, CTA mechanism, rewrite direction

2. 報告資訊
- source URL / file when available
- analysis date
- video duration when available
- account / title when available
- runtime stack used in this run, e.g. `yt-dlp + ffmpeg + faster-whisper + OCR`

3. 素材與證據
- source URL / file when available
- evidence basis used in this run
- separate 直接證據 / 次級證據 / 推論 when useful
- if transcript came from another report or partial extraction, say so

4. 旁白轉錄與可信度
- include transcript-like content when available
- label whether it is directly verified, partially inferred, or secondary evidence
- if no transcript is available, say what transcript evidence exists instead

5. 原影片文案內容分析
- 影片主題
- 核心承諾
- Hook 方式
- 情境 / 轉折 / Payoff
- 語氣與受眾
- do not stop at meaning; extract mechanism

6. 逐句機制對照
- original line / beat
- what it is doing psychologically or structurally
- what must be preserved in the rewrite
- if line-by-line mapping is impossible, use beat-by-beat mapping instead

Recommended table:

| 原句 / 節拍 | 它在做什麼 | 改寫時必須保留什麼 |
|---|---|---|

7. 爆火理由分析
- 3-7 個具體原因
- 每點都要說明如何影響停滑、完播、分享、收藏、留言或模仿

8. 視頻節奏分析
- output a rhythm map table
- identify which rhythm features must be preserved in the rewrite
- when dense frame sampling exists, include a finer-grained timing view such as 0.5-second / beat-level notes for the critical opening, demo transitions, and CTA ending

Recommended table:

| 時間 | 畫面 / 字幕 / 聲音 | 節奏作用 | 改寫時保留點 |
|---|---|---|---|

9. 改寫匹配策略
- 原影片可複製的骨架
- 這次 AI 教學主題要替換成什麼
- 哪些元素必須保留
- 哪些元素需要台灣在地化

10. 改寫版腳本
Use this table:

| 時間 | 畫面 / 剪輯 | 旁白 / 字幕 | 對應原影片節奏 |
|---|---|---|---|
| 0-3s | ... | ... | 對應原影片 hook |

Include:
- recommended title / cover line
- spoken copy
- on-screen subtitle when useful
- CTA
- enough detail that a writer or host can use it directly without reconstructing missing logic

11. 視頻製作建議
- opening frame
- shot list
- screen recording / B-roll ideas
- subtitle style
- editing rhythm
- sound / SFX suggestions
- key visual payoff
- for each major recommendation, say what the production team should literally shoot, show, or cut

12. 執行清單
- extract the direct actions for writer / shooter / editor
- should be useful even if the reader skips the long analysis
- organize by role when useful: 文案 / 拍攝 / 剪輯 / 發布

Recommended table:

| 角色 | 直接動作 |
|---|---|

13. 匹配度檢查
- 文案內容邏輯
- 爆火理由
- 視頻節奏
- evidence discipline
- whether any critical claim remains only secondary / inferred

14. HTML 報告檔案
- Create and save a self-contained HTML report file containing the complete analysis and rewrite.
- In the chat response, include the file path and a brief note that the HTML is a formatted internal report, not a shortened version.
