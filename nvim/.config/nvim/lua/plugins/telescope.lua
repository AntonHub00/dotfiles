return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    -- Fuzzy Finder Algorithm which requires local dependencies to be built.
    -- Only load if `make` is available. Make sure you have the system
    -- requirements installed.
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      -- NOTE: If you are having trouble with this installation,
      --       refer to the README for telescope-fzf-native for more instructions.
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    'nvim-telescope/telescope-node-modules.nvim',
    'nvim-telescope/telescope-file-browser.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
  },
  config = function()
    local telescope = require('telescope')
    local builtin = require('telescope.builtin')
    local layout = require('telescope.actions.layout')

    telescope.setup {
      defaults = {
        sorting_strategy = 'ascending',
        layout_config = {
          prompt_position = 'top'
        },
        mappings = {
          n = {
            ["<C-j>"] = layout.toggle_preview,
          },
          i = {
            ["<C-j>"] = layout.toggle_preview,
          },
        }
      },
      pickers = {
        find_files = {
          follow = true,
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,                   -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true,    -- override the file sorter
          case_mode = "smart_case",       -- or "ignore_case" or "respect_case". The default case_mode is "smart_case"
        },
        file_browser = {
          theme = "ivy",
          -- disables netrw and use telescope-file-browser in its place
          hijack_netrw = true,
          mappings = {
            ["i"] = {
              -- your custom insert mode mappings
            },
            ["n"] = {
              -- your custom normal mode mappings
            },
          },
        },
      }
    }

    pcall(telescope.load_extension, 'fzf')
    pcall(telescope.load_extension, 'node_modules')
    pcall(telescope.load_extension, 'file_browser')
    pcall(telescope.load_extension, 'ui-select')

    -- Node modules
    vim.keymap.set('n', '<leader>fm', telescope.extensions.node_modules.list, { desc = '[f]iles node [m]odules' })

    -- Filer explorer
    vim.keymap.set('n', '<leader>fe', ':Telescope file_browser path=%:p:h select_buffer=true<CR>',
      { desc = '[f]ile [e]xplorer (relative to files path)' })
    vim.keymap.set('n', '<leader>fE', telescope.extensions.file_browser.file_browser,
      { desc = '[f]ile [e]xplorer (relative to dir)' })

    -- Files
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[f]iles [f]iles' })
    vim.keymap.set(
      'n',
      '<leader>fF',
      function()
        builtin.find_files({
          hidden = true,
          no_ignore = true
        })
      end,
      { desc = '[f]ind [F]iles (hidden and ignored)' }
    )
    vim.keymap.set(
      'n',
      '<leader>fn',
      function()
        builtin.find_files({
          hidden = true,
          no_ignore = true,
          cwd = '~/.dotfiles/nvim/.config/nvim'
        })
      end,
      { desc = '[f]ind [n]eovim config files' }
    )
    vim.keymap.set(
      'n',
      '<leader>fw',
      function()
        builtin.find_files({
          hidden = true,
          no_ignore = true,
          cwd = '~/.dotfiles/wezterm/.config/wezterm'
        })
      end,
      { desc = '[f]ind [w]ezterm config files' }
    )

    -- Grep
    vim.keymap.set('n', '<leader>fgl', builtin.live_grep, { desc = '[f]ind [g]rep [l]ive' })
    vim.keymap.set('n', '<leader>fgs', builtin.grep_string, { desc = '[f]ind [g]rep [s]tring' })

    -- Buffers
    vim.keymap.set('n', '<leader>fB', builtin.current_buffer_fuzzy_find, { desc = '[f]ind [b]uffer fuzzy' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[f]ind [B]uffers' })

    -- Commands
    vim.keymap.set('n', '<leader>fcc', builtin.commands, { desc = '[f]ind [c]ommands' })
    vim.keymap.set('n', '<leader>fch', builtin.command_history, { desc = '[f]ind [c]ommand [h]istory' })

    -- Resume
    vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = '[f]ind [r]esume' })

    -- Old files
    vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = '[f]ind [o]ld files' })

    -- Search history
    vim.keymap.set('n', '<leader>fsh', builtin.search_history, { desc = '[f]ind [s]earch [h]istory' })

    -- Quickfix
    vim.keymap.set('n', '<leader>fqq', builtin.quickfix, { desc = '[f]ind [q]uickfix' })
    vim.keymap.set('n', '<leader>fqh', builtin.quickfixhistory, { desc = '[f]ind [q]uickfix [h]istory' })

    -- All (builtin)
    vim.keymap.set('n', '<leader>fa', builtin.builtin, { desc = '[f]ind [a]ll (builtin)' })

    -- LSP
    vim.keymap.set('n', '<leader>flr', builtin.lsp_references, { desc = '[f]ind [l]sp [r]eferences' })
    vim.keymap.set('n', '<leader>fli', builtin.lsp_implementations, { desc = '[f]ind [l]sp [i]mplementations' })
    vim.keymap.set('n', '<leader>fld', builtin.lsp_definitions, { desc = '[f]ind [l]sp [d]efinitions' })
    vim.keymap.set('n', '<leader>flt', builtin.lsp_type_definitions, { desc = '[f]ind [l]sp [t]ype definitions' })

    vim.keymap.set('n', '<leader>fls', builtin.lsp_document_symbols, { desc = '[f]ind [l]sp [s]symbols (document)' })
    vim.keymap.set('n', '<leader>flS', builtin.lsp_dynamic_workspace_symbols,
      { desc = '[f]ind [l]sp [s]symbols (workspace dynamically)' })

    vim.keymap.set('n', '<leader>fla', function() builtin.diagnostics({ bufnr = 0 }) end,
      { desc = '[f]ind [l]sp di[a]gnostics (buffer)' })
    vim.keymap.set('n', '<leader>flA', builtin.diagnostics, { desc = '[f]ind [l]sp di[A]gnostics (workspace)' })

    -- Quickfix
    vim.keymap.set('n', '<leader>fqq', builtin.quickfix, { desc = '[f]ind [q]uickfix' })
    vim.keymap.set('n', '<leader>fqh', builtin.quickfixhistory, { desc = '[f]ind [q]uickfix [h]istory' })
  end,
}
