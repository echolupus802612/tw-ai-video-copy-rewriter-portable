# Taiwan Viral AI Video Copy Rewriter

Canonical cross-platform workflow for turning validated short-video formats into Taiwan-facing AI teaching scripts.

## Canonical behavior

Always do five things:
1. Analyze source copy/content.
2. Analyze likely viral reasons.
3. Analyze rhythm and pacing.
4. Rewrite a new AI teaching script that preserves the source mechanism.
5. Export a complete HTML report file.

## Core files

- `core/prompt.md` — main workflow
- `core/output-structure.md` — response order
- `core/html-report-requirements.md` — HTML export rules
- `core/quality-bar.md` — quality checks before final output
- `core/runtime-dependencies.md` — canonical dependency and extraction stack

## Adapter files

- `adapters/hermes/SKILL.md`
- `adapters/openclaw/skill.md`
- `adapters/claude-code/.claude/commands/改寫.md`
- `adapters/codex/AGENTS.md`

## Design principle

One canonical prompt, many adapters.
Do not manually evolve four divergent copies if you can avoid it.

## Current reporting standard

The preferred report style is a production-friendly internal HTML report that:
- keeps full analysis depth
- separates direct evidence, secondary evidence, and inference when needed
- includes transcript confidence notes when transcript quality is mixed
- extracts line-level or beat-level copy mechanisms when evidence allows
- ends with an execution checklist usable by writing / shooting / editing teammates
- uses a standardized report body so every agent outputs the same section order, labels, and table shapes

This standard exists to avoid two common failures:
- shallow but pretty reports that are easy to skim and hard to use
- dramatic, overconfident reports that imply unsupported certainty through fake metrics or invented precision

## Canonical runtime stack

The preferred high-precision workflow is:
1. access the real video through a public URL, browser extraction, or user-provided file
2. extract media with `yt-dlp` or an equivalent host capability when possible
3. use `ffmpeg` for audio extraction, duration checks, and frame sampling
4. use `faster-whisper` for first-party ASR transcript generation
5. use local OCR to cross-check on-screen subtitle text
6. generate a self-contained HTML report with the canonical section order

All adapters should aim for this stack by default. If a dependency is missing, the agent should explicitly report the downgrade rather than silently analyzing from weaker evidence.

## Canonical report body

All agents should converge on the same visible report sections:
1. 重點摘要
2. 報告資訊
3. 素材與證據
4. 旁白轉錄與可信度
5. 原影片文案內容分析
6. 逐句機制對照
7. 爆火理由分析
8. 視頻節奏分析
9. 改寫匹配策略
10. 改寫版腳本
11. 視頻製作建議
12. 執行清單
13. 匹配度檢查

The goal is not visual sameness for its own sake. The goal is that any teammate can open any agent-produced report and immediately know where to find the evidence, mechanism analysis, rewrite, and production handoff.
