--[[
--
--]]

return function()
	require("mason-lspconfig").setup({
		ensure_installed = {
			"yaml-language-server",
			"pyright",
			"intelephense",
			"sumneko_lua",
			"emmet-ls",
		},

		automatic_installation = true,
	})
end
