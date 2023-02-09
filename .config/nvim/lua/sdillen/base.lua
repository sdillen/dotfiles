local set = vim.opt
local cmd = vim.cmd

cmd('autocmd!')

vim.scriptencoding = 'utf-8'
set.encoding = 'utf-8'
set.fileencoding = 'utf-8'

vim.wo.number = true

set.mouse = ''

set.autoindent = true
set.autoread = true
set.cmdheight = 1
set.laststatus = 2
set.lazyredraw = true
set.number = true
set.relativenumber = true
set.ruler = true
set.scrolloff = 10
set.showcmd = true
set.showmatch = true
set.title = true
set.visualbell = true

set.wrap = true
set.linebreak = true

set.inccommand = 'split'
set.signcolumn = 'yes'

set.hlsearch = true
set.ignorecase = true
set.incsearch = true
set.path:append { '**' }
set.smartcase = true
set.wildmenu = true

set.ai = true
set.expandtab = true
set.shiftwidth = 4
set.si = true
set.smarttab = true
set.softtabstop = 4
set.tabstop = 4

set.spelllang = 'en,de'
set.spellsuggest = 'best,9'
set.spell = true

set.cursorline = true
set.termguicolors = true
set.winblend = 0
set.wildoptions = 'pum'
set.pumblend = 5

cmd('colorscheme kanagawa')
