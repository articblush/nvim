local M = {}

local function get_articblush()
  return {
    background = "#040c16",
    contrast = '#020a14',
    statusline_bg = '#09111b',
    lighter = '#09111b',
    foreground = "#cce9ea",
    cursorline = '#15171a',
    comments = '#323949',
    cursor = "#d9d7d6",
    color0 = "#323949",
    color1 = "#E6676B",
    color2 = "#A2E4B8",
    color3 = "#e2d06a",
    color4 = "#92bbed",
    color5 = "#ecc6e8",
    color6 = "#80ffff",
    color7 = "#d2daf4",
    color8 = "#3d3e51",
    color9 = "#FF7377",
    color10 = "#AAF0C1",
    color11 = "#eadd94",
    color12 = "#bdd6f4",
    color13 = "#f9ecf7",
    color14 = "#b3ffff",
    color15 = "#edf7f8",
  }
end

-- should give the light palette (but don't light support right now)
local function get_light_articblush()
  return get_articblush()
end

function M.get_colors()
  if vim.o.background == 'dark' then
    return get_articblush()
  else
    return get_light_articblush()
  end
end

return M
