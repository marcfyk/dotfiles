return {
  -- Themes
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      vim.cmd("colorscheme rose-pine-dawn")
    end
  },

  -- Key binds
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        auto_install = true,
        ensure_installed = {},
        highlight = { enable = true },
        ignore_install = {},
        indent = { enable = true },
        sync_install = false,
      })
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      local whichkey = require "which-key"
      whichkey.register({
        ["<leader>ce"] = { "<cmd>TSContextEnable<CR>", "TSContextEnable" },
        ["<leader>cd"] = { "<cmd>TSContextDisable<CR>", "TSContextDisable" },
        ["<leader>ct"] = { "<cmd>TSContextToggle<CR>", "TSContextToggle" },
      })
    end
  },

  -- LSP
  "neovim/nvim-lspconfig",
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    },
  },
  {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = true,
    keys = {
      { "<leader>t", "<cmd>TroubleToggle<CR>", "Toggle Errors" },
    }
  },

  -- Completion Engine
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",

  -- Snippet Engine
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp"
  },
  "saadparwaiz1/cmp_luasnip",

  -- Buffer Line
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local s = " "
          for e, n in pairs(diagnostics_dict) do
            local sym = e == "error" and " "
                or (e == "warning" and " " or "")
            s = s .. n .. sym
          end
          return s
        end,
      },
    },
  },

  -- Status Line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      lazy = true,
    },
    opts = {
      options = {
        theme = "auto"
      }
    }
  },

  -- Tree Explorer
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
      local nvimtree = require "nvim-tree"
      nvimtree.setup {
        filters = {
          git_ignored = false,
          dotfiles = false,
        }
      }
    end,
    keys = {
      { "<leader><tab>", "<cmd>NvimTreeToggle<CR>", desc = "Toggle Tree Explorer", }
    },
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local telescope = require "telescope"
      telescope.setup {
        pickers = {
          find_files = {
            theme = "ivy",
          },
          live_grep = {
            theme = "ivy",
          },
          diagnostics = {
            theme = "ivy",
          },
          help_tags = {
            theme = "ivy",
          },
        },
        extensions = {
          file_browser = {
            theme = "ivy",
          }
        }
      }
      telescope.load_extension "fzf"
      telescope.load_extension "file_browser"
      require "which-key".register({
        ["<leader>ff"] = { "<cmd>Telescope find_files<CR>", "Find File" },
        ["<leader>fd"] = { "<cmd>Telescope find_files hidden=true<CR>", "Find File" },
        ["<leader>fg"] = { "<cmd>Telescope live_grep<CR>", "Live Grep" },
        ["<leader>ft"] = { "<cmd>Telescope diagnostics<CR>", "Diagnostics" },
        ["<leader>fh"] = { "<cmd>Telescope help_tags<CR>", "Help tags" },
        ["<leader>fb"] = { "<cmd>Telescope file_browser<CR>", "File Browser" },
      })
    end
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build =
    "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
  },

  -- Git
  "tpope/vim-fugitive",
  {
    "lewis6991/gitsigns.nvim",
    config = true,
  },
  {
    "akinsho/git-conflict.nvim",
    version = "*",
    config = true,
  },

  -- Dashboard
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup {
        theme = "hyper",
        config = {
          week_header = {
            enable = true,
          },
          shortcut = {
            {
              desc = "Checkhealth",
              group = "DiagnosticHint",
              action = "checkhealth",
              key = "c",
            },
            {
              desc = "Update",
              group = "@property",
              action = "Lazy update",
              key = "u"
            },
            {
              desc = "Files",
              group = "Label",
              action = "Telescope find_files",
              key = "f",
            },
            {
              desc = "Grep",
              group = "Label",
              action = "Telescope live_grep",
              key = "g",
            },
          }
        },
      }
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } }
  },

  -- HTTP
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
    opts = {
      rocks = { "lua-curl", "nvim-nio", "mimetypes", "xml2lua" }
    }
  },
  {
    "rest-nvim/rest.nvim",
    ft = "http",
    dependencies = { "luarocks.nvim" },
    config = function()
      require("rest-nvim").setup {}
    end,
  },

  -- DB
  "tpope/vim-dadbod",
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
      { 'tpope/vim-dadbod',                     lazy = true },
      { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
    },
    cmd = {
      'DBUI',
      'DBUIToggle',
      'DBUIAddConnection',
      'DBUIFindBuffer',
    },
    init = function()
      -- Your DBUI configuration
      vim.g.db_ui_use_nerd_fonts = 1
    end,
  },

  -- neovim API
  { "folke/neodev.nvim", opts = {} }
}
