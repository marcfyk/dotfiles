require"trouble".setup{}

require"which-key".register({
  ["<leader>t"] = { "<cmd>TroubleToggle<CR>", "Toggle Errors" },
})
