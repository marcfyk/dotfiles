local telescope = require"telescope"
telescope.setup{
  pickers = {
    find_files = {
      theme = "ivy"
    },
    live_grep = {
      theme = "ivy"
    },
    file_browser = {
      theme = "ivy"
    },
  },
}
telescope.load_extension"fzf"
telescope.load_extension"file_browser"
