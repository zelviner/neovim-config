local Go = {}

Go.name = "gopls"

Go.opts = {
  cmd = { "gopls" },

  filetypes = {
    "go",
    "gomod",
  },

  -- root_dir = require("lspconfig").util.root_pattern(
  --   "go.work",
  --   "go.mod",
  --   ".git"
  -- ),

  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },

      staticcheck = true,
    },
  },
}

return Go
