local function set_gruvbox_theme()
  vim.o.background = "dark"
  vim.cmd"colorscheme gruvbox"
end

local function set_nightfox_theme()
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

local function set_tokyonight_theme()
  vim.cmd"colorscheme tokyonight"
end

local function set_github_theme()
  vim.cmd("colorscheme github_dark_default")
end

set_nightfox_theme()
