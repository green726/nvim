-- Add additional capabilities supported by nvim-cmp
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- capabilities.textDocument.foldingRange = {
--     dynamicRegistration = false,
--     lineFoldingOnly = true
-- }

local lspconfig = require('lspconfig')

local function custom_attach(client)
    require("aerial").on_attach(client)
    -- require('folding').on_attach()
end

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'omnisharp', 'sumneko_lua', 'rust_analyzer', 'ltex', 'kotlin_language_server', 'jsonls' }
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = custom_attach,
        capabilities = capabilities,
    }
end

require 'lspconfig'.clangd.setup {
    root_dir = lspconfig.util.root_pattern(
        'meson.build',
        '.clangd',
        '.clang-tidy',
        'compile_commands.json',
        'compile_flags.txt',
        'configure.ac'
    ),
    capabilities = capabilities,
    on_attach = custom_attach,
}


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
