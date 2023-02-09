" Description: Keymaps

" Leader key
let mapleader=";"

" Select all
nmap <C-a> gg<S-v>G

" Buffers
nmap <S-Tab> :bp<Return>
nmap <Tab> :bn<Return>
nmap <x> :bd<Return>

" Omnifunc
nmap <Space>x :omnifunc<CR>
