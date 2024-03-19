local wezterm = require 'wezterm'
local module = {}

function set_font(config)
  -- config.font = wezterm.font('CaskaydiaCove Nerd Font')
  -- config.font = wezterm.font('FiraCode Nerd Font')
  -- config.font = wezterm.font('JetBrainsMono Nerd Font')
  -- config.font = wezterm.font('Berkeley Mono Trial')
  -- config.font = wezterm.font('MonoLisa Trial')
  config.font = wezterm.font('Comic Code Ligatures')
end

function set_font_size(config)
  config.font_size = 11.0
end

function module.apply_to_config(config)
  set_font(config)
  set_font_size(config)
end

return module
