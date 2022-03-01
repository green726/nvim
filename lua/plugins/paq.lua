-- paq instead of packer : packer broke itself

return require('paq') {
   -- Let Paq manage itself
  {"savq/paq-nvim"};
  --bunch of stuff requires this 
  {'nvim-lua/plenary.nvim'};
  --theme
  --{'folke/tokyonight.nvim'};
  {'Mofiqul/vscode.nvim'};
  --completion
  --need to run this in powershell for java to work  curl https://projectlombok.org/downloads/lombok.jar -O E:\Coding\lombok\lombok.jar
   {'neoclide/coc.nvim', branch = 'release'};  
  --need to install glow withchoco
  --markdown viewer
  {"ellisonleao/glow.nvim"};
  --syntax highlighting
  {'nvim-treesitter/nvim-treesitter'};  
  --file finder
  {'nvim-telescope/telescope.nvim'};
  --icons
  {'kyazdani42/nvim-web-devicons'};
  -- bufferline
  {'akinsho/bufferline.nvim'};
  --statusline
  {'feline-nvim/feline.nvim'};
  --indents
  {"lukas-reineke/indent-blankline.nvim"};
  --auto pairs
  {'jiangmiao/auto-pairs'};
  --git suff
  {'lewis6991/gitsigns.nvim'};
  --file tree 
  {'kyazdani42/nvim-tree.lua'};
  --home menu/start
  {'goolord/alpha-nvim'};
  --terminal
  {"akinsho/toggleterm.nvim"};
  --snippets for  with coc-snippets
  {'honza/vim-snippets'};
  --better comments
  {"folke/todo-comments.nvim"};
  --c# stuff
  {'OmniSharp/omnisharp-vim'};
  --github copilot
  {'github/copilot.vim'};
  --scrolling
  {'karb94/neoscroll.nvim'};
}