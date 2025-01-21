local com_cent = require("commander")
local noremap = { noremap = true }
local noremap_silent = { noremap = true, silent = true }

com_cent.add({
    {
        desc = "Telescope code companion",
        cmd =
            function()
                local opts = {
                    layout_strategy = "vertical",
                    previewer = false,
                    layout_config = {
                        vertical = {
                            width = 0.5,
                            height = 0.7,
                        },
                    },
                }
                require("telescope").extensions.codecompanion.codecompanion(opts)
            end,
        keys = { { "n", "tc", noremap } }
    },
    {
        desc = "Flash jump search",
        cmd = function() require("flash").jump() end,
        keys = { { "n", "<C-h>", noremap } }
    },
    {
        desc = "Flash jump word under cursor",
        cmd = function()
            require("flash").jump({
                pattern = vim.fn.expand("<cword>"),
            })
        end,
        keys = { { "n", "<C-b>", noremap } }
    },
    {
        desc = "Toggle Scratch Buffer",
        cmd = function() Snacks.scratch() end,
        keys = { { "n", "<Leader>s", noremap } }
    },
    -- {
    --     desc = "Flash treesitter",
    --     cmd = function() require("flash").treesitter() end,
    --     keys = { { "n", "<C-h>", noremap } }
    -- },
    {
        desc = "Open Telescope Diagnostics",
        cmd = "<cmd>Telescope diagnostics<CR>",
        keys = { { "n", "td", noremap } }
    },
    {
        desc = "Toggle Term Open Float",
        cmd = "<cmd>ToggleTerm direction=float<CR>",
        keys = { { "n", "tt", noremap } }
    },
    -- {
    --     desc = "Activate WinShift",
    --     cmd = "<cmd>WinShift<CR>",
    --     keys = { { "n", "<leader>ws", noremap } }
    -- },
    {
        desc = "LSPSaga Finder",
        cmd = "<cmd>Lspsaga finder<CR>",
        keys = { { "n", "<leader>lf", noremap } }
    },
    {
        desc = "Open Commander",
        cmd = "<cmd>Telescope commander (keymaps)<CR>",
        keys = { { "n", "tk", noremap } }
    },
    {
        desc = "Open Telescope",
        cmd = "<cmd>Telescope builtin include_extensions=true<CR>",
        --cmd = "<cmd>Telescope<CR>",
        keys = { { "n", "to", noremap } }
    },
    {
        desc = "Open Telescope Find Files",
        cmd = "<cmd>Telescope find_files<CR>",
        keys = { { "n", "tf", noremap } }
    },
    {
        desc = "Open Telescope Live Grep",
        cmd = "<cmd>Telescope live_grep<CR>",
        keys = { { "n", "ts", noremap } }
    },
    -- {
    --     desc = "Open Telescope Aerial",
    --     cmd = "<cmd>Telescope aerial<CR>",
    --     keys = { { "n", "ta", noremap } }
    -- },
    {
        desc = "Open Yazi",
        cmd = "<cmd>Yazi<CR>",
        keys = { { "n", "<C-t>", noremap } }
    },
    -- {
    --     desc = "Open Telescope File Tree",
    --     cmd = "<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>",
    --     keys = { { "n", "<C-t>", noremap } }
    -- },
    {
        desc = "Open Telescope Buffer",
        cmd = "<cmd>Telescope buffers<CR>",
        keys = { { "n", "tb", noremap } }
    },
    -- {
    --     desc = "Hop Words",
    --     cmd = "<cmd>lua require'hop'.hint_words()<cr>",
    --     keys = { { "n", "<C-h>", noremap }, { "v", "<C-h>", noremap } }
    -- },
    -- {
    --     desc = "Hop Lines",
    --     cmd = "<cmd>lua require'hop'.hint_lines_skip_whitespace()<cr>",
    --     keys = { { "n", "<Leader>hl", noremap }, { "v", "<Leader>hl", noremap } }
    -- },
    {
        desc = "Go to declaration",
        cmd = "<cmd>lua vim.lsp.buf.declaration()<CR>",
        keys = { { "n", "gd", noremap } }
    },
    {
        desc = "Go to definition",
        cmd = "<cmd>lua vim.lsp.buf.definition()<CR>",
        keys = { { "n", "gD", noremap } }
    },
    {
        desc = "Go to implementation",
        cmd = "<cmd>lua vim.lsp.buf.implementation()<CR>",
        keys = { { "n", "gi", noremap } }
    },
    {
        desc = "Signature Help",
        cmd = "<cmd>lua vim.lsp.buf.signature_help()<CR>",
        keys = { { "n", "<C-k>", noremap }, { "i", "<C-k>", noremap } }
    },
    {
        desc = "List References",
        cmd = "<cmd>lua vim.lsp.buf.references()<CR>",
        keys = { { "n", "gr", noremap } }
    },
    {
        desc = "Format",
        cmd = "<cmd>lua vim.lsp.buf.format { async = true }<CR>",
        keys = { { "n", "<space>f", noremap } }
    },
    {
        desc = "Code Action",
        cmd = "<cmd>Lspsaga code_action<CR>",
        keys = { { "n", "<space>ca", noremap } }
    },
    {
        desc = "Rename",
        cmd = "<cmd>Lspsaga rename<CR>",
        keys = { { "n", "<space>rn", noremap } }
    },
    {
        desc = "Peek Definition",
        cmd = "<cmd>Lspsaga peek_definition<CR>",
        keys = { { "n", "gp", noremap } }
    },
    {
        desc = "Show Line Diagnostics",
        cmd = "<cmd>Lspsaga show_line_diagnostics<CR>",
        keys = { { "n", "<space>ld", noremap } }
    },
    {
        desc = "Show Cursor Diagnostics",
        cmd = "<cmd>Lspsaga show_cursor_diagnostics<CR>",
        -- cmd = function()
        --     require("lspsaga.diagnostic.show"):show_diagnostics({ cursor = true, show_layout = '++float' })
        -- end,
        keys = { { "n", "<space>e", noremap } }
    },
    {
        desc = "Lspsaga Hover Doc",
        cmd = "<cmd>Lspsaga hover_doc<CR>",
        keys = { { "n", "K", noremap } }
    },
    {
        desc = "Hlsens Forward",
        cmd = "<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>",
        keys = { { "n", "n", noremap_silent } }
    },
    {
        desc = "Hlsens Back",
        cmd = "<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>",
        keys = { { "n", "N", noremap_silent } }
    },
    {
        desc = "No highlight",
        cmd = "<cmd>noh<CR>",
        keys = { { "n", "<space>h", noremap } }
    },
    {
        desc = "Fold Preview",
        cmd = "<cmd>lua require('fold-preview').open_fold()<CR>",
        keys = { { "n", "<space>fp", noremap } }
    },
    {
        desc = "Jump to prev diagnostic",
        cmd = "<cmd>Lspsaga diagnostic_jump_prev<CR>",
        keys = { { "n", "[e", noremap_silent } }
    },
    {
        desc = "Jump to next diagnostic",
        cmd = "<cmd>Lspsaga diagnostic_jump_next<CR>",
        keys = { { "n", "]e", noremap_silent } }
    },
}
)
