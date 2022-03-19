require("toggleterm").setup{}
local Terminal  = require('toggleterm.terminal').Terminal
local gitui = Terminal:new({ cmd = "gitui", hidden = true })

local gitUIToggle = function()
  gitui:toggle()
end



return gitUIToggle
