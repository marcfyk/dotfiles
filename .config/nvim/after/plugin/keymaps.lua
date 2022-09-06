local function set_keymap(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- Telescope
set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
set_keymap("n", "<leader>lg", "<cmd>Telescope live_grep<CR>")
set_keymap("n", "<leader>fb", "<cmd>Telescope file_browser<CR>")

-- NvimTree
set_keymap("n", "<leader>t", "<cmd>NvimTreeToggle<CR>")

-- Trouble
set_keymap("n", "<leader>d", "<cmd>TroubleToggle<CR>")
