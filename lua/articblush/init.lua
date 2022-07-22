local M = {}
local core = require('articblush.core')
local highlights = require('articblush.highlights')

function M.setup (opts)
  if opts == nil then
    opts = {
      italics = {
        code = true,
        comments = false
      }
    }
  end
  -- disable bold
  vim.cmd [[ set t_md= ]]
  vim.opt.termguicolors = true

  local colors = core.get_colors() -- getting the right palette

  highlights.highlight_all(colors, opts)
end

return M
