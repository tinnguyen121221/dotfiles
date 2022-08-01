--[[
--	
--]]

local null_ls = require("null-ls")
local sources = {
	null_ls.builtins.formatting.shfmt,
	null_ls.builtins.formatting.beautysh,
	null_ls.builtins.formatting.prettier,
	null_ls.builtins.formatting.stylua,
	null_ls.builtins.formatting.black,
	null_ls.builtins.formatting.isort,
}

null_ls.setup({
	sources = sources,
})
