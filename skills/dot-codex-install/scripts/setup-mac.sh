#!/bin/bash
# Public setup orchestration only. No account secrets or service implementation.
set -euo pipefail
mode="${1:---check}"
case "$mode" in
  --check|--install) ;;
  *) echo 'Usage: bash setup-mac.sh [--check|--install]' >&2; exit 2 ;;
esac
[[ $# -le 1 ]] || exit 2
here="$(cd "$(dirname "$0")" && pwd)"
bash "$here/prepare-mac.sh" --check
app=''
for candidate in "$HOME/Applications/DotCodexConnect.app" /Applications/DotCodexConnect.app; do
  if [[ -d "$candidate" ]]; then app="$candidate"; break; fi
done
if [[ -z "$app" && "$mode" == --check ]]; then
  echo 'SETUP_READY: no existing connector; --install prepares the official release.'
  exit 0
fi
if [[ -z "$app" ]]; then
  # The calling skill verifies the current official release before invoking us.
  result="$(bash "$here/prepare-mac.sh")"
  echo "$result"
  archive="$(echo "$result" | /usr/bin/sed -n 's/^Verified archive: //p')"
  [[ -f "$archive" && "$archive" == "$HOME/Downloads/"* ]] || { echo 'SETUP_FAILED: verified archive missing.' >&2; exit 3; }
  staging="$(dirname "$archive")/app"
  mkdir "$staging"
  /usr/bin/ditto -x -k "$archive" "$staging"
  app="$staging/DotCodexConnect.app"
  [[ -d "$app" ]] || { echo 'SETUP_FAILED: expected app missing; preserve staging for review.' >&2; exit 3; }
fi
/usr/bin/codesign --verify --deep --strict "$app" || { echo 'PACKAGE_INVALID: do not launch or retry installation.' >&2; exit 3; }
# Let LaunchServices/Gatekeeper handle the real first-open flow. Static spctl
# assessment is not proof that the OS will refuse an already approved app.
# Never launch the inner binary, strip quarantine or alter security settings.
if [[ "$mode" == --check ]]; then
  echo 'PACKAGE_INTEGRITY_VALID: existing app verified; OS approval, account and online status remain unverified.'
  exit 0
fi
if [[ "$app" == "$HOME/Downloads/"* ]]; then
  mkdir -p "$HOME/Applications"
  target="$HOME/Applications/DotCodexConnect.app"
  [[ ! -e "$target" ]] || { echo 'SETUP_CHANGED: another installation appeared; run --check before proceeding.' >&2; exit 3; }
  /usr/bin/ditto "$app" "$target"
  app="$target"
fi
echo 'Opening setup. Confirm your account and Mac in the browser. On approval, the connector runs at login until disconnected.'
/usr/bin/open "$app"
echo 'SETUP_OPENED: awaiting user approval; this does not mean paired or online. Check the MCP access/connection tools after consent.'
