require'nvim-treesitter.configs'.setup {
  ensure_installed = {"cpp", "c", "python", "cmake", "bash", "comment", "help", "json", "make", "regex", "toml", "vim", "yaml"},
  sync_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
    },
  }
