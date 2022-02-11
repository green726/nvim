return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'tanvirtin/monokai.nvim'
  use {'neoclide/coc.nvim', branch = 'release'}
  use {"ellisonleao/glow.nvim"}
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}  
  end)