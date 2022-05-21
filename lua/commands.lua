-- vim.api.nvim_create_user_command(
--     'B',
--     function(opts)
--         vim.cmd("bd | redrawtabline")
--         vim.cmd[[:NvimTreeToggle]]
--         vim.cmd[[:NvimTreeToggle]]
--     end,
--     { nargs = 0 }
-- )

--below are all random fun command line things
vim.api.nvim_create_user_command(
    'Fishes',
    function(opts)
        require("plugins/toggleTermConfig").asciiquariumToggle()
    end,
    { nargs = 0 }
)

vim.api.nvim_create_user_command(
    'Hacker',
    function(opts)
        require("plugins/toggleTermConfig").hollywoodToggle()
    end,
    { nargs = 0 }
)

vim.api.nvim_create_user_command(
    'ShowOff',
    function(opts)
        require("plugins/toggleTermConfig").neofetchToggle()
    end,
    { nargs = 0 }
)

vim.api.nvim_create_user_command(
    'Status',
    function(opts)
        require("plugins/toggleTermConfig").bottomToggle()
    end,
    { nargs = 0 }
)

vim.api.nvim_create_user_command(
    'SpeedRead',
    function(opts)
        local speed = opts.args
        if speed == nil or speed == "" then
            speed = "400"
        end
        require("plugins/toggleTermConfig").speedreadToggle(speed)
    end,
    { nargs = "?" }
)
