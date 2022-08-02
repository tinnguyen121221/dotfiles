--[[
--	Gruvbox theme plugin config
--]]

return function()
	local vim = vim

	require("gruvbox").setup({
		italic = false,
		contrast = "hard", -- can be "hard", "soft" or empty string
	})
	vim.cmd([[colorscheme gruvbox]])
end
