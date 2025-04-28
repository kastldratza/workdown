#!/bin/bash

# Define the countdown date
COUNTDOWN_DATE="2025-04-12T11:39:20"
COUNTDOWN_DATE=$(date -d "+8 hours" +"%Y-%m-%dT%H:%M:%S")

# Path to the HTML file
HTML_FILE="countdown.html"

# Use sed to replace the countdown date in the HTML
#sed -i 's/data-date="[^"]*"/data-date="'$COUNTDOWN_DATE'"/' $HTML_FILE
sed -i 's|const countdownDate = new Date("[^"]*").getTime();|const countdownDate = new Date("'"$COUNTDOWN_DATE"'").getTime();|' $HTML_FILE

echo "HTML file updated with countdown date: $COUNTDOWN_DATE"

