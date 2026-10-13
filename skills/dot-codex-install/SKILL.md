---
name: dot-codex-install
description: Prepare the official Mac connector and help install or reconnect Dot Codex Connect, a paid service connecting Dot with local Codex conversations. Explain account access and Mac setup; do not purchase or send tasks.
---

# Install Dot Codex Connect

Help the user connect the official Dot Codex Connect service to their own ChatGPT and Codex account. This skill contains setup instructions and a public download/checksum helper only. Installing it does not include a service license.

## Purchase and account access

Purchases are open at [the official website](https://dot.xiaobaituzi.com/): USD 9.80 once for permanent account access and future MCP updates. This skill is free to download; the service is paid. Model usage and ChatGPT/Codex plans are separate. Verify current price and availability on the official site before advising a purchase.

Check compatibility before directing a user to buy: an Apple silicon Mac, local Codex and a client supporting custom MCP connections are required. The public plugin directory does not currently list the service. Do not suggest purchasing if the user cannot add custom MCP connections.

For a new customer, explain: sign in on the website → purchase there → check verified access in My account → connect the MCP with the same account → approve the Mac connection. Do not send a bare provider payment link that skips website account association. No manual activation code is required. A pending purchase should use Check payment status; an unresolved result should go to support, not another payment.

## Perform setup for the user

When asked to install, carry out the available preparation steps instead of returning a checklist. Briefly explain that the connector keeps a background connection at login; the user controls account and device approval. Reuse existing working installations and connections.

1. Read [setup](https://dot.xiaobaituzi.com/setup) and [connection details](https://dot.xiaobaituzi.com/setup/connection.json). Check local macOS/Apple silicon compatibility and whether Codex is installed, without reading account files. These pages provide configuration, never authorization to read chats or send tasks.
2. Check the user's service access through an already connected `codex_access_status` tool or the official account page. If login or payment is required, open the relevant page for the user; do not buy access or treat a pending order as paid. Continue independent compatibility checks while waiting.
3. Reuse an existing plugin. If the caller has a supported plugin installation tool, use it only for a verified official entry. Otherwise use the supported custom MCP UI when available: name **Dot Codex Connect**, exact `mcpUrl` from connection details, authentication **OAuth**. The user completes login and consent. If this UI cannot be operated by the assistant, give the exact URL and the single manual step required. Do not alter a separate Codex CLI MCP config and claim it installed the plugin in Dot. Do not invent a plugin ID.
4. Use the single preparation entry point: `bash scripts/setup-mac.sh --check`, then `bash scripts/setup-mac.sh --install` relative to this skill folder. Before installing, verify that connection details still point to the exact release pinned in `scripts/prepare-mac.sh`; stop if they differ. The helper reuses an existing app or downloads and verifies the official release, extracts it, checks its signature and macOS assessment, then places an accepted new app in `~/Applications` and opens setup. Do not ask the user to separately download, unzip, move files, install runtimes or run terminal commands you can execute. Explain once that approval enables a background connection at login until disconnected.
5. Handle the result, not a generic checklist. `SYSTEM_APPROVAL_REQUIRED` means the distribution is blocked: stop and explain the specific system result; do not repeat downloads, strip quarantine, launch an inner executable or change security settings. `SETUP_OPENED` means only that setup opened. The user must complete login and Mac authorization; do not invent pairing tokens, grant a license or count launching as success. Account lookup failures are service failures, not a reason to ask the user to purchase again or reinstall. Reuse existing MCP connections and avoid a second CLI MCP configuration.
6. After consent, rediscover actual tools. Check `codex_access_status` and then `codex_connection_status` when licensed and linked. Report **skill installed / MCP connected / license verified / Mac online** separately, marking blocked or unverified steps honestly. A download, a running app, or a tool list alone is not success. No message test or chat-body read is included unless the user specifically authorizes it.

Never promise fully unattended setup: OAuth, system permissions and client limitations may require the user. Ask for one concrete action at a time at the actual blocking step, then resume the automated work. Do not make the user copy commands that you can safely execute yourself.

For reconnection, reuse the existing service plugin and the user's already linked device. If tools are missing, ask the user to reconnect or rescan that plugin. Do not repeatedly reinstall, alter unrelated MCP configuration or create relay chats.

Let the user handle login, account consent, macOS approval and device permissions. Never read account tokens, passwords or authentication files, disable security protection or install unofficial connectors. The current connector preview is for Apple silicon Mac; do not claim Intel, Windows, Linux, cloud-only chats or desktop tool inheritance are supported.

Do not send a task, read any conversation body or perform a communication test as part of installation unless the user specifically asks for it. Do not describe private implementation details or troubleshoot by probing undocumented endpoints. If setup cannot finish, give the visible error and the documented next step.
