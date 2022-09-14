local fterm = require"FTerm"

vim.api.nvim_create_user_command("FTermOpen", fterm.open, { bang = true })
vim.api.nvim_create_user_command("FTermClose", fterm.close, { bang = true })
vim.api.nvim_create_user_command("FTermExit", fterm.exit, { bang = true })
vim.api.nvim_create_user_command("FTermToggle", fterm.toggle, { bang = true })

local opts = {
  noremap = true
}
vim.keymap.set("n", "<leader>sh", fterm.toggle, opts)
