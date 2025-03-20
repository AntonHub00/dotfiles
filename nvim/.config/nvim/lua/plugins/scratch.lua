return {
  "LintaoAmons/scratch.nvim",
  event = "VeryLazy",
  dependencies = {
    { "nvim-telescope/telescope.nvim" }
  },
  config = function()
    local s = require("scratch")

    s.setup({
      use_telescope = true,
      file_picker = "telescope",
      filetypes = { "lua", "js", "sh", "ts", "tsx", "jsx", "md", "go", "py", "json" }
    })

    vim.keymap.set("n", "<leader>gss", "<cmd>Scratch<cr>", { desc = "[g]o [s]cratch [c]reate" })
    vim.keymap.set("n", "<leader>gso", "<cmd>ScratchOpen<cr>", { desc = "[g]o [s]cratch [o]pen" })
    vim.keymap.set("n", "<leader>gsf", "<cmd>ScratchOpenFzf<cr>", { desc = "[g]o [s]cratch [f]uzzy find content" })
  end
}
