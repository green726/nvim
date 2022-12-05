vim.api.nvim_create_user_command(
    'B',
    function(opts)
        require('close_buffers').delete({ type = 'this' })
    end,
    { nargs = 0 }
)

vim.api.nvim_create_user_command(
    'Bo',
    function(opts)
        require('close_buffers').delete({ type = 'other' })
    end,
    { nargs = 0 }
)

--below are all random fun command line things
vim.api.nvim_create_user_command(
    'Fishes',
    function(opts)
        require("plugins/misc/toggleTermConfig").asciiquariumToggle()
    end,
    { nargs = 0 }
)

vim.api.nvim_create_user_command('StackOverflow', function(opts)
    require("plugins/misc/toggleTermConfig").stackOverflowToggle(opts)
end, { nargs = 0 })

vim.api.nvim_create_user_command(
    'Hacker',
    function(opts)
        require("plugins/misc/toggleTermConfig").hollywoodToggle()
    end,
    { nargs = 0 }
)

vim.api.nvim_create_user_command(
    'ShowOff',
    function(opts)
        require("plugins/misc/toggleTermConfig").neofetchToggle()
    end,
    { nargs = 0 }
)

vim.api.nvim_create_user_command(
    'Status',
    function(opts)
        require("plugins/misc/toggleTermConfig").bottomToggle()
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
        require("plugins/misc/toggleTermConfig").speedreadToggle(speed)
    end,
    { nargs = "?" }
)
