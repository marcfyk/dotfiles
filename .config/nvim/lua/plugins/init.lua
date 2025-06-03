return {
  -- Key binds
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "helix",
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      }
    },
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      require "which-key".add({
        { "<leader>ce", "<cmd>TSContextEnable<CR>",  desc = "TSContextEnable" },
        { "<leader>cd", "<cmd>TSContextDisable<CR>", desc = "TSContextDisable" },
        { "<leader>ct", "<cmd>TSContextToggle<CR>",  desc = "TSContextToggle" },
      })
    end
  },

  -- LSP
  "neovim/nvim-lspconfig",
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
    end
  },
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.black,
          null_ls.builtins.formatting.ocamlformat,
        }
      })
    end
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

  -- java
  "mfussenegger/nvim-jdtls",


  -- Status Line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      lazy = true,
    },
    opts = {
      options = {
        theme = "auto",
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' }
      }
    }
  },

  { "mbbill/undotree" },

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
      telescope.load_extension "fzf"
      telescope.load_extension "file_browser"
      require "which-key".add({
        { "<leader>ff", "<cmd>Telescope find_files<CR>",             desc = "Find File" },
        { "<leader>fd", "<cmd>Telescope find_files hidden=true<CR>", desc = "Find File" },
        { "<leader>fg", "<cmd>Telescope live_grep<CR>",              desc = "Live Grep" },
        { "<leader>ft", "<cmd>Telescope diagnostics<CR>",            desc = "Diagnostics" },
        { "<leader>fh", "<cmd>Telescope help_tags<CR>",              desc = "Help tags" },
        { "<leader>fb", "<cmd>Telescope file_browser<CR>",           desc = "File Browser" },
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

  -- symbol outline
  {
    "hedyhli/outline.nvim",
    config = function()
      -- Example mapping to toggle outline
      vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>",
        { desc = "Toggle Outline" })

      require("outline").setup {
        -- Your setup opts here (leave empty to use defaults)
      }
    end,
  },

  -- Git
  "tpope/vim-fugitive",
  {
    "lewis6991/gitsigns.nvim",
    config = true,
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",  -- required
      "sindrets/diffview.nvim", -- optional - Diff integration
      "nvim-telescope/telescope.nvim",
    },
    config = true
  },
  {
    "akinsho/git-conflict.nvim",
    version = "*",
    config = true,
  },

  -- REST
  {
    'mistweaverco/kulala.nvim',
    config = function()
      require('kulala').setup()
    end
  },

  -- neovim API
  { "folke/neodev.nvim", opts = {} },

  -- bookmarks
  {
    "otavioschwanck/arrow.nvim",
    opts = {
      show_icons = true,
      leader_key = ";",        -- Recommended to be a single key
      buffer_leader_key = "m", -- Per Buffer Mappings
    },
  },

  -- markdown
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },

  -- database
  { "tpope/vim-dadbod" },
  { "kristijanhusak/vim-dadbod-completion" },
  { "kristijanhusak/vim-dadbod-ui" },
}
