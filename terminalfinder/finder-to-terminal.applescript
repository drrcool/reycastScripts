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

tell application "iTerm"
	create window with default profile
	activate current session
		launch session "Default Session"
			tell the last session
				write text "cd " & pathList & "; clear; pwd"
	      end tell
end tell
