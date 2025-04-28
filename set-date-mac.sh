#!/bin/bash

COUNTDOWN_DATE=$(date -v+8H +"%Y-%m-%dT%H:%M:%S")
HTML_FILE="countdown.html"
sed -i '' 's|const countdownDate = new Date("[^"]*").getTime();|const countdownDate = new Date("'"$COUNTDOWN_DATE"'").getTime();|' "$HTML_FILE"
echo "HTML file updated with countdown date: $COUNTDOWN_DATE"
