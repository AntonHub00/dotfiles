require 'config.options'
require 'config.keymaps'

-- NOTE: leader and local leader must be set before plugins are required (otherwise wrong leader will be used)
-- https://github.com/folke/lazy.nvim
-- :help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- require 'lazy-plugins'

-- vim: ts=2 sts=2 sw=2 et
