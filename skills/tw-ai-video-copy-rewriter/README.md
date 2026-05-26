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

This standard exists to avoid two common failures:
- shallow but pretty reports that are easy to skim and hard to use
- dramatic, overconfident reports that imply unsupported certainty through fake metrics or invented precision
