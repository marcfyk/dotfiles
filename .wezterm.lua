local wezterm = require "wezterm"

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = "Catppuccin Latte"
config.font = wezterm.font "Jetbrains Mono"

return config
