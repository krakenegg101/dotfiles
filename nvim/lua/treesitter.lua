require'nvim-treesitter.configs'.setup {
  ensure_installed = "typescript",     -- one of "all", "language", or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { },  -- list of language that will be disabled
  },
}
