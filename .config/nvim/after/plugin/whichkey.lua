local wk = require"which-key"

wk.register({
  ["<leader>ff"] = { "<cmd> Telescope find_files<CR>", "Find File" },
  ["<leader>fb"] = { "<cmd> Telescope file_browser<CR>", "File Browser" },
  ["<leader>fg"] = { "<cmd> Telescope live_grep<CR>", "Live Grep"},
  ["<leader>ft"] = { "<cmd>NvimTreeToggle<CR>", "Toggle Tree Explorer" },
  ["<leader>sh"] = { "<cmd>FTermToggle<CR>", "Toggle Shell" },
  ["<leader>d"] = { "<cmd>TroubleToggle<CR>", "Toggle Errors" },
})
