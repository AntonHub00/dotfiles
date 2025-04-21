return {
  "NeogitOrg/neogit",
  enabled = false,
  dependencies = {
    "nvim-lua/plenary.nvim",  -- required
    "sindrets/diffview.nvim", -- optional - Diff integration
    "ibhagwan/fzf-lua",       -- optional
  },
  config = function()
    require("neogit").setup({
      integrations = {
        fzf_lua = true,
      },
    })

    vim.keymap.set("n", "<leader>gg", function() vim.cmd("Neogit") end, { desc = "Open Neo[g]it Neo[g]it" })
  end
}
