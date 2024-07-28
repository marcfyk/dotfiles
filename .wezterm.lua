local wezterm = require "wezterm"

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = "nordfox"
config.font = wezterm.font "CaskaydiaCove Nerd Font"
config.font_size = 16

return config
