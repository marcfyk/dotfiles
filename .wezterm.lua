local wezterm = require "wezterm"

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = "Kanagawa Dragon (Gogh)"
config.font = wezterm.font "ZedMono Nerd Font"
config.font_size = 16
config.window_background_opacity = 0.8
config.macos_window_background_blur = 20

return config
