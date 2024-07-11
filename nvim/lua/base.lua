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

vim.opt.termguicolors = true
theme = 'everforest'
vim.cmd('colorscheme ' .. theme)

vim.o.shortmess = vim.o.shortmess .. "A"
