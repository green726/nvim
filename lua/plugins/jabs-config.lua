require 'jabs'.setup {
    position = 'center',
    border = 'solid',
    width = 40,  -- default 50
    height = 10, -- default 10

    preview = {
        border = 'solid'
    },

    highlight = {
        current = "StatusLine",  -- default StatusLine
        hidden = "ModeMsg",      -- default ModeMsg
        split = "StatusLine",    -- default StatusLine
        alternate = "WarningMsg" -- default WarningMsg
    },

    symbols = {
        current = "󰄾",
        split = "",
        alternate = "󰉇",
        hidden = "󰽘",
        locked = "󰌾",
        ro = "󰈈",
        edited = "󰏫",
        terminal = "",
        default_file = "",
        terminal_symbol = ""
    }

}
