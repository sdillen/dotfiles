if !exists('g:loaded_copilot') | finish | endif

imap <silent><script><expr> <C-F> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true

