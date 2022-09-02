local function set_gruvbox_theme()
  vim.opt.termguicolors = true
  vim.o.background = "dark"
  vim.cmd("colorscheme gruvbox")
end

local function set_nightfox_theme()
  vim.opt.termguicolors = true
  require"nightfox".setup({
    options = {
      styles = {
        comments = "italic",
        keywords = "bold",
        types = "italic,bold",
      }
    }
  })
  vim.cmd("colorscheme nordfox")
end

local function set_tokyonight_theme()
  vim.opt.termguicolors = true
  vim.cmd("colorscheme tokyonight")
end

set_nightfox_theme()
