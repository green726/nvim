-- paq instead of packer : packer broke itself

return require("paq")({
	-- Let Paq manage itself
	{ "savq/paq-nvim" },
	--bunch of stuff requires this
	{ "nvim-lua/plenary.nvim" },
	--theme
	--{'folke/tokyonight.nvim'};
	{ "Mofiqul/vscode.nvim" },
    {"EdenEast/nightfox.nvim"},
	--completion
	--need to run this in powershell for java to work  curl https://projectlombok.org/downloads/lombok.jar -O E:\Coding\lombok\lombok.jar
	-- { "neoclide/coc.nvim", branch = "release" },
	--need to install glow withchoco
	--markdown viewer
	{ "ellisonleao/glow.nvim" },
	--syntax highlighting
	{ "nvim-treesitter/nvim-treesitter" },
	--file finder
	{ "nvim-telescope/telescope.nvim" },
	--icons
	{ "kyazdani42/nvim-web-devicons" },
	-- tabline
	{ "akinsho/bufferline.nvim" },
	--statusline
	{ "feline-nvim/feline.nvim" },
	--indents
	{ "lukas-reineke/indent-blankline.nvim" },
	--auto pairs
	{ "jiangmiao/auto-pairs" },
	--git suff
	{ "lewis6991/gitsigns.nvim" },
	--file tree
	{ "kyazdani42/nvim-tree.lua" },
	--home menu/start
	{ "goolord/alpha-nvim" },
	--terminal
	{ "akinsho/toggleterm.nvim" },
	--better comments
	{ "folke/todo-comments.nvim" },
	--c# stuff
	-- { "OmniSharp/omnisharp-vim" },
	--github copilot
	{ "github/copilot.vim" },
	--toggle comments
	{ "numToStr/Comment.nvim" },
	--highlight cursor
	{ "yamatsum/nvim-cursorline" },
	--context menu
	{ "meznaric/conmenu" },
	--highlight context with treesitter
	{ "romgrk/nvim-treesitter-context" },
	--treesitter rainbow
	{ "p00f/nvim-ts-rainbow" },
	--dim code outside of context
	{ "folke/twilight.nvim" },
	--dim inactive code
	{ "narutoxy/dim.lua" },
	--window management
	{ "sindrets/winshift.nvim" },
	--bettwen window creation
	{ "beauwilliams/focus.nvim" },
	--collaborative editing
	{ "jbyuki/instant.nvim" },
	--browse
	{ "lalitmee/browse.nvim" },
	--git
	{ "tpope/vim-fugitive" },
	--better UI looks
	{ "stevearc/dressing.nvim" },
	--debugging
	{ "mfussenegger/nvim-dap" },
	--UI for above debugger
	{ "rcarriga/nvim-dap-ui" },
	--debug install manager for nvim-dap
	{ "Pocco81/dap-buddy.nvim" },
	--better cursorhold
	{ "antoinemadec/FixCursorHold.nvim" },
	--session manager
	--{ "Shatur/neovim-session-manager" },
	--move around text and stuff
    {'booperlv/nvim-gomove'},
    --nvim lsp-config
    {"neovim/nvim-lspconfig"},
    --LSP installer
    {"williamboman/nvim-lsp-installer"},
    --auto complete
    {'hrsh7th/nvim-cmp'},
    --lsp source for nvim-cmp
    {'hrsh7th/cmp-nvim-lsp'},
    -- Snippets source for nvim-cmp
    {'saadparwaiz1/cmp_luasnip'},
    --snippets
    {'L3MON4D3/LuaSnip'},
    --file path completion for nvim-cmp
    {'hrsh7th/cmp-path'},
    --tabnine for nvim-cmp
    {'tzachar/cmp-tabnine', run = './install.sh' },
    --lsp status plugin used for statusline
    {'nvim-lua/lsp-status.nvim'},
    --scollbar
    {'petertriho/nvim-scrollbar'},
    --cheatsheet
    {'sudormrfbin/cheatsheet.nvim'},
    --popup utils required by cheetsheet
    {'nvim-lua/popup.nvim'},
    --better search highlighting
    {'kevinhwang91/nvim-hlslens'},
    --aerial (like a minimap)
    {'stevearc/aerial.nvim'},
    --error checking
    {'folke/trouble.nvim'},
})
