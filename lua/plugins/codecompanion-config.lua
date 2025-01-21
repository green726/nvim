require("codecompanion").setup({
    strategies = {
        chat = {
            adapter = "copilot",
        },
        inline = {
            adapter = "copilot",
        },
    },

    display = {
        action_palette = {
            width = 95,
            height = 1,
            prompt = "Prompt ",             -- Prompt used for interactive LLM calls
            provider = "telescope",         -- default|telescope|mini_pick
            opts = {
                show_default_actions = true, -- Show the default actions in the action palette?
                show_default_prompt_library = true, -- Show the default prompt library in the action palette?
            },
        },
    },
})

-- expand cc into CodeCompanion in command line
vim.cmd([[cab cc CodeCompanion]])
vim.cmd([[cab ccd CodeCompanionCmd]])
