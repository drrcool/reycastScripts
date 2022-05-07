#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Update Daily Note
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 📓
# @raycast.argument1 { "type": "text", "placeholder": "Daily Note..." }
# @raycast.packageName Obsidian Tools

# Documentation:
# @raycast.description Append an entry to your obsidian daily note
# @raycast.author Richard Cool
# @raycast.authorURL contact.richardcool.com

export VAULT_PATH=/Users/rcool/obsidian/drrcool
export DAILY_FOLDER="Periodic Notes/Daily"

today=$(date +%Y-%m-%d)
log_path=$VAULT_PATH/$DAILY_FOLDER/$today.md
new_log_entry=$1
timeNow=$(date +%H:%M:%S)
new_entry="$timeNow - $new_log_entry"

echo " " >> "$log_path"
echo "$new_entry" >> "$log_path"

echo "Daily Log Updated"
