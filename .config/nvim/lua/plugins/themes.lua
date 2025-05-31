local rosepine = {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      variant = "main",
      dark_variant = "main",
      styles = {
        transparency = false,
      }
    })
    vim.cmd("colorscheme rose-pine")
  end
}

local nightfox = {
  "EdenEast/nightfox.nvim",
  config = function()
    require("nightfox").setup({
      options = {
        transparent = false,
      },
    })
    vim.cmd("colorscheme dayfox")
  end
}

local everforest = {
  "sainnhe/everforest",
  config = function()
    vim.g.everforest_background = "medium"
    vim.g.everforest_enable_italic = true
    vim.g.everforest_transparent_background = 0
    vim.g.everforest_ui_contrast = "high"
    vim.g.everforest_diagnostic_text_highlight = 1
    vim.g.everforest_diagnostic_line_highlight = 1
    vim.g.everforest_diagnostic_virtual_text = "highlighted"
    vim.opt.background = "light"
    vim.cmd("colorscheme everforest")
  end
}

local gruvbox_material = {
  "sainnhe/gruvbox-material",
  config = function()
    vim.g.gruvbox_material_background = "hard"
    vim.g.gruvbox_material_foreground = "original"
    vim.g.gruvbox_material_enable_bold = 1
    vim.g.gruvbox_material_enable_italic = 1
    vim.g.gruvbox_material_diagnostic_text_highlight = 1
    vim.g.gruvbox_material_diagnostic_line_highlight = 1
    vim.g.gruvbox_material_diagnostic_virtual_text = "highlighted"
    vim.g.gruvbox_material_inlay_hints_background = "dimmed"
    vim.g.gruvbox_material_statusline_style = "original"
    vim.cmd("colorscheme gruvbox-material")
  end
}

local gruvbox = {
  "ellisonleao/gruvbox.nvim",
  config = function()
    require("gruvbox").setup({
      contrast = "hard"
    })
    vim.cmd("colorscheme gruvbox")
  end
}

local catppuccin = {
  "catppuccin/nvim",
  name = "catppuccin",
  config = function()
    require("catppuccin").setup({
      background = {
        light = "latte",
        dark = "macchiato",
      },
      transparent_background = false,
    })
    vim.cmd("colorscheme catppuccin")
  end
}

local kanagawa = {
  "rebelot/kanagawa.nvim",
  config = function()
    require("kanagawa").setup({
      transparent = false,
      background = {
        dark = "dragon",
        light = "lotus",
      },
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none"
            }
          }
        }
      },
      overrides = function(colors)
        local theme = colors.theme

        local makeDiagnosticColor = function(color)
          local c = require("kanagawa.lib.color")
          return { fg = color, bg = c(color):blend(theme.ui.bg, 0.95):to_hex() }
        end

        return {
          NormalFloat                = { bg = "none" },
          FloatBorder                = { bg = "none" },
          FloatTitle                 = { bg = "none" },

          -- Save an hlgroup with dark background and dimmed foreground
          -- so that you can use it where your still want darker windows.
          -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
          NormalDark                 = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

          -- Popular plugins that open floats will link to NormalFloat by default;
          -- set their background accordingly if you wish to keep them dark and borderless
          LazyNormal                 = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
          MasonNormal                = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

          TelescopeTitle             = { fg = theme.ui.special, bold = true },
          TelescopePromptNormal      = { bg = theme.ui.bg_p1 },
          TelescopePromptBorder      = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
          TelescopeResultsNormal     = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
          TelescopeResultsBorder     = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
          TelescopePreviewNormal     = { bg = theme.ui.bg_dim },
          TelescopePreviewBorder     = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },

          Pmenu                      = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
          PmenuSel                   = { fg = "NONE", bg = theme.ui.bg_p2 },
          PmenuSbar                  = { bg = theme.ui.bg_m1 },
          PmenuThumb                 = { bg = theme.ui.bg_p2 },

          DiagnosticVirtualTextHint  = makeDiagnosticColor(theme.diag.hint),
          DiagnosticVirtualTextInfo  = makeDiagnosticColor(theme.diag.info),
          DiagnosticVirtualTextWarn  = makeDiagnosticColor(theme.diag.warning),
          DiagnosticVirtualTextError = makeDiagnosticColor(theme.diag.error),

        }
      end,
    })
    vim.cmd("colorscheme kanagawa")
  end
}

local zenbones = {
  "zenbones-theme/zenbones.nvim",
  -- Optionally install Lush. Allows for more configuration or extending the colorscheme
  -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
  -- In Vim, compat mode is turned on as Lush only works in Neovim.
  dependencies = "rktjmp/lush.nvim",
  config = function()
    vim.cmd("colorscheme zenbones")
  end
}

local tokyonight = {
  "folke/tokyonight.nvim",
  config = function()
    require("tokyonight").setup({
      style = "day",
      on_highlights = function(hl, c)
        local prompt = "#2d3149"
        hl.TelescopeNormal = {
          bg = c.bg_dark,
          fg = c.fg_dark,
        }
        hl.TelescopeBorder = {
          bg = c.bg_dark,
          fg = c.bg_dark,
        }
        hl.TelescopePromptNormal = {
          bg = prompt,
        }
        hl.TelescopePromptBorder = {
          bg = prompt,
          fg = prompt,
        }
        hl.TelescopePromptTitle = {
          bg = prompt,
          fg = prompt,
        }
        hl.TelescopePreviewTitle = {
          bg = c.bg_dark,
          fg = c.bg_dark,
        }
        hl.TelescopeResultsTitle = {
          bg = c.bg_dark,
          fg = c.bg_dark,
        }
      end,
    })
    vim.cmd("colorscheme tokyonight")
  end
}

local cyberdream = {
  "scottmckendry/cyberdream.nvim",
  config = function()
    require("cyberdream").setup({
      italic_comments = true,
      borderless_pickers = true,
    })
    vim.cmd("colorscheme cyberdream")
  end
}


return {
  -- rosepine,
  -- nightfox,
  -- everforest,
  -- gruvbox_material,
  -- gruvbox,
  -- catppuccin,
  -- kanagawa,
  -- zenbones,
  tokyonight,
  -- cyberdream,
}
