local wezterm = require "wezterm"

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = "Github Dark"
config.font = wezterm.font "Blex Mono"

return config
