call plug#begin('~/nvim/plugged')

    Plug 'airblade/vim-gitgutter'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'Yggdroot/indentLine'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'christoomey/vim-sort-motion'
    Plug 'mhinz/vim-startify'

    " Color schemes
    Plug 'sainnhe/everforest'
    Plug 'projekt0n/github-nvim-theme'

if has('nvim')
    Plug 'neovim/nvim-lspconfig'
    " Plug 'glepnir/lspsaga.nvim'
    Plug 'folke/lsp-colors.nvim'
    Plug 'nvim-lua/completion-nvim'
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'hoob3rt/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'windwp/nvim-autopairs'
    Plug 'github/copilot.vim'
    Plug 'seblj/nvim-tabline'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'kyazdani42/nvim-web-devicons' " Optional
endif

call plug#end()

