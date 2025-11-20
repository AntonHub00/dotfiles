return {
	"nvim-mini/mini.files",
	version = "*",
	config = function()
		require("mini.files").setup()

		vim.keymap.set("n", "<c-n>", function()
			MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
		end, { desc = "[N]vim tree toggle" })

		vim.keymap.set("n", "<c-s-n>", function()
			MiniFiles.open(nil, false)
		end, { desc = "[N]vim tree toggle" })
	end,
}
