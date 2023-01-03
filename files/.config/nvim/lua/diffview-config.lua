local openedDiffView = false

local toggleDiffview = function()
  openedDiffView = not openedDiffView

  if (openedDiffView) then
    vim.cmd("DiffviewOpen")
  else
    vim.cmd("DiffviewClose")
  end
end

vim.keymap.set("n", "<leader>gd", toggleDiffview, {})
vim.keymap.set("n", "<leader>gf", "<cmd>DiffviewToggleFiles<CR>", {})
