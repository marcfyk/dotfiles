local telescope = require"telescope"
telescope.setup{
  pickers = {
    find_files = {
      theme = "dropdown"
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
