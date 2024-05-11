-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- 定义全局的快捷起始键
vim.g.mapleader = ","
-- 区分折行与回车换行，区分空格与制表符 
vim.o.listchars = "eol:↵,lead:‧"
vim.wo.list = true

vim.opt.nu = true
vim.opt.rnu = true
vim.opt.cursorline = true
vim.opt.syntax = 'on'
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.bo.softtabstop = 4 

-- bootstrap lazy.nvim
-- ./lua/lazynvim-init.lua
require("lazynvim-init")

