local map = require('utils').map

-- Moving lines
map('n', '<A-j>', ':m .+1<CR>==')
map('n', '<A-k>', ':m .-2<CR>==')
map('i', '<A-j>', '<Esc>:m .+1<CR>==gi')
map('i', '<A-k>', '<Esc>:m .-2<CR>==gi')
map('v', '<A-j>', ':m ">+1<CR>gv=gv"')
map('v', '<A-k>', ':m "<-2<CR>gv=gv"')

-- Moving tabs
map('n', '<Tab>', ':tabnext <CR>')
map('n', '<S-Tab>', ':tabprevious <CR>')
