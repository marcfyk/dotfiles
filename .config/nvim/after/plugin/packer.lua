require"packer".startup(function()
  -- Package Manager
  use "wbthomason/packer.nvim"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  -- LSP
  use "neovim/nvim-lspconfig"
  use "williamboman/mason.nvim"

  -- Display LSP info more clearly
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons"
  }

  -- Completion Engine
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"

  -- Snippet Engine
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"

  -- Startup Screen
  use "mhinz/vim-startify"

  -- Status Line
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  }

  -- Tree Explorer
  use {
    "kyazdani42/nvim-tree.lua",
    requires = {
      "kyazdani42/nvim-web-devicons",
    }
  }

  -- Telescope
  use {
    "nvim-telescope/telescope.nvim",
    requires = { {"nvim-lua/plenary.nvim"} }
  }
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
  use { "nvim-telescope/telescope-file-browser.nvim" }

  -- Comments
  use {
    "numToStr/Comment.nvim",
    config = function()
      require"Comment".setup()
    end
  }

  -- Terminal
  use {
    "akinsho/toggleterm.nvim",
    tag = '*',
    config = function()
      require("toggleterm").setup()
    end
  }

  -- Surrounding characters
  use "tpope/vim-surround"

  -- Git
  use "tpope/vim-fugitive"
  use "mhinz/vim-signify"

  -- Themes
  use "ellisonleao/gruvbox.nvim"
  use "EdenEast/nightfox.nvim"
  use "folke/tokyonight.nvim"
  use "projekt0n/github-nvim-theme"

end)
