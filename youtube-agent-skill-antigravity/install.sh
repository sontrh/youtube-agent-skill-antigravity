#!/usr/bin/env bash
# Install the YouTube agent skill pack for Google Antigravity.
# Usage:
#   bash install.sh                 # global:  ~/.gemini/antigravity/skills/
#   bash install.sh --project DIR   # workspace: DIR/.agent/skills/
set -euo pipefail
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ "${1:-}" = "--project" ]; then
    DEST="${2:-.}/.agent/skills"
else
    DEST="$HOME/.gemini/antigravity/skills"
fi

mkdir -p "$DEST"
for d in "$HERE"/skills/yt-*; do
    rm -rf "$DEST/$(basename "$d")"
    cp -r "$d" "$DEST/"
done
echo "Installed 11 yt-* skills -> $DEST"

VOICE="$HOME/.gemini/antigravity/youtube/voice.md"
if [ ! -f "$VOICE" ]; then
    mkdir -p "$(dirname "$VOICE")"
    cp "$HERE/templates/voice.md" "$VOICE"
    echo "Voice template copied -> $VOICE  (fill it in!)"
else
    echo "Voice profile already exists -> $VOICE (left untouched)"
fi
