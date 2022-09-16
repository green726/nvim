--!!! very important, cant have spaces in file/folder names for the unity open in greenvim to work
--my favorite terminal for use here is alacritty - windows command prompt is fine but will not work properly with any font
--execpt for agave NF (which i dont like)
--for this reason (+ config for alacritty and performance) I prefer alacritty
--I use the Anonymice Mono NF

-- if vim.g.nvui then
--   -- Configure through vim commands
--   vim.cmd [[NvuiCmdFontFamily SpaceMono Nerd Font]]
-- end

vim.g.cursorhold_updatetime = 800

-- vim.o.guifont = "SpaceMono Nerd Font"
-- vim.g.neovide_cursor_vfx_mode = "railgun"

vim.g.cursorword_highlight = false
vim.g.cursorline_timeout = 0


vim.opt.termguicolors = true
vim.opt.number = true
--autocmd to turn off line numbers in terminal
vim.cmd([[autocmd TermOpen * setlocal nonumber norelativenumber]])
--autocmd to close neovim if nvim-tree is last thing open
-- vim.cmd([[autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif]])

vim.opt.encoding = "UTF-8"

require("plugins/paq")

require("plugins/util/util")
require("plugins/ui/ui")
require("plugins/misc/misc")
require("plugins/language/language")

require("keymaps")
require("autocommands")
require("commands")

vim.cmd[[set relativenumber]]

--setup for instant collab
vim.g.instant_username = "green726"

--set the colorscheme
vim.cmd[[colorscheme nightfox]]

--setup vscode theme incase i want to use it
vim.g.vscode_style = "dark"
vim.g.vscode_italic_comment = 1
-- vim.cmd([[colorscheme vscode]])

--vim.cmd[[colorscheme tokyonight]]

--below changes tabs to four spaces
vim.cmd([[set tabstop=4]])
vim.cmd([[set shiftwidth=4]])
vim.cmd([[set expandtab]])

--disables mouse
vim.cmd([[set mouse=]])


require("colors")

-- local TelescopePrompt = {
--     TelescopePromptNormal = {
--         bg = '#2d3149',
--     },
--     TelescopePromptBorder = {
--         bg = '#2d3149',
--     },
--     TelescopePromptTitle = {
--         fg = '#2d3149',
--         bg = '#2d3149',
--     },
--     TelescopePreviewTitle = {
--         fg = '#1F2335',
--         bg = '#1F2335',
--     },
--     TelescopeResultsTitle = {
--         fg = '#1F2335',
--         bg = '#1F2335',
--     },
-- }
-- for hl, col in pairs(TelescopePrompt) do
--     vim.api.nvim_set_hl(0, hl, col)
-- end

--folding for TS
-- vim.cmd[[
-- set foldmethod=expr
-- set foldexpr=nvim_treesitter#foldexpr()
-- ]]

--i use the below guide for unity
--https://chrislabarge.com/posts/neovim-unity-engine/
--https://www.youtube.com/watch?v=FlhNSNMNYOo
--https://rudism.com/coding-csharp-in-neovim/


