return {
  'stevearc/oil.nvim',
  enabled = true,
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    require('oil').setup {
      keymaps = {
        ['gh'] = "actions.show_help"
      }
    }

    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
  end,
}
