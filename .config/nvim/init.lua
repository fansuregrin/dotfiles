-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt["tabstop"] = 4
vim.opt["shiftwidth"] = 4

-- bootstrap lazy.nvim
-- ./lua/lazynvim-init.lua
require("lazynvim-init")

