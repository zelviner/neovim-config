local utils = {}

utils.fn = vim.fn
utils.cmd = vim.api.nvim_command

function utils.map(maps)
  for _, map in pairs(maps) do
    if map[4]["buffer"] then
      map[4] = nil
      vim.api.nvim_buf_set_keymap(0, map[1], map[2], map[3], map[4])
    else
      vim.api.nvim_set_keymap(map[1], map[2], map[3], map[4])
    end
  end
end

return utils
