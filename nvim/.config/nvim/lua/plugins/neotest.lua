local function setup_neotest_highlights()
	local is_light = vim.o.background == "light"

	local colors = is_light
			and {
				failed = "#d7191c",
				passed = "#1a7f37",
				running = "#b45309",
				skipped = "#0077aa",
				file = "#0077aa",
				dir = "#0077aa",
				indent = "#6c6f7a",
				watching = "#b45309",
				namespace = "#7c3aed",
				adapter = "#d7191c",
				marker = "#c55a00",
				winselect = "#0077aa",
				expand = "#4c6a92",
			}
		or {
			failed = "#f70067",
			passed = "#96f291",
			running = "#ffec63",
			skipped = "#00f1f5",
			file = "#00f1f5",
			dir = "#00f1f5",
			indent = "#8b8b8b",
			watching = "#ffec63",
			namespace = "#d484ff",
			adapter = "#f70067",
			marker = "#f79000",
			winselect = "#00f1f5",
			expand = "#8094b4",
		}

	local h = vim.api.nvim_set_hl
	h(0, "NeotestFailed", { fg = colors.failed })
	h(0, "NeotestTarget", { fg = colors.failed })
	h(0, "NeotestPassed", { fg = colors.passed })
	h(0, "NeotestRunning", { fg = colors.running })
	h(0, "NeotestSkipped", { fg = colors.skipped })
	h(0, "NeotestFile", { fg = colors.file })
	h(0, "NeotestDir", { fg = colors.dir })
	h(0, "NeotestIndent", { fg = colors.indent })
	h(0, "NeotestWatching", { fg = colors.watching })
	h(0, "NeotestNamespace", { fg = colors.namespace })
	h(0, "NeotestAdapterName", { fg = colors.adapter })
	h(0, "NeotestExpandMarker", { fg = colors.expand })
	h(0, "NeotestMarked", { fg = colors.marker, bold = true })
	h(0, "NeotestWinSelect", { fg = colors.winselect, bold = true })
	h(0, "NeotestFocused", { bold = true, underline = true })
end

return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"nsidorenco/neotest-vstest",
	},
	config = function()
		setup_neotest_highlights()

		vim.api.nvim_create_augroup("NeotestHighlights", { clear = true })
		vim.api.nvim_create_autocmd("ColorScheme", {
			group = "NeotestHighlights",
			pattern = "*",
			callback = setup_neotest_highlights,
		})

		require("neotest").setup({
			adapters = {
				require("neotest-vstest"),
			},
		})
	end,
}
