# greenvim

## What is greenvim?
greenvim is my attempt to make neovim as close to an IDE as possible.

## features:
* native LSP
* completion with nvim-cmp
* greeter
* Fuzzysearch
* bufferline
* statusline
* theme
* automatic theme-dependent colorscheme for statusline
* tabnine
* github copilot
* Auto-pairs (brackets)
* auto indents
* file tree
* snippets
* browsing
* Context menus
* better terminal integration
* [full Unity and C# support](#unity-support)
* [full Java support](#java-support)

## Setup greenvim (without java or unity support):
   * Once installed run the commands found [here](https://github.com/green726/greenvim/blob/main/commands.txt)

## Unity Support:
### Features:
  * Double click on file to open in greenvim
  * Open errors/prints/warnings in greenvim at proper line & column
  * Full C#/Unity code completion support (native lsp + omnisharp-roslyn ls + Tabnine)
### Setup
  1. Go to Unity -> preferences -> external script editor 
  2. Select VSCode (if not installed please install it)
  3. Check all the boxes below and press rebuild solution
  4. Add the exe in this repository found [here]() as your external script editor
  5. Add the following quoted text (without the quotes) into the external script editor args box: "+$(Line) $(File)"
  6. Ensure no files/folder names in your unity project have spaces - if you do have spaces this will not work properly

### Important info:
#### Unity open in greenvim: 
   * Unity can open any file/error in greenvim through the use of a neovim-remote and an exe I wrote in c#.
      * The exe can be found in the folder custom-exe\external-script-editor-exe. To set it up you can go into unity -> preferences -> external script editor and in the dropdown select browse and select the .exe file. In the external script editor args you then need to place 
 ## Java support:

 
## Requirements:
### General:
   * Neovim >= v6.0
   * Have [Paq](https://github.com/savq/paq-nvim) installed
   * [Neovide](https://github.com/neovide/neovide) for UI (This is optional but I strongly reccommend it)
   * [NerdFonts](https://github.com/ryanoasis/nerd-fonts) (for icons), I use ShureTechMonoNF
   * I recomment the use of [Alacirtty](https://github.com/alacritty/alacritty) on windows. it was the only terminal I could get all NerdFonts to 100% work with (if using windows cmd you will need to use the Agave Nerd Font for all glyphs/icons to work)
### Unity support:
   * [Neovim-remote](https://github.com/mhinz/neovim-remote) installed
   * Neovim server/instance running on the IP 127.0.0.1:7777 (instructions can be found [here](neovim-server-address-instructions)) 
 


