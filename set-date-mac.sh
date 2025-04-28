#!/bin/bash

# Ziel: 8 Stunden von jetzt
COUNTDOWN_DATE=$(date -v+8H +"%Y-%m-%dT%H:%M:%S")

# Pfad zur HTML-Datei
HTML_FILE="countdown.html"

# Verwende sed korrekt auf macOS: -i '' für "kein Backup"
sed -i '' 's|const countdownDate = new Date("[^"]*").getTime();|const countdownDate = new Date("'"$COUNTDOWN_DATE"'").getTime();|' "$HTML_FILE"

echo "HTML file updated with countdown date: $COUNTDOWN_DATE"
