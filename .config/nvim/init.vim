" Description: Init command
autocmd!

scriptencoding utf-8
if !1 | finish | endif


" Description: Basic options
syntax enable

let g:vim_home_path="~/nvim"

set autoindent
set autoread
set cmdheight=1
set encoding=utf-8
set laststatus=2
set lazyredraw
set number relativenumber
set ruler
set scrolloff=10
set showcmd
set showmatch
set title
set visualbell

autocmd BufWritePre * :%s/\s\+$//e

" Description: Neovim specific
if has('nvim')
    set inccommand=split
end

" Description: Backup settings
execute "set backupdir=" . g:vim_home_path . "/backup"
execute "set directory=" . g:vim_home_path . "/swap"
execute "set undodir=" . g:vim_home_path . "/undo"
set backup
set undofile
set writebackup

" Description: Search settings
set hlsearch
set ignorecase
set incsearch
set path+=**
set smartcase
set wildmenu

" Description: Search ignores
set wildignore+=*/node_modules/*
set wildignore+=*/vendor/*

" Description: Tab settings
filetype plugin indent on
set ai
set expandtab
set shiftwidth=4
set si
set smarttab
set softtabstop=4
set tabstop=4

" Description: Highlights
highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40
set cursorline

" Description: Import plugins
runtime ./plug.vim

" Description: Import OS specific
if has("unix")
    let s:uname = system("uname -s")
    if s:uname == "Darwin\n"
        runtime ./macos.vim
    endif
endif

" Description: Import keybindings
runtime ./maps.vim

" Description: Syntax theme
if exists("&termguicolors") && exists("&winblend")
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  colorscheme NeoSolarized
endif

" Description: Plugin settings
let g:indentLine_char = '▏'

