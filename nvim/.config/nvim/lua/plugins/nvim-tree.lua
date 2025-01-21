return {
  "nvim-tree/nvim-tree.lua",
  enabled = true,
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      filters = {
        dotfiles = false,
        git_ignored = false,
      }
    }
    vim.keymap.set('n', '<c-n>', ':NvimTreeToggle<cr>', { desc = '[N]vim tree toggle' })
  end,
}
