--[[
--		Nvim plugins	
--]]

--[[
--		Packer bootstrapping	
--]]
local vim = vim
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap =
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
	vim.cmd([[packadd packer.nvim]])
end

return require("packer").startup(function(use)
	--
	use("wbthomason/packer.nvim")

	-- Gruvbox theme
	use("ellisonleao/gruvbox.nvim")
	require("plugins.gruvbox")

	-- Lualine
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	require("plugins.lualine")

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	require("plugins.telescope")

	--Auto pairs
	use("windwp/nvim-autopairs")
	require("plugins.autopairs")

	--Commentary
	use("tpope/vim-commentary")
	require("plugins.vim-commentary")

	-- Floaterm
	use("voldikss/vim-floaterm")
	require("plugins.floaterm")

	-- Tree sitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	require("plugins.treesitter")

	-- Mason lsp config
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	require("plugins.mason")
	require("plugins.mason-lsp")
	require("plugins.lsp")

	-- Nvim cmp
	use({
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-vsnip",
		"hrsh7th/vim-vsnip",
	})
	require("plugins.cmp")

	-- Null-ls
	use("jose-elias-alvarez/null-ls.nvim")
	require("plugins.null-ls")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
