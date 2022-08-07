local core = require('articblush.core')
local colors = core.get_colors()

local articblush = {}

articblush.normal = {
  a = { bg = colors.color4, fg = colors.background },
  b = { bg = colors.lighter, fg = colors.foreground },
  c = { bg = colors.statusline_bg, fg = colors.statusline_bg },
}

articblush.insert = {
  a = { bg = colors.color5, fg = colors.background },
  b = { bg = colors.lighter, fg = colors.foreground },
  c = { bg = colors.statusline_bg, fg = colors.statusline_bg },
}

articblush.command = {
  a = { bg = colors.color1, fg = colors.background },
  b = { bg = colors.lighter, fg = colors.foreground },
  c = { bg = colors.statusline_bg, fg = colors.statusline_bg },
}

articblush.visual = {
  a = { bg = colors.color6, fg = colors.background },
  b = { bg = colors.lighter, fg = colors.foreground },
  c = { bg = colors.statusline_bg, fg = colors.statusline_bg },
}

articblush.replace = {
  a = { bg = colors.color1, fg = colors.background },
  b = { bg = colors.lighter, fg = colors.foreground },
  c = { bg = colors.statusline_bg, fg = colors.statusline_bg },
}

articblush.inactive = {
  a = { bg = colors.background, fg = colors.color7 },
  b = { bg = colors.lighter, fg = colors.foreground },
  c = { bg = colors.statusline_bg, fg = colors.statusline_bg },
}

return articblush
