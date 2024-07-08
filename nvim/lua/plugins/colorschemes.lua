return {
  { 'sainnhe/everforest' },
  { "rose-pine/neovim", name = "rose-pine" },
  { "craftzdog/solarized-osaka.nvim" },
  {
    "water-sucks/darkrose.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme miasma")
    end,
  }
}
