-- windows
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>', {desc = 'Move to upper window'})
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>', {desc = 'Move to lower window'})
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>', {desc = 'Move to left window'})
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>', {desc = 'Move to right window'})

-- buffers
vim.keymap.set('n', '<s-l>', ':bnext<CR>', {desc = 'Next buffer'})
vim.keymap.set('n', '<s-h>', ':bprevious<CR>', {desc = 'Previous buffer'})

-- terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', {desc = 'Exit terminal'}) 
