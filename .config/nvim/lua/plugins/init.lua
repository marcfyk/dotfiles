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
        ensure_installed = {},
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
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
    "rest-nvim/rest.nvim",
    dependencies = { { "nvim-lua/plenary.nvim" } },
    ft = 'http',
    config = function()
      require("rest-nvim").setup({
        -- Open request results in a horizontal split
        result_split_horizontal = false,
        -- Keep the http file buffer above|left when split horizontal|vertical
        result_split_in_place = false,
        -- stay in current windows (.http file) or change to results window (default)
        stay_in_current_window_after_split = false,
        -- Skip SSL verification, useful for unknown certificates
        skip_ssl_verification = false,
        -- Encode URL before making request
        encode_url = true,
        -- Highlight request on run
        highlight = {
          enabled = true,
          timeout = 150,
        },
        result = {
          -- toggle showing URL, HTTP info, headers at top the of result window
          show_url = true,
          -- show the generated curl command in case you want to launch
          -- the same request via the terminal (can be verbose)
          show_curl_command = false,
          show_http_info = true,
          show_headers = true,
          -- table of curl `--write-out` variables or false if disabled
          -- for more granular control see Statistics Spec
          show_statistics = false,
          -- executables or functions for formatting response body [optional]
          -- set them to false if you want to disable them
          formatters = {
            json = "jq",
            html = function(body)
              return vim.fn.system({ "tidy", "-i", "-q", "-" }, body)
            end
          },
        },
        -- Jump to request line on run
        jump_to_request = false,
        env_file = '.env',
        -- for telescope select
        env_pattern = "\\.env$",
        env_edit_command = "tabedit",
        custom_dynamic_variables = {},
        yank_dry_run = true,
        search_back = true,
      })
    end
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
