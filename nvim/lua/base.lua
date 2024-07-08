vim.cmd('autocmd!')
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
--vim.cmd('let g:airline_powerline_fonts = 1')
vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.showcmd = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.ai = true
vim.opt.si = true
vim.opt.wrap = false 
vim.opt.path:append { '**' }
vim.opt.wildignore:append { '*/node_modules' }
--vim.cmd('colorscheme github_dark_default')
--vim.cmd('colorscheme tokyonight-night')
--vim.cmd('set background=dark') -- or light if you want light mode
--vim.cmd('colorscheme gruvbox')
vim.opt.termguicolors = true
--vim.cmd('colorscheme tokyonight-night')
--vim.cmd('colorscheme twilight256')
--vim.cmd('colorscheme moonfly')
--vim.cmd('colorscheme solarized-osaka')
--vim.cmd('colorscheme rose-pine')
--vim.cmd("colorscheme miasma")
--vim.cmd('colorscheme darkrose')
vim.cmd('let g:everforest_transparent_background = 2')
vim.cmd('colorscheme everforest')
vim.o.shortmess = vim.o.shortmess .. "A"
--vim.o.background = 'none'
