--!!! very important, cant have spaces in file/folder names for the unity open in greenvim to work
--my favorite terminal for use here is alacritty - windows command prompt is fine but will not work properly with any font
--execpt for agave NF (which i dont like)
--for this reason (+ config for alacritty and performance) I prefer alacritty
--I use the Anonymice Mono NF

vim.o.guifont = "JetBrainsMono NF"


vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.encoding = 'UTF-8'


require('plugins/paq')

require('plugins/treesitter')
require('plugins/feline')
require('plugins/indent-blanklines')
require('plugins/git-signs')
require('plugins/alpha')
require('plugins/nvim-tree')
require('plugins/bufferline')
require('plugins/web-devicons')
require('plugins/telescope')
require('plugins/toggle-term')
require('plugins/todo-comments')
require('plugins/omnisharp')
require('plugins/neo-scroll')
require('plugins/comment-nvim')

require('keymaps')
require('autocommands')

vim.g.vscode_style = "dark"
vim.g.vscode_italic_comment = 1

--vim.cmd[[colorscheme tokyonight]]

--set the colorscheme
vim.cmd [[colorscheme vscode]]
--below changes tabs to four spaces
vim.cmd [[set tabstop=4]]
vim.cmd [[set shiftwidth=4]]
vim.cmd [[set expandtab]]

--lower vim update time from 4000ms to 1000ms which will decrease cursorhold time
vim.cmd [[set updatetime=800]]


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
    "codeLens.enable": true,
    "java.referencesCodeLens.enabled": true,
    "java.jdt.ls.vmargs": "-javaagent:C:\\code\\lombok\\lombok.jar",
    "coc.preferences.formatOnSaveFiletypes": ["css", "markdown", "java"],
    "coc.source.OmniSharp.enable" : true,
    "coc.source.OmniSharp.triggerCharacters": ".",
    "coc.preferences.hoverTarget": "float",
    "java.configuration.runtimes": [
        {
          "name": "JavaSE-1.8",
          "path": "C:\\Program Files\\Java\\jre1.8.0_321"
        }
      ]
}]]
