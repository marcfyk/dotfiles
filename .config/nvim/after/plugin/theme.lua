vim.opt.termguicolors = true

require"nightfox".setup{
  options = {
    styles = {
      keywords = "bold",
      types = "bold",
    }
  }
}

vim.cmd("colorscheme dawnfox")
