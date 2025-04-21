return {
  {
    "gbprod/nord.nvim",
    -- priority = 1000,
    lazy = true,
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
    'navarasu/onedark.nvim',
    -- priority = 1000,
    lazy = true,
    config = function()
      require('onedark').setup {
        -- Set a style preset. 'dark' is default. Options: dark, darker, cool, deep, warm, warmer, light
        -- style = 'darker',
      }

      vim.o.background = "light"

      require('onedark').load()
    end,
  },
  {
    'catppuccin/nvim',
    priority = 1000,
    -- lazy = true,
    name = 'catppuccin',
    config = function()
      vim.o.background = 'light'

      -- vim.cmd.colorscheme 'catppuccin-mocha'
      -- vim.cmd.colorscheme 'catppuccin-macchiato'
      vim.cmd.colorscheme 'catppuccin-latte'
      -- vim.cmd.colorscheme 'catppuccin-frappe'
      -- vim.cmd.colorscheme 'catppuccin'
    end
  },
  {
    'rebelot/kanagawa.nvim',
    -- priority = 1000,
    lazy = true,
    config = function()
      vim.o.background = 'dark'
      -- vim.cmd.colorscheme 'kanagawa'
      vim.cmd.colorscheme 'kanagawa-wave'
    end
  },
  {
    'folke/tokyonight.nvim',
    -- priority = 1000,
    lazy = true,
    config = function()
      -- vim.cmd.colorscheme 'tokyonight'
      -- vim.cmd.colorscheme 'tokyonight-night'
      -- vim.cmd.colorscheme 'tokyonight-storm'
      -- vim.cmd.colorscheme 'tokyonight-day'
      vim.cmd.colorscheme 'tokyonight-moon'

      vim.o.background = 'dark'
    end
  },
  {
    'mcchrish/zenbones.nvim',
    -- priority = 1000,
    lazy = true,
    dependencies = { 'rktjmp/lush.nvim' },
    config = function()
      vim.o.background = 'light'

      vim.cmd.colorscheme 'zenbones'
      -- vim.cmd.colorscheme 'zenwritten'
      -- vim.cmd.colorscheme 'nordbones'
      -- vim.cmd.colorscheme 'zenburned'
      -- vim.cmd.colorscheme 'kanagawabones'
    end
  },
  {
    "ellisonleao/gruvbox.nvim",
    -- priority = 1000,
    lazy = true,
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

      vim.o.background = 'dark'
      vim.cmd.colorscheme 'gruvbox'
    end
  },
  {
    'sainnhe/sonokai',
    -- priority = 1000,
    lazy = true,
    config = function()
      vim.g.sonokai_style = 'default'
      vim.g.sonokai_better_performance = 1
      vim.cmd.colorscheme 'sonokai'
    end
  },
  {
    'sainnhe/gruvbox-material',
    -- priority = 1000,
    lazy = true,
    config = function()
      vim.g.gruvbox_material_background = 'hard'
      -- vim.g.gruvbox_material_background = 'medium'
      vim.g.gruvbox_material_foreground = 'original'
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_statusline_style = 'original'
      vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'
      vim.g.gruvbox_material_better_performance = 1
      vim.cmd.colorscheme 'gruvbox-material'
    end
  },
  {
    'sainnhe/everforest',
    -- priority = 1000,
    lazy = true,
    config = function()
      vim.g.everforest_background = 'hard'
      vim.g.everforest_diagnostic_virtual_text = 'colored'
      vim.g.everforest_better_performance = 1
      vim.cmd.colorscheme 'everforest'
    end
  },
  {
    'nyoom-engineering/oxocarbon.nvim',
    -- priority = 1000,
    lazy = true,
    config = function()
      vim.cmd.colorscheme 'oxocarbon'
    end
  },
  {
    'EdenEast/nightfox.nvim',
    -- priority = 1000,
    lazy = true,
    config = function()
      -- vim.cmd.colorscheme 'nightfox'
      vim.cmd.colorscheme 'dawnfox'
    end
  },
  {
    'savq/melange-nvim',
    -- priority = 1000,
    lazy = true,
    config = function()
      vim.cmd.colorscheme 'melange'
    end
  },
  {
    'rose-pine/neovim',
    -- priority = 1000,
    lazy = true,
    name = 'rose-pine',
    config = function()
      vim.cmd.colorscheme 'rose-pine'
    end
  },
  {
    'aktersnurra/no-clown-fiesta.nvim',
    -- priority = 1000,
    lazy = true,
    config = function()
      vim.cmd.colorscheme 'no-clown-fiesta'
    end
  },
  {
    'ramojus/mellifluous.nvim',
    -- priority = 1000,
    lazy = true,
    config = function()
      vim.cmd.colorscheme 'mellifluous'
    end
  },
  {
    'Mofiqul/vscode.nvim',
    -- priority = 1000,
    lazy = true,
    config = function()
      vim.cmd.colorscheme 'vscode'
    end
  },
  {
    "vague2k/vague.nvim",
    -- priority = 1000,
    lazy = true,
    config = function()
      require("vague").setup({
        -- optional configuration here
      })
      vim.cmd.colorscheme "vague"
    end
  },
  {
    "slugbyte/lackluster.nvim",
    -- priority = 1000,
    lazy = true,
    init = function()
      vim.cmd.colorscheme "lackluster"
      -- vim.cmd.colorscheme("lackluster-hack") -- my favorite
      -- vim.cmd.colorscheme("lackluster-mint")
    end,
  },
  {
    "wnkz/monoglow.nvim",
    -- priority = 1000,
    lazy = true,
    opts = {},
    config = function()
      vim.cmd.colorscheme "monoglow"
    end
  },
  {
    "ficcdaf/ashen.nvim",
    -- priority = 1000,
    lazy = true,
    -- tag = "*",
    config = function()
      vim.cmd.colorscheme "ashen"
    end
  },
  {
    "p00f/alabaster.nvim",
    -- priority = 1000,
    lazy = true,
    config = function()
      vim.cmd.colorscheme "alabaster"
    end
  },
  {
    "dgox16/oldworld.nvim",
    -- priority = 1000,
    lazy = true,
    config = function()
      vim.cmd.colorscheme "oldworld"
    end
  },
  {
    "oonamo/ef-themes.nvim",
    -- priority = 1000,
    lazy = true,
    config = function()
      vim.cmd.colorscheme "ef-theme"
    end
  },
  {
    "projekt0n/github-nvim-theme",
    -- priority = 1000,
    lazy = true,
    name = "github-theme",
    config = function()
      require('github-theme').setup({})
      vim.cmd.colorscheme("github_light_default")
    end
  },
}
