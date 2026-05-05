return {
	"JoosepAlviste/nvim-ts-context-commentstring",
	"tpope/vim-surround",
	"tpope/vim-repeat",
	"nvim-tree/nvim-web-devicons",
	"nvim-lua/plenary.nvim",
	{
		"tpope/vim-fugitive",
		enabled = true,
		dependencies = {
			"tpope/vim-rhubarb",
			"cedarbaum/fugitive-azure-devops.vim",
		},
		config = function()
			vim.api.nvim_set_keymap(
				"n",
				"<leader>gg",
				"<cmd>G<cr>",
				{ noremap = true, silent = true, desc = "git status (vim-fugitive)" }
			)
		end,
	},
}
