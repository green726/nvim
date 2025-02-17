vim.cmd([[let g:copilot_assume_mapped = v:true]])
vim.cmd("let g:copilot_no_tab_map = v:true")


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("plugins/lazy")

--Stop the stupid pasting over thingy
vim.api.nvim_set_keymap('x', 'p', 'pgvy', { noremap = true, silent = true })

--set the colorscheme
vim.cmd [[colorscheme nightfox]]

--setup vscode theme incase i want to use it
vim.g.vscode_style = "dark"
vim.g.vscode_italic_comment = 1
-- vim.cmd([[colorscheme vscode]])

--vim.cmd[[colorscheme tokyonight]]

vim.g.cursorhold_updatetime = 800

vim.g.cursorword_highlight = false
vim.g.cursorline_timeout = 0


vim.opt.termguicolors = true
vim.opt.number = true
--autocmd to turn off line numbers in terminal
vim.cmd([[autocmd TermOpen * setlocal nonumber norelativenumber]])

vim.opt.encoding = "UTF-8"

-- require("plugins/paq")

require("plugins/util/util")
require("plugins/ui/ui")
require("plugins/misc/misc")
require("plugins/language/language")

require("keymaps")
require("autocommands")
require("commands")

vim.cmd [[set relativenumber]]

--setup for instant collab
vim.g.instant_username = "green726"


--below changes tabs to four spaces
vim.cmd([[set tabstop=4]])
vim.cmd([[set shiftwidth=4]])
vim.cmd([[set expandtab]])

--disables mouse
vim.cmd([[set mouse=]])
vim.cmd [[set signcolumn=yes:1]]

vim.g.do_filetype_lua = 1

--folding for TS
-- vim.o.foldmethod = "expr"
-- vim.o.foldexpr = 'nvim_treesitter#foldexpr()'

require("colors")

vim.cmd([[autocmd BufNewFile,BufRead *.hazel setfiletype hazel]])

--always use system clipboard
vim.opt.clipboard="unnamedplus"
