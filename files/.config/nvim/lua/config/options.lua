-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Inserts spaces instead of tabs
vim.opt.expandtab = true
-- Size of tabs in spaces (visually)
vim.opt.tabstop = 2
-- Size of tabs in spaces when indent with '<', '>' or '='
vim.opt.shiftwidth = 2
-- Size of tabs in spaces (visually)
vim.opt.softtabstop = 2

-- Copy indent of current line on <CR> or "o" or "O"
vim.opt.autoindent = true

-- Every wrapped line will continue indented
vim.opt.breakindent = true
vim.opt.linebreak = true
vim.opt.showbreak = string.rep(" ", 3)

-- Make line numbers default
vim.wo.number = true

-- Make line relative numbers
vim.wo.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option make the OS clipboard to remain independent.
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Split window below
vim.o.splitbelow = true

-- Split window to the right
vim.o.splitright = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- List of chars for "set list!"
-- vim.o.listchars = 'tab:→ ,space:·,nbsp:␣,trail:•,eol:↲,precedes:«,extends:»'
-- vim.o.listchars = 'tab:→ ,trail:•,eol:↲'
vim.o.listchars = 'tab:→ ,trail:•,eol:↲'
vim.o.list = true

-- vim: ts=2 sts=2 sw=2 et
