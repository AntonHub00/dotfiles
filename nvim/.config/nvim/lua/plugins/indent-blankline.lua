return {
	"lukas-reineke/indent-blankline.nvim",
	-- enabled = false,
	main = "ibl",
	config = function()
		local ibl = require("ibl")
		ibl.setup({
			scope = {
				enabled = false,
			},
			indent = {
				char = "│",
				tab_char = "│",
			},
		})
	end,
}
