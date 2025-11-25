P = function(v)
	print(vim.inspect(v))
	return v
end

RELOAD = function(...)
	return require("plenary.reload").reload_module(...)
end

R = function(name)
	RELOAD(name)
	return require(name)
end

---@param lsp_name string
---@return boolean success
---@return any result
function Get_default_lsp_config(lsp_name)
	return pcall(function()
		return dofile(vim.api.nvim_get_runtime_file("lsp/" .. lsp_name .. ".lua", false)[1])
	end)
end
