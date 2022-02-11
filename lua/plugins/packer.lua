return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  --theme
  use 'tanvirtin/monokai.nvim'
  --completion
  use {'neoclide/coc.nvim', branch = 'release'}
  --need to install glow withchoco
  --markdown viewer
  use {"ellisonleao/glow.nvim"}
  --syntax highlighting
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}  
  --file finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  --icons
  use 'kyazdani42/nvim-web-devicons'
  --buffer/tabs
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  --statusline
  use 'feline-nvim/feline.nvim'
  --indents
  use "lukas-reineke/indent-blankline.nvim"
  --auto pairs
  use 'jiangmiao/auto-pairs'


  end)