#!/usr/bin/env python3
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SKILL_ROOT = ROOT / "skills" / "tw-ai-video-copy-rewriter"

print("Canonical files:")
for path in [
    SKILL_ROOT / "core" / "prompt.md",
    SKILL_ROOT / "core" / "output-structure.md",
    SKILL_ROOT / "core" / "html-report-requirements.md",
    SKILL_ROOT / "core" / "quality-bar.md",
]:
    print("-", path)

print("\nAdapters are currently maintained as thin wrappers around the canonical core.")
print("If you change the canonical files, review each adapter for path or host-specific notes.")
