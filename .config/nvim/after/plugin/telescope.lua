local telescope = require "telescope"
telescope.setup {}
telescope.load_extension "fzf"
telescope.load_extension "file_browser"

require "which-key".register({
  ["<leader>ff"] = { "<cmd> Telescope find_files<CR>", "Find File" },
  ["<leader>fd"] = { "<cmd> Telescope find_files hidden=true<CR>", "Find File" },
  ["<leader>fg"] = { "<cmd> Telescope live_grep<CR>", "Live Grep" },
  ["<leader>ft"] = { "<cmd> Telescope diagnostics<CR>", "Diagnostics"},
  ["<leader>fh"] = { "<cmd> Telescope help_tags<CR>", "Help tags" },
  ["<leader>fb"] = { "<cmd> Telescope file_browser<CR>", "File Browser" },
})
