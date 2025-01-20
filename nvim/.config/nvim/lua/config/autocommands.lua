-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank({
      timeout = 500
    })
  end,
  group = highlight_group,
  pattern = '*',
})

-- [[ filetype for envrc files ]]
local envrc_filetype_group = vim.api.nvim_create_augroup('EnvrcFiletypeGroup', { clear = true })
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  group = envrc_filetype_group,
  pattern = '.envrc*',
  callback = function(opts)
    vim.api.nvim_buf_set_option(opts.buf, 'filetype', 'bash')
  end,
})


-- [[ filetype for ghostty config files ]]
local ghostty_filetype_group = vim.api.nvim_create_augroup('GhosttyFiletypeGroup', { clear = true })
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  group = ghostty_filetype_group,
  pattern = '*/ghostty/config',
  callback = function(opts)
    vim.api.nvim_buf_set_option(opts.buf, 'filetype', 'config')
  end,
})
