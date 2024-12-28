local keymap = vim.keymap

-- 主键
vim.g.mapleader = " "

-- ---------- 正常模式 ---------- --
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>h") -- 垂直新增窗口

keymap.set("n", "<leader>nh", ":nohl<CR>") -- 取消查找高亮

keymap.set("n", "H", "^") -- 行首
keymap.set("n", "L", "$") -- 行尾

-- ---------- 插入模式 ---------- --

-- ---------- 可视模式 ---------- --
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("v", "H", "^") -- 行首
keymap.set("v", "L", "$") -- 行尾
