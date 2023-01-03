vim.g.mapleader = ' '

vim.opt.expandtab = true -- Inserts spaces instead of tabs
vim.opt.tabstop = 2 -- Size of tabs in spaces (visually)
vim.opt.shiftwidth = 2 -- Size of tabs in spaces when indent with '<', '>' or '='
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.listchars = 'tab:→ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»' -- set list!
vim.opt.clipboard = 'unnamedplus'

vim.wo.wrap = false
