return {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
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
    "rafamadriz/friendly-snippets"
  },
  config = function()
    local ls = require 'luasnip'

    require('luasnip.loaders.from_vscode').lazy_load()

    ls.config.setup {}

    local s = ls.snippet
    local sn = ls.snippet_node
    local isn = ls.indent_snippet_node
    local t = ls.text_node
    local i = ls.insert_node
    local f = ls.function_node
    local c = ls.choice_node
    local d = ls.dynamic_node
    local r = ls.restore_node
    local events = require("luasnip.util.events")
    local ai = require("luasnip.nodes.absolute_indexer")
    local extras = require("luasnip.extras")
    local l = extras.lambda
    local rep = extras.rep
    local p = extras.partial
    local m = extras.match
    local n = extras.nonempty
    local dl = extras.dynamic_lambda
    local fmt = require("luasnip.extras.fmt").fmt
    local fmta = require("luasnip.extras.fmt").fmta
    local conds = require("luasnip.extras.expand_conditions")
    local postfix = require("luasnip.extras.postfix").postfix
    local types = require("luasnip.util.types")
    local parse = require("luasnip.util.parser").parse_snippet
    local ms = ls.multi_snippet
    local k = require("luasnip.nodes.key_indexer").new_key

    local function js_snipps()
      return {
        s("clgv", {
          t "console.log({ ", i(1), t " })"
        }),
        s("clgnv", {
          t "console.log({ ", i(1), t ": ", i(2), t " })"
        }),
        s("clgj", {
          t "console.log(JSON.stringify(", i(1), t ", null, 2))"
        }),
        s("clglj", {
          t "logger.debug(\"",
          i(1),
          t ": %s\", JSON.stringify(",
          f(
            function(args)
              return args[1]
            end,
            { 1 }
          ),
          t ", null, 2))"
        }),
        s("anfn", {
          t "(", i(1), t ") => {", i(2), t "}"
        }),
      }
    end

    local function lua_snipps()
      return {
        s("ins", {
          t "print(vim.inspect(", i(1), t "))"
        }),
      }
    end

    ls.add_snippets("typescriptreact", js_snipps())

    ls.add_snippets("typescript", js_snipps())

    ls.add_snippets("javascript", js_snipps())

    ls.add_snippets("javascriptreact", js_snipps())

    ls.add_snippets("lua", lua_snipps())
  end
}
