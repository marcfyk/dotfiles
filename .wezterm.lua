local wezterm = require "wezterm"

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = "rose-pine"
config.font = wezterm.font "VictorMono Nerd Font"

return config
