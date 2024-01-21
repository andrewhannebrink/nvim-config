local keymap = vim.keymap

vim.opt.clipboard:append { 'unnamedplus' }

--file finding
keymap.set('n', '<C-p>', ':Telescope find_files<CR>')
keymap.set('n', '<C-f>', ':Telescope live_grep<CR>')
keymap.set('n', '<C-e>', ':NvimTreeToggle<CR> ')
keymap.set('n', 'gd', ':Telescope lsp_references<CR>')
keymap.set('n', 'gn', ':Telescope lsp_definitions<CR>')

--split navigation
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('n', '<C-j>', '<C-w>v')
keymap.set('n', '<C-k>', '<C-w>s')

--auto tagging
--removed in favor of autotag plugin
--keymap.set('i', '"', '""<left>')
--keymap.set('i', '\'', '\'\'<left>')
--keymap.set('i', '(', '()<left>')
--keymap.set('i', '[', '[]<left>')
--keymap.set('i', '{', '{}<left>')
--keymap.set('i', '{<CR>', '{<CR>}<esc>o')

--do not yank with x
keymap.set('n', 'x', '"_x')

--increment / decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')
