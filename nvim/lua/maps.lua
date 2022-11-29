local km = vim.keymap

-- Remap Escape
km.set('i', 'jk', '<Esc>')

-- Do not yank with x
km.set('n', 'x', '"_x')

-- Increment/Decrement
km.set('n', '+', '<C-a>')
km.set('n', '-', '<C-x>')

-- Select all
km.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
km.set('n', 'te', ':tabedit<Return>', { silent = true })
km.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
km.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })
-- Move window
km.set('n', '<Space>', '<C-w>w')
km.set('', 's<left>', '<C-w>h')
km.set('', 's<up>', '<C-w>k')
km.set('', 's<down>', '<C-w>j')
km.set('', 's<right>', '<C-w>l')
km.set('', 'sh', '<C-w>h')
km.set('', 'sk', '<C-w>k')
km.set('', 'sj', '<C-w>j')
km.set('', 'sl', '<C-w>l')
-- Resize window
km.set('n', 'r<left>', '<C-w><')
km.set('n', 'r<right>', '<C-w>>')
km.set('n', 'r<up>', '<C-w>+')
km.set('n', 'r<down>', '<C-w>-')
