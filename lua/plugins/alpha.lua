local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
	[[  _____                      ___________   ____ ]],
	[[ |  __ \                    |___  / __  \ / ___| ]],
	[[ | |  \/_ __ ___  ___ _ __     / /`' / /'/ /___  ]],
	[[ | | __| '__/ _ \/ _ \ '_ \   / /   / /  | ___ \ ]],
	[[ | |_\ \ | |  __/  __/ | | |./ /  ./ /___| \_/ | ]],
	[[  \____/_|  \___|\___|_| |_|\_/   \_____/\_____/ ]],
}

vim.cmd([[
    function NewFile()
        :e .
        call feedkeys("a")
    endfunction

    function Startup()
        :echo "Hello There!"
    endfunction
]])

dashboard.section.buttons.val = {
	dashboard.button("o", " Open File Tree", ":e . <CR>"),
	dashboard.button("n", "ﱐ New file", ":call NewFile() <CR>"),
	-- dashboard.button( "f", " New Folder", ":call NewFile() <CR>"),
	dashboard.button("s", "漣Edit NVIM Config", ":e C:\\Users\\mguin\\AppData\\Local\\nvim\\<CR>"),
	dashboard.button("q", " Quit NVIM", ":qa <CR>"),
	dashboard.button("d", "累Paq Sync", ":PaqSync <CR>"),
}

dashboard.config.opts.noautocmd = true

vim.cmd([[autocmd User AlphaReady call Startup()]])

alpha.setup(dashboard.config)
