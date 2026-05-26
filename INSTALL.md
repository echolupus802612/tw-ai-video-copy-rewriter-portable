# INSTALL

這份文件是給同事直接照著做的安裝手冊。

## 安裝前先確認

建議先確認你在哪個場景使用：
- 我只用 Hermes
- 我在某個專案裡用 Claude Code
- 我在某個專案裡用 Codex / AGENTS.md
- 我們團隊用 OpenClaw workflow

---

## Hermes 安裝

1. 建立資料夾：

```bash
mkdir -p ~/.hermes/skills/social-media/tw-ai-video-copy-rewriter
```

2. 複製 skill：

```bash
cp skills/tw-ai-video-copy-rewriter/adapters/hermes/SKILL.md ~/.hermes/skills/social-media/tw-ai-video-copy-rewriter/SKILL.md
```

3. 重啟 Hermes

4. 使用方式：

```text
/改寫 <影片連結或逐字稿>
```

---

## Claude Code 安裝

在目標專案根目錄執行：

```bash
mkdir -p .claude/commands
cp skills/tw-ai-video-copy-rewriter/adapters/claude-code/.claude/commands/改寫.md .claude/commands/改寫.md
```

之後在 Claude Code 裡使用 `/改寫`。

建議搭配：
- 專案根目錄新增 `reports/`
- 輸出的 HTML 報告固定存這裡

---

## Codex 安裝

如果你的專案還沒有 `AGENTS.md`：

```bash
cp skills/tw-ai-video-copy-rewriter/adapters/codex/AGENTS.md ./AGENTS.md
```

如果你的專案已經有 `AGENTS.md`：
- 把 adapter 裡的內容合併進現有 `AGENTS.md`
- 避免覆蓋掉原本專案規則

建議專案結構：

```text
project/
├── AGENTS.md
├── reports/
└── ...
```

---

## OpenClaw 安裝

把下面檔案匯入你的 OpenClaw skills / workflow 區：

```text
skills/tw-ai-video-copy-rewriter/adapters/openclaw/skill.md
```

如果你的 OpenClaw 支援 command registry：
- command 名稱建議叫 `改寫`
- description 寫：分析爆款短影音並改寫成台灣向 AI 教學腳本

---

## 團隊安裝建議

### 方案 1：每個人手動裝
適合小團隊。

### 方案 2：內部 repo 統一管理
適合長期使用。
- 全員 clone 本 repo
- 各自依平台安裝 adapter
- 核心規格統一看 `core/`

### 方案 3：做成公司 onboarding SOP
把以下資訊貼到內部文件：
- repo 連結
- 你要裝哪個平台
- 對應複製哪個檔案
- 如何使用 `/改寫`

---

## HTML 報告輸出說明

這個 skill 會優先輸出完整 HTML 報告。

預設路徑：
1. `./reports/`
2. `~/Downloads/`
3. 當前可寫目錄

重點：
- HTML 是完整報告
- 不是摘要版
- 不是簡化版
- 適合給主管、剪輯、企劃、營運同事一起看

---

## 常見問題

### Q1. 為什麼它說無法分析影片？
代表環境抓不到：
- transcript
- downloadable media
- visual frames
- 權限

這時候請補：
- 影片檔
- 逐字稿
- 截圖
- 可下載連結

### Q2. 為什麼沒有 HTML 檔？
代表當前環境沒寫檔能力，或你沒有給可寫入路徑。

### Q3. 可以只丟主題，不丟參考影片嗎？
可以，但那樣會是「無 reference 版」，不是嚴格的爆款格式 reverse-engineering。
