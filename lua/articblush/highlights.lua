local M = {}
local config = require('articblush.config')

local function hi(...)
    vim.api.nvim_set_hl(0, ...)
end

function M.highlight_all(colors, opts)
  local base_highlights = config.highlights_base(colors)
  for group, properties in pairs(base_highlights) do
    hi(group, properties)
  end
  local ntree = opts.nvim_tree or { contrast = false }
  if ntree.contrast == true then
    hi('NvimTreeNormal', { bg = colors.contrast })
    hi('NvimTreeNormalNC', { bg = colors.contrast })
    hi('NvimTreeEndOfBuffer', { bg = colors.contrast, fg = colors.contrast })
    hi('NvimTreeEndOfBufferNC', { bg = colors.contrast, fg = colors.contrast })
    hi('NvimTreeVertSplit', { fg = colors.background, bg = colors.background })
  end
  if opts.italics.code == true then
    local tomkitalic = {
      'TSKeyword', 'TSConditional',
      'Keyword', 'TSKeywordFunction', 'Function',
      'Repeat', 'TSRepeat',
    }
    for _, item in ipairs(tomkitalic) do
      hi(item, { italic = true })
    end
  end
  if opts.italics.comments == true then
     local tomkitalic = {
       'TSComment', 'Comment'
     }
     for _, item in ipairs(tomkitalic) do
       hi(item, { italic = true, fg = colors.comments })
     end
  end
end

return M
