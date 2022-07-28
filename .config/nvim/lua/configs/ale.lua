-- vim.g.ale_linters = {}
vim.g["ale_linters"] = {
    javascript = {},
    php = {},
    python = {},
    vue = {},
}

vim.g["ale_fixers"] = {
    php = {'php_cs_fixer', 'pint'},
    python = {'black', 'isort'}
}

vim.g["ale_fix_on_save"] = true
