return {
    {
        'shaunsingh/nord.nvim',
        -- priority = 1000,
        lazy = true,
        config = function()
          vim.g.nord_contrast = true
          vim.g.nord_borders = true

          require('nord').set()
        end,
    },
    {
        'navarasu/onedark.nvim',
        -- priority = 1000,
        lazy = true,
        config = function()
          require('onedark').setup {
            -- Set a style preset. 'dark' is default.
            style = 'cool', -- dark, darker, cool, deep, warm, warmer, light
          }

          require('onedark').load()
        end,
    },
    {
        'catppuccin/nvim',
        -- priority = 1000,
        lazy = true,
        name = 'catppuccin',
        config = function ()
          vim.cmd.colorscheme 'catppuccin'
        end
    },
    {
        'rebelot/kanagawa.nvim',
        priority = 1000,
        -- lazy = true,
        config = function ()
          vim.cmd.colorscheme 'kanagawa'
        end
    },
    {
        'folke/tokyonight.nvim',
        -- priority = 1000,
        lazy = true,
        config = function ()
          vim.cmd.colorscheme 'tokyonight'
        end
    },
 }
