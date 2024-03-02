local color_schemes = require 'color_schemes'
local window = require 'window'
local fonts = require 'fonts'

local config = {}

color_schemes.apply_to_config(config)
window.apply_to_config(config)
fonts.apply_to_config(config)

config.hide_tab_bar_if_only_one_tab = true

return config
