return {
  {
    'shaunsingh/nord.nvim',
    -- priority = 1000,
    lazy = true,
    config = function()
      vim.g.nord_contrast = true
      vim.g.nord_borders = true

      require('nord').set()
      -- vim.cmd.colorscheme = 'nord'
    end,
  },
  {
    'navarasu/onedark.nvim',
    -- priority = 1000,
    lazy = true,
    config = function()
      require('onedark').setup {
        -- Set a style preset. 'dark' is default.
        style = 'warmer', -- dark, darker, cool, deep, warm, warmer, light
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
      vim.cmd.colorscheme 'catppuccin'
    end
  },
  {
    'rebelot/kanagawa.nvim',
    -- priority = 1000,
    lazy = true,
    config = function()
      vim.cmd.colorscheme 'kanagawa'
    end
  },
  {
    'folke/tokyonight.nvim',
    -- priority = 1000,
    lazy = true,
    config = function()
      -- vim.cmd.colorscheme 'tokyonight'
      -- vim.cmd.colorscheme 'tokyonight-night'
      vim.cmd.colorscheme 'tokyonight-storm'
      -- vim.cmd.colorscheme 'tokyonight-day'
      -- vim.cmd.colorscheme 'tokyonight-moon'
    end
  },
  {
    'sainnhe/sonokai',
    -- priority = 1000,
    lazy = true,
    config = function()
      vim.cmd.colorscheme 'sonokai'
    end
  },
  {
    'mcchrish/zenbones.nvim',
    priority = 1000,
    -- lazy = true,
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
    'AlexvZyl/nordic.nvim',
    -- priority = 1000,
    lazy = true,
    config = function()
      vim.cmd.colorscheme 'nordic'
    end
  },
  {
    'sainnhe/gruvbox-material',
    -- priority = 1000,
    lazy = true,
    config = function()
      vim.cmd.colorscheme 'gruvbox-material'
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
      vim.cmd.colorscheme 'nightfox'
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
}