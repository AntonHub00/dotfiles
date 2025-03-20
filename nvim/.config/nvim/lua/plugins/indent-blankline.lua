return {
  'lukas-reineke/indent-blankline.nvim',
  enabled = true,
  main = 'ibl',
  config = function()
    local ibl = require("ibl")
    ibl.setup {
      enabled = false,
      scope = {
        enabled = false
      }
    }
  end
}
