# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

# Wezterm config

`user/.wezterm.lua`
```lua
local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.default_prog = { "C:/Program Files/Git/bin/bash.exe", "-l" }

config.color_scheme = "Tokyo Night"
config.font = wezterm.font("0xProto Nerd Font")
config.font_size = 11.0

config.window_background_opacity = 0.92 -- transparency
config.macos_window_background_blur = 20 -- macOS only, ignore on Windows
config.window_padding = {
    left = 8,
    right = 8,
    top = 8,
    bottom = 8,
}
config.window_decorations = "TITLE | RESIZE | INTEGRATED_BUTTONS" -- removes title bar, keeps resize border

config.use_fancy_tab_bar = true -- retro/minimal style vs default
config.tab_bar_at_bottom = false -- move tab bar to bottom
config.hide_tab_bar_if_only_one_tab = false
config.default_cursor_style = "SteadyBar"

return config
```
