#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Start New Draft
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ✍🏼
# @raycast.argument1 { "type": "text", "placeholder": "Placeholder" }
# @raycast.packageName Rcool Personal

# Documentation:
# @raycast.description Create a new draft and open the app
# @raycast.author Richard Cool
# @raycast.authorURL contact.richardcool.com


input_text=$1

doc_text=$(python3 urlencode.py "$input_text")
open drafts://create?text=$doc_text