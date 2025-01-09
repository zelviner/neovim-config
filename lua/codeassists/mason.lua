-- mason lsp 管理器的配置
return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  },

  lazy = false,

  config = function()
    require("mason").setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
       }
     },
    })

    local lspservers = require("codeassists.languages.lspservers")
    local installed_list = {}
    for _, server in pairs(lspservers) do
      table.insert(installed_list, server.name)
    end

    require("mason-lspconfig").setup({
      ensure_installed = installed_list,
      automatic_installation = true,
    })
  end,
}
