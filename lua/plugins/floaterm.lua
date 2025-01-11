-- floaterm 浮动窗口
return {
  "voldikss/vim-floaterm",
  
  config = function()
    vim.g.floaterm_title = ""
    vim.g.floaterm_width = 0.8
    vim.g.floaterm_height = 0.8
    vim.g.floaterm_opener = "edit"

    local uname = vim.loop.os_uname().sysname
    print(vim.inspect(uname))
    if uname == "Windows_NT" then
      vim.g.floaterm_shell = "pwsh"
    elseif uname == "Linux" then
      vim.g.floaterm_shell = "fish"
    else 
      vim.g.floaterm_shell = "pwsh"
    end

    require("utils/floaterm").set_floaterm_map("<c-f>", "YAZI", "yazi") -- 打开 yazi
    require("utils/floaterm").set_floaterm_map("<c-t>", "TERM", "") -- 打开 terminal
  end,
}

