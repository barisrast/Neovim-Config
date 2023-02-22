-----------------------------------------------------------
-- Treesitter configuration file
----------------------------------------------------------

-- Plugin: nvim-treesitter
-- url: https://github.com/nvim-treesitter/nvim-treesitter


require('nvim-treesitter.configs').setup {
  ensure_installed = {"c","cpp", "rust", "vim", "python"},
  sync_install = true,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
