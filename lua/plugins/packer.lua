return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  --theme
  use 'tanvirtin/monokai.nvim'
  --completion
  --need to run this in powershell for java to work  curl https://projectlombok.org/downloads/lombok.jar -O E:\Coding\lombok\lombok.jar
  use {'neoclide/coc.nvim', branch = 'release'}
  --need to install glow withchoco
  --markdown viewer
  use {"ellisonleao/glow.nvim"}
  --syntax highlighting
  use {'nvim-treesitter/nvim-treesitter'}  
  --file finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  --icons
  use 'kyazdani42/nvim-web-devicons'
  -- bufferline
  use {
    "akinsho/nvim-bufferline.lua",
    after = "nvim-web-devicons",
    config = function()
      require("plugins/bufferline")
    end
  }
  --statusline
  use 'feline-nvim/feline.nvim'
  --indents
  use "lukas-reineke/indent-blankline.nvim"
  --auto pairs
  use 'jiangmiao/auto-pairs'
  --git suff
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
  }
  --file tree 
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    }
  }
  --home menu/start
  use 'goolord/alpha-nvim'

  end)