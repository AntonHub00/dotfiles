return {
  -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
    'nvim-treesitter/nvim-treesitter-context',
  },
  build = ':TSUpdate',
  config = function()
    vim.defer_fn(function()
      require('nvim-treesitter.configs').setup {
        -- Add languages to be installed here that you want installed for treesitter

        ensure_installed = {
          'c',
          'cpp',
          'go',
          'lua',
          'python',
          'rust',
          'tsx',
          'javascript',
          'typescript',
          'vimdoc',
          'vim',
          'bash',
          'json',
          'markdown',
          'html'
        },

        -- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
        auto_install = false,
        -- Install languages synchronously (only applied to `ensure_installed`)
        sync_install = false,
        -- List of parsers to ignore installing
        ignore_install = {},
        -- You can specify additional Treesitter modules here: -- For example: -- playground = {--enable = true,-- },
        modules = {},
        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = '<c-space>',
            node_incremental = '<c-space>',
            scope_incremental = '<c-s>',
            node_decremental = '<M-space>', -- TODO: change keymap
          },
        },
        textobjects = {
          select = {
            enable = true,
            lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
            keymaps = {
              -- You can use the capture groups defined in textobjects.scm
              ['aa'] = '@parameter.outer',
              ['ia'] = '@parameter.inner',
              ['af'] = '@function.outer',
              ['if'] = '@function.inner',
              ['ac'] = '@class.outer',
              ['ic'] = '@class.inner',
            },
          },
          move = {
            enable = true,
            set_jumps = true,             -- whether to set jumps in the jumplist
            goto_next_start = {
              [']m'] = '@function.outer', -- Start of next function
              [']]'] = '@class.outer',    -- Start of next class
            },
            goto_next_end = {
              [']M'] = '@function.outer', -- End of next function
              [']['] = '@class.outer',    -- End of next class
            },
            goto_previous_start = {
              ['[m'] = '@function.outer', -- Start of previous function
              ['[['] = '@class.outer',    -- Start of previous class
            },
            goto_previous_end = {
              ['[M'] = '@function.outer', -- End of previous function
              ['[]'] = '@class.outer',    -- End of previous class
            },
          },
          swap = {
            enable = true,
            swap_next = {
              ['<leader>s'] = '@parameter.inner',
            },
            swap_previous = {
              ['<leader>S'] = '@parameter.inner',
            },
          },
        },
      }

      local t_ctx = require('treesitter-context')
      t_ctx.setup {
        multiline_threshold = 2
      }

      vim.keymap.set(
        'n',
        '<leader>c',
        function() t_ctx.go_to_context(vim.v.count1) end,
        { desc = 'go to [c]context' }
      )
    end, 0)
  end,
}
