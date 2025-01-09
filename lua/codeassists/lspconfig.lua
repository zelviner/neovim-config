return {
  "neovim/nvim-lspconfig",

  config = function()
    local lspservers = require("codeassists.languages.lspservers")
    local lspconfig = require("lspconfig")
    for _, server in pairs(lspservers) do
      lspconfig[server.name].setup(server.opts)
    end
  end,
}
