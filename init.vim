"python virtualenv
let g:python3_host_prog = '$HOME/.venv/neovim_p3/bin/python'
let g:python_host_prog = '$HOME/.venv/neovim_p2/bin/python'

lua require('plugins')
lua require('colorscheme')
lua require('general')
lua require('filetype-settings')
lua require('autopairs-settings')
lua require('fzf-settings')
lua require('lsp-settings')
lua require('gitsigns-settings')
