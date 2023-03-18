local ft = vim.bo.filetype

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local keymap = vim.keymap.set

-- map("n", "]b", ":BufferLineCycleNext<CR>", { silent = true })
-- map("n", "[b", ":BufferLineCyclePrev<CR>", { silent = true })

-- map("n", "}b", ":BufferLineMoveNext<CR>", { silent = true })
-- map("n", "{b", ":BufferLineMovePrev<CR>", { silent = true })

map("n", "<Tab>", ":JABSOpen<CR>", {silent = true})
-- map("n", "<Tab>", ":Telescope buffers<CR>", {silent = true})
map("n", "<C-a>", ":AerialToggle<CR>", {silent = true})

for _, keymap in pairs({
    'zo',
    'zO',
    'zc',
    'zC',
    'za',
    'zA',
    'zv',
    'zx',
    'zX',
    'zm',
    'zM',
    'zr',
    'zR',
}) do
    vim.api.nvim_set_keymap('n', keymap,  keymap .. '<CMD>IndentBlanklineRefresh<CR>', { noremap=true, silent=true })
end


map("n", "<Leader>S", "<cmd>lua require('spectre').open()<CR>", {silent = true})
vim.cmd[[
vnoremap <leader>s <esc>:lua require('spectre').open_visual()<CR>
"  search in current file
nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>
]]


--paste without overwriting the buffer
vim.cmd[[vnoremap <leader>p "_dP]]
vim.cmd[[imap <M-UP> <esc><S-{>i]]
vim.cmd[[imap <M-DOWN> <esc><S-}>i]]

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- vim.api.nvim_set_keymap('', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
-- vim.api.nvim_set_keymap('', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
-- vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})
-- vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>", {})
map("n", "<C-h>", "<cmd>lua require'hop'.hint_words()<cr>", {silent = true})
map("v", "<C-h>", "<cmd>lua require'hop'.hint_words()<cr>", {silent = true})
map("n", "<Leader>hl", "<cmd>lua require'hop'.hint_lines_skip_whitespace()<cr>", {silent = true})
map("n", "<Leader>hp", "<cmd>lua require'hop'.hint_patterns()<cr>", {silent = true})
map("n", "<Leader>hc", "<cmd>lua require'hop'.hint_char1()<cr>", {silent=true})

--tabline mappings
-- map('n', '<S-Tab>', '<Plug>(cokeline-focus-prev)', { silent = true })
-- map('n', '<Tab>', '<Plug>(cokeline-focus-next)', { silent = true })
-- map('n', '<Leader>p', '<Plug>(cokeline-switch-prev)', { silent = true })
-- map('n', '<Leader>n', '<Plug>(cokeline-switch-next)', { silent = true })

map("n", "<M-d>", "\"_", opts)

map("n", "<leader>bp", "<Plug>(cokeline-pick-close)", { silent = true })

for i = 1, 9 do
    map('n', ('<F%s>'):format(i), ('<Plug>(cokeline-focus-%s)'):format(i), { silent = true })
    map('n', ('<Leader>%s'):format(i), ('<Plug>(cokeline-switch-%s)'):format(i), { silent = true })
end

map("n", "to", ":Telescope<CR>", {silent = true})
map("n", "tf", ":Telescope find_files<CR>", { silent = true })
map("n", "ts", ":Telescope live_grep<CR>", { silent = true })
map("n", "ta", ":Telescope aerial<CR>", { silent = true })
map("n", "tb", ":Telescope buffers<CR>", { silent = true })

-- vim.api.nvim_set_keymap(
--   "n",
--   "<C-t>",
--   ":Telescope file_browser",
--   { noremap = true }
-- )

-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
  "n",
  "<C-t>",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true }
)

--context menu
-- map("n", "<C-m>", ":ConMenu<CR>", { silent = true })

vim.api.nvim_set_keymap(
    "n",
    "<leader>gu",
    ':lua require("plugins/misc/toggleTermConfig").gitUIToggle() <CR>',
    { silent = true }
)
vim.api.nvim_set_keymap("n", "tt", ":ToggleTerm direction=float<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>set", ":e C:/Users/mguin/AppData/Local/nvim <CR>", { silent = true })

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
-- vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
-- vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
-- vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
-- vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
-- local on_attach = function(client, bufnr)
-- Enable completion triggered by <c-x><c-o>
-- vim.api.nvim_buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

-- Mappings.
-- See `:help vim.lsp.*` for documentation on any of the below functions
-- if ft ~= "java" then
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
-- vim.api.nvim_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
-- vim.api.nvim_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
-- vim.api.nvim_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, opts)
-- vim.api.nvim_set_keymap('n', 'K', '<cmd> lua vim.lsp.buf.hover()<CR>', opts)
-- end
-- vim.api.nvim_set_keymap('n', 'ca', ':CodeActionMenu<CR>', opts)
-- vim.cmd [[ nnoremap <space>ca :lua require'lspactions'.code_action()<CR> ]]

--start of lsp saga
-- Lsp finder find the symbol definition implement reference
-- if there is no implement it will hide
-- when you use action in finder like open vsplit then you can
-- use <C-t> to jump back
keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
-- Code action
keymap({"n","v"}, "<space>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
-- Rename
keymap("n", "<space>rn", "<cmd>Lspsaga rename<CR>", { silent = true })
-- Peek Definition
-- you can edit the definition file in this flaotwindow
-- also support open/vsplit/etc operation check definition_action_keys
-- support tagstack C-t jump back
keymap("n", "gp", "<cmd>Lspsaga peek_definition<CR>", { silent = true })
-- Show line diagnostics
keymap("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
-- Show cursor diagnostic
keymap("n", "<space>e", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })
-- Diagnsotic jump can use `<c-o>` to jump back
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
-- Only jump to error
keymap("n", "[E", function()
  require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
keymap("n", "]E", function()
  require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
-- Outline
keymap("n","<leader>o", "<cmd>LSoutlineToggle<CR>",{ silent = true })
-- Hover Doc
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
--end of lspsaga

vim.api.nvim_set_keymap('n', "<Leader>fp", 'lua require("fold-preview").show_preview()<CR>', opts)

vim.cmd([[
    nnoremap <silent> <F5> :lua require'dap'.continue()<CR>
    nnoremap <silent> <F10> :lua require'dap'.step_over()<CR>
    nnoremap <silent> <F11> :lua require'dap'.step_into()<CR>
    nnoremap <silent> <F12> :lua require'dap'.step_out()<CR>
    nnoremap <silent> <leader>b :lua require'dap'.toggle_breakpoint()<CR>
    nnoremap <silent> <leader>B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
    nnoremap <silent> <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
    nnoremap <silent> <leader>dr :lua require'dap'.repl.open()<CR>
    nnoremap <silent> <leader>dl :lua require'dap'.run_last()<CR>

]])

local kopts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', 'n',
    [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]],
    kopts)
vim.api.nvim_set_keymap('n', 'N',
    [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]],
    kopts)
vim.api.nvim_set_keymap('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)

vim.api.nvim_set_keymap('n', '<space>h', ':noh<CR>', kopts)
