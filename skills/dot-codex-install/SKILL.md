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
4. Prepare the official connector using `bash scripts/prepare-mac.sh --check`, then `bash scripts/prepare-mac.sh` relative to this skill folder. Run the download only when the setup page still points to the helper's pinned release; if it differs, stop the old helper and use the current verified official download/checksum instructions. The script downloads to a new Downloads subdirectory and verifies SHA-256; it does not run software or read credentials. If no terminal/file tools are available, open the official download and explain the remaining manual action.
5. Inspect the verified ZIP's file list, extract into that new staging directory, and locate `DotCodexConnect.app`. Reuse an existing app instead of overwriting it. For a new install, place it in `~/Applications` using the available file tools; no administrator privileges are needed for that location. Open the app through the supported OS action when execution is permitted. Respect any runtime confirmation requirement for independently distributed software. Do not remove quarantine attributes, override Gatekeeper, change security settings, or repeatedly launch after an error. The user completes any macOS approval, account login and Mac-pairing consent. Do not manually invent tokens, create extra background services or replace the developer's personal connection.
6. After consent, rediscover actual tools. Check `codex_access_status` and then `codex_connection_status` when licensed and linked. Report **skill installed / MCP connected / license verified / Mac online** separately, marking blocked or unverified steps honestly. A download, a running app, or a tool list alone is not success. No message test or chat-body read is included unless the user specifically authorizes it.

Never promise fully unattended setup: OAuth, system permissions and client limitations may require the user. Ask for one concrete action at a time at the actual blocking step, then resume the automated work. Do not make the user copy commands that you can safely execute yourself.

For reconnection, reuse the existing service plugin and the user's already linked device. If tools are missing, ask the user to reconnect or rescan that plugin. Do not repeatedly reinstall, alter unrelated MCP configuration or create relay chats.

Let the user handle login, account consent, macOS approval and device permissions. Never read account tokens, passwords or authentication files, disable security protection or install unofficial connectors. The current connector preview is for Apple silicon Mac; do not claim Intel, Windows, Linux, cloud-only chats or desktop tool inheritance are supported.

Do not send a task, read any conversation body or perform a communication test as part of installation unless the user specifically asks for it. Do not describe private implementation details or troubleshoot by probing undocumented endpoints. If setup cannot finish, give the visible error and the documented next step.
