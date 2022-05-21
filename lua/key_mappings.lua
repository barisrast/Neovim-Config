
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


map('n', '<leader>q', ':noh<return>')       -- refresh


map('n', '<leader>t', ':ToggleTerm<CR>') 
-- local opts = { noremap=true, silent=true }
--vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)

--vim.cmd [[
--	nnoremap <leader>r :sp <CR> :term python % <CR>
--	nnoremap <leader>x :bd!<CR>
--]]
