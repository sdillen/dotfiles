call plug#begin('~/nvim/plugged')

    Plug 'airblade/vim-gitgutter'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'Yggdroot/indentLine'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'christoomey/vim-sort-motion'

if has('nvim')
    Plug 'neovim/nvim-lspconfig'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'folke/lsp-colors.nvim'
    Plug 'nvim-lua/completion-nvim'
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'hoob3rt/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'windwp/nvim-autopairs'
endif

call plug#end()

