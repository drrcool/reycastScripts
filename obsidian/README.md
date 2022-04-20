# Obsidian Tools

## Setup

In order for the Obsidian Tools scripts to know how to best serve you, there are a number of environment variables that are expected to be set. If any of these are not set, the scripts should
complain.

- VAULT_PATH: The full path to your vault directory. e.g. /Users/JohnDoe/Documents/Obsidian/JohnsVault
- DAILY_FOLDER: The folder within your vault you store Daily Notes. These are expected to be named (YYYY-MM-DD.md)
- SEARCH_HEADING: The ## heading you use in your log for search results. For examples (Searches:)

- TASK_FILE: The file in your vault you want new tasks to go
- TASK_HEADING: The ## heading in your TASK_FILE you want new tasks to appear under (e.g To Be Triaged:)
- LOG_TASK_HEADING: The ## heading in your Daily Note where you want the days tasks to be backlinked
- TASK_TAG: Tag to include on your tasks without the # (e.g. task)
