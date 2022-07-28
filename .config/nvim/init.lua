require('variables')
require('options')
require('maps')
require('plugins')
require('configs')


replace = function(pattern, replace)
	local replace_command = string.format(":%%s/%s/%s/g", pattern, replace)
	vim.cmd(replace_command)
end


replaceFromCurrent = function(pattern, replace)
	local replace_command = string.format(":,$s/%s/%s/g", pattern, replace)
	vim.cmd(replace_command)
end
