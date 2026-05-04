return {
	"kdheepak/lazygit.nvim",
	lazy = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	cmd = {
		"LazyGit",
		"LazyGitConfig",
		"LazyGitCurrentFile",
		"LazyGitFilter",
		"LazyGitFilterCurrentFile",
	},
	keys = {
		{ "<leader>gG", "<cmd>LazyGit<cr>", desc = "LazyGit" },
	},
	config = function()
		vim.g.lazygit_floating_window_scaling_factor = 0.95
	end,
}
