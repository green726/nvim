return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  --theme
  use 'folke/tokyonight.nvim'
  --completion
  --need to run this in powershell for java to work  curl https://projectlombok.org/downloads/lombok.jar -O E:\Coding\lombok\lombok.jar
  use {'neoclide/coc.nvim', branch = 'release'}  
  --need to install glow withchoco
  --markdown viewer
  use {"ellisonleao/glow.nvim"}
  --syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
}  --file finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  --icons
  use 'kyazdani42/nvim-web-devicons'
  -- bufferline
  use {'akinsho/bufferline.nvim'}
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
    'kyazdani42/nvim-tree.lua'
  }
  --home menu/start
  use 'goolord/alpha-nvim'
  --terminal
  use {"akinsho/toggleterm.nvim"}
  --snippets for use with coc-snippets
  use 'honza/vim-snippets'
  --better comments
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
  }
  --c# stuff
  use 'OmniSharp/omnisharp-vim'
  --github copilot
  use 'github/copilot.vim'

  end)