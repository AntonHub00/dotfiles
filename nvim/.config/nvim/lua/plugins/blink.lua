return {
  enabled = true,
  'saghen/blink.cmp',
  dependencies = {
    'rafamadriz/friendly-snippets',
    { 'L3MON4D3/LuaSnip', version = 'v2.*' },
    {
      'saghen/blink.compat',
      -- use the latest release, via version = '*', if you also use the latest release for blink.cmp
      version = '*',
      -- lazy.nvim will automatically load the plugin when it's required by blink.cmp
      lazy = true,
      -- make sure to set opts so that lazy.nvim calls blink.compat's setup
      opts = {},
    },
    'kristijanhusak/vim-dadbod-completion',
  },
  version = '1.*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = 'default',
      ['<Tab>'] = {},
      ['<S-Tab>'] = {},
      ['<C-l>'] = { 'snippet_forward', 'fallback' },
      ['<C-h>'] = { 'snippet_backward', 'fallback' },
    },
    appearance = {
      nerd_font_variant = 'mono'
    },
    completion = {
      menu = { border = 'single' },
      documentation = {
        window = { border = 'single' },
        auto_show = false,
      },
      accept = {
        auto_brackets = { enabled = false },
      },
      ghost_text = { enabled = true },
      list = { selection = { preselect = true, auto_insert = false } },
    },
    sources = {
      default = {
        'lsp',
        'path',
        'snippets',
        'buffer',
        'avante_commands',
        'avante_mentions',
        'avante_files',
      },
      per_filetype = {
        sql = { 'snippets', 'dadbod', 'buffer' },
      },
      providers = {
        avante_commands = {
          name = 'avante_commands',
          module = 'blink.compat.source',
          score_offset = 90, -- show at a higher priority than lsp
          opts = {},
        },
        avante_files = {
          name = 'avante_files',
          module = 'blink.compat.source',
          score_offset = 100, -- show at a higher priority than lsp
          opts = {},
        },
        avante_mentions = {
          name = 'avante_mentions',
          module = 'blink.compat.source',
          score_offset = 1000, -- show at a higher priority than lsp
          opts = {},
        },
        dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
      },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
    signature = {
      enabled = true,
      window = { border = 'single' },
    },
    snippets = { preset = 'luasnip' },
    cmdline = {
      keymap = {
        -- recommended, as the default keymap will only show and select the next item
        -- ['<Tab>'] = { 'show', 'accept' },
      },
      completion = {
        menu = {
          auto_show = function(ctx)
            return vim.fn.getcmdtype() == ':'
            -- enable for inputs as well, with:
            -- or vim.fn.getcmdtype() == '@'
          end,
        },
      }
    }
  },
  opts_extend = { "sources.default" }
}
