
require('bufferline').setup {}


local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
map('n', '<A-,>', ':BufferLineCyclePrev<CR>')
map('n', '<A-.>', ':BufferLineCycleNext<CR>') 
map('n', '<C-w>', ':BufferLinePickClose<CR>')



