#!/bin/bash
# Prepare the published connector only. No service code, account access or launch.
set -euo pipefail
if [[ "${1:-}" == '--help' ]]; then
  echo 'Usage: bash prepare-mac.sh [--check]'
  echo 'Checks Apple silicon macOS. Without --check, downloads and verifies the official connector ZIP; does not install or run it.'
  exit 0
fi
if [[ $# -gt 1 || ( $# -eq 1 && "$1" != '--check' ) ]]; then echo 'Unsupported argument.' >&2; exit 2; fi
if [[ "$(uname -s)" != Darwin ]]; then echo 'This connector supports macOS only.' >&2; exit 2; fi
arch=$(uname -m)
if [[ "$arch" != arm64 ]] && [[ "$(/usr/sbin/sysctl -n hw.optional.arm64 2>/dev/null || true)" != 1 ]]; then
  echo 'This release requires an Apple silicon Mac.' >&2; exit 2
fi
for tool in /usr/bin/curl /usr/bin/shasum /usr/bin/mktemp; do
  [[ -x "$tool" ]] || { echo "Missing required system tool: $tool" >&2; exit 2; }
done
echo 'Compatibility: Apple silicon macOS.'
for app in "$HOME/Applications/DotCodexConnect.app" /Applications/DotCodexConnect.app; do
  if [[ -d "$app" ]]; then echo "Existing connector: $app — reuse it; do not overwrite automatically."; fi
done
[[ "${1:-}" == '--check' ]] && exit 0
archive='DotCodexConnect-Mac-arm64-0.3.1-preview.zip'
url="https://github.com/zsx-117/dot-codex-connect-install/releases/download/v0.2.0/$archive"
expected='50f8a3fd24df40f21a3c2e2c896cb35502e93688c1062989f18dcd4b8c2fad94'
mkdir -p "$HOME/Downloads"
staging=$(/usr/bin/mktemp -d "$HOME/Downloads/DotCodexConnect-setup.XXXXXX")
file="$staging/$archive"
/usr/bin/curl --fail --silent --show-error --location --proto '=https' --proto-redir '=https' --connect-timeout 15 --max-time 180 --output "$file.part" "$url"
actual=$(/usr/bin/shasum -a 256 "$file.part")
actual=${actual%% *}
if [[ "$actual" != "$expected" ]]; then
  echo "Checksum mismatch. Do not open the download. Preserved at: $file.part" >&2; exit 3
fi
mv "$file.part" "$file"
echo "Verified archive: $file"
echo 'Next: inspect and extract this verified ZIP, preserve any existing app, then open the official app after explaining its background connection. The user completes login and macOS/device approval.'
