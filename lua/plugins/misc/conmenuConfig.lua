    function AlwaysShow()
        -- Check if in the right folder, or the path is right, or whatever...
        return true
    end
      local options = {
        onlyTypes = { 'typescript', 'typescriptreact' },
        -- onlyBufferPaths = { path1, path2 },
        -- onlyWorkingDirectories = { path3, path4 },
        filter = 'AlwaysShow',
      }
      local fuzzyCurrentWord = {'Telescope grep-string', ":lua require'telescope.builtin'.grep_string{}"}
      local bookmarkBrowse = {'Browse bookmarks', ":lua require('browse').browse({ bookmarks = {'https://www.google.com/'}})"}
      local inputBrowse = {'Search by input', ':lua require("browse").input_search()'}
      local browseNvim = {'Browse.nvim', {bookmarkBrowse, inputBrowse}}
      local winShift = {'Window rearrange', ':WinShift <CR>'}
      --lua :lua require("lua.plugins.toggleTermConfig")()
      local openGitUI = {'GitUI', ':lua dofile("C:/Users/mguin/AppData/Local/nvim/lua/plugins/toggleTermConfig.lua")()'}
    --   local nestedMenu = {name, {menuItem, menuItem}, options}
    --   local divider = {'──────────────────────────', nil, options}
      
    vim.g['conmenu#default_menu'] = {fuzzyCurrentWord, browseNvim, winShift, openGitUI}--, divider, menuItem, nestedMenu }
