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

require('keymaps')

vim.cmd[[colorscheme tokyonight]]



--i use the below guide for unity
--https://chrislabarge.com/posts/neovim-unity-engine/
--https://www.youtube.com/watch?v=FlhNSNMNYOo
--https://rudism.com/coding-csharp-in-neovim/

--need to run coc and treesitter install commands for this to work
--coc-javascript
--treesitter-tsserver
--coc-tabnine
--coc-snippets
--coc-omnisharp

--below code goes in coc-settings.json
--[[{
    "codeLens.enable": true,
    "java.referencesCodeLens.enabled": true,
    "java.jdt.ls.vmargs": "-javaagent:E:\\Coding\\lombok\\lombok.jar",
    "coc.source.OmniSharp.enable" : true,
    "coc.source.OmniSharp.triggerCharacters": "."
}]]