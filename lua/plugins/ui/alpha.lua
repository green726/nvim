local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = require("random-headers")

vim.cmd([[
    function NewFile()
        :e .
        call feedkeys("a")
    endfunction

    function Startup()
		:set splitright
    endfunction

	function RecentUsed()
		:MRU
		:wincmd k
		:q
	endfunction

    function OpenTree()
        :e .
        :lua require("plugins/ui/barbar-config").startup()
    endfunction
    ]])

local OS = vim.loop.os_uname().sysname
local pathToSettings = "C:\\Users\\mguin\\AppData\\Local\\nvim\\"

if OS == "Linux" then
    pathToSettings = "~/.config/nvim/"
end

dashboard.section.buttons.val = {
    dashboard.button("f", " Telescope Files ", ":Telescope find_files<CR>"),
	dashboard.button("o", " Open File Tree", ":e .<CR>"),
	dashboard.button("n", "ﱐ New file", ":call NewFile() <CR>"),
	-- dashboard.button( "f", " New Folder", ":call NewFile() <CR>"),
--	dashboard.button("u", "累Load Previous Session", ":SessionManager load_last_session<CR>"),
	dashboard.button("s", "漣Edit NVIM Config", ":e " .. pathToSettings .. "<CR>"),
	dashboard.button("d", " Paq Sync", ":PaqSync <CR>"),
	dashboard.button("q", " Quit NVIM", ":qa <CR>"),
}

dashboard.config.opts.noautocmd = true

vim.cmd([[autocmd User AlphaReady call Startup()]])

alpha.setup(dashboard.config)
