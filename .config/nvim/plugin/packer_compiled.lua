-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["gruvbox.nvim"] = {
    config = { "\27LJ\2\2~\0\0\3\0\a\0\v6\0\0\0006\1\1\0'\2\2\0B\1\2\0029\1\3\0015\2\4\0B\1\2\0019\1\5\0'\2\6\0B\1\2\1K\0\1\0\24colorscheme gruvbox\bcmd\1\0\2\rcontrast\thard\vitalic\1\nsetup\fgruvbox\frequire\bvim\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\2±\1\0\0\4\0\n\0\0196\0\0\0'\1\1\0B\0\2\0029\1\2\0B\1\1\0029\1\3\0015\2\5\0005\3\6\0>\3\2\2=\2\4\0014\2\3\0004\3\0\0>\3\1\2=\2\a\0019\2\b\0005\3\t\0=\1\3\3B\2\2\1K\0\1\0\1\0\0\nsetup\14lualine_c\1\2\1\0\rfilename\tpath\3\3\1\2\0\0\tmode\14lualine_a\rsections\15get_config\flualine\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\2Ñ\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\21ensure_installed\1\0\1\27automatic_installation\2\1\a\0\0\25yaml-language-server\fpyright\17intelephense\16sumneko_lua\remmet-ls\29grammarly-languageserver\nsetup\20mason-lspconfig\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\0023\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\2Ñ\1\0\0\4\0\f\0\0296\0\0\0'\1\1\0B\0\2\0024\1\6\0009\2\2\0009\2\3\0029\2\4\2>\2\1\0019\2\2\0009\2\3\0029\2\5\2>\2\2\0019\2\2\0009\2\3\0029\2\6\2>\2\3\0019\2\2\0009\2\3\0029\2\a\2>\2\4\0019\2\2\0009\2\3\0029\2\b\2>\2\5\0019\2\t\0005\3\n\0=\1\v\3B\2\2\1K\0\1\0\fsources\1\0\0\nsetup\nisort\nblack\vstylua\rprettier\tpint\15formatting\rbuiltins\fnull-ls\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\2ø\1\0\0\4\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\3\0005\3\4\0=\3\5\2=\2\a\1B\0\2\1K\0\1\0\14fast_wrap\1\0\0\nchars\1\6\0\0\6{\6[\6(\6\"\6'\1\0\a\fend_key\6$\fpattern\23[%'%\"%)%>%]%)%}%,]\14highlight\vSearch\bmap\n<M-e>\tkeys\31qwertyuiopzxcvbnmasdfghjkl\19highlight_grey\fComment\16check_comma\2\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\2b\0\0\3\1\5\0\v6\0\0\0-\1\0\0009\1\1\1-\2\0\0009\2\2\0029\2\3\0029\2\4\2B\2\1\0A\1\0\0A\0\0\1K\0\1\0\0\0\27list_workspace_folders\bbuf\blsp\finspect\nprintÄ\a\1\2\b\1%\0–\1-\2\0\0009\2\0\0029\2\1\2\18\3\1\0'\4\2\0'\5\3\0B\2\4\0015\2\4\0=\1\5\2-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\t\0-\6\0\0009\6\n\0069\6\v\0069\6\f\6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\r\0-\6\0\0009\6\n\0069\6\v\0069\6\14\6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\15\0-\6\0\0009\6\n\0069\6\v\0069\6\16\6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\17\0-\6\0\0009\6\n\0069\6\v\0069\6\18\6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\19\0-\6\0\0009\6\n\0069\6\v\0069\6\20\6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\21\0-\6\0\0009\6\n\0069\6\v\0069\6\22\6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\23\0-\6\0\0009\6\n\0069\6\v\0069\6\24\6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\25\0003\6\26\0\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\27\0-\6\0\0009\6\n\0069\6\v\0069\6\28\6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\29\0-\6\0\0009\6\n\0069\6\v\0069\6\30\6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\31\0-\6\0\0009\6\n\0069\6\v\0069\6 \6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5!\0-\6\0\0009\6\n\0069\6\v\0069\6\"\6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5#\0-\6\0\0009\6\n\0069\6\v\0069\6$\6\18\a\2\0B\3\5\1K\0\1\0\0À\15formatting\r<space>f\15references\agr\16code_action\14<space>ca\vrename\14<space>rn\20type_definition\r<space>D\0\14<space>wl\28remove_workspace_folder\14<space>wr\25add_workspace_folder\14<space>wa\19signature_help\n<C-k>\19implementation\agi\nhover\6K\15definition\agd\16declaration\bbuf\blsp\agD\6n\bset\vkeymap\vbuffer\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapié\2\1\0\f\0\16\0!6\0\0\0006\1\1\0'\2\2\0B\1\2\2B\1\1\0016\1\1\0'\2\3\0B\1\2\0025\2\4\0006\3\1\0'\4\5\0B\3\2\0029\3\6\0039\4\a\0009\4\b\0049\4\t\4B\4\1\0A\3\0\0023\4\n\0006\5\v\0\18\6\2\0B\5\2\4X\b\6€8\n\t\0019\n\f\n5\v\r\0=\4\14\v=\3\15\vB\n\2\1E\b\3\3R\bø2\0\0€K\0\1\0\17capabilities\14on_attach\1\0\0\nsetup\vipairs\0\29make_client_capabilities\rprotocol\blsp\24update_capabilities\17cmp_nvim_lsp\1\t\0\0\veslint\fpyright\17intelephense\16sumneko_lua\vbashls\remmet_ls\vyamlls\14grammarly\14lspconfig\16plugins.cmp\frequire\bvim\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\2g\0\0\2\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\bopt\bvimŽ\4\1\0\6\0\24\0\"6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0=\2\t\0014\2\0\0=\2\n\0015\2\v\0004\3\0\0=\3\f\2=\2\r\1B\0\2\0016\0\14\0009\0\15\0009\0\16\0005\1\17\0005\2\20\0006\3\14\0009\3\15\0039\3\18\3'\4\19\0004\5\0\0B\3\3\2=\3\21\0023\3\22\0=\3\23\2B\0\3\1K\0\1\0\rcallback\0\ngroup\1\0\0\23TS_FOLD_WORKAROUND\24nvim_create_augroup\1\6\0\0\rBufEnter\vBufAdd\vBufNew\15BufNewFile\16BufWinEnter\24nvim_create_autocmd\bapi\bvim\14highlight\fdisable\1\0\2&additional_vim_regex_highlighting\1\venable\2\19ignore_install\21ensure_installed\1\b\0\0\15javascript\vpython\blua\bphp\thtml\tyaml\tjson\vindent\1\0\1\venable\2\fautotag\1\0\2\17auto_install\2\17sync_install\1\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\2ˆ\4\0\0\6\0\22\00086\0\0\0009\0\1\0006\1\2\0'\2\3\0B\1\2\0029\1\4\0019\2\5\0009\3\6\0'\4\a\0B\3\2\0A\2\0\2)\3\0\0\1\3\2\0X\2\n€9\2\5\0009\3\6\0'\4\b\0B\3\2\0A\2\0\2\15\0\2\0X\3\3€6\2\t\0'\3\n\0B\2\2\0019\2\5\0009\3\6\0'\4\v\0B\3\2\0A\2\0\2)\3\0\0\1\3\2\0X\2\3€6\2\t\0'\3\f\0B\2\2\1\18\2\1\0'\3\r\0'\4\14\0'\5\15\0B\2\4\1\18\2\1\0'\3\r\0'\4\16\0'\5\17\0B\2\4\1\18\2\1\0'\3\r\0'\4\18\0'\5\19\0B\2\4\1\18\2\1\0'\3\r\0'\4\20\0'\5\21\0B\2\4\1K\0\1\0\27:Telescope buffers<cr>\afb\29:Telescope live_grep<cr>\afg*:Telescope find_files hidden=true<cr>\aFF\30:Telescope find_files<cr>\aff\6n'rgrep is required to use Telescope\21command -v rgrep(fdfind is required to use Telescope\nprint\18command -v fd\22command -v fdfind\vsystem\nempty\bmap\tmaps\frequire\afn\bvim\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-commentary"] = {
    config = { "\27LJ\2\2„\1\0\0\5\0\b\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0\18\1\0\0'\2\3\0'\3\4\0'\4\5\0B\1\4\1\18\1\0\0'\2\6\0'\3\4\0'\4\a\0B\1\4\1K\0\1\0\21<Plug>Commentary\6v\25<Plug>CommentaryLine\n<C-_>\6n\bmap\tmaps\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-floaterm"] = {
    config = { "\27LJ\2\2©\1\0\0\3\0\n\0\0146\0\0\0009\1\1\0'\2\3\0=\2\2\0019\1\1\0'\2\5\0=\2\4\0019\1\1\0'\2\a\0=\2\6\0019\1\1\0'\2\t\0=\2\b\1K\0\1\0\bfln\25floaterm_keymap_next\bflp\25floaterm_keymap_prev\bflN\24floaterm_keymap_new\afl\27floaterm_keymap_toggle\6g\bvim\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\0023\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\2b\0\0\3\1\5\0\v6\0\0\0-\1\0\0009\1\1\1-\2\0\0009\2\2\0029\2\3\0029\2\4\2B\2\1\0A\1\0\0A\0\0\1K\0\1\0\0\0\27list_workspace_folders\bbuf\blsp\finspect\nprintÄ\a\1\2\b\1%\0–\1-\2\0\0009\2\0\0029\2\1\2\18\3\1\0'\4\2\0'\5\3\0B\2\4\0015\2\4\0=\1\5\2-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\t\0-\6\0\0009\6\n\0069\6\v\0069\6\f\6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\r\0-\6\0\0009\6\n\0069\6\v\0069\6\14\6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\15\0-\6\0\0009\6\n\0069\6\v\0069\6\16\6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\17\0-\6\0\0009\6\n\0069\6\v\0069\6\18\6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\19\0-\6\0\0009\6\n\0069\6\v\0069\6\20\6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\21\0-\6\0\0009\6\n\0069\6\v\0069\6\22\6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\23\0-\6\0\0009\6\n\0069\6\v\0069\6\24\6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\25\0003\6\26\0\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\27\0-\6\0\0009\6\n\0069\6\v\0069\6\28\6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\29\0-\6\0\0009\6\n\0069\6\v\0069\6\30\6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5\31\0-\6\0\0009\6\n\0069\6\v\0069\6 \6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5!\0-\6\0\0009\6\n\0069\6\v\0069\6\"\6\18\a\2\0B\3\5\1-\3\0\0009\3\6\0039\3\a\3'\4\b\0'\5#\0-\6\0\0009\6\n\0069\6\v\0069\6$\6\18\a\2\0B\3\5\1K\0\1\0\0À\15formatting\r<space>f\15references\agr\16code_action\14<space>ca\vrename\14<space>rn\20type_definition\r<space>D\0\14<space>wl\28remove_workspace_folder\14<space>wr\25add_workspace_folder\14<space>wa\19signature_help\n<C-k>\19implementation\agi\nhover\6K\15definition\agd\16declaration\bbuf\blsp\agD\6n\bset\vkeymap\vbuffer\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapié\2\1\0\f\0\16\0!6\0\0\0006\1\1\0'\2\2\0B\1\2\2B\1\1\0016\1\1\0'\2\3\0B\1\2\0025\2\4\0006\3\1\0'\4\5\0B\3\2\0029\3\6\0039\4\a\0009\4\b\0049\4\t\4B\4\1\0A\3\0\0023\4\n\0006\5\v\0\18\6\2\0B\5\2\4X\b\6€8\n\t\0019\n\f\n5\v\r\0=\4\14\v=\3\15\vB\n\2\1E\b\3\3R\bø2\0\0€K\0\1\0\17capabilities\14on_attach\1\0\0\nsetup\vipairs\0\29make_client_capabilities\rprotocol\blsp\24update_capabilities\17cmp_nvim_lsp\1\t\0\0\veslint\fpyright\17intelephense\16sumneko_lua\vbashls\remmet_ls\vyamlls\14grammarly\14lspconfig\16plugins.cmp\frequire\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: vim-floaterm
time([[Config for vim-floaterm]], true)
try_loadstring("\27LJ\2\2©\1\0\0\3\0\n\0\0146\0\0\0009\1\1\0'\2\3\0=\2\2\0019\1\1\0'\2\5\0=\2\4\0019\1\1\0'\2\a\0=\2\6\0019\1\1\0'\2\t\0=\2\b\1K\0\1\0\bfln\25floaterm_keymap_next\bflp\25floaterm_keymap_prev\bflN\24floaterm_keymap_new\afl\27floaterm_keymap_toggle\6g\bvim\0", "config", "vim-floaterm")
time([[Config for vim-floaterm]], false)
-- Config for: gruvbox.nvim
time([[Config for gruvbox.nvim]], true)
try_loadstring("\27LJ\2\2~\0\0\3\0\a\0\v6\0\0\0006\1\1\0'\2\2\0B\1\2\0029\1\3\0015\2\4\0B\1\2\0019\1\5\0'\2\6\0B\1\2\1K\0\1\0\24colorscheme gruvbox\bcmd\1\0\2\rcontrast\thard\vitalic\1\nsetup\fgruvbox\frequire\bvim\0", "config", "gruvbox.nvim")
time([[Config for gruvbox.nvim]], false)
-- Config for: vim-commentary
time([[Config for vim-commentary]], true)
try_loadstring("\27LJ\2\2„\1\0\0\5\0\b\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0\18\1\0\0'\2\3\0'\3\4\0'\4\5\0B\1\4\1\18\1\0\0'\2\6\0'\3\4\0'\4\a\0B\1\4\1K\0\1\0\21<Plug>Commentary\6v\25<Plug>CommentaryLine\n<C-_>\6n\bmap\tmaps\frequire\0", "config", "vim-commentary")
time([[Config for vim-commentary]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2±\1\0\0\4\0\n\0\0196\0\0\0'\1\1\0B\0\2\0029\1\2\0B\1\1\0029\1\3\0015\2\5\0005\3\6\0>\3\2\2=\2\4\0014\2\3\0004\3\0\0>\3\1\2=\2\a\0019\2\b\0005\3\t\0=\1\3\3B\2\2\1K\0\1\0\1\0\0\nsetup\14lualine_c\1\2\1\0\rfilename\tpath\3\3\1\2\0\0\tmode\14lualine_a\rsections\15get_config\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\2Ñ\1\0\0\4\0\f\0\0296\0\0\0'\1\1\0B\0\2\0024\1\6\0009\2\2\0009\2\3\0029\2\4\2>\2\1\0019\2\2\0009\2\3\0029\2\5\2>\2\2\0019\2\2\0009\2\3\0029\2\6\2>\2\3\0019\2\2\0009\2\3\0029\2\a\2>\2\4\0019\2\2\0009\2\3\0029\2\b\2>\2\5\0019\2\t\0005\3\n\0=\1\v\3B\2\2\1K\0\1\0\fsources\1\0\0\nsetup\nisort\nblack\vstylua\rprettier\tpint\15formatting\rbuiltins\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2g\0\0\2\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\bopt\bvimŽ\4\1\0\6\0\24\0\"6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0=\2\t\0014\2\0\0=\2\n\0015\2\v\0004\3\0\0=\3\f\2=\2\r\1B\0\2\0016\0\14\0009\0\15\0009\0\16\0005\1\17\0005\2\20\0006\3\14\0009\3\15\0039\3\18\3'\4\19\0004\5\0\0B\3\3\2=\3\21\0023\3\22\0=\3\23\2B\0\3\1K\0\1\0\rcallback\0\ngroup\1\0\0\23TS_FOLD_WORKAROUND\24nvim_create_augroup\1\6\0\0\rBufEnter\vBufAdd\vBufNew\15BufNewFile\16BufWinEnter\24nvim_create_autocmd\bapi\bvim\14highlight\fdisable\1\0\2&additional_vim_regex_highlighting\1\venable\2\19ignore_install\21ensure_installed\1\b\0\0\15javascript\vpython\blua\bphp\thtml\tyaml\tjson\vindent\1\0\1\venable\2\fautotag\1\0\2\17auto_install\2\17sync_install\1\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\2ˆ\4\0\0\6\0\22\00086\0\0\0009\0\1\0006\1\2\0'\2\3\0B\1\2\0029\1\4\0019\2\5\0009\3\6\0'\4\a\0B\3\2\0A\2\0\2)\3\0\0\1\3\2\0X\2\n€9\2\5\0009\3\6\0'\4\b\0B\3\2\0A\2\0\2\15\0\2\0X\3\3€6\2\t\0'\3\n\0B\2\2\0019\2\5\0009\3\6\0'\4\v\0B\3\2\0A\2\0\2)\3\0\0\1\3\2\0X\2\3€6\2\t\0'\3\f\0B\2\2\1\18\2\1\0'\3\r\0'\4\14\0'\5\15\0B\2\4\1\18\2\1\0'\3\r\0'\4\16\0'\5\17\0B\2\4\1\18\2\1\0'\3\r\0'\4\18\0'\5\19\0B\2\4\1\18\2\1\0'\3\r\0'\4\20\0'\5\21\0B\2\4\1K\0\1\0\27:Telescope buffers<cr>\afb\29:Telescope live_grep<cr>\afg*:Telescope find_files hidden=true<cr>\aFF\30:Telescope find_files<cr>\aff\6n'rgrep is required to use Telescope\21command -v rgrep(fdfind is required to use Telescope\nprint\18command -v fd\22command -v fdfind\vsystem\nempty\bmap\tmaps\frequire\afn\bvim\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\2ø\1\0\0\4\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\3\0005\3\4\0=\3\5\2=\2\a\1B\0\2\1K\0\1\0\14fast_wrap\1\0\0\nchars\1\6\0\0\6{\6[\6(\6\"\6'\1\0\a\fend_key\6$\fpattern\23[%'%\"%)%>%]%)%}%,]\14highlight\vSearch\bmap\n<M-e>\tkeys\31qwertyuiopzxcvbnmasdfghjkl\19highlight_grey\fComment\16check_comma\2\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
try_loadstring("\27LJ\2\2Ñ\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\21ensure_installed\1\0\1\27automatic_installation\2\1\a\0\0\25yaml-language-server\fpyright\17intelephense\16sumneko_lua\remmet-ls\29grammarly-languageserver\nsetup\20mason-lspconfig\frequire\0", "config", "mason-lspconfig.nvim")
time([[Config for mason-lspconfig.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
