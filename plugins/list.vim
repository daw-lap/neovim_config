call plug#begin('$HOME/.local/share/nvim/plugged')
    Plug 'tpope/vim-commentary'
    Plug 'matfranczyk/highlighter.vim'
    Plug 'windwp/nvim-autopairs'
    Plug 'yamatsum/nvim-cursorline'
"git
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
"utilities
    Plug 'bronson/vim-trailing-whitespace'
"fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'ojroques/nvim-lspfuzzy'
    Plug 'zackhsi/fzf-tags'
"lsp
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'
"layout
    Plug 'morhetz/gruvbox'
call plug#end()

source $HOME/.config/nvim/plugins/gitgutter.vim
source $HOME/.config/nvim/plugins/lsp.vim

