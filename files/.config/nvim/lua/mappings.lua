vim.api.nvim_set_keymap('i', 'jj', '<esc>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>n', ':noh<cr>', { silent = true })

vim.api.nvim_set_keymap('n', '<c-h>', '<c-w>h', {})
vim.api.nvim_set_keymap('n', '<c-j>', '<c-w>j', {})
vim.api.nvim_set_keymap('n', '<c-k>', '<c-w>k', {})
vim.api.nvim_set_keymap('n', '<c-l>', '<c-w>l', {})

vim.api.nvim_set_keymap('n', '<leader>wl', '10<C-w>>', {})
vim.api.nvim_set_keymap('n', '<leader>wh', '10<C-w><', {})

vim.api.nvim_set_keymap('n', '<leader>wk', '10<C-w>+', {})
vim.api.nvim_set_keymap('n', '<leader>wj', '10<C-w>-', {})

vim.api.nvim_set_keymap('x', '<leader>p', '"_dP', {})

-- vim.api.nvim_set_keymap('n', '<leader>ra', ':%s///gc<Left><Left><Left><Left>', {})
-- vim.api.nvim_set_keymap('n', '<leader>rc', ':%s/<C-r><C-w>//gc<Left><Left><Left>', {})
-- vim.api.nvim_set_keymap('x', '<leader>ra', ':s///gc<Left><Left><Left><Left>', {})
