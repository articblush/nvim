local M = {}

local function get_articblush()
  return {
    background = "#0b2442",
    contrast = '#080a0d',
    statusline_bg = '#101215',
    lighter = '#15171a',
    foreground = "#d2daf4",
    cursorline = '#15171a',
    comments = '#263439',
    cursor = "#d2daf4",
    color0 = "#17252A",
    color1 = "#E6676B",
    color2 = "#A2E4B8",
    color3 = "#e2d06a",
    color4 = "#5966f2",
    color5 = "#ecc6e8",
    color6 = "#80ffff",
    color7 = "#d2daf4",
    color8 = "#263439",
    color9 = "#FF7377",
    color10 = "#AAF0C1",
    color11 = "#eadd94",
    color12 = "#8992f6",
    color13 = "#f9ecf7",
    color14 = "#b3ffff",
    color15 = "#d2daf4",
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
