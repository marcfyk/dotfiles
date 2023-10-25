local function everforest()
  vim.g.everforest_diagnostic_text_highlight = 1
  vim.g.everforest_diagnostic_line_highlight = 1
  vim.g.everforest_diagnostic_virtual_text = "highlighted"
  vim.cmd("colorscheme everforest")
end

local function github()
  require("github-theme").setup({
    options = {
      styles = {
        comments = "italic",
        keywords = "bold",
        types = "italic,bold",
      }
    }
  })
  vim.cmd("colorscheme github_dark_high_contrast")
end

local function kanagawa()
  require("kanagawa").setup({
    theme = "wave",
    background = {
      dark = "wave",
      light = "lotus",
    }
  })
  vim.cmd("colorscheme kanagawa")
end

local function catppuccin()
  vim.cmd("colorscheme catppuccin-mocha")
end

catppuccin()
