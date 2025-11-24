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
				"pyright",
				"rust_analyzer",
				"gopls",
				"templ",
				"tailwindcss",
				"marksman",
				"bashls",
				"jsonls",
				"clangd",
				"ts_ls",
				"vtsls",
				"eslint",
				"html",
				"cssls",
				"angularls",
				"yamlls",
				"golangci_lint_ls",
				"harper_ls",
				"lua_ls",
				"omnisharp",
			},
			-- This enables the LSPs for me (calls "vim.lsp.config" for each server)
			automatic_enable = false,
		})

		vim.lsp.enable("pyright")
		vim.lsp.enable("rust_analyzer")
		vim.lsp.enable("gopls")
		-- vim.lsp.enable("golangci_lint_ls")
		vim.lsp.enable("templ")
		vim.lsp.enable("tailwindcss")
		vim.lsp.enable("marksman")
		vim.lsp.enable("bashls")
		vim.lsp.enable("jsonls")
		vim.lsp.enable("clangd")
		vim.lsp.enable("ts_ls")
		-- vim.lsp.enable("vtsls")
		vim.lsp.enable("eslint")
		vim.lsp.enable("html")
		vim.lsp.enable("cssls")
		-- vim.lsp.enable("angularls")
		vim.lsp.enable("yamlls")
		vim.lsp.enable("harper_ls")
		vim.lsp.enable("lua_ls")
		vim.lsp.enable("omnisharp")
		-- vim.lsp.enable("roslyn_ls")
	end,
}
