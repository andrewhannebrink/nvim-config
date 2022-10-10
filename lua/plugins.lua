local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[ packadd packer.nvim ]]



packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'tanvirtin/monokai.nvim'
  use 'drewtempelmeyer/palenight.vim'
  use 'shaunsingh/nyoom.nvim'
  use 'neovim/nvim-lspconfig' -- LSP
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
--  use {
--    'junegunn/fzf.vim'
--  }
--  use { 'ibhagwan/fzf-lua',
--    -- optional for icon support
--    requires = { 'kyazdani42/nvim-web-devicons' }
--  }
end)
