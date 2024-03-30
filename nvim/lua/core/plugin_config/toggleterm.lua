require("toggleterm").setup {
}
vim.keymap.set('n', '<leader>t', ':ToggleTerm direction=float <CR>')
vim.keymap.set('n', '<leader>s', ':ToggleTerm size=20 <CR> ./vimrun.sh <CR>')
