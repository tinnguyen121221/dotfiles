local ensure_installed = vim.g.mason_ensure_installed

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = ensure_installed,
    automatic_installation = true,
})
