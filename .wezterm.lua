local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("JetbrainsMono Nerd Font")
config.font_size = 11

config.enable_tab_bar = false
config.window_decorations = "NONE"
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}
config.window_background_opacity = 0.9

config.enable_wayland = true
config.color_scheme = "Catppuccin Mocha"
return config
