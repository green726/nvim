require('delaytrain').setup {
    delay_ms = 1000,      -- How long repeated usage of a key should be prevented
    grace_period = 8,     -- How many repeated keypresses are allowed
    keys = {              -- Which keys (in which modes) should be delayed
        ['n'] = { 'h', 'j', 'k', 'l', 'b', 'w', 'e'},
        -- ['v'] = { 'h', 'j', 'k', 'l', 'b', 'w'},
        ['nvi'] = { '<Left>', '<Down>', '<Up>', '<Right>' },
    },
    ignore_filetypes = {},     -- Example: set to {"help", "NvimTr*"} to
    -- disable the plugin for help and NvimTree
}
