
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Example using a list of specs with the default options
--vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup("plugins", {})

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { 'tailwindcss' }
})
require("mason-lspconfig").setup({
  ensure_installed = { 'prismals' }
})
require("mason-lspconfig").setup({
  ensure_installed = { 'pylsp' }
})
require("mason-lspconfig").setup({
  ensure_installed = { 'graphql' }
})
require'lspconfig'.svelte.setup{} 
require'lspconfig'.tsserver.setup{}
require'lspconfig'.tailwindcss.setup{}
require'lspconfig'.prismals.setup{}
require'lspconfig'.gopls.setup{}
require'lspconfig'.graphql.setup{}
require'lspconfig'.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = false,
          --ignore = {'E501'}
          --maxLineLength = 100
        }
      }
    }
  }
}

require('nvim-ts-autotag').setup()

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

local cmp = require'cmp'
local lspkind = require'lspkind'
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true
    }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' }
  }),
  formatting = {
    format = lspkind.cmp_format({ wirth_text = false, maxwidth = 50 })
  }
})

vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]


require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'solarized-osaka',
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

require('git').setup {
  keymaps = {
    blame = "<Leader>gb", -- Open git blame
    browse = "<Leader>go" -- Open file/folder in git repo 
  }
}

require('base')
require('maps')
