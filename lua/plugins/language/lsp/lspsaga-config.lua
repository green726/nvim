local saga = require('lspsaga')

saga.init_lsp_saga({

code_action_lightbulb = {
    enable = true,
    enable_in_insert = true,
    cache_code_action = false,
    sign = true,
    update_time = 0,
    sign_priority = 20,
    virtual_text = false,
},
})


