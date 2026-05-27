# Runtime Dependencies

This workflow should produce the same analytical standard across agents, so the required local capabilities must be explicit rather than implicit.

## Required dependencies

### 1. Video download / extraction

At least one of the following must be available:
- `yt-dlp` for public short-video page download or media extraction
- browser-based download / extraction capability provided by the host environment
- a user-provided local video file

If none of these are available, the agent must report missing media access and stop instead of guessing.

### 2. Audio extraction

Required:
- `ffmpeg`

Purpose:
- extract audio from downloaded video
- inspect duration and stream metadata
- generate frame samples or contact sheets when useful

### 3. Local ASR

Preferred standard:
- `faster-whisper`

Minimum expectation:
- the environment should provide a Python runtime capable of running `faster-whisper`
- if using a project-local virtualenv, document its path in the workflow notes when relevant

Purpose:
- produce a first-party transcript with timestamps
- support line-level and beat-level mapping without relying on another agent's report

### 4. OCR for on-screen subtitles

At least one of the following should be available:
- macOS Vision / `VNRecognizeTextRequest`
- `tesseract`
- another local OCR path that runs in the current environment

Purpose:
- verify subtitle wording
- recover on-screen text when ASR misses terms, names, or CTA phrases
- cross-check subtitle readability windows against frame timing

## Preferred high-precision stack

For the canonical high-precision analysis flow, the recommended stack is:
- downloadable or locally supplied video
- `ffmpeg`
- dense frame sampling around `2 fps`
- local ASR via `faster-whisper`
- local OCR for subtitle cross-checking

This stack is the default target for all adapters unless the host environment blocks one of the steps.

## Fallback policy

- If ASR is missing but video + OCR + metadata are available, the agent may still analyze the video, but it must clearly mark transcript confidence boundaries.
- If dense frame extraction is missing, the agent may use screenshots or sparse sampling, but it must state the downgrade.
- If the actual video cannot be accessed, do not continue with a rewrite.

## Reporting requirement

When useful, the report should state which dependencies or extraction paths were actually used in the current run, for example:
- `yt-dlp + ffmpeg + faster-whisper + OCR`
- `user-provided MP4 + ffmpeg + OCR`
- `browser screenshots only`
