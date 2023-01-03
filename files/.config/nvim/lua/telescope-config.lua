local telescope = require('telescope')
local builtin = require('telescope.builtin')

telescope.setup{
    defaults = {
        sorting_strategy = 'ascending',
        layout_config = {
            prompt_position = 'top'
        },
        path_display = { 'truncate' }
    },
}

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fF', function () builtin.find_files({ hidden = true, no_ignore = true }) end, {})
vim.keymap.set('n', '<leader>fn', function () builtin.find_files({ hidden = true, no_ignore = true, cwd = '~/.config/nvim/' }) end, {})

vim.keymap.set('n', '<leader>fgl', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fgs', builtin.grep_string, {})

vim.keymap.set('n', '<leader>fb', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>fB', builtin.buffers, {})

vim.keymap.set('n', '<leader>fcc', builtin.commands, {})
vim.keymap.set('n', '<leader>fch', builtin.command_history, {})

vim.keymap.set('n', '<leader>fr', builtin.resume, {})

vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})

vim.keymap.set('n', '<leader>fsh', builtin.search_history, {})

vim.keymap.set('n', '<leader>fqq', builtin.quickfix, {})
vim.keymap.set('n', '<leader>fqh', builtin.quickfixhistory, {})

vim.keymap.set('n', '<leader>fa', builtin.builtin, {})

-- LSP

vim.keymap.set('n', '<leader>flr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>fli', builtin.lsp_implementations, {})
vim.keymap.set('n', '<leader>fld', builtin.lsp_definitions, {})
vim.keymap.set('n', '<leader>flt', builtin.lsp_type_definitions, {})

vim.keymap.set('n', '<leader>fls', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>flS', builtin.lsp_workspace_symbols, {})

vim.keymap.set('n', '<leader>fla', function () builtin.diagnostics({ bufnr=0 }) end, {})
vim.keymap.set('n', '<leader>flA', builtin.diagnostics, {})
