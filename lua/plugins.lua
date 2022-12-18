return require('packer').startup(function(use)
  --Plugin manager
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim'

  use 'windwp/nvim-autopairs'
  use 'numToStr/Comment.nvim'
  -- use 'tpope/vim-commentary'
  use 'matfranczyk/highlighter.vim'
  use 'yamatsum/nvim-cursorline'
  --git
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'
  --utilities
  use 'bronson/vim-trailing-whitespace'
  use 'nvim-telescope/telescope.nvim'
  --lsp
  use 'ojroques/nvim-lspfuzzy'
  use 'neovim/nvim-lspconfig'
  --syntax
  use ('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
  --layout
  use 'morhetz/gruvbox'
end)
