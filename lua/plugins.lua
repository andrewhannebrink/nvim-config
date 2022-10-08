local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[ packadd packer.nvim ]]


packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'folke/tokyonight.nvim'
  }
  use {
    'tanvirtin/monokai.nvim'
  }
  use {
    'drewtempelmeyer/palenight.vim'
  }
  use {
    'shaunsingh/nyoom.nvim'
  }
end)

--Plug 'nvim-lua/plenary.nvim'
--Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }


