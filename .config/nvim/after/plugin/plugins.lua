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
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup{}
    end
  }

  -- Autocomplete
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
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
    },
    config = function ()
      require"nvim-tree".setup{}
    end
  }

  -- Telescope
  use {
    "nvim-telescope/telescope.nvim",
    requires = { {"nvim-lua/plenary.nvim"} }
  }
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }

  -- Git
  use "tpope/vim-fugitive"
  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require"gitsigns".setup{}
    end
  }

  -- Themes
  use { "ellisonleao/gruvbox.nvim" }
  use "EdenEast/nightfox.nvim"

end)
