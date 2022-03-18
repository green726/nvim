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
  local fuzzyCurrentWord = {'Telescope grep-string', ":lua require'telescope.builtin'.grep_string{}"}--, options}
--   local nestedMenu = {name, {menuItem, menuItem}, options}
--   local divider = {'──────────────────────────', nil, options}
  
vim.g['conmenu#default_menu'] = {fuzzyCurrentWord}--, divider, menuItem, nestedMenu }