local keymap = vim.keymap

-- use ; as leader key
vim.g.mapleader = ';'

-- Buffers
keymap.set('n', '<S-Tab>', ':bp<Return>')
keymap.set('n', '<Tab>', ':bn<Return>')
keymap.set('n', 'x', ':bd<Return>')
