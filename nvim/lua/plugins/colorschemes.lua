return {
  { "craftzdog/solarized-osaka.nvim" },
  { 
    'sainnhe/everforest',
    config = function()
      vim.cmd('let g:everforest_transparent_background = 2')
    end
  },
  { 
    "rose-pine/neovim", 
    name = "rose-pine" ,
    config = function()
      require("rose-pine").setup({
        styles = {
          transparency = true
        }
      })
    end
  },
  {
    "water-sucks/darkrose.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
  }
}
