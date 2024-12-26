-- floaterm 浮动窗口
return {
  "voldikss/vim-floaterm",
  
  config = function()
    vim.g.floaterm_title = ""
    vim.g.floaterm_width = 0.8
    vim.g.floaterm_height = 0.8
    vim.g.floaterm_opener = "edit"
    vim.g.floaterm_shell = "pwsh"

    require("utils/floaterm").set_floaterm_map("<leader>e", "YAZI", "yazi") -- 打开 yazi
    require("utils/floaterm").set_floaterm_map("<leader>t", "TERM", "") -- 打开 terminal
  end,
}

