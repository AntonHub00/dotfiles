return {
  'MeanderingProgrammer/render-markdown.nvim',
  ft = { "markdown" },
  opts = {
    file_types = { "markdown" },
  },
  keys = {
    {
      '<leader>rm',
      function() require('render-markdown').buf_toggle() end,
      desc = 'toggle [r]ender [m]arkdown'
    }
  }
}
