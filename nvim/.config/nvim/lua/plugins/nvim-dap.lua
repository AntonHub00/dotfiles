return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"igorlfs/nvim-dap-view",

		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		dapui.setup()

		local netcoredbg_debugger = vim.fn.exepath("netcoredbg")
		if netcoredbg_debugger ~= "" then
			dap.adapters.coreclr = {
				type = "executable",
				command = netcoredbg_debugger,
				args = { "--interpreter=vscode" },
			}
		end

		dap.configurations.cs = {
			{
				type = "coreclr",
				name = "launch - netcoredbg",
				request = "launch",
				program = function()
					return vim.fn.input("Path to dll", vim.fn.getcwd() .. "/bin/Debug/", "file")
				end,
				env = {
					ASPNETCORE_ENVIRONMENT = "Development",
					ASPNETCORE_URLS = "http://localhost:5000",
				},
			},
		}
	end,
}
