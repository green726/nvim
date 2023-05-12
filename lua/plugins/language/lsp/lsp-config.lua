-- Add additional capabilities supported by nvim-cmp
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- capabilities.textDocument.foldingRange = {
--     dynamicRegistration = false,
--     lineFoldingOnly = true
-- }

local lspconfig = require('lspconfig')

local function custom_attach(client)
    -- require("aerial").on_attach(client)
    -- require('folding').on_attach()
end

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'omnisharp', 'lua_ls', 'rust_analyzer', 'kotlin_language_server', 'jsonls', 'hls', 'pyright',
    'tsserver', 'clangd', "ocamllsp", "texlab" }
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = custom_attach,
        capabilities = capabilities,
    }
end


lspconfig.jdtls.setup {
	capabilities = capabilities,
	on_attach = custom_attach,
	settings = {
		      java = {signatureHelp = {enabled = true}, contentProvider = {preferred = 'fernflower'}}
	}
}

local clangCapabilities = capabilities
clangCapabilities.offsetEncoding = { "utf-16" }

require 'lspconfig'.clangd.setup {
    root_dir = lspconfig.util.root_pattern(
        'meson.build',
        '.clangd',
        '.clang-tidy',
        'compile_commands.json',
        'compile_flags.txt',
        'configure.ac'
    ),
    capabilities = clangCapabilities,
    on_attach = custom_attach,
}

-- require("flutter-tools").setup {}

-- require'lspconfig'.hls.setup {
--     root_dir = lspconfig.util.root_pattern(
--         'stack.yaml'
--     ),
--     on_attach = custom_attach,
--     capabilities = capabilities,
--
-- }
--

-- local ht = require('haskell-tools')
-- local def_opts = { noremap = true, silent = true, }
-- ht.setup {
--     hls = {
--         -- See nvim-lspconfig's  suggested configuration for keymaps, etc.
--         on_attach = custom_attach,
--         capabilities = capabilities
--     },
-- }
-- -- Suggested keymaps that do not depend on haskell-language-server
-- -- Toggle a GHCi repl for the current package
-- vim.keymap.set('n', '<leader>rr', ht.repl.toggle, def_opts)
-- -- Toggle a GHCi repl for the current buffer
-- vim.keymap.set('n', '<leader>rf', function()
--     ht.repl.toggle(vim.api.nvim_buf_get_name(0))
-- end, def_opts)
-- vim.keymap.set('n', '<leader>rq', ht.repl.quit, def_opts)

local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

--customize the diagnostics ui
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = true,
    severity_sort = true,
})
