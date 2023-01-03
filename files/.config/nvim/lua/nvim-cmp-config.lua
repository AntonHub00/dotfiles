local lspkind = require "lspkind"
local cmp = require "cmp"
local luasnip = require "luasnip"

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.close(),
    ["<C-y>"] = cmp.mapping.confirm { select = true },
    ["<C-space>"] = cmp.mapping.complete(),
  }),
  sources = {
    { name = "buffer" },
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "path" },
  },
  formatting = {
    format = lspkind.cmp_format({
      with_text = true,
      menu = {
        buffer = "[Buf]",
        nvim_lsp = "[LSP]",
        path = "[Path]",
        luasnip = "[Snip]",
      },
    }),
  },
  experimental = {
    native_menu = false,
    ghost_text = true,
  },
}
