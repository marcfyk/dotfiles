local wezterm = require "wezterm"

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = "rose-pine-dawn"
config.font = wezterm.font "ZedMono Nerd Font"

return config
