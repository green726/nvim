--!!! very important, cant have spaces in file/folder names for the unity open in greenvim to work
--my favorite terminal for use here is alacritty - windows command prompt is fine but will not work properly with any font
--execpt for agave NF (which i dont like)
--for this reason (+ config for alacritty and performance) I prefer alacritty
--I use the Anonymice Mono NF

vim.g.cursorhold_updatetime = 800

vim.o.guifont = "ShureTechMono NF"
vim.g.neovide_cursor_vfx_mode = "railgun"

vim.g.cursorword_highlight = false
vim.g.cursorline_timeout = 0


vim.opt.termguicolors = true
vim.opt.number = true
--autocmd to turn off line numbers in terminal
vim.cmd([[autocmd TermOpen * setlocal nonumber norelativenumber]])
--autocmd to close neovim if nvim-tree is last thing open
-- vim.cmd([[autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif]])

vim.opt.encoding = "UTF-8"

require("plugins/paq")

require("plugins/treesitter")
require("plugins/feline")
require("plugins/indent-blanklines")
require("plugins/git-signs")
require("plugins/alpha")
require("plugins/web-devicons")
require("plugins/telescope")
require("plugins/toggleTermConfig")
require("plugins/todo-comments")
require("plugins/omnisharp")
require("plugins/neo-scroll")
require("plugins/comment-nvim")
require("plugins/nvim-treeConfig")
require("plugins/bufferline")
require("plugins/treesitter-context")
require("plugins/twilight-config")
require("plugins/dim-config")
--require("plugins/conmenuConfig")
-- require("plugins/focus-config")
require("plugins/winshift-config")
require("plugins/dap-ui-config")
--require("plugins/session-manager")
require("plugins/dap-config")

require("keymaps")
require("autocommands")

--setup for instant collab
vim.g.instant_username = "green726"

vim.g.vscode_style = "dark"
vim.g.vscode_italic_comment = 1

--vim.cmd[[colorscheme tokyonight]]

--set the colorscheme
vim.cmd([[colorscheme vscode]])
--below changes tabs to four spaces
vim.cmd([[set tabstop=4]])
vim.cmd([[set shiftwidth=4]])
vim.cmd([[set expandtab]])

--enables mouse
-- vim.cmd([[set mouse=a]])

--i use the below guide for unity
--https://chrislabarge.com/posts/neovim-unity-engine/
--https://www.youtube.com/watch?v=FlhNSNMNYOo
--https://rudism.com/coding-csharp-in-neovim/

--need to have clang installed
--need to have vs 2019 installed
--if clang errors cant find vs, follow the steps here: https://stackoverflow.com/questions/66692772/nvim-treesitter-installation-on-windows (!!Must run in nvim-qt)

--here is tutorial for java: https://www.chrisatmachine.com/Neovim/24-neovim-and-java/

--below code goes in coc-settings.json
--[[{
    "codeLens.enable": false,
    "java.referencesCodeLens.enabled": true,
    "coc.source.OmniSharp.referencesCodeLens.enabled": false,
    "java.jdt.ls.vmargs": "-javaagent:C:\\code\\lombok\\lombok.jar",
    "coc.preferences.formatOnSaveFiletypes": ["css", "markdown", "java", "csharp"],
    "coc.source.OmniSharp.enable" : true,
    "coc.source.OmniSharp.triggerCharacters": ".",
    "coc.preferences.hoverTarget": "float",
    "java.configuration.runtimes": [
        {
          "name": "JavaSE-1.8",
          "path": "C:\\Program Files\\Java\\jre1.8.0_321"
        }
      ],
    "explorer.icon.enableNerdfont": true,
    "explorer.icon.source": "vim-devicons"
}
]]
