--[[
--
--]]

require("mason-lspconfig").setup({
	ensure_installed = {
		"yaml-language-server",
		"pyright",
		"intelephense",
		"sumneko_lua",
		"emmet-ls",
		"grammarly-languageserver",
	},

	automatic_installation = true,
})
