local M = {}

function M.set_theme()
  require"nightfox".setup({
    options = {
      styles = {
        comments = "italic",
        keywords = "bold",
        types = "italic,bold",
      }
    }
  })
  vim.cmd"colorscheme nordfox"
end

return M
