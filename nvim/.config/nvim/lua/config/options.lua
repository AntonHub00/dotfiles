-- Disable netrw
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

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
vim.opt.number = true

-- Make line relative numbers
vim.opt.relativenumber = true

-- Enable mouse mode
vim.opt.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option make the OS clipboard to remain independent.
vim.opt.clipboard = 'unnamedplus'

-- Split window below
vim.o.splitbelow = true

-- Split window to the right
vim.o.splitright = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.opt.completeopt = 'menu,menuone,noinsert'

vim.opt.termguicolors = true

vim.opt.listchars = { tab = '→ ', trail = '•', nbsp = '␣' }
vim.opt.list = false

vim.opt.wrap = true

vim.opt.foldmethod = 'indent'
vim.opt.foldlevelstart = 99

-- vim.opt.cursorline = true

vim.opt.colorcolumn = "80"

vim.opt.diffopt:append({ "algorithm:histogram" })

vim.opt.endofline = true

vim.opt.winborder = "rounded"

-- Recommended for Avante: "views can only be fully collapsed with the global statusline"
vim.opt.laststatus = 3

vim.diagnostic.config({
  -- virtual_lines = true,
  virtual_text = true
  -- virtual_text = {
  --   current_line = true
  -- }
})

-- vim: ts=2 sts=2 sw=2 et
