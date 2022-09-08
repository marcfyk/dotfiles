local M = {}

function M.set_theme()
  vim.o.background = "dark"
  vim.cmd"colorscheme gruvbox"
end

return M
