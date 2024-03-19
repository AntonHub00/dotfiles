return {
  'sindrets/diffview.nvim',
  enabled = true,
  config = function()
    vim.keymap.set(
      "n",
      "<leader>gdo",
      function() vim.cmd("DiffviewOpen") end,
      { desc = '[g]it [d]iff [o]pen' }
   )

    vim.keymap.set(
      "n",
      "<leader>gdc",
      function() vim.cmd("DiffviewClose") end,
      { desc = '[g]it [d]iff [c]lose' }
    )

    vim.keymap.set(
      "n",
      "<leader>gdt",
      function() vim.cmd("DiffviewToggleFiles") end,
      { desc = '[g]it [d]iff [t]oggle files' }
    )
  end,
}
