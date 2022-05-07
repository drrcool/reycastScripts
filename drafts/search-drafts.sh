#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Search Drafts
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "Placeholder" }

# Documentation:
# @raycast.description Seach your Drafts for ones matching provided text
# @raycast.author Richard Cool
# @raycast.authorURL contact.richardcool.com


input_text=$1

doc_text=$(python3 urlencode.py "$input_text")
open drafts://x-callback-url/search?query=$doc_text