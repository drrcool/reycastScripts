#!/usr/bin/bash

# Create a random reference number
ref=$(openssl rand -base64 8 |md5 |head -c6;echo)
today=`date +%Y-%m-%d`
originalpath=$VAULT_PATH/$TASK_FILE.md
task_text="$1" # Normally this will be passed as $1

# Setup the new entry

export original_content=`cat "$originalpath"`   
export heading=$TASK_HEADING
export entry="[ ] [[$today]] $task_text ^$ref"

new_text=`python3 obsidian_tools.py --append`
echo "$new_text" > "$originalpath"

# Now do the backlink
log_path=$VAULT_PATH/$DAILY_FOLDER/$today.md
log_original_text=`cat "$log_path"`

export original_content=$log_original_text
export heading=$LOG_TASK_HEADING
export entry="#$TASK_TAG ![[$TASK_FILE#^$ref]]"

new_text=`python3 obsidian_tools.py --append`
echo "$new_text" > "$log_path"

echo "Task added and $DAILY_FOLDER/$today was updated"