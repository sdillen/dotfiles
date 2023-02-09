local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.init_lsp_saga {}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<Leader>J', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', '<Leader>K', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
vim.keymap.set('n', '<Leader>cd', '<Cmd>Lspsaga show_line_diagnostics<CR>', opts)
vim.keymap.set('n', '<Leader>k', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', '<Leader>cf', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', '<Leader>cp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', '<Leader>cr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set('n', '<Leader>ca', '<Cmd>Lspsaga code_action<CR>', opts)
