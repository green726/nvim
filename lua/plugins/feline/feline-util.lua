local M = { vi = {} }

M.vi.text = {
  n = "NORMAL",
  no = "NORMAL",
  i = "INSERT",
  v = "VISUAL",
  V = "V-LINE",
  ["␖"] = "V-BLOCK",
  c = "COMMAND",
  cv = "COMMAND",
  ce = "COMMAND",
  R = "REPLACE",
  Rv = "REPLACE",
  s = "SELECT",
  S = "SELECT",
  ["␓"] = "SELECT",
  t = "TERMINAL",
}

M.vi.colors = {
  n = "RvCyan",
  no = "RvCyan",
  i = "SLStatus",
  v = "RvMagenta",
  V = "RvMagenta",
  ["␖"] = "RvMagenta",
  R = "RvRed",
  Rv = "RvRed",
  r = "RvBlue",
  rm = "RvBlue",
  s = "RvMagenta",
  S = "RvMagenta",
  ["␓"] = "FelnMagenta",
  c = "RvYellow",
  ["!"] = "RvBlue",
  t = "RvBlue",
}

M.vi.sep = {
  n = "Cyan",
  no = "Cyan",
  i = "SLStatusBg",
  v = "Magenta",
  V = "Magenta",
  ["␖"] = "Magenta",
  R = "Red",
  Rv = "Red",
  r = "Blue",
  rm = "Blue",
  s = "Magenta",
  S = "Magenta",
  ["␓"] = "FelnMagenta",
  c = "Yellow",
  ["!"] = "Blue",
  t = "Blue",
}

M.icons = {
  locker = "", -- #f023
  page = "☰", -- 2630
  line_number = "", -- e0a1
  connected = "", -- f817
  dos = "", -- e70f
  unix = "", -- f17c
  mac = "", -- f179
  mathematical_L = "𝑳",
  vertical_bar = "┃",
  vertical_bar_thin = "│",
  left = "",
  right = "",
  block = "█",
  left_filled = "",
  right_filled = "",
  slant_left = "",
  slant_left_thin = "",
  slant_right = "",
  slant_right_thin = "",
  slant_left_2 = "",
  slant_left_2_thin = "",
  slant_right_2 = "",
  slant_right_2_thin = "",
  left_rounded = "",
  left_rounded_thin = "",
  right_rounded = "",
  right_rounded_thin = "",
  circle = "●",
}

return M
