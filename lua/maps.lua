local keymap = vim.keymap

-- switch to normal mode from insert
keymap.set('i', 'kj', '<esc>')

-- window to view directory and file
keymap.set('n', 'ee', ':e ~/.config/nvim<enter>')

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- new save and quit commands 
keymap.set('', ';s', ':w<enter>') -- just save 
keymap.set('', ';e', ':q<enter>') -- just exit
keymap.set('', ';a', ':x<enter>') -- save and exit

--increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- select all
keymap.set('n', '<C-a>', 'gg<S-v>')

-- new tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
-- split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })
-- move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<left>' , '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')
