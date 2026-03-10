# VSCowork

A pre-configured environment ready for AI-assisted legal work. Try it in your browser:

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/lawvable/vscowork?quickstart=1)

## What this does

Clicking the button above opens a [GitHub Codespace](https://github.com/features/codespaces) — a cloud development environment hosted by GitHub (Microsoft) — with the [Lawvable extension](https://marketplace.visualstudio.com/items?itemName=lawvable.minimal-agent-workspace) pre-installed. On first launch, the extension automatically configures the editor for legal work so you don't have to. This includes installing a curated set of VS Code extensions, CLI tools, and prompt templates (skills) for common legal tasks.

The goal is a one-click setup: open the codespace, authenticate with your AI subscription, and start working. Everything pre-installed can be disabled or uninstalled — the defaults are there to save you setup time, but the workspace is fully yours to customize.

### VS Code extensions installed

| Extension | Publisher | Installs | Verified |
|-----------|-----------|----------|----------|
| [Claude Code](https://marketplace.visualstudio.com/items?itemName=anthropic.claude-code) | Anthropic | 6M+ | Yes |
| [Codex](https://marketplace.visualstudio.com/items?itemName=openai.chatgpt) | OpenAI | 5M+ | Yes |
| [Gemini CLI](https://marketplace.visualstudio.com/items?itemName=google.gemini-cli-vscode-ide-companion) | Google | 600K+ | Yes |
| [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=pkief.material-icon-theme) | Philipp Kief | 33M+ | No |
| [Atom One Light Theme](https://marketplace.visualstudio.com/items?itemName=akamud.vscode-theme-onelight) | Mahmoud Ali | 1.3M+ | No |
| [Excel Viewer](https://marketplace.visualstudio.com/items?itemName=grapecity.gc-excelviewer) | MESCIUS | 6M+ | No |
| [PDF Preview](https://marketplace.visualstudio.com/items?itemName=analytic-signal.preview-pdf) | Analytic Signal | 300K+ | Yes |
| [Markdown Editor](https://marketplace.visualstudio.com/items?itemName=adamerose.markdown-wysiwyg) | adamerose | 15K+ | No |
| [SuperDoc](https://marketplace.visualstudio.com/items?itemName=superdoc-dev.superdoc-vscode-ext) | Superdoc | 400+ | No |

All extensions are sourced from the official [VS Code Marketplace](https://marketplace.visualstudio.com/), except SuperDoc which is a Lawvable [fork](https://github.com/lawvable/vscode-superdoc/tree/feat/programmatic-command-api) of the original extension, adding features for programmatic document editing with track changes.

### AI agents installed

| Agent | Provider | Source |
|-------|----------|--------|
| [Claude Code](https://github.com/anthropics/claude-code) | Anthropic | Open source |
| [Codex](https://github.com/openai/codex) | OpenAI | Open source |
| [Gemini CLI](https://github.com/google-gemini/gemini-cli) | Google | Open source |
| [Mistral Vibe](https://github.com/mistralai/mistral-vibe) | Mistral AI | Open source |
| [OpenCode](https://github.com/opencode-ai/opencode) | OpenCode | Open source |

These agents are installed from their official open-source repositories via [Bun](https://bun.sh) and [uv](https://github.com/astral-sh/uv), which are set up automatically as part of the installation process.

## Data privacy

**Your files stay with you.** Documents you upload or create in the codespace live in your GitHub Codespace instance.

**No telemetry.** The extension collects no analytics, no usage data, no crash reports. Telemetry is explicitly disabled in the extension manifest.

**Network calls are minimal and transparent.** The extension only contacts `lawvable.com` to: (1) fetch the list of available skills; (2) download skill files you choose to install; (3) download the Superdoc fork described above. No background data collection, no tracking, no profiling.

**User-initiated submissions only.** If you choose to submit a skill or send feedback via the extension, you'll be prompted for your name and email — this simply sends us an email. Nothing is sent without your explicit action.

## Infrastructure

| Layer | Provider | What it handles |
|-------|----------|----------------|
| Codespace | GitHub (Microsoft) | Hosts your cloud environment and files |
| Extension | Lawvable | Configures the editor and installs tools |
| AI agents | Anthropic, OpenAI, Google, Mistral | Process your prompts using your own subscription |
| Skills | Lawvable | Prompt templates downloaded on demand |

## License

[MIT](LICENSE)
