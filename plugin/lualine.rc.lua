local status, lualine = pcall(require, 'lualine')
if (not status) then return end

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'github_dark_default',
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    disabled_filetypes = {},
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch' },
    lualine_c = { {
      'filename',
      file_status = true, --displays file status
      path = 0 --0 = just filename
    } },
    lualine_x = {
      {
        'diagnostics', 
        sources = { 'nvim_diagnostic' },
        symbols = { error = '🚫', warn = '⚠️', info = '📝' }
      },
      'enoding',
      'filetype'
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  }
}
