local lualine = require('lualine')
local sections = lualine.get_config().sections

sections.lualine_a = {'mode', { 'filename', path = 3 }}

lualine.setup {
  sections = sections
}
