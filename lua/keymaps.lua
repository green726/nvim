function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "]b", ":BufferLineCycleNext<CR>", { silent = true })
map("n", "[b", ":BufferLineCyclePrev<CR>", { silent = true })

map("n", "}b", ":BufferLineMoveNext<CR>", { silent = true })
map("n", "{b", ":BufferLineMovePrev<CR>", { silent = true })

map("n", "bc", ":BufferClose<CR>", { silent = true })

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
