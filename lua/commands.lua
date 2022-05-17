vim.api.nvim_create_user_command(
    'Fishes',
    function(opts)
        vim.cmd[[:TermExec cmd="asciiquarium" direction="float"]]
    end,
    { nargs = 0 }
)
