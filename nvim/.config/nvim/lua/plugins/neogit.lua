return {
  "NeogitOrg/neogit",
  enabled = false,
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration
    "nvim-telescope/telescope.nvim", -- optional
  },
  config = function()
    require("neogit").setup({
      telescope_sorter = function()
        return require("telescope").extensions.fzf.native_fzf_sorter()
      end,
    })

    vim.keymap.set("n", "<leader>gg", function() vim.cmd("Neogit") end, { desc = "Open Neo[g]it Neo[g]it" })
  end
}
