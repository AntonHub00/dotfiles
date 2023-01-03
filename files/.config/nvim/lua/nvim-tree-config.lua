vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local nvim_tree = require("nvim-tree")

-- nvim_tree.setup()

nvim_tree.setup({
    filters = {
        dotfiles = false
    },
    git = {
        ignore = false
    }
})

-- nvim_tree.setup()

vim.api.nvim_set_keymap('n', '<c-n>', ':NvimTreeToggle<cr>', { silent = true })
