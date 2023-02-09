local status, packer = pcall(require, 'packer')
if (not status) then
    print('Packer is not installed')
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'editorconfig/editorconfig-vim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'tpope/vim-repeat'
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    use 'tpope/vim-fugitive'
    use 'christoomey/vim-sort-motion'

    use 'mhinz/vim-startify'

    use 'ryanoasis/vim-devicons'
    use 'tiagofumo/vim-nerdtree-syntax-highlight'
    use 'preservim/nerdtree'

    use 'rebelot/kanagawa.nvim'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use 'hoob3rt/lualine.nvim'

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-path'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'folke/lsp-colors.nvim'
    use 'ray-x/lsp_signature.nvim'
    use 'onsails/lspkind-nvim'

    use 'glepnir/lspsaga.nvim'

    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-ui-select.nvim'

    use 'lewis6991/gitsigns.nvim'

    use 'windwp/nvim-autopairs'

    use 'akinsho/bufferline.nvim'

    use 'folke/todo-comments.nvim'
end)
