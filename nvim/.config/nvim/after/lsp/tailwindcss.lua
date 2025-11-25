local default_config = {}
local ok, config = Get_default_lsp_config("tailwindcss")
if ok then
	default_config = config
end

return {
	filetypes = vim.list_extend(vim.deepcopy(default_config.filetypes or {}), { "gotmpl" }),
	settings = {
		tailwindCSS = {
			experimental = {
				-- classRegex = { 'class="([^"]*)"', 'className="([^"]*)"' },
				classRegex = { "\\w*[Cc]lassName\\s*=\\s*[\"']([^\"']*)[\"']" },
			},
			includeLanguages = {
				gotmpl = "html",
			},
		},
	},
}
