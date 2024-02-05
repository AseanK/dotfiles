local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)
-- lazy.vim plugins
require('lazy').setup({
  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  -- file explorer
  "nvim-tree/nvim-tree.lua",

  -- auto complete symbols
  "windwp/nvim-autopairs",

  -- highlight selected val
  "RRethy/vim-illuminate",

  -- display color
  "NvChad/nvim-colorizer.lua",

  -- smooth scroll [Not activate]
  -- "karb94/neoscroll.nvim",

  -- file explorer
  -- "stevearc/oil.nvim",

  -- Add indentation guides even on blank lines
  { 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {}, },

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim',               opts = {} },


  require 'plugin.lualine',
  require 'plugin.lspconfig',
  require 'plugin.whichkey',
  require 'plugin.treesitter',
  require 'plugin.telescope',
  require 'plugin.theme',
  require 'plugin.cmp',
  require 'plugin.harpoon',
}, {})
