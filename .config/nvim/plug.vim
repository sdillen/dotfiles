call plug#begin('~/nvim/plugged')

    " Plug 'airblade/vim-gitgutter'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'Yggdroot/indentLine'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'christoomey/vim-sort-motion'
    Plug 'mhinz/vim-startify'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'preservim/nerdtree'

if has('nvim')
    " Color schemes
    Plug 'sainnhe/everforest'
    Plug 'projekt0n/github-nvim-theme'
    Plug 'rebelot/kanagawa.nvim'

    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    " LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-path'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'folke/lsp-colors.nvim'
    Plug 'ray-x/lsp_signature.nvim'
    " Telescope
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-ui-select.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'hoob3rt/lualine.nvim'
    " Plug 'kyazdani42/nvim-web-devicons'
    Plug 'windwp/nvim-autopairs'
    Plug 'lewis6991/gitsigns.nvim'
    " Plug 'github/copilot.vim'
    Plug 'akinsho/bufferline.nvim'

    Plug 'folke/todo-comments.nvim'
    Plug 'onsails/lspkind-nvim'
endif

call plug#end()

