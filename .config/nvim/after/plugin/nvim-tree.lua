require"nvim-tree".setup{}

local opts = {
  noremap = true
}
vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>", opts)
