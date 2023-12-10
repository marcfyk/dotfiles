local wezterm = require "wezterm"

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = "flexoki-dark"
config.font = wezterm.font "BlexMono Nerd Font"

return config
