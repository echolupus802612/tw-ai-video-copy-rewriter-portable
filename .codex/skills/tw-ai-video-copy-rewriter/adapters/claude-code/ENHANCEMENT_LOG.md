# Claude Code Adapter Notes

## Status

Updated: 2026-05-27

This adapter now follows the same canonical workflow as the other agents in this repository.

Source of truth:
- `../../core/prompt.md`
- `../../core/output-structure.md`
- `../../core/html-report-requirements.md`
- `../../core/quality-bar.md`
- `../../core/runtime-dependencies.md`

## What is standardized

Claude Code should now align with the same defaults used by the shared core:
- high-precision video inspection when local extraction is available
- dense frame sampling around `2 fps`
- first-party ASR when possible, preferably `faster-whisper`
- local OCR as subtitle cross-check support
- evidence discipline: `直接證據 / 次級證據 / 推論`
- canonical HTML section order and core tables
- production-first output priority: `改寫版腳本 / 視頻製作建議 / 執行清單`

## Important guardrails

Claude Code should not:
- invent engagement metrics, ROI projections, or conversion uplift claims without retrieved evidence
- use another agent's report as main evidence unless the user explicitly asks for comparison
- prioritize presentation flair over evidence clarity and production usability

## Intent

The goal of this adapter is not to be a separate methodology.
The goal is to let Claude Code run the same method as Hermes, OpenClaw, and Codex with host-specific execution details only where needed.
