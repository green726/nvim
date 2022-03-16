function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
--[[
map("n", "]b", ":BufferLineCycleNext<CR>", { silent = true })
map("n", "[b", ":BufferLineCyclePrev<CR>", { silent = true })

map("n", "}b", ":BufferLineMoveNext<CR>", { silent = true })
map("n", "{b", ":BufferLineMovePrev<CR>", { silent = true })

map("n", "bc", ":BufferClose<CR>", { silent = true })
]]

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

--everything below is for barbar

-- Move to previous/next
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-.>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ' :BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
map('n', '<A-0>', ':BufferLast<CR>', opts)
-- Close buffer
map('n', '<A-c>', ':BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
map('n', '<C-p>', ':BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

map("n", "<leader>t", ":ToggleTerm<CR>", { silent = true })

map("n", "ff", ":Telescope find_files<CR>", { silent = true })

map("n", "<C-t>", ":NvimTreeFocus<CR>", { silent = true })
map("n", "<C-j>", ":NvimTreeClose<CR>", { silent = true })

map("n", "cf", ":CocFix<CR>", { silent = true })
--coc stuff
vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>rn", "<Plug>(coc-rename)", {})
vim.api.nvim_set_keymap("n", "<leader>osrn", "<Plug>(omnisharp_rename)", {})
vim.api.nvim_set_keymap("n", "oh", "<Plug>(omnisharp_do<C-k>mentation)", {})


vim.cmd [[
  if has('nvim-0.4.0') || has('patch-8.2.0750')
  echo 'hi'
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  endif
]]

--map("n", "<C-d>", ":call CocAction('doHover')<CR>", {silent = true})


--[[
var io = require('socket.io')(http, { 
    cors: {
      origin: "*"
    }
    });
  ]]
