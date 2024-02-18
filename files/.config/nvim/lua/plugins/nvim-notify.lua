return {
  'rcarriga/nvim-notify',
  config = function()
    require('notify').setup()
    vim.keymap.set('', '<Esc>', ":lua require('notify').dismiss()<CR>", { silent = true })
  end,
}
