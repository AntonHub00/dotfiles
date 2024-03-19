return {
  'NeogitOrg/neogit',
  enabled = true,
  dependencies = {
    'nvim-lua/plenary.nvim',         -- required
    'sindrets/diffview.nvim',        -- optional - Diff integration
    'nvim-telescope/telescope.nvim', -- optional
  },
  config = function()
    require("neogit").setup({
      telescope_sorter = function()
        return require("telescope").extensions.fzf.native_fzf_sorter()
      end,
    })
  end
}
