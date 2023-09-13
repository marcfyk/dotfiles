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
  vim.cmd("colorscheme github_dark")
end

github()
