local fn = vim.fn

if fn.empty(fn.system('command -v fdfind')) > 0 and fn.empty(fn.system('command -v fd')) then
	print('fdfind is required to use Telescope')
end

if fn.empty(fn.system('command -v rgrep')) > 0 then
	print('rgrep is required to use Telescope')
end


local map = require("utils").map
map('n', '<Leader>ff', ':Telescope find_files<cr>')
map('n', '<Leader>FF', ':Telescope find_files hidden=true<cr>')
map('n', '<Leader>fg', ':Telescope live_grep<cr>')
map('n', '<Leader>fb', ':Telescope buffers<cr>')
map('n', '<Leader>fh', ':Telescope help_tags<cr>')
