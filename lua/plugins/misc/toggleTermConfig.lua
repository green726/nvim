require("toggleterm").setup{ 
    float_opts = {
    -- The border key is *almost* the same as 'nvim_open_win'
    -- see :h nvim_open_win for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    border = 'single',
    -- like `size`, width and height can be a number or function which is passed the current terminal
    -- width = <value>,
    -- height = <value>,
    -- winblend = 3,
  },}
local Terminal = require('toggleterm.terminal').Terminal


local gitui = Terminal:new({ cmd = "gitui"})
local neofetch = Terminal:new({ cmd = "neofetch", direction = "float", close_on_exit = false})
local bottom = Terminal:new({ cmd = "btm", direction = "float", close_on_exit = true})
local hollywood = Terminal:new({ cmd = "hollywood", direction = "float", close_on_exit = true})
local asciiquarium = Terminal:new({ cmd = "asciiquarium", direction = "float", close_on_exit = true})
local stackOverflow = Terminal:new({cmd = "so", direction = "float", close_on_exit = true})

local M = {}

M.gitUIToggle = function()
  gitui:toggle()
end
M.neofetchToggle = function()
  neofetch:toggle()
end
M.bottomToggle = function()
  bottom:toggle()
end
M.hollywoodToggle = function()
  hollywood:toggle()
end
M.asciiquariumToggle = function()
  asciiquarium:toggle()
end

M.stackOverflowToggle = function(opts)
    stackOverflow:toggle(opts)
end

M.speedreadToggle = function(args)
local filePath = vim.api.nvim_buf_get_name(0)
local speedread = Terminal:new({cmd = "speedread " .. filePath .. " -w " .. args, direction = "float", close_on_exit = true})
speedread:toggle()
end

return M
