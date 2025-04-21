return {
  'MeanderingProgrammer/render-markdown.nvim',
  ft = { "markdown", "Avante" },
  opts = {
    file_types = { "markdown", "Avante" },
  },
  keys = {
    {
      '<leader>rm',
      function() require('render-markdown').buf_toggle() end,
      desc = 'toggle [r]ender [m]arkdown'
    }
  }
}
