local opt = vim.opt
local g = vim.g

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
g.mapleader = ','

opt.encoding = "utf-8"
opt.title = true
opt.clipboard = "unnamedplus"
--opt.cul = true -- cursor line

-- Indentline
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true

-- disable tilde on end of buffer: https://github.com/neovim/neovim/pull/8546#issuecomment-643643758
--opt.fillchars = options.fillchars

opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

-- Numbers
opt.number = true


-- disable nvim intro
opt.splitbelow = true
opt.splitright = true
--opt.shortmess:append "sI"

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.tabstop = 4
opt.termguicolors = true
opt.timeoutlen = 1000 --waits 10 ms for a key sequence to complete

-- interval for writing swap file to disk, also used by gitsigns
--opt.updatetime = options.updatetime
map('n', '<C-s>', ':w<CR>')
-- Clear search highlighting with <leader> and c
map('n', '<leader>c', ':nohl<CR>')
 

-- disable some builtin vim plugins
local disabled_built_ins = {
   "2html_plugin",
   "getscript",
   "getscriptPlugin",
   "gzip",
   "logipat",
   "netrw",
   "netrwPlugin",
   "netrwSettings",
   "netrwFileHandlers",
   "matchit",
   "tar",
   "tarPlugin",
   "rrhelper",
   "spellfile_plugin",
   "vimball",
   "vimballPlugin",
   "zip",
   "zipPlugin",
}
-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]

for _, plugin in pairs(disabled_built_ins) do
   g["loaded_" .. plugin] = 1
end
vim.cmd [[
  colorscheme nordfox
]]

