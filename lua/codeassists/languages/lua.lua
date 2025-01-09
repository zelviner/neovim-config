local Lua = {}

Lua.name = "lua_ls"

Lua.opts = {
  capabilities = require("cmp_nvim_lsp").default_capabilities()
}

return Lua
