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
  local fuzzyCurrentWord = {'Telescope grep-string', ":lua require'telescope.builtin'.grep_string{}", options}
  local bookmarkBrowse = {'Browse bookmarks', ':lua require("browse").open_bookmarks({require(bookmarks)})', options}
  local inputBrowse = {'Search by input', ':lua require("browse").input_search()', options}
  local browseNvim = {'Browse.nvim', {bookmarkBrowse, inputBrowse}, options}
--   local nestedMenu = {name, {menuItem, menuItem}, options}
--   local divider = {'──────────────────────────', nil, options}
  
vim.g['conmenu#default_menu'] = {fuzzyCurrentWord, browseNvim}--, divider, menuItem, nestedMenu }