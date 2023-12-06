local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
  'Mofiqul/dracula.nvim',
  { "catppuccin/nvim", as = "catppuccin" },
  "rebelot/kanagawa.nvim",
  'sainnhe/everforest',

  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  'nvim-treesitter/nvim-treesitter',
  {
      'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  {
      "hrsh7th/nvim-cmp",
      dependencies = {
          "hrsh7th/cmp-nvim-lsp",
          "hrsh7th/cmp-nvim-lua",
          "hrsh7th/cmp-buffer",
          "hrsh7th/cmp-path",
          "hrsh7th/cmp-cmdline",
          "saadparwaiz1/cmp_luasnip",
          "L3MON4D3/LuaSnip",
      },
  },
  'numToStr/Comment.nvim',
  "lukas-reineke/indent-blankline.nvim",
  "windwp/nvim-autopairs",
  {'akinsho/toggleterm.nvim', version = "*", config = true},
})
