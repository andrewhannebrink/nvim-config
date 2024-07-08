return {
  'nvimdev/lspsaga.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- optional
    'nvim-tree/nvim-web-devicons'     -- optional
  },
  config = function()
    require('lspsaga').setup({
      lightbulb = {
        enable = false
      }
    })
    local opts = {noremap = true, silent = true}
    vim.keymap.set('n', '<C-m>', '<Cmd>Lspsaga diagnostic_jump_next<cr>', opts)
    vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<cr>', opts)   
    vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<cr>', opts)
    vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<cr>', opts)
  end
}
