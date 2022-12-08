-- addons
local luasnip = require 'luasnip'

local lspkind = require('lspkind')

local cmp_autopairs = require('nvim-autopairs.completion.cmp')

--load snippets
require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./lua/plugins/language/lsp/snippets" } })


local source_mapping = {
    buffer = "[Buffer]",
    nvim_lsp = "[LSP]",
    nvim_lua = "[Lua]",
    cmp_tabnine = "[T9]",
    path = "[Path]",
}

local compare = require('cmp.config.compare')

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
    -- sorting = {
    --     priority_weight = 2,
    --     comparators = {
    --         require('cmp_tabnine.compare'),
    --         compare.offset,
    --         compare.exact,
    --         compare.score,
    --         compare.recently_used,
    --         compare.kind,
    --         compare.sort_text,
    --         compare.length,
    --         compare.order,
    --     },
    -- },

    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
        ['<C-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<C-e>'] = cmp.mapping.abort(),
    }),
    sources = {
        { name = 'nvim_lsp', max_item_count = 10 },
        { name = 'luasnip', max_item_count = 2 },
        { name = 'path', max_item_count = 3 },
        -- { name = 'cmp_tabnine', max_item_count = 20 }
    },
    -- enabled = function()
    --     -- disable completion in comments
    --     local context = require 'cmp.config.context'
    --     -- keep command mode completion enabled when cursor is in a comment
    --     if vim.api.nvim_get_mode().mode == 'c' then
    --         return true
    --     else
    --         if vim.bo.filetype == "TelescopePrompt" then return end
    --         return not context.in_treesitter_capture("comment")
    --             and not context.in_syntax_group("Comment")
    --     end
    -- end,
    formatting = {
        format = lspkind.cmp_format({
            mode = 'symbol_text', -- show only symbol annotations
            maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
            menu = {
                cmp_tabnine = "[T9]",
                buffer = "[Buffer]",
                nvim_lsp = "[LSP]",
                luasnip = "[LuaSnip]",
                nvim_lua = "[Lua]",
            },
        })
    },

    -- formatting = {
    --     format = function(entry, vim_item)
    --         -- if you have lspkind installed, you can use it like
    --         -- in the following line:
    --         vim_item.kind = lspkind.symbolic(vim_item.kind, { mode = "symbol" })
    --         vim_item.menu = source_mapping[entry.source.name]
    --         if entry.source.name == "cmp_tabnine" then
    --             local detail = (entry.completion_item.data or {}).detail
    --             vim_item.kind = ""
    --             if detail and detail:find('.*%%.*') then
    --                 vim_item.kind = vim_item.kind .. ' ' .. detail
    --             end
    --             -- if (entry.completion_item.data or {}).multiline then
    --             -- 	vim_item.kind = vim_item.kind .. ' ' .. '[ML]'
    --             -- end
    --         end
    --         local maxwidth = 80
    --         vim_item.abbr = string.sub(vim_item.abbr, 1, maxwidth)
    --         return vim_item
    --     end,
    -- },
}

-- autopairs
cmp.event:on(
    'confirm_done',
    cmp_autopairs.on_confirm_done()
)

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})

-- local tabnine = require('cmp_tabnine.config')
-- tabnine:setup({
--     max_lines = 1000;
--     max_num_results = 20;
--     sort = true;
--     run_on_every_keystroke = true;
--     snippet_placeholder = '...';
--     ignored_file_types = { -- default is not to ignore
--         -- uncomment to ignore in lua:
--         -- lua = true
--         TelescopePrompt = true,
--     };
--     show_prediction_strength = true
-- })
