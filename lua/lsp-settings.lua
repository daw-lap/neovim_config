require('lspfuzzy').setup{}

local opts = { noremap = true, silent = true}

local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
end

local on_attach_clangd = function(client, bufnr)
  on_attach(client, bufnr)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gs', '<cmd>:ClangdSwitchSourceHeader<CR>', opts)
end

require('lspconfig')['clangd'].setup {
  on_attach = on_attach_clangd,
  init_options = { compilationDatabaseDirectory = "build"; }
}

require('lspconfig')['pyright'].setup {
  on_attach = on_attach
}
