return {
  -- Autocompletion
  'hrsh7th/nvim-cmp',
  dependencies = {
    -- Snippet Engine & its associated nvim-cmp source
    -- 'L3MON4D3/LuaSnip',
    {
      'L3MON4D3/LuaSnip',
      build = (function()
        -- Build Step is needed for regex support in snippets
        -- This step is not supported in many windows environments
        -- Remove the below condition to re-enable on windows
        if vim.fn.has 'win32' == 1 then
          return
        end
        return 'make install_jsregexp'
      end)(),
      dependencies = {
        'rafamadriz/friendly-snippets',
      }
    },

    -- vscode-like pictograms for built-in lsp
    'onsails/lspkind.nvim',

    -- Completion sources
    -- Adds LSP completion capabilities
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-nvim-lsp',
    'saadparwaiz1/cmp_luasnip',
  },
  config = function()
    -- NOTE: Snippets and completion configs are done here (together) because I
    -- can't split luasnip in a different file and load the already configured plugin
    -- (need to "fix" this)
    local cmp = require "cmp"

    local luasnip = require "luasnip"

    require("luasnip.loaders.from_vscode").lazy_load()

    luasnip.config.setup {}

    -- Snipets keymaps ---------------------------------------------------------------
    -- <c-k> is my expansion key
    -- this will expand the current item or jump to the next item within the snippet.
    vim.keymap.set({ "i", "s" }, "<c-k>", function()
      if luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      end
    end, { silent = true })

    -- <c-j> is my jump backwards key.
    -- this always moves to the previous item within the snippet
    vim.keymap.set({ "i", "s" }, "<c-j>", function()
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      end
    end, { silent = true })

    -- <c-l> is selecting within a list of options.
    -- This is useful for choice nodes (introduced in the forthcoming episode 2)
    vim.keymap.set("i", "<c-l>", function()
      if luasnip.choice_active() then
        luasnip.change_choice(1)
      end
    end)

    vim.keymap.set("i", "<c-u>", require "luasnip.extras.select_choice")

    -- Completion --------------------------------------------------------------------
    cmp.setup {
      -- Enable snippet completion
      snippet = {
        expand = function(args)
          -- require('luasnip').lsp_expand(args.body)
          luasnip.lsp_expand(args.body)
        end,
      },
      -- completion = {
      --   completeopt = 'menu,menuone,noinsert',
      -- },
      mapping = cmp.mapping.preset.insert {
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-e>"] = cmp.mapping.close(),
        ["<C-y>"] = cmp.mapping.confirm { select = true },
        ["<C-space>"] = cmp.mapping.complete(),
      },
      sources = {
        -- { name = 'nvim_lua' },
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'path' },
        { name = 'buffer' },
      },
      experimental = {
        ghost_text = true,
      },
      formatting = {
        expandable_indicator = true,
        fields = { 'abbr', 'kind', 'menu' },
        format = require('lspkind').cmp_format {
          with_text = true,
          menu = {
            buffer = "[Buf]",
            nvim_lsp = "[LSP]",
            path = "[Path]",
            luasnip = "[Snip]",
          },
        }
      }
    }

    -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
          { name = 'cmdline' }
        })
    })
  end
}
