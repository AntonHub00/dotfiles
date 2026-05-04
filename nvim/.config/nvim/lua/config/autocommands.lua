-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({
			timeout = 500,
		})
	end,
	group = highlight_group,
	pattern = "*",
})

-- [[ filetype for envrc files ]]
local envrc_filetype_group = vim.api.nvim_create_augroup("EnvrcFiletypeGroup", { clear = true })
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	group = envrc_filetype_group,
	pattern = ".envrc*",
	callback = function(opts)
		vim.api.nvim_set_option_value("filetype", "bash", { buf = opts.buf })
	end,
})

-- [[ filetype for ghostty config files ]]
local ghostty_filetype_group = vim.api.nvim_create_augroup("GhosttyFiletypeGroup", { clear = true })
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	group = ghostty_filetype_group,
	pattern = "*/ghostty/config",
	callback = function(opts)
		vim.api.nvim_set_option_value("filetype", "config", { buf = opts.buf })
	end,
})

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
	callback = function(event)
		local map = function(keys, func, desc)
			vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
		end

		-- map('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

		map("gr", vim.lsp.buf.references, "[g]o to [r]eferences")
		map("gi", vim.lsp.buf.implementation, "[g]o to [i]mplementation")
		map("gd", vim.lsp.buf.definition, "[g]o to [d]efinition")
		map("gD", vim.lsp.buf.declaration, "[g]o to [D]declaration")
		map("<leader>rn", vim.lsp.buf.rename, "[r]e[n]ame")
		map("<leader>t", vim.lsp.buf.type_definition, "[t]ype definition")

		-- The following two autocommands are used to highlight references of the
		-- word under your cursor when your cursor rests there for a little while.
		--    See `:help CursorHold` for information about when this is executed
		--
		-- When you move your cursor, the highlights will be cleared (the second autocommand).
		local client = vim.lsp.get_client_by_id(event.data.client_id)
		if client and client.server_capabilities.documentHighlightProvider then
			vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
				buffer = event.buf,
				callback = vim.lsp.buf.document_highlight,
			})

			vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
				buffer = event.buf,
				callback = vim.lsp.buf.clear_references,
			})
		end
	end,
})

vim.api.nvim_create_autocmd({ "TermRequest" }, {
	desc = "Handles OSC 7 dir change requests",
	callback = function(ev)
		local val, n = string.gsub(ev.data.sequence, "\027]7;file://[^/]*", "")
		if n > 0 then
			-- OSC 7: dir-change
			local dir = val
			if vim.fn.isdirectory(dir) == 0 then
				vim.notify("invalid dir: " .. dir)
				return
			end
			vim.b[ev.buf].osc7_dir = dir
			if vim.api.nvim_get_current_buf() == ev.buf then
				vim.cmd.lcd(dir)
			end
		end
	end,
})

vim.api.nvim_create_autocmd("TermOpen", {
	command = "setlocal signcolumn=auto",
})
local ns = vim.api.nvim_create_namespace("my.terminal.prompt")
vim.api.nvim_create_autocmd("TermRequest", {
	callback = function(ev)
		if string.match(ev.data.sequence, "^\027]133;A") then
			local lnum = ev.data.cursor[1]
			vim.api.nvim_buf_set_extmark(ev.buf, ns, lnum - 1, 0, {
				sign_text = "▶",
				sign_hl_group = "SpecialChar",
			})
		end
	end,
})
