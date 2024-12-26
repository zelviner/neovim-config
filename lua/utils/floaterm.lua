local utils = require("utils/utils")

local M = {}


-- toggle 存在对应名称的窗口则 toggle, 否则新建
function M.toggle(name, cmd)
  if utils.fn["floaterm#terminal#get_bufnr"](name) ~= -1 then
    utils.cmd(string.format("exec 'FloatermToggle %s'", name))
  else
    utils.cmd(string.format("FloatermNew --name=%s %s", name, cmd))
  end
end

-- 用于快速设定 floaterm 的相关 map
function M.set_floaterm_map(key, name, cmd)
  utils.map({
    {"n", key, string.format(":lua require('utils/floaterm').toggle('%s', '%s')<cr>", name, cmd), {silent = true, noremap = true, desc = "Open Yazi" }},
    {"t", key, "&ft == \"floaterm\" ? printf('<c-\\><c-n>:FloatermHide<cr>%s', floaterm#terminal#get_bufnr('".. name .."') == bufnr('%') ? '' : '".. key .. "') : '".. key .."'", {silent = true, expr = true, desc = "Open Terminal"}},
  })
end

return M
