#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Finder to Terminal
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ??
# @raycast.packageName TerminalFinder

# Documentation:
# @raycast.description Open a Terminal at the Location of the Finder
# @raycast.author Richard Cool
# @raycast.authorURL contact.richardcool.com

  tell application "Finder"
    set pathList to (quoted form of POSIX path of (folder of the front window as alias))
  end tell
  
  tell application "System Events"
    if not (exists (processes where name is "Terminal")) then
      do shell script "open -a Terminal " & pathList
    else
      tell application "Terminal"
        activate
        tell application "System Events" to tell process "Terminal.app" to keystroke "t" using command down
        do script ("cd " & pathList) in first window
      end tell
    end if
  end tell
