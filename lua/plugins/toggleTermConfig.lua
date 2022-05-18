require("toggleterm").setup{}
local Terminal = require('toggleterm.terminal').Terminal


local gitui = Terminal:new({ cmd = "gitui"})
local neofetch = Terminal:new({ cmd = "neofetch", direction = "float", close_on_exit = false})
local bottom = Terminal:new({ cmd = "btm", direction = "float", close_on_exit = true})
local hollywood = Terminal:new({ cmd = "hollywood", direction = "float", close_on_exit = true})
local asciiquarium = Terminal:new({ cmd = "asciiquarium", direction = "float", close_on_exit = true})



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
M.speedreadToggle = function(args)
local filePath = vim.api.nvim_buf_get_name(0)
local speedread = Terminal:new({cmd = "speedread " .. filePath .. " -w " .. args, direction = "float", close_on_exit = true})
speedread:toggle()
end

return M
