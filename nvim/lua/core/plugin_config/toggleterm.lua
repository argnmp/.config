require("toggleterm").setup {
}
vim.keymap.set('n', '<leader>t', ':ToggleTerm<CR>')
vim.keymap.set('n', '<leader>s', ':ToggleTerm<CR> ./vimrun.sh <CR>')
