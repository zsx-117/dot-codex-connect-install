# Dot Codex Connect

**Give Dot the task. Continue it in Codex. Get the reply back.**

Keep the conversation with Dot while your connected Mac does the development work. Ask Dot to pass an authorized task to a chosen local Codex conversation, then bring its response back—without copying messages between apps.

**Purchases are now open · $9.80 USD once · Permanent account access · Future MCP updates included**

[Buy permanent access](https://dot.xiaobaituzi.com/?utm_source=github&utm_campaign=readme#purchase) · [Installation guide](https://dot.xiaobaituzi.com/setup) · [Check your account](https://dot.xiaobaituzi.com/account)

## What you can do

- Continue work in an existing local Codex conversation with its project context.
- Ask Dot to send instructions and bring back task status and replies.
- Return to saved task progress after a temporary disconnect.

Your Mac must stay awake and online. This is not a cloud computer rental or a replacement for your own ChatGPT/Codex plan.

## What am I buying?

You buy access to the **closed-source Dot Codex Connect service**, associated with your signed-in ChatGPT account. The price is a one-time payment, not a subscription. Future MCP updates are included; model usage and your own ChatGPT/Codex plans are separate.

The **installation skill is free to download**. It helps Codex prepare and carry out setup; it is not the MCP service, a license key, or a way to bypass payment. This repository contains setup instructions and a public download/checksum helper—no private MCP or connector source code.

## From purchase to your first connection

1. **Check compatibility first.** You need an Apple silicon Mac, local Codex, and a ChatGPT client that supports adding custom MCP servers. The service is not yet in the public plugin directory. If your client does not offer custom MCP connections, do not purchase for that client yet.
2. **Buy on the official website.** Sign in with the ChatGPT account you intend to use, then complete the $9.80 checkout. Purchase through the website so the order can be linked to your account.
3. **Check your access.** Return to [My account](https://dot.xiaobaituzi.com/account). Access activates after the payment is verified. If it is still pending, use **Check payment status**; do not pay again. Contact support if verification cannot finish.
4. **Connect the MCP and your Mac.** Follow [the setup guide](https://dot.xiaobaituzi.com/setup), use the same account, and complete the login and Mac-connection approval yourself. Ask Codex to use the installation skill: it prepares the connector for you, so you do not need to download and move it manually. You still confirm login and device access.
5. **Confirm access and connection.** Ask Dot to check your account access and Mac status. Then choose a conversation and authorize the task you want to run.

No manual activation code is needed. Downloading the skill, paying for access, and connecting your Mac are separate steps.

## Install this skill

**Easiest: open [Setup](https://dot.xiaobaituzi.com/setup), click “Copy setup message”, paste it into Codex on your Mac and send it.** Codex installs this skill and follows the setup process.

You can also paste this directly into Codex:

> Help me set up Dot Codex Connect on this Mac. Install or update the skill from https://github.com/zsx-117/dot-codex-connect-install/tree/main/skills/dot-codex-install and use it. Check compatibility and service access, reuse existing connections, download and verify the official connector, and help install it. Pause for my login, OAuth and system/device approvals. Do not buy access, change security protections, read private chats or send tasks. Check license, MCP connection and Mac online status separately.

Codex can check compatibility, download and verify the official Mac package, prepare installation, and check the available connection tools. Login and permission approval stay with you. If your client does not let Codex add the MCP automatically, it gives you the exact remaining action. This is assisted setup, not a promise of unattended installation.

For manual installation, download the [skill ZIP](https://github.com/zsx-117/dot-codex-connect-install/releases/latest/download/dot-codex-install.zip), unzip it, and put the whole `dot-codex-install` folder in your assistant's skills directory (Codex: `~/.codex/skills/`). Keep `SKILL.md`, `agents/` and `scripts/` together.

The setup helper reuses an existing connector or prepares the verified official download and asks macOS to open setup through its normal approval flow. It does not purchase access, read credentials or send installation telemetry. Login and Mac approval stay with you. If macOS blocks the package, setup stops and reports the blocker without changing security settings.

**Current delivery limitation:** the preview package has not completed Developer ID signing and notarization and may be blocked by macOS. Do not purchase on the assumption that unattended installation is available. The assisted setup path still needs a complete new-customer acceptance run.

## Compatibility and limits

The current release connects **one authorized Apple silicon Mac and its saved local Codex conversations**. Intel Macs, Windows, Linux, additional devices and cloud-only conversations are not included. The connector is currently distributed as a preview; follow the official setup instructions and keep macOS security protections enabled.

Browser automation and desktop-control tools are not inherited by this connection. A connected plugin does not by itself prove that a task has completed. Authorize each task and check its actual result.

## Help

[Setup and current connection details](https://dot.xiaobaituzi.com/setup) · [Terms](https://dot.xiaobaituzi.com/terms) · [Privacy](https://dot.xiaobaituzi.com/privacy) · [Email support](mailto:tianwangzh4@gmail.com)

GitHub views, clones and downloads do not measure verified installations or paid activations. An optional installation self-report is available on the setup page.

Independent software. Not affiliated with or endorsed by OpenAI.
