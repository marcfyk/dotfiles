local telescope = require "telescope"
telescope.setup {}
telescope.load_extension "fzf"
telescope.load_extension "file_browser"

require "which-key".register({
  ["<leader>ff"] = { "<cmd> Telescope find_files<CR>", "Find File" },
  ["<leader>fh"] = { "<cmd> Telescope find_files hidden=true<CR>", "Find File" },
  ["<leader>fb"] = { "<cmd> Telescope file_browser<CR>", "File Browser" },
  ["<leader>fg"] = { "<cmd> Telescope live_grep<CR>", "Live Grep" },
})
