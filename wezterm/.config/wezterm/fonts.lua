local wezterm = require 'wezterm'
local M = {}

local function set_font(config)
  config.font = wezterm.font('Berkeley Mono')
  -- config.font = wezterm.font('Maple Mono')
  -- config.font = wezterm.font('CaskaydiaCove Nerd Font')
  -- config.font = wezterm.font('FiraCode Nerd Font')
  -- config.font = wezterm.font('JetBrainsMono Nerd Font')
  -- config.font = wezterm.font('MonoLisa Trial')
  -- config.font = wezterm.font('Comic Code Ligatures')
  -- config.font = wezterm.font('Hack')
  -- config.font = wezterm.font('IBM Plex Mono')
  -- config.font = wezterm.font('Intel One Mono')
  -- config.font = wezterm.font({
  --   family = 'Monaspace Neon',
  --   -- family = 'Monaspace Argon',
  --   -- family = 'Monaspace Xenon',
  --   -- family = 'Monaspace Radon',
  --   -- family = 'Monaspace Krypton',
  --   harfbuzz_features = { 'ss01', 'ss02', 'ss03', 'ss04', 'ss05', 'ss06', 'ss07', 'ss08', 'calt', 'dlig' }
  -- })
end

local function set_font_size(config)
  config.font_size = 15.0
end

local function set_font_line_height(config)
  config.line_height = 1.3
end


function M.apply_to_config(config)
  set_font(config)
  set_font_size(config)
  set_font_line_height(config)
end

return M
