return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		{
			"mason-org/mason.nvim",
			opts = {
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			},
		},
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {
				-- "clangd",
				-- "pyright",
				-- "rust_analyzer",
				"gopls",
				"templ",
				"tailwindcss",
				"marksman",
				"bashls",
				"jsonls",
				"clangd",
				"ts_ls",
				-- "vtsls",
				"eslint",
				"html",
				"cssls",
				-- "angularls",
				"yamlls",
				-- "golangci_lint_ls",
				"harper_ls",
				"lua_ls",
				"omnisharp",
			},
			-- This enables the LSPs for me (calls "vim.lsp.config" for each server)
			automatic_enable = true,
		})

		-- vim.lsp.enable("roslyn_ls")
		-- vim.lsp.enable("omnisharp")
	end,
}
