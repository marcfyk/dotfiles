require "nvim-tree".setup {}

require "which-key".register({
  ["<leader>ft"] = { "<cmd>NvimTreeToggle<CR>", "Toggle Tree Explorer" },
})
