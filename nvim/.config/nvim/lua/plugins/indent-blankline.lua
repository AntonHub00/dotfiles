return {
  'lukas-reineke/indent-blankline.nvim',
  enabled = true,
  main = 'ibl',
  config = function()
    require("ibl").setup {
      scope = {
        enabled = false
      }
    }
  end
}
