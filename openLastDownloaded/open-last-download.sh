#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open Last Download
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🎉
# @raycast.packageName OpenLastDownload

# Documentation:
# @raycast.description Opens the last file downloaded to ~/Downloads
# @raycast.author Richard Cool
# @raycast.authorURL contact.richardcool.com

# edited from: https://ryanmo.co/2014/11/15/a-better-show-downloads-folder-with-alfred/

DOWNLOADS="$HOME/Downloads"

# Lists the name and date added for all the files in the Downloads folder
RECENT=$(mdls -name kMDItemFSName -name kMDItemDateAdded ~/Downloads/* | \

# Looks at the next line and removes any newlines, which puts the name and date added all on one line
sed 'N;s/\n//' | \

# Returns the name and date added in a nice format like "2014-11-15 19:36:28 "Arq.zip""
awk '{print $3 " " $4 " " substr($0,index($0,$7))}' | \

# Sorts the lines
sort -r | \

# Splits the lines on a quotation mark and returns the second result (the filename)
cut -d'"' -f2 | \

# Gives the top item in the list, which is the most recently added file
head -n1)

# Reveals the file instead of opening it in OS X.
open "$DOWNLOADS/$RECENT"

#echo "${RECENT##*/}"