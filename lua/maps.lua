local keymap = vim.keymap

keymap.set('n', '<C-p>', ':Telescope find_files<CR>')
keymap.set('n', '<C-f>', ':Telescope live_grep<CR>')
keymap.set('n', '<C-e>', ':NvimTreeToggle<CR> ')
keymap.set('i', '"', '""<left>')
keymap.set('i', '\'', '\'\'<left>')
keymap.set('i', '(', '()<left>')
keymap.set('i', '[', '[]<left>')
keymap.set('i', '{', '{}<left>')
keymap.set('i', '{<CR>', '{<CR>}<ESC>O')
