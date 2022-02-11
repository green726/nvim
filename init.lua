require('plugins')

require('monokai').setup { palette = require('monokai').pro }
require'nvim-treesitter.configs'.setup {
    highlight = {
      enable = true,
    },
  }


vim.opt.number = true