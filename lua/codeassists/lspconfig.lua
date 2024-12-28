local lua = require("codeassists.langages.lua")
local rust = require("codeassists.langages.rust")

return {
  "neovim/nvim-lspconfig",

  config = function()
    require("lspconfig").lua_ls.setup(lua.opt)
    require("lspconfig").rust_analyzer.setup(rust.opt)
  end,
}
