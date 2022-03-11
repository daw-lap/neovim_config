nnoremap <silent> Gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> GD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> Gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> Gi <cmd>lua vim.lsp.buf.implementation()<CR>
noremap  <silent> Gca <cmd>:lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <leader>ss :ClangdSwitchSourceHeader<CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

" When no LSP provided, navigation based on tags is still possible
nmap <silent> <leader>d :FZFTags<CR>


lua << EOF
  require'lspconfig'.ccls.setup {
    init_options = {
      compilationDatabaseDirectory = "build";
      }
    }
  require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
EOF
