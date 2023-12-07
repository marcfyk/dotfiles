return {
  -- Themes
  "sainnhe/everforest",
  "projekt0n/github-nvim-theme",
  "rebelot/kanagawa.nvim",
  { "catppuccin/nvim",           name = "catppuccin", priority = 1000 },
  { "kepano/flexoki-neovim",     name = "flexoki" },
  { "NLKNguyen/papercolor-theme" },

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
      require("nvim-treesitter.configs").setup {
        ensure_installed = {
          "c",
          "cpp",
          "eex",
          "elixir",
          "go",
          "haskell",
          "heex",
          "java",
          "javascript",
          "lua",
          "ocaml",
          "python",
          "proto",
          "regex",
          "rust",
          "scala",
          "vim",
        },
        sync_install = false,
        auto_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        incremental_selection = {
          enable = true,
        },
      }
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
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",

  -- Debugger
  "mfussenegger/nvim-dap",
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap"
    }
  },

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
    config = true,
    keys = {
      { "<leader><tab>", "<cmd>NvimTreeToggle<CR>", desc = "Toggle Tree Explorer", }
    },
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
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

  -- Tree view for symbols
  {
    "simrat39/symbols-outline.nvim",
    config = true,
    keys = {
      { "<leader>so", "<cmd>SymbolsOutline<CR>", desc = "Toggle Symbols Outline" }
    }
  },

  {
    "HampusHauffman/block.nvim",
    config = true,
  },

  "edkolev/tmuxline.vim",

  -- Dashboard
  {
    "glepnir/dashboard-nvim",
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
}
