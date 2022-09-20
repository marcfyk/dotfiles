require"nvim-tree".setup{}

local opts = {
  noremap = true
}
vim.keymap.set("n", "<leader>ft", "<cmd>NvimTreeToggle<CR>", opts)
