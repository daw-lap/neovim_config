require('lspfuzzy').setup{}

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = false,
})

local signs = { Error = "●", Warn = "●", Hint = "●", Info = "●" }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local opts = { noremap = true, silent = true}

vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

local on_attach = function(client, bufnr)
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
