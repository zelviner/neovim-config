return {
  "neovim/nvim-lspconfig",

  config = function() 
    require("lspconfig").lua_ls.setup({
      capabilities = require("cmp_nvim_lsp").default_capabilities()
    })
  end,

  opts = {
    capabilities = require("cmp_nvim_lsp").default_capabilities()
  }

}
