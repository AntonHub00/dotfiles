return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup()

    local map = function(keys, func, desc)
      vim.keymap.set('n', keys, func, { desc = 'Harpoon: ' .. desc })
    end

    map("<leader>ha", function() harpoon:list():add() end, "add")

    map("<leader>ho", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, "open")

    map("<leader>1", function() harpoon:list():select(1) end, "select 1")
    map("<leader>2", function() harpoon:list():select(2) end, "select 2")
    map("<leader>3", function() harpoon:list():select(3) end, "select 3")
    map("<leader>4", function() harpoon:list():select(4) end, "select 4")
  end
}
