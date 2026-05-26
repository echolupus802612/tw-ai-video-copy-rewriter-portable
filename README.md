# tw-ai-video-copy-rewriter-portable

跨平台可攜版的「台灣爆款短影音 AI 教學改寫 skill / workflow」。

這個 repo 的目的不是只服務單一 agent，而是讓同一套方法可以安裝到不同場景：
- Hermes 個人助理環境
- OpenClaw 工作流 / agent 環境
- Claude Code 專案環境
- Codex / AGENTS.md 專案環境
- 團隊共用 repo / 內部知識庫 / SOP handoff 場景

## 這個 skill 會做什麼

給它一支短影音連結、逐字稿、或影片檔，它會：
1. 分析原影片文案內容
2. 分析爆火理由
3. 分析視頻節奏 / 結構 / pacing
4. 改寫成台灣向 AI 教學腳本
5. 輸出完整 HTML 報告檔

重點：HTML 是完整內容的排版整理版，不是簡化版。

## Repo 結構

```text
skills/tw-ai-video-copy-rewriter/
├── core/
│   ├── prompt.md
│   ├── output-structure.md
│   ├── html-report-requirements.md
│   └── quality-bar.md
├── adapters/
│   ├── hermes/SKILL.md
│   ├── openclaw/skill.md
│   ├── claude-code/.claude/commands/改寫.md
│   └── codex/AGENTS.md
├── templates/
│   └── report-outline.html
├── examples/
│   └── input-example.md
└── README.md
```

## 安裝總覽

詳細版本請看 `INSTALL.md`。

### 1) Hermes
把 `skills/tw-ai-video-copy-rewriter/adapters/hermes/SKILL.md` 放到：

`~/.hermes/skills/social-media/tw-ai-video-copy-rewriter/SKILL.md`

然後重啟 Hermes。

### 2) OpenClaw
把 `skills/tw-ai-video-copy-rewriter/adapters/openclaw/skill.md` 匯入你的 OpenClaw workflow / skills 目錄。

### 3) Claude Code
把 `skills/tw-ai-video-copy-rewriter/adapters/claude-code/.claude/commands/改寫.md` 複製到你的專案 `.claude/commands/`。

### 4) Codex
把 `skills/tw-ai-video-copy-rewriter/adapters/codex/AGENTS.md` 合併到專案根目錄的 `AGENTS.md`，或直接作為專案 agent 規範使用。

## 不同場景建議

### 場景 A：單人本機使用
適合先快速試。
- Hermes：直接裝 `SKILL.md`
- Claude Code：放進目標 repo 的 `.claude/commands/`
- Codex：放進目標 repo 的 `AGENTS.md`

### 場景 B：團隊共用同一套 skill
適合公司內多人使用。
- fork / clone 這個 repo
- 每個人依照自己使用的平台裝對應 adapter
- 核心規格只維護 `core/`
- 平台 adapter 當薄包裝層

### 場景 C：專案內固定綁定 workflow
適合內容團隊 / 行銷團隊固定流程。
- Claude Code：跟 repo 一起版控
- Codex：直接跟 repo 的 `AGENTS.md` 一起版控
- 可搭配 `reports/` 目錄輸出 HTML

### 場景 D：內部 SOP / handoff
適合給非工程同事。
- 直接使用 HTML 報告輸出
- 在 README / INSTALL 中保留複製貼上的安裝指令
- 若同事只用 Hermes，就只看 Hermes 段落即可

## 預設輸出路徑

如果使用者沒有指定：
1. 若在專案 repo 內，優先 `./reports/`
2. 否則用 `~/Downloads/`
3. 再不行才用目前可寫入目錄

## 依賴與工具能力

建議具備：
- `yt-dlp`
- `ffprobe`
- `ffmpeg`
- transcription tool（如 faster-whisper）
- 可寫檔能力

## 硬規則

- 不可假裝已經看過無法取得的影片
- IG / TikTok / Douyin 連結要先實際嘗試存取
- 若缺 transcript / media / visual evidence，要清楚報錯並停止瞎分析
- 改寫要複製機制，不要抄字句
- HTML 報告必須保留完整分析內容

## 快速安裝腳本

repo 內提供：
- `scripts/install_hermes.sh`
- `scripts/install_claude_code.sh`
- `scripts/install_codex.sh`
- `scripts/install_openclaw.sh`

## 範例輸入

```text
/改寫 現在請你嘗試分析這個視頻 https://www.instagram.com/reel/DYpC1ISP0hk/
```

## 授權

目前沿用 skill 內容的 MIT 方向。若你要正式對外發佈，建議補正式 LICENSE 檔。
