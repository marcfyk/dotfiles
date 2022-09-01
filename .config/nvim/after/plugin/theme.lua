vim.opt.termguicolors = true
vim.cmd("colorscheme nightfox")

require"nightfox".setup({
  options = {
    styles = {
      comments = "italic",
      keywords = "bold",
      types = "italic,bold",
    }
  }
})
