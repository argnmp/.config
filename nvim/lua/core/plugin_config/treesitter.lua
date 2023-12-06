require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "rust", "markdown" },
  sync_install = true,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
