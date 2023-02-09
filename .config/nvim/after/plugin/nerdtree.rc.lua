vim.keymap.set('n', '<Leader>n', ':NERDTreeVCS<CR>')

-- Exit Vim if NERDTree is the only window remaining in the only tab.
-- vim.api.nvim_create_autocmd(
--     { 'BufEnter' },
--     {
--         pattern = { '*' },
--         command = "if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif"
--     }
-- )
-- Close the tab if NERDTree is the only window remaining in it.
-- vim.api.nvim_create_autocmd(
--     { 'BufEnter' },
--     {
--         pattern = { '*' },
--         command = "if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | bn | endif"
--     }
-- )

-- If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
-- autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
vim.api.nvim_create_autocmd(
    { 'BufEnter' },
    {
        pattern = { '*' },
        command = "if bufname('#') =~ 'NERD_tree_\\d\\+' && bufname('%') !~ 'NERD_tree_\\d\\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute \"normal! \\<C-W>w\" | execute 'buffer'.buf | endif"
    }
)

-- Open the existing NERDTree on each new tab.
-- vim.api.nvim_create_autocmd(
--     { 'BufWinEnter' },
--     {
--         pattern = { '*' },
--         command = "if getcmdwintype() == '' | silent NERDTreeMirror | endif"
--     }
-- )
