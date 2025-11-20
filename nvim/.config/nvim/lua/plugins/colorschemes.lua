local default_colorscheme = "zenbones"

local function is_default(name)
	return name == default_colorscheme
end

return {
	{
		"gbprod/nord.nvim",
		priority = is_default("nord") and 1000 or nil,
		lazy = not is_default("nord"),
		config = function()
			-- require("nord").setup({})
			vim.cmd.colorscheme("nord")
		end,
	},
	-- {
	--   'shaunsingh/nord.nvim',
	--   -- priority = 1000,
	--   lazy = true,
	--   -- enable = false,
	--   config = function()
	--     -- vim.g.nord_contrast = true
	--     -- vim.g.nord_borders = true
	--     -- vim.g.nord_bold = true
	--
	--     vim.o.background = 'dark'
	--
	--     require('nord').set()
	--
	--     -- vim.cmd.colorscheme 'nord'
	--   end,
	-- },
	{
		"navarasu/onedark.nvim",
		priority = is_default("onedark") and 1000 or nil,
		lazy = not is_default("onedark"),
		config = function()
			require("onedark").setup({
				-- Set a style preset. 'dark' is default. Options: dark, darker, cool, deep, warm, warmer, light
				-- style = 'darker',
			})

			vim.o.background = "light"

			require("onedark").load()
		end,
	},
	{
		"catppuccin/nvim",
		priority = is_default("catppuccin") and 1000 or nil,
		lazy = not is_default("catppuccin"),
		name = "catppuccin",
		config = function()
			require("catppuccin").setup({
				no_italic = true,
			})

			vim.o.background = "light"

			-- vim.cmd.colorscheme 'catppuccin-mocha'
			-- vim.cmd.colorscheme 'catppuccin-macchiato'
			vim.cmd.colorscheme("catppuccin-latte")
			-- vim.cmd.colorscheme 'catppuccin-frappe'
			-- vim.cmd.colorscheme 'catppuccin'
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		priority = is_default("kanagawa") and 1000 or nil,
		lazy = not is_default("kanagawa"),
		config = function()
			vim.o.background = "dark"
			-- vim.cmd.colorscheme 'kanagawa'
			vim.cmd.colorscheme("kanagawa-wave")
		end,
	},
	{
		"folke/tokyonight.nvim",
		priority = is_default("tokyonight") and 1000 or nil,
		lazy = not is_default("tokyonight"),
		config = function()
			-- vim.cmd.colorscheme 'tokyonight'
			-- vim.cmd.colorscheme 'tokyonight-night'
			-- vim.cmd.colorscheme 'tokyonight-storm'
			-- vim.cmd.colorscheme 'tokyonight-day'
			vim.cmd.colorscheme("tokyonight-moon")

			vim.o.background = "dark"
		end,
	},
	{
		"mcchrish/zenbones.nvim",
		priority = is_default("zenbones") and 1000 or nil,
		lazy = not is_default("zenbones"),
		dependencies = { "rktjmp/lush.nvim" },
		config = function()
			vim.o.background = "light"

			vim.cmd.colorscheme("zenbones")
			-- vim.cmd.colorscheme 'zenwritten'
			-- vim.cmd.colorscheme 'nordbones'
			-- vim.cmd.colorscheme 'zenburned'
			-- vim.cmd.colorscheme 'kanagawabones'
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = is_default("gruvbox") and 1000 or nil,
		lazy = not is_default("gruvbox"),
		config = function()
			require("gruvbox").setup({
				italic = {
					strings = false,
					emphasis = false,
					comments = false,
					operators = false,
					folds = false,
				},
				overrides = {
					LspReferenceText = { bg = "#504945" },
					LspReferenceRead = { bg = "#504945" },
					LspReferenceWrite = { bg = "#504945" },
				},
				dim_inactive = false,
				transparent_mode = false,
			})

			vim.o.background = "dark"
			vim.cmd.colorscheme("gruvbox")
		end,
	},
	{
		"sainnhe/sonokai",
		priority = is_default("sonokai") and 1000 or nil,
		lazy = not is_default("sonokai"),
		config = function()
			vim.g.sonokai_style = "default"
			vim.g.sonokai_better_performance = 1
			vim.cmd.colorscheme("sonokai")
		end,
	},
	{
		"sainnhe/gruvbox-material",
		priority = is_default("gruvbox-material") and 1000 or nil,
		lazy = not is_default("gruvbox-material"),
		config = function()
			vim.g.gruvbox_material_background = "hard"
			-- vim.g.gruvbox_material_background = 'medium'
			vim.g.gruvbox_material_foreground = "original"
			vim.g.gruvbox_material_enable_bold = 1
			vim.g.gruvbox_material_statusline_style = "original"
			vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
			vim.g.gruvbox_material_better_performance = 1
			vim.cmd.colorscheme("gruvbox-material")
		end,
	},
	{
		"sainnhe/everforest",
		priority = is_default("everforest") and 1000 or nil,
		lazy = not is_default("everforest"),
		config = function()
			vim.g.everforest_background = "hard"
			vim.g.everforest_diagnostic_virtual_text = "colored"
			vim.g.everforest_better_performance = 1
			vim.cmd.colorscheme("everforest")
		end,
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
		priority = is_default("oxocarbon") and 1000 or nil,
		lazy = not is_default("oxocarbon"),
		config = function()
			vim.cmd.colorscheme("oxocarbon")
		end,
	},
	{
		"EdenEast/nightfox.nvim",
		priority = is_default("nightfox") and 1000 or nil,
		lazy = not is_default("nightfox"),
		config = function()
			-- vim.cmd.colorscheme 'nightfox'
			vim.cmd.colorscheme("dawnfox")
		end,
	},
	{
		"savq/melange-nvim",
		priority = is_default("melange") and 1000 or nil,
		lazy = not is_default("melange"),
		config = function()
			vim.cmd.colorscheme("melange")
		end,
	},
	{
		"rose-pine/neovim",
		priority = is_default("rose-pine") and 1000 or nil,
		lazy = not is_default("rose-pine"),
		name = "rose-pine",
		config = function()
			vim.cmd.colorscheme("rose-pine")
		end,
	},
	{
		"aktersnurra/no-clown-fiesta.nvim",
		priority = is_default("no-clown-fiesta") and 1000 or nil,
		lazy = not is_default("no-clown-fiesta"),
		config = function()
			vim.cmd.colorscheme("no-clown-fiesta")
		end,
	},
	{
		"ramojus/mellifluous.nvim",
		priority = is_default("mellifluous") and 1000 or nil,
		lazy = not is_default("mellifluous"),
		config = function()
			vim.cmd.colorscheme("mellifluous")
		end,
	},
	{
		"Mofiqul/vscode.nvim",
		priority = is_default("vscode") and 1000 or nil,
		lazy = not is_default("vscode"),
		config = function()
			vim.cmd.colorscheme("vscode")
		end,
	},
	{
		"vague2k/vague.nvim",
		priority = is_default("vague") and 1000 or nil,
		lazy = not is_default("vague"),
		config = function()
			require("vague").setup({
				-- optional configuration here
			})
			vim.cmd.colorscheme("vague")
		end,
	},
	{
		"slugbyte/lackluster.nvim",
		priority = is_default("lackluster") and 1000 or nil,
		lazy = not is_default("lackluster"),
		init = function()
			vim.cmd.colorscheme("lackluster")
			-- vim.cmd.colorscheme("lackluster-hack") -- my favorite
			-- vim.cmd.colorscheme("lackluster-mint")
		end,
	},
	{
		"wnkz/monoglow.nvim",
		priority = is_default("monoglow") and 1000 or nil,
		lazy = not is_default("monoglow"),
		opts = {},
		config = function()
			vim.cmd.colorscheme("monoglow")
		end,
	},
	{
		"ficcdaf/ashen.nvim",
		priority = is_default("ashen") and 1000 or nil,
		lazy = not is_default("ashen"),
		-- tag = "*",
		config = function()
			vim.cmd.colorscheme("ashen")
		end,
	},
	{
		"p00f/alabaster.nvim",
		priority = is_default("alabaster") and 1000 or nil,
		lazy = not is_default("alabaster"),
		config = function()
			vim.cmd.colorscheme("alabaster")
		end,
	},
	{
		"dgox16/oldworld.nvim",
		priority = is_default("oldworld") and 1000 or nil,
		lazy = not is_default("oldworld"),
		config = function()
			vim.cmd.colorscheme("oldworld")
		end,
	},
	{
		"oonamo/ef-themes.nvim",
		priority = is_default("ef-theme") and 1000 or nil,
		lazy = not is_default("ef-theme"),
		config = function()
			vim.cmd.colorscheme("ef-theme")
		end,
	},
	{
		"projekt0n/github-nvim-theme",
		priority = is_default("github-theme") and 1000 or nil,
		lazy = not is_default("github-theme"),
		name = "github-theme",
		config = function()
			require("github-theme").setup({})
			vim.cmd.colorscheme("github_light_default")
		end,
	},
}
