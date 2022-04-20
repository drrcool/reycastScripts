#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Obsidian Task
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ✅
# @raycast.argument1 { "type": "text", "placeholder": "Task..." }
# @raycast.packageName Obsidian-Tools

# Documentation:
# @raycast.description Add a task to Obsidian
# @raycast.author Richard Cool
# @raycast.authorURL contact.richardcool.com

export VAULT_PATH=/Users/rcool/obsidian/drrcool
export DAILY_FOLDER="🕰 Periodic Notes/Daily"
export SEARCH_HEADING="Searches:"
export TASK_FILE="🧰 Utilities/✔️ Tasks"
export TASK_HEADING="To Triage:"
export LOG_TASK_HEADING="Tasks added Today:"
export TASK_TAG="task"

# Create a random reference number
ref=$(openssl rand -base64 8 |md5 |head -c6;echo)
today=$(date +%Y-%m-%d)
task_text="$1" # Normally this will be passed as $1

# Setup the new entry
originalpath="$VAULT_PATH/$TASK_FILE.md"
export original_content=$(cat "$originalpath")  
export heading=$TASK_HEADING
export entry="[ ] [[$today]] $task_text ^$ref"

new_text=$(python3 obsidian_tools.py --append)
echo "$new_text"
echo "$new_text" > "$originalpath"

# Now do the backlink
log_path=$VAULT_PATH/$DAILY_FOLDER/$today.md
log_original_text=$(cat "$log_path")

export original_content=$log_original_text
export heading=$LOG_TASK_HEADING
export entry="#$TASK_TAG ![[$TASK_FILE#^$ref]]"

new_text=$(python3 obsidian_tools.py --append)
echo "$new_text" > "$log_path"

echo "Task added and $DAILY_FOLDER/$today updated"