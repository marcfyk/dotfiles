local wezterm = require "wezterm"

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = "Everforest Dark (Gogh)"
config.font = wezterm.font "Iosevka Term"

return config
