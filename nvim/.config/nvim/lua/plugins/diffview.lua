return {
  'sindrets/diffview.nvim',
  enabled = false,
  config = function()
    local openedDiffView = false

    local toggleDiffview = function()
      require("diffview").setup {}

      openedDiffView = not openedDiffView

      if (openedDiffView) then
        vim.cmd("DiffviewOpen")
      else
        vim.cmd("DiffviewClose")
      end
    end

    vim.keymap.set("n", "<leader>gd", toggleDiffview, { desc = '[g]it [d]iff' })
    vim.keymap.set("n", "<leader>gf", ":DiffviewToggleFiles<CR>", { desc = '[g]it [f]iles' })
  end,
}
