-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hol the configuration.
local config = wezterm.config_builder()

-- Font configuration
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 16

-- Disable tab bar
config.enable_tab_bar = false

-- Color scheme
-- name: Flexoki (Dark)
-- author: Kepano
-- license: MIT
-- upstream: https://stephango.com/flexoki
-- blurb: An inky color scheme for prose and code[colors]
config.colors = {
    ansi = {
        "#100F0F", -- Black
        "#AF3029", -- Red
        "#66800B", -- Green
        "#AD8301", -- Yellow
        "#205EA6", -- Blue
        "#5E409D", -- Purple
        "#24837B", -- Cyan
        "#CECDC3", -- White
    },
    brights = {
        "#575653", -- Black
        "#D14D41", -- Red
        "#879A39", -- Green
        "#D0A215", -- Yellow
        "#4385BE", -- Blue
        "#8B7EC8", -- Purple
        "#3AA99F", -- Cyan
        "#FFFCF0", -- White
    },
    foreground = "#CECDC3",
    background = "#100F0F",
    cursor_bg = "#CECDC3",
    cursor_border = "#CECDC3",
    cursor_fg = "#100F0F",
    selection_bg = "#282726",
    selection_fg = "#CECDC3"
}

-- Return config
return config
