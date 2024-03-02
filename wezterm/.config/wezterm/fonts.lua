local wezterm = require 'wezterm'
local module = {}

function module.apply_to_config(config)
  -- config.font = wezterm.font('CaskaydiaCove Nerd Font')
  config.font = wezterm.font('FiraCode Nerd Font')
  -- config.font = wezterm.font('JetBrainsMono Nerd Font')
end

return module
