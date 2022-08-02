--[[
--	Vim-commentary maps
--]]

return function()
	local map = require("maps").map

	map("n", "<C-_>", "<Plug>CommentaryLine")
	map("v", "<C-_>", "<Plug>Commentary")
end
