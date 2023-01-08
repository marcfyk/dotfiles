local dashboard = require "dashboard"

dashboard.custom_header = {
  "NEOVIM"
}

dashboard.custom_center = {
  {
    icon = "➜ ",
    desc = "File Grep             ",
    action = "Telescope live_grep",
    shortcut = "LEADER f g",
  },
  {
    icon = "➜ ",
    desc = "Find File             ",
    action = "Telescope find_files",
    shortcut = "LEADER f f",
  },
  {
    icon = "➜ ",
    desc = "File Browser          ",
    action = "Telescope file_browser",
    shortcut = "LEADER f b",
  },
  {
    icon = "➜ ",
    desc = "File Tree Director    ",
    action = "NvimTreeToggle",
    shortcut = "LEADER f t",
  }
}
