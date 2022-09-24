local telescope = require"telescope"
telescope.setup{
  pickers = {
    find_files = {
      theme = "dropdown"
    },
    live_grep = {
      theme = "dropdown"
    },
    file_browser = {
      theme = "dropdown"
    },
  },
}
telescope.load_extension"fzf"
telescope.load_extension"file_browser"

local opts = {
  noremap = true
}

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser<CR>", opts)
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
