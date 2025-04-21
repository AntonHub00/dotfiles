return {
  "LintaoAmons/scratch.nvim",
  event = "VeryLazy",
  dependencies = {
    "ibhagwan/fzf-lua",
  },
  config = function()
    require("scratch").setup({
      use_telescope = false,
      file_picker = "fzflua",
      filetypes = { "lua", "js", "sh", "ts", "tsx", "jsx", "md", "go", "py", "json" },
      filetype_details = {
        go = {
          requireDir = true,    -- true if each scratch file requires a new directory
          filename = "main.go", -- the filename of the scratch file in the new directory
          content = { "package main", "", "func main() {", "  ", "}" },
          cursor = {
            location = { 4, 2 },
            insert_mode = true,
          },
        },
      }
    })

    vim.keymap.set("n", "<leader>gsc", "<cmd>Scratch<cr>", { desc = "[g]o [s]cratch [c]reate" })
    vim.keymap.set("n", "<leader>gso", "<cmd>ScratchOpen<cr>", { desc = "[g]o [s]cratch [o]pen" })
    vim.keymap.set("n", "<leader>gsf", "<cmd>ScratchOpenFzf<cr>", { desc = "[g]o [s]cratch [f]uzzy find content" })
  end
}
