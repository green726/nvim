--needed to follow troubleshooting steps found here to get to work https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support#troubleshooting
--enables highlighting
require("nvim-treesitter.configs").setup({
    playground = {
        enable = true,
        disable = {},
        updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = false, -- Whether the query persists across vim sessions
        keybindings = {
            toggle_query_editor = 'o',
            toggle_hl_groups = 'i',
            toggle_injected_languages = 't',
            toggle_anonymous_nodes = 'a',
            toggle_language_display = 'I',
            focus_language = 'f',
            unfocus_language = 'F',
            update = 'R',
            goto_node = '<cr>',
            show_help = '?',
        },
    },
    -- One of "all", "maintained" (parsers with maintainers), or a list of languages
    -- ensure_installed = { "javascript", "c_sharp", "markdown_inline", "markdown", "lua" },

    -- Install languages synchronously (only applied to `ensure_installed`)
    sync_install = false,

    highlight = {
        -- `false` will disable the whole extension
        enable = true,

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
    -- ...
    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, -- list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    },
})
require("nvim-treesitter.install").compilers = { "gcc" }


-- local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
-- parser_config.hazel = {
--   install_info = {
--     url = "~/coding/tree-sitter-hazel/", -- local path or git repo
--     files = {"src/parser.c"}, -- note that some parsers also require src/scanner.c or src/scanner.cc
--     -- optional entries:
--     branch = "main", -- default branch in case of git repo if different from master
--     generate_requires_npm = false, -- if stand-alone parser without npm dependencies
--     requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
--   },
--   filetype = "hazel", -- if filetype does not match the parser name
-- }
