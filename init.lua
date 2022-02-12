require('plugins/packer')

require('plugins/monokai')
require('plugins/treesitter')
require('plugins/feline')
require('plugins/indent-blanklines')
require('plugins/git-signs')
require('plugins/alpha')
require('plugins/nvim-tree')
require('plugins/bufferline')
require('plugins/web-devicons')
require('keymaps')

vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.encoding = 'UTF-8'

--below code goes in coc-settings.json
--[[{
    "codeLens.enable": true,
    "java.referencesCodeLens.enabled": true,
    "java.jdt.ls.vmargs": "-javaagent:E:\\Coding\\lombok\\lombok.jar"
}]]