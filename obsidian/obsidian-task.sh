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

export TASK_FILE="Utilities/✔️ Tasks"
export TASK_HEADING="To Triage:"
export LOG_TASK_HEADING="Tasks added today:"
export TASK_TAG="task"
export VAULT="drrcool"

# Create a random reference number
ref=$(date +%Y%m%d%H%M%S)
today=$(date +%Y-%m-%d)
task_text="$1" # Normally this will be passed as $1
entry="- [ ] [[$today]] $task_text ^$ref"

task_encode=$(python3 urlencode.py "$entry")
file_encode=$(python3 urlencode.py "$TASK_FILE")
heading_encode=$(python3 urlencode.py "$TASK_HEADING")

url="obsidian://advanced-uri?vault=$VAULT&filepath=$file_encode&mode=append&heading=$heading_encode&data=$task_encode"
open "$url"

export entry="#$TASK_TAG ![[$TASK_FILE#^$ref]]"
heading_encode=$(python3 urlencode.py "$LOG_TASK_HEADING")
entry_encode=$(python3 urlencode.py "$entry")

url="obsidian://advanced-uri?vault=$VAULT&daily=true&mode=append&heading=$heading_encode&data=$entry_encode"
open "$url"
