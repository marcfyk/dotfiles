local wezterm = require "wezterm"

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = "tokyonight_day"
config.font = wezterm.font "FantasqueSansM Nerd Font"
config.font_size = 16
config.window_background_opacity = 1.0
config.macos_window_background_blur = 0

return config
