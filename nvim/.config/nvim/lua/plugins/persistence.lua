return {
  "folke/persistence.nvim",
  -- event = "BufReadPre", -- this will only start session saving when an actual file was opened
  config = function()
    local persistence = require("persistence")
    persistence.setup()

    vim.keymap.set("n", "<leader>ls", function() persistence.load() end)
  end
}
