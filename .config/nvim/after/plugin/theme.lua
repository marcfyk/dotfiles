local function everforest()
  vim.g.everforest_diagnostic_text_highlight = 1
  vim.g.everforest_diagnostic_line_highlight = 1
  vim.g.everforest_diagnostic_virtual_text = "highlighted"
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
  vim.cmd("colorscheme tokyonight-day")
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

local function moonfly()
  vim.cmd("colorscheme moonfly")
end

tokyonight()
