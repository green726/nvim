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

map("n", "<C-v>", ":NvimTreeFocus<CR>", { silent = true })
map("n", "<C-b>", ":NvimTreeClose<CR>", { silent = true })

--coc stuff
vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>rn", "<Plug>(coc-rename)", {})
vim.api.nvim_set_keymap("n", "<leader>osrn", "<Plug>(omnisharp_rename)", {})

--map("n", "<C-d>", ":call CocAction('doHover')<CR>", {silent = true})


--[[
var io = require('socket.io')(http, { 
    cors: {
      origin: "*"
    }
    });
  ]]
