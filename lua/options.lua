local opt = vim.opt
local g = vim.g

opt.encoding = "utf-8"
opt.title = true
opt.clipboard = "unnamedplus"
--opt.cul = true -- cursor line

-- Indentline
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2

-- disable tilde on end of buffer: https://github.com/neovim/neovim/pull/8546#issuecomment-643643758
--opt.fillchars = options.fillchars

opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

-- Numbers
opt.number = true
--opt.relativenumber = true


-- disable nvim intro
opt.splitbelow = true
opt.splitright = true
--opt.shortmess:append "sI"

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 1000 --waits 10 ms for a key sequence to complete

-- interval for writing swap file to disk, also used by gitsigns
--opt.updatetime = options.updatetime


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

