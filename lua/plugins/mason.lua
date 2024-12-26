-- mason 通常用于 lazy.nvim 和包管理器的配置
return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    { "williamboman/mason.nvim", build = ":MasonUpdate", },
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

    require("mason-lspconfig").setup({
      ensure_installed = { "lua_is", },
      automatic_installation = true,
    })
  end,
}
