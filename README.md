# greenvim

## What is greenvim?
greenvim is my attempt to make neovim as similar to an IDE as possible. I use lua for the config. 

## features:
* Completion using Coc.nvim
* greeter
* Fuzzysearch
* bufferline
* statusline
* theme
* tabnine
* github copilot
* Auto-pairs (brackets)
* auto indents
* file tree
* snippets
* better scrolling
* browsing
* Context menus
* LSP support with coc
* better terminal integration
* [full Unity and C# support](#unity-support)
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
   * Unity can open any file/error in greenvim through the use of a neovim-remote and an exe I wrote in c#.
      * The exe can be found in the folder custom-exe\external-script-editor-exe. To set it up you can go into unity -> preferences -> external script editor and in the dropdown select browse and select the .exe file. In the external script editor args you then need to place "+$(Line) $(File)"
 ## Java support:

 
### Requirements:
#### General:
   * Neovim >= v6.0
   * Have [Paq](https://github.com/savq/paq-nvim) installed
   * [Neovide](https://github.com/neovide/neovide) (for UI)
   * [NerdFonts](https://github.com/ryanoasis/nerd-fonts) (for icons), I use ShureTechMonoNF
   * I recomment the use of [Alacirtty](https://github.com/alacritty/alacritty) it was the only terminal I could get all NerdFonts to 100% work with (if using windows cmd you will need to use the Agave Nerd Font for all glyphs/icons to work)
#### Unity support:
   * [Neovim-remote](https://github.com/mhinz/neovim-remote) installed
   * Neovim server/instance running on the IP 127.0.0.1:7777 (instructions can be found [here](neovim-server-address-instructions)) 
#### Java support:
 


