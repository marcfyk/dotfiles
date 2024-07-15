local wezterm = require "wezterm"

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = "dayfox"
config.font = wezterm.font "CaskaydiaCove Nerd Font"

return config
