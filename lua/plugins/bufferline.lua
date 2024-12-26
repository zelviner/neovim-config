-- bufferline 顶部分割线，即文件标签页
return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",

  lazy = false,

  config = function()
    require("bufferline").setup()
  end,

  keys = {
    {
      "<M-l>",
      ":bnext<CR>",
      mode = "n",
      desc = "Next buffer",
    },
    {
      "<M-h>",
      ":bprevious<CR>",
      mode = "n",
      desc = "Previous buffer",
    }
  }
}
