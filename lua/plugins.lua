local status, packer = pcall(require, 'packer')
if (not status) then
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  
  use 'lewis6991/gitsigns.nvim' -- provides git decorations for current buffers. Works out of box
  use 'jose-elias-alvarez/null-ls.nvim' -- use neovim as a language server to inject LSP diagnostics code actions and more
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for neovim's built-in LSP client
  use 'glepnir/lspsaga.nvim' -- LSP UI's

  use 'kyazdani42/nvim-web-devicons' -- file icons
  use 'hoob3rt/lualine.nvim' --status line
  use 'neovim/nvim-lspconfig' --configs for nvim LSP

  use {'neoclide/coc.nvim', branch = 'release'}
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'L3MON4D3/LuaSnip' -- snippet engine
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for nvims built-in lsp
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/nvim-cmp' -- completion engine plugin for neovim
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'nvim-lua/plenary.nvim' -- common utilities
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  
  use 'akinsho/nvim-bufferline.lua'
  
  use 'norcalli/nvim-colorizer.lua'

end)
