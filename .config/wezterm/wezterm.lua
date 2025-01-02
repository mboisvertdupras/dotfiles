local wezterm = require("wezterm")
local config = wezterm.config_builder()
local mux = wezterm.mux
local act = wezterm.action

config.font = wezterm.font("TX-02", { weight = "DemiBold" })
config.font_size = 13
config.foreground_text_hsb = {
  hue = 1.0,
  saturation = 1.0,
  brightness = 0.9, -- default is 1.0
}

config.keys = {
  {
    key = "LeftArrow",
    mods = "OPT",
    action = act.SendKey({
      key = "b",
      mods = "ALT",
    }),
  },
  {
    key = "RightArrow",
    mods = "OPT",
    action = act.SendKey({ key = "f", mods = "ALT" }),
  },
}

config.freetype_load_target = "Light"
config.freetype_render_target = "HorizontalLcd"
config.freetype_load_flags = "NO_HINTING"
config.cell_width = 0.9

config.color_scheme = "rose-pine"

-- Override specific colors
config.colors = {
  -- Override background color
  background = "#000000",

  -- Override selection background color
  -- selection_bg = '#444444',
}

config.enable_tab_bar = false

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

wezterm.on("gui-startup", function()
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():toggle_fullscreen()
end)

wezterm.on("gui-attached", function()
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():toggle_fullscreen()
end)

wezterm.on("window-config-reloaded", function(window)
  window:toggle_fullscreen()
end)

config.native_macos_fullscreen_mode = true

return config
