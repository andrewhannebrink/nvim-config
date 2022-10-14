local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[ packadd packer.nvim ]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'hoob3rt/lualine.nvim'
  use 'glepnir/lspsaga.nvim' --LSP UIs
  use 'projekt0n/github-nvim-theme'
  use 'tanvirtin/monokai.nvim'
  use 'drewtempelmeyer/palenight.vim'
  use 'L3MON4D3/LuaSnip' --Snippet Engine
  use 'onsails/lspkind-nvim' -- VSCode like pictograms
  use 'hrsh7th/cmp-buffer' --nvim cmp for buffer words
  use 'hrsh7th/cmp-nvim-lsp' --nvim-cmp source for nvims builtin lsp
  use 'hrsh7th/nvim-cmp' --Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- Git blame and browse
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'williamboman/mason.nvim' -- LSP explorer. Using for tailwind
  use 'williamboman/mason-lspconfig.nvim' 
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
end)
