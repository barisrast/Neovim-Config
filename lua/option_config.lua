vim.cmd [[
  colorscheme nordfox
]]

vim.g.mapleader = ','
vim.opt.encoding = "utf-8"
vim.opt.title = true
vim.opt.clipboard = "unnamedplus"

vim.opt.expandtab = true --when this is true, space characters are inserted instead of TAB
vim.opt.shiftwidth = 2 --automatic indentation when entered to a new line
vim.opt.smartindent = true
vim.opt.tabstop = 2

vim.opt.ignorecase = true --search will be case insensitive
vim.opt.smartcase = true --search will be case sensitive if it contains upper case
vim.opt.mouse = "a" --enables mouse

vim.opt.number = true
vim.opt.virtualedit = all
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.timeoutlen = 1000 --waits 10 ms for a key sequence to complete

-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]

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

for _, plugin in pairs(disabled_built_ins) do
   vim.g["loaded_" .. plugin] = 1
end

