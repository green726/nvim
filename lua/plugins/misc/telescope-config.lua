local tele = require("telescope")
local sorters = require("telescope.sorters")
tele.setup({
    defaults = {
        -- Default configuration for telescope goes here:
        -- config_key = value,
        mappings = {
            i = {
                -- map actions.which_key to <C-h> (default: <C-/>)
                -- actions.which_key shows the mappings for your picker,
                -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                ["<C-h>"] = "which_key"
            }
        },
        file_ignore_patterns = {
            "%.cs.meta",
        },
        prompt_prefix = "   ",
        selection_caret = "  ",
        entry_prefix = "  ",
        winblend = 0,
        border = {},
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        layout_config = {
            horizontal = {
            },
            vertical = {
            }
        },
    },

    pickers = {
        -- Default configuration for builtin pickers goes here:
        -- picker_name = {
        --   picker_config_key = value,
        --   ...
        -- }
        -- Now the picker_config_key will be applied every time you call this
        -- builtin picker

        buffers = {
            layout_config = {
                vertical = {
                    height = .4,
                    width = .2,
                }
            },
            layout_strategy = 'vertical',
            previewer = false,
        },
    },
    extensions = {
        -- Your extension configuration goes here:
        -- extension_name = {
        --   extension_config_key = value,
        -- }
        -- please take a look at the readme of the extension you want to configure
    },

})

tele.load_extension('repo')
tele.load_extension("projects")
tele.load_extension("aerial")
