local keymap = vim.keymap

keymap.set('n', '<C-p>', ':Telescope find_files<CR>')
keymap.set('n', '<C-f>', ':Telescope live_grep<CR>')
keymap.set('n', '<C-e>', ':NvimTreeToggle<CR> ')
keymap.set('n', '<C-h>', '<C-w>w')
keymap.set('n', '<C-j>', '<C-w>v')
keymap.set('n', '<C-k>', '<C-w>s')
keymap.set('i', '"', '""<left>')
keymap.set('i', '\'', '\'\'<left>')
keymap.set('i', '(', '()<left>')
keymap.set('i', '[', '[]<left>')
keymap.set('i', '{', '{}<left>')
keymap.set('i', '{<CR>', '{<CR>}<ESC>O')
