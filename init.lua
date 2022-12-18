--python virtualenv
vim.g.python3_host_prog = '$HOME/.venv/neovim_p3/bin/python'
vim.g.python_host_prog = '$HOME/.venv/neovim_p2/bin/python'

require('plugins')
require('colorscheme')
require('general')
require('comment-settings')
require('filetype-settings')
require('autopairs-settings')
require('telescope-settings')
require('lsp-settings')
require('gitsigns-settings')
require('treesitter-settings')
require('cursorline-settings')
