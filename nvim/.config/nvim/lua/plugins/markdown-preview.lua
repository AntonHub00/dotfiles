return {
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  ft = { 'markdown' },
  build = function() vim.fn['mkdp#util#install']() end,
  config = function()
    local browsers = { 'google-chrome', 'firefox' }
    local browser_choice = browsers[1]

    local vimscript_function_string = [[
      function OpenMarkdownPreview (url)
        execute "silent ! {BROWSER} --new-window " . a:url . " &"
      endfunction
    ]]
    local cmd = vimscript_function_string.gsub(vimscript_function_string, '{BROWSER}', browser_choice)
    vim.cmd(cmd)

    vim.g.mkdp_browserfunc = 'OpenMarkdownPreview'
  end
}
