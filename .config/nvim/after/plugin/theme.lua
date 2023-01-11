vim.opt.termguicolors = true

require"nightfox".setup{
  options = {
    styles = {
      comments = "italic",
      keywords = "bold",
      types = "bold",
    }
  }
}

vim.cmd("colorscheme dawnfox")
