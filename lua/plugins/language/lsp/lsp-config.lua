-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}


local lspconfig = require('lspconfig')

local function custom_attach(client)
    require("aerial").on_attach(client)
    -- require('folding').on_attach()
end

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'omnisharp', 'sumneko_lua', 'pylsp'}
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = custom_attach,
        capabilities = capabilities,
    }
end

lspconfig.kotlin_language_server.setup {
    on_attach = custom_attach,
    capabilities = capabilities,
    -- settings = {
    --     
    -- }
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
