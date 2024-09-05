local wezterm = require("wezterm")
local launch_menu = {}

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Define launch_menu
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
  config.default_prog = { "ubuntu2204.exe" }
  table.insert(launch_menu, {
    label = "PowerShell",
    args = { "pwsh.exe", "-NoLogo" },
  })

  -- Add WSL Ubuntu entry
  table.insert(launch_menu, {
    label = "WSL Ubuntu",
    args = { "ubuntu2204.exe" },
    cwd = "~",
  })
end

config.keys = {}

config.launch_menu = launch_menu

-- Themes
config.color_scheme = "Catppuccin Mocha"

config.font = wezterm.font_with_fallback({
  "JetBrainsMono Nerd Font",
  "Noto Sans Mono CJK JP",
  "SOV_monospace",
})

config.font_size = 15

-- Tabs config
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

return config
