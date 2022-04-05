local Plug = vim.fn['plug#']

vim.call('plug#begin', '$HOME/.local/share/nvim/plugged')

Plug 'windwp/nvim-autopairs'
Plug 'tpope/vim-commentary'
Plug 'matfranczyk/highlighter.vim'
Plug 'yamatsum/nvim-cursorline'
--git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
--utilities
Plug 'bronson/vim-trailing-whitespace'
--fzf
Plug('junegunn/fzf', { ['do'] = vim.fn['fzf#install'] })
Plug 'junegunn/fzf.vim'
Plug 'zackhsi/fzf-tags'
--lsp
Plug 'ojroques/nvim-lspfuzzy'
Plug 'neovim/nvim-lspconfig'
--layout
Plug 'morhetz/gruvbox'
vim.call('plug#end')
