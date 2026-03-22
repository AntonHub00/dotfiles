return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	build = ":TSUpdate",
	lazy = false,
	dependencies = {
		"nvim-treesitter/nvim-treesitter-context",
	},
	config = function()
		local treesitter = require("nvim-treesitter")

		local langs = {
			"c",
			"cpp",
			"go",
			"lua",
			"python",
			"rust",
			"tsx",
			"javascript",
			"typescript",
			"vimdoc",
			"vim",
			"bash",
			"json",
			"markdown",
			"html",
			"http",
			"regex",
			"markdown_inline",
			"yaml",
			"ini",
			"templ",
			"c_sharp",
			"gomod",
			"gosum",
			"gowork",
			"gotmpl",
			"sql",
		}

		treesitter.install(langs)

		local ignore_filetypes = {
			"blink-cmp-menu",
			"checkhealth",
			"lazy",
			"lazy_backdrop",
			"mason",
			"mason_backdrop",
			"fzf",
			"fidget",
		}

		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "*" },
			callback = function(event)
				if vim.tbl_contains(ignore_filetypes, event.match) then
					return
				end

				local lang = vim.treesitter.language.get_lang(event.match)
				local buf = event.buf

				if not pcall(vim.treesitter.language.inspect, lang) then
					vim.notify("Treesitter parser not installed: " .. lang, vim.log.levels.WARN)
					return
				end

				vim.treesitter.start(buf, lang)
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" -- Experimental. Does this work OK?
				-- vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
				-- vim.wo[0][0].foldmethod = "expr"
				-- vim.wo.foldlevel = 4
			end,
		})

		local t_ctx = require("treesitter-context")
		t_ctx.setup({
			multiline_threshold = 2,
		})

		vim.keymap.set("n", "<leader>c", function()
			t_ctx.go_to_context(vim.v.count1)
		end, { desc = "go to [c]context" })
	end,
}
