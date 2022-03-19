-- indent-blankline character.

vim.cmd("highlight IndentBlanklineContextChar guifg=#000000 gui=nocombine")
vim.cmd("highlight IndentBlanklineContextStart guisp=#000000 gui=underline")

local indent_blankline_styles = {
    "│",
    "▏",
    "¦",
    "┆",
    "│",
    "⎸",
    "|",
}

vim.g.indent_blankline_char = indent_blankline_styles[1]

-- Disable indent-blankline on these pages.
vim.g.indent_blankline_filetype_exclude = {
  "help",
  "terminal",
  "dashboard",
  "packer",
  "lsp-installer",
  "lspinfo",
  "vista_kind",
  "alpha"
}
vim.g.indent_blankline_buftype_exclude = { "terminal" }

vim.g.indent_blankline_use_treesitter = true
vim.g.indent_blankline_show_trailing_blankline_indent = true
vim.g.indent_blankline_show_first_indent_level = true
-- vim.g.indent_blankline_context_char = indent_blankline_styles[1]
vim.cmd("autocmd CursorMoved * IndentBlanklineRefresh")


require("indent_blankline").setup {
    --show_current_context = true,
    --show_current_context_start = true,
}
