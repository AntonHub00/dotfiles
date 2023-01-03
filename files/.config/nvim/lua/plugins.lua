local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use "EdenEast/nightfox.nvim"
  use 'folke/tokyonight.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-tree/nvim-tree.lua'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'rcarriga/nvim-notify'
  use 'nvim-lualine/lualine.nvim'
  use "nvim-lua/plenary.nvim"
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'nvim-telescope/telescope.nvim', branch = '0.1.x' }
  use 'numToStr/Comment.nvim'
  use 'windwp/nvim-autopairs'
  use { 'kylechui/nvim-surround', tag = 'main' }
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'onsails/lspkind.nvim'
  use 'rafamadriz/friendly-snippets'

  -- Completion
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
    }
  }

  use 'lewis6991/gitsigns.nvim'
  use 'sindrets/diffview.nvim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
