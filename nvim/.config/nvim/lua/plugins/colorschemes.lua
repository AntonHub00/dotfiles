return {
  {
    'shaunsingh/nord.nvim',
    -- priority = 1000,
    lazy = true,
    -- enable = false,
    config = function()
      vim.g.nord_contrast = true
      vim.g.nord_borders = true

      vim.o.background = 'dark'

      require('nord').set()

      -- vim.cmd.colorscheme 'nord'
    end,
  },
  {
    'navarasu/onedark.nvim',
    -- priority = 1000,
    lazy = true,
    config = function()
      require('onedark').setup {
        -- Set a style preset. 'dark' is default. Options: dark, darker, cool, deep, warm, warmer, light
        style = 'darker',
      }

      require('onedark').load()
    end,
  },
  {
    'catppuccin/nvim',
    -- priority = 1000,
    lazy = true,
    name = 'catppuccin',
    config = function()
      -- vim.cmd.colorscheme 'catppuccin-mocha'
      -- vim.cmd.colorscheme 'catppuccin-macchiato'
      vim.cmd.colorscheme 'catppuccin-latte'
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
      vim.cmd.colorscheme 'tokyonight-night'
      -- vim.cmd.colorscheme 'tokyonight-storm'
      -- vim.cmd.colorscheme 'tokyonight-day'
      -- vim.cmd.colorscheme 'tokyonight-moon'
    end
  },
  {
    'mcchrish/zenbones.nvim',
    -- priority = 1000,
    lazy = true,
    dependencies = { 'rktjmp/lush.nvim' },
    config = function()
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
    priority = 1000,
    -- lazy = true,
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
}
