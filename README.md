# ReycastScripts -- personal productivity tools for Reycast.

This repo contains a number of scripts I've created to either add functionality from workflows that existed in Alfred to Reycast or wholly original works that I use to make my workflow more streamlined.

In the cases I was inspired by pieces of code from Alfred workflows, I cite those sources. In most of those cases, I am not sure my productivity needs justify spinning up a full workflow, but maybe that will happen. If there are parts of this you feel you could benefit from a full workflow existing, please let me know.

### Tools and description

- Obsidian:
  - NYI
  - An obsidian plugin exists for Obsidian, but it was missing a few features I have come to depend on. Primarily, I used:
    - a command that would directly append to my daily note; I use this for my daily log
    - a command that would append to a specific section of my Task file and reference that tank in my daily note (with transduction so I can read the text of the task in both locations)
    - a command that would trigger a search (usually google or stack overflow) and also save the search string to my a specific section of my daily note.
- Drafts:
  - NYI
  - No full drafts plugin exists for Reycast.
  - I mostly use drafts for quick capture of thoughts. It's helpful to have this in one place. When i'm on my mac, I can use Reycast to put it in the daily note. When I'm note on mac, I have shortcuts to do this.
  - Things I do from my mac:
    - when starting a meeting, I usually take meeting notes in Drafts,
    - when starting to write some notes about an idea or a set of related tasks I use drafts
  - These get moved to obsidian when fleshed out. So the commands I would find most useful are
    - open a new note and leave Drafts open
    - Search for a new note in drafts
    - Search my drafts repo in Reycast and show results (If we want to be able to do something with these results, we probably need to fully flesh out the plugin)
    - dictate a new note to drafts (great when I want to quickly get something out and hands aren't free)
- TerminalFinder:
  - NYI
  - While it's easy to open a Finder where my terminal is at (`open .`) getting a terminal where my finder is can be hard, especially for things in iCloud document directories.
  - a tool that opens the terminal in the path to the current find directory
- Open Last Downloaded:
  - NYI
  - just as it sounds: when you run this, the last file downloaded is opened
