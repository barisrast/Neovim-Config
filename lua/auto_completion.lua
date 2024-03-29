-- Setup nvim-cmp.
local cmp = require'cmp'

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<tab>"] = cmp.mapping.select_next_item(),
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-o>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({select=true}),
  }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  sources = cmp.config.sources({
    {name = 'nvim_lsp'},
    {name = 'luasnip'},
    },{
      {name = 'buffer'},
  }),
})

vim.cmd("setlocal omnifunc=ncm2#complete")

  -- Setup lspconfig.
--local capabilities = require('cmp_nvim_lsp').default	_capabilities(vim.lsp.protocol.make_client_capabilities())
