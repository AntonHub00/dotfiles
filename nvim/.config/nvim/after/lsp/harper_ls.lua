local default_config = {}
local ok, config = Get_default_lsp_config("harper_ls")
if ok then
	default_config = config
end

return {
	filetypes = vim.list_extend(vim.deepcopy(default_config.filetypes or {}), { "gotmpl" }),
	settings = {
		["harper-ls"] = {
			linters = {
				SentenceCapitalization = false,
				LongSentences = false,
			},
		},
	},
}
