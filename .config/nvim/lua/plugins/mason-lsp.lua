--[[
--
--]]

return function()
	require("mason-lspconfig").setup({
		ensure_installed = {
			"yaml-language-server",
			"pyright",
			"intelephense",
			"typescript-language-server",
			"sumneko_lua",
			"emmet-ls",
			"bash-language-server"
		},

		automatic_installation = true,
	})
end
