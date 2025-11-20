return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {},
	keys = {
		{
			"<leader>ca",
			function()
				require("fzf-lua").lsp_code_actions({
					winopts = {
						preview = { hidden = true },
					},
				})
			end,
			desc = "[f]ind [F]iles",
		},
		{
			"<leader>ff",
			function()
				require("fzf-lua").files({
					winopts = {
						preview = { hidden = true },
					},
				})
			end,
			desc = "[f]ind [F]iles",
		},
		{
			"<leader>fxn",
			function()
				require("fzf-lua").files({
					cwd = "~/.dotfiles/nvim/.config/nvim",
					winopts = {
						preview = { hidden = true },
					},
				})
			end,
			desc = "[f]ind [x] [n]eovim config files",
		},
		{
			"<leader>fgl",
			function()
				require("fzf-lua").live_grep()
			end,
			desc = "[f]ind [g]rep [l]ive",
		},
		{
			"<leader>fgs",
			function()
				require("fzf-lua").grep_cword()
			end,
			desc = "[f]ind [g]rep [s]tring",
		},
		{
			"<leader>fb",
			function()
				require("fzf-lua").buffers()
			end,
			desc = "[f]ind [B]uffers",
		},
		{
			"<leader>fB",
			function()
				require("fzf-lua").blines()
			end,
			desc = "[f]ind [b]uffer fuzzy",
		},
		{
			"<leader>fcc",
			function()
				require("fzf-lua").commands()
			end,
			desc = "[f]ind [c]ommands",
		},
		{
			"<leader>fch",
			function()
				require("fzf-lua").command_history()
			end,
			desc = "[f]ind [c]ommand [h]istory",
		},
		{
			"<leader>fr",
			function()
				require("fzf-lua").resume()
			end,
			desc = "[f]ind [r]esume",
		},
		{
			"<leader>fo",
			function()
				require("fzf-lua").oldfiles({
					winopts = {
						preview = { hidden = true },
					},
				})
			end,
			desc = "[f]ind [o]ld files",
		},
		{
			"<leader>fsh",
			function()
				require("fzf-lua").search_history()
			end,
			desc = "[f]ind [s]earch [h]istory",
		},
		{
			"<leader>fqq",
			function()
				require("fzf-lua").quickfix()
			end,
			desc = "[f]ind [q]uickfix",
		},
		{
			"<leader>fqs",
			function()
				require("fzf-lua").quickfix_stack()
			end,
			desc = "[f]ind [q]uickfix [s]tack",
		},
		{
			"<leader>fa",
			function()
				require("fzf-lua").builtin()
			end,
			desc = "[f]ind [a]ll (builtin)",
		},
		{
			"<leader>flr",
			function()
				require("fzf-lua").lsp_references()
			end,
			desc = "[f]ind [l]sp [r]eferences",
		},
		{
			"<leader>fli",
			function()
				require("fzf-lua").lsp_implementations()
			end,
			desc = "[f]ind [l]sp [i]mplementations",
		},
		{
			"<leader>fld",
			function()
				require("fzf-lua").lsp_definitions()
			end,
			desc = "[f]ind [l]sp [d]efinitions",
		},
		{
			"<leader>flD",
			function()
				require("fzf-lua").lsp_declarations()
			end,
			desc = "[f]ind [l]sp [D]eclarations",
		},
		{
			"<leader>flt",
			function()
				require("fzf-lua").lsp_typedefs()
			end,
			desc = "[f]ind [l]sp [t]ype definitions",
		},
		{
			"<leader>fls",
			function()
				require("fzf-lua").lsp_document_symbols()
			end,
			desc = "[f]ind [l]sp [s]symbols (document)",
		},
		{
			"<leader>flS",
			function()
				require("fzf-lua").lsp_live_workspace_symbols()
			end,
			desc = "[f]ind [l]sp [s]symbols (live workspace)",
		},
		{
			"<leader>fla",
			function()
				require("fzf-lua").lsp_document_diagnostics()
			end,
			desc = "[f]ind [l]sp di[a]gnostics (buffer)",
		},
		{
			"<leader>flA",
			function()
				require("fzf-lua").lsp_workspace_diagnostics()
			end,
			desc = "[f]ind [l]sp di[A]gnostics (workspace)",
		},
	},
	config = function()
		require("fzf-lua").setup({
			"hide",
			fzf_colors = true,
		})
	end,
}
