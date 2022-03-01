--!!! very important, cant have spaces in file/folder names for the unity open in greenvim to work

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

require('keymaps')

--vim.cmd[[colorscheme tokyonight]]

vim.g.vscode_style = "dark"
vim.g.vscode_italic_comment = 1


vim.cmd [[colorscheme vscode]]
vim.cmd [[set tabstop=4]]
vim.cmd [[set shiftwidth=4]]
vim.cmd [[set expandtab]]

--i use the below guide for unity
--https://chrislabarge.com/posts/neovim-unity-engine/
--https://www.youtube.com/watch?v=FlhNSNMNYOo
--https://rudism.com/coding-csharp-in-neovim/



--below code goes in coc-settings.json
--[[{
    "codeLens.enable": true,
    "java.referencesCodeLens.enabled": true,
    "java.jdt.ls.vmargs": "-javaagent:C:\\code\\lombok\\lombok.jar",
    "coc.preferences.formatOnSaveFiletypes": ["css", "markdown"]
    "coc.source.OmniSharp.enable" : true,
    "coc.source.OmniSharp.triggerCharacters": "."
}]]
