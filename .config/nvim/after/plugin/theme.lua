local function everforest()
  vim.g.everforest_diagnostic_text_highlight = 1
  vim.g.everforest_diagnostic_line_highlight = 1
  vim.g.everforest_diagnostic_virtual_text = "colored"
  vim.cmd("colorscheme everforest")
end

local function nightfox()
  require('nightfox').setup({
    options = {
      styles = {
        comments = "italic",
        keywords = "bold",
        types = "italic,bold",
      }
    }
  })
  vim.cmd("colorscheme carbonfox")
end

local function tokyonight()
  vim.cmd("colorscheme tokyonight")
end

everforest()
