return {
  'neovim/nvim-lspconfig',
  dependencies = {
    { 'williamboman/mason.nvim', config = true },
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    { "folke/neodev.nvim",       opts = {} },

    { 'j-hui/fidget.nvim',       opts = {} },
  },
  config = function()
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
      callback = function(event)
        local map = function(keys, func, desc)
          vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
        end

        -- See `:help K` for why this keymap
        map('K', vim.lsp.buf.hover, 'Hover Documentation')
        map('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')
        vim.keymap.set({ 'i' }, '<C-k>', vim.lsp.buf.signature_help,
          { buffer = event.buf, desc = 'LSP: Signature Documentation' })

        map('gr', vim.lsp.buf.references, '[g]o to [r]eferences')
        map('gi', vim.lsp.buf.implementation, '[g]o to [i]mplementation')
        map('gd', vim.lsp.buf.definition, '[g]o to [d]efinition')
        map('gD', vim.lsp.buf.declaration, '[g]o to [D]declaration')
        map('<leader>rn', vim.lsp.buf.rename, '[r]e[n]ame')
        map('<leader>ca', vim.lsp.buf.code_action, '[c]ode [a]ction')
        map('<leader>t', vim.lsp.buf.type_definition, '[t]ype definition')

        vim.keymap.set({ 'n', 'x' }, '<leader>F', vim.lsp.buf.format,
          { buffer = event.buf, desc = 'LSP: [F]ormat selection' })

        vim.api.nvim_buf_create_user_command(event.buf, 'Format', function(_)
          vim.lsp.buf.format()
        end, { desc = 'LSP: Format current buffer with LSP' })

        -- The following two autocommands are used to highlight references of the
        -- word under your cursor when your cursor rests there for a little while.
        --    See `:help CursorHold` for information about when this is executed
        --
        -- When you move your cursor, the highlights will be cleared (the second autocommand).
        local client = vim.lsp.get_client_by_id(event.data.client_id)
        if client and client.server_capabilities.documentHighlightProvider then
          vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
            buffer = event.buf,
            callback = vim.lsp.buf.document_highlight,
          })

          vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
            buffer = event.buf,
            callback = vim.lsp.buf.clear_references,
          })
        end
      end
    })

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

    local servers = {
      -- clangd = {},
      -- pyright = {},
      -- rust_analyzer = {},
      gopls = {},
      marksman = {},
      bashls = {},
      jsonls = {},
      clangd = {},
      ts_ls = {},
      -- vtsls = {},
      eslint = {},
      html = {},
      cssls = {},
      angularls = {},
      lua_ls = {
        -- cmd = {...},
        -- filetypes { ...},
        -- capabilities = {},
        settings = {
          Lua = {
            runtime = { version = 'LuaJIT' },
            workspace = {
              checkThirdParty = false,
              library = {
                '${3rd}/luv/library',
                unpack(vim.api.nvim_get_runtime_file('', true)),
              },
              -- If lua_ls is really slow on your computer, you can try this instead:
              -- library = { vim.env.VIMRUNTIME },
            },
            completion = {
              callSnippet = 'Replace',
            },
            -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
            -- diagnostics = { disable = { 'missing-fields' } },
          },
        },
      },
    }

    -- mason-lspconfig requires that this to be setup before setting up the servers.
    require('mason').setup()

    -- You can add other tools here that you want Mason to install
    -- for you, so that they are available from within Neovim.
    local ensure_installed = vim.tbl_keys(servers or {})
    -- vim.list_extend(ensure_installed, {
    --   'stylua', -- Used to format lua code
    -- })
    require('mason-tool-installer').setup { ensure_installed = ensure_installed }

    require('neodev').setup()

    require('mason-lspconfig').setup({
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          -- This handles overriding only values explicitly passed
          -- by the server configuration above. Useful when disabling
          -- certain features of an LSP (for example, turning off formatting for tsserver)
          server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
          require('lspconfig')[server_name].setup(server)
        end,
      },
    })
  end
}
