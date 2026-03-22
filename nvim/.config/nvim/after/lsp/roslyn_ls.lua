local home = vim.uv.os_homedir()
local is_mac = vim.uv.os_uname().sysname == "Darwin"
local arch = is_mac and "osx-arm64" or "linux-x64"

return {
	cmd = {
		"dotnet",
		vim.fs.joinpath(home, "lsps/roslyn/content/LanguageServer", arch, "Microsoft.CodeAnalysis.LanguageServer.dll"),
		"--logLevel", -- this property is required by the server
		"Information",
		"--extensionLogDirectory", -- this property is required by the server
		vim.fs.joinpath(vim.uv.os_tmpdir(), "roslyn_ls/logs"),
		"--stdio",
	},
}
