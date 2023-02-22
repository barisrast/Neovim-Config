local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

--autocompletion etc.
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug ('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

--appearance
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

--functional stuff
--telescope.nvim plugin depends on plenary.nvim
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'goolord/alpha-nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'psliwka/vim-smoothie'
Plug 'phaazon/hop.nvim'
Plug 'akinsho/toggleterm.nvim'

--colorschemes
Plug 'EdenEast/nightfox.nvim'
Plug ('dracula/vim', { ['as'] = 'dracula' })
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'fratajczak/one-monokai-vim'
Plug 'tanvirtin/monokai.nvim'

vim.call('plug#end')
