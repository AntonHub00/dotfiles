-- Easier exit from insert mode
vim.api.nvim_set_keymap('i', 'jj', '<esc>', { noremap = true, silent = true })

-- Easier exit from terminal mode
vim.api.nvim_set_keymap('t', '<leader><Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

-- Easier turn off for search highlight
vim.api.nvim_set_keymap('n', '<leader>n', ':noh<cr>', { silent = true })

-- Nop for space
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Better window movement
-- vim.api.nvim_set_keymap('n', '<c-h>', '<c-w>h', { silent = true })
-- vim.api.nvim_set_keymap('n', '<c-j>', '<c-w>j', { silent = true })
-- vim.api.nvim_set_keymap('n', '<c-k>', '<c-w>k', { silent = true })
-- vim.api.nvim_set_keymap('n', '<c-l>', '<c-w>l', { silent = true })

-- Resize window horizontally
-- vim.api.nvim_set_keymap('n', '<leader>wl', '10<C-w>>', { silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>wh', '10<C-w><', { silent = true })

-- Resize window vertically
-- vim.api.nvim_set_keymap('n', '<leader>wk', '10<C-w>+', { silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>wj', '10<C-w>-', { silent = true })

-- Paste in visual mode without clearing yank buffer
vim.api.nvim_set_keymap('x', '<leader>p', '"_dP', { silent = true })

-- Easier replacements
-- vim.api.nvim_set_keymap('n', '<leader>ra', ':%s///gc<Left><Left><Left><Left>', {})     -- [r]eplace [a]ll in normal mode
-- vim.api.nvim_set_keymap('n', '<leader>rc', ':%s/<C-r><C-w>//gc<Left><Left><Left>', {}) -- [r]eplace [c]urrent word in cursor
-- vim.api.nvim_set_keymap('x', '<leader>ra', ':s///gc<Left><Left><Left><Left>', {})      -- [r]eplace [a]ll in selection

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Open netrw in the left
-- vim.keymap.set('n', '<leader>n', ':Lexplore<CR>', { desc = 'Left netrw toggle' })

-- vim.keymap.set(
--   'n',
--   '<leader>r',
--   function() vim.o.relativenumber = not vim.o.relativenumber end,
--   { desc = 'Toggle relative numbers' }
-- )
