# greenvim

## What is greenvim?
greenvim is my attempt to make neovim as similar to an IDE as possible. I use lua for the config. 

## features:
* Completion using Coc.nvim
* Fuzzysearch
* bufferline
* theme
* tabnine
* github copilot
* Auto-pairs (brackets)
* auto indents
* file tree
* snippets
* better scrolling
* [full Unity support](#unity-support)
* [full Java support](#java-support)

## Unity Support:
### Features:
  * Double click on file to open in greenvim
  * Open errors/prints/warnings in greenvim at proper line & column
  * Full C#/Unity code completion support (Omnisharp-vim + Coc.nvim + Tabnine)
  * [Hover-documentation using Omnisharp-vim](#c#-hover-documentation)
### Setup

### Important info:
#### C# hover documentation:
  * This is done through a vimscript function I wrote
      * Due to the nature of omnisharp's documentation command (will open a blank popup if no docs are present ie hovering on a bracket) it is necessary to check the hovered word against a list of ignored words. This list can be found in the autocommands.lua file. Please add any desired words to ignore hover-documentation to this list. The command also ignores all lines that begin with a "/" (comments)
#### Unity open in greenvim:


## Java support:
