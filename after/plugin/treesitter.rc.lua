local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  ensure_installed = {
    'tsx',
    'javascript',
    'python',
    'lua',
    'json',
    'css',
    'html'
  },
--  autotag = {
--    enable = true,
--    filetypes = { "html" , "xml", "tsx", "jsx" },
--  }
}
