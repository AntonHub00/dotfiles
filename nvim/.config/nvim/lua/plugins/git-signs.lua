return {
  'lewis6991/gitsigns.nvim',
  opts = {},
  config = function()
    local gitsigns = require('gitsigns')

    gitsigns.setup {}

    vim.keymap.set(
      'n',
      ']c',
      function()
        if vim.wo.diff then
          vim.cmd.normal({ ']c', bang = true })
        else
          gitsigns.nav_hunk('next')
        end
      end,
      { desc = "Next hunk or next change" }
    )

    vim.keymap.set(
      'n',
      '[c',
      function()
        if vim.wo.diff then
          vim.cmd.normal({ '[c', bang = true })
        else
          gitsigns.nav_hunk('prev')
        end
      end,
      { desc = "Previous hunk or previous change" }
    )
  end
}
