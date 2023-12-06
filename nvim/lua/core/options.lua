vim.g.mapleader = ' '
vim.g_maplocalleader = ' '

vim.opt.number = true
vim.opt.ai = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.expandtab = true
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 5
vim.opt.mouse = 'a'
vim.opt.cursorline = true
vim.opt.encoding = 'utf-8'
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.backspace = 'indent,eol,start'
vim.opt.showcmd = true
vim.opt.expandtab = true

vim.opt.signcolumn = "yes"

--[[ vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()" ]]


vim.keymap.set('n', '<leader>k', ':bnext<CR>')
vim.keymap.set('n', '<leader>j', ':bprevious<CR>')
vim.keymap.set('n', '<leader>x', ':bp<bar>sp<bar>bn<bar>bd!<CR>')
vim.keymap.set('t', '<leader><Esc>', '<C-\\><C-n>:bd!<CR>')
vim.keymap.set('t', '<leader>`', '<C-\\><C-n>')
-- replaced by toggleterm plugin
-- vim.keymap.set('n', '<leader>a', ':vs!<CR>:terminal<CR>i ./vimrun.sh <CR>')
-- vim.keymap.set('n', '<leader>s', ':only<CR>:terminal<CR>i ./vimrun.sh <CR>')
vim.keymap.set('n', 'gh', '^')
vim.keymap.set('n', 'gl', '$')
vim.keymap.set('n', 'gk', 'gg')
vim.keymap.set('n', 'gj', 'G')
vim.keymap.set('v', 'gh', '^')
vim.keymap.set('v', 'gl', '$')
vim.keymap.set('v', 'gk', 'gg')
vim.keymap.set('v', 'gj', 'G')
