require"trouble".setup{}

local opts = {
  noremap = true
}

vim.keymap.set("n", "<leader>d", "<cmd>TroubleToggle<CR>", opts)
