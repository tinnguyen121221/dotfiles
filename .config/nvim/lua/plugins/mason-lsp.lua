--[[
--
--]]

require("mason-lspconfig").setup({
	-- .py, .php, .lua
	ensure_installed = { "pyright", "intelephense", "sumneko_lua", "emmet-ls" },

	automatic_installation = true,
})
