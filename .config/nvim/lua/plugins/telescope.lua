local fn = vim.fn
local map = require('maps').map

if fn.empty(fn.system('command -v fdfind')) > 0 and fn.empty(fn.system('command -v fd')) then
	print('fdfind is required to use Telescope')
end

if fn.empty(fn.system('command -v rgrep')) > 0 then
	print('rgrep is required to use Telescope')
end

map('n', 'ff', ':Telescope find_files<cr>')
map('n', 'FF', ':Telescope find_files hidden=true<cr>')
map('n', 'fg', ':Telescope live_grep<cr>')
map('n', 'fb', ':Telescope buffers<cr>')
-- End telescope setup

