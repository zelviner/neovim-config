local lua = require("codeassists.languages.lua")
local rust = require("codeassists.languages.rust")

return {
  "neovim/nvim-lspconfig",

  config = function()
    require("lspconfig").lua_ls.setup(lua.opt)
    require("lspconfig").rust_analyzer.setup(rust.opt)
  end,
}
