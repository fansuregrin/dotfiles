return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      local wk = require("which-key")

      wk.register(
        {
          ["<space>"] = { "<cmd>nohlsearch<cr>", "取消搜索高亮" }, 
          ["bp"] = { "<cmd>BufferLineCyclePrev<cr>", "上一个标签页" }, 
          ["bn"] = { "<cmd>BufferLineCycleNext<cr>", "下一个标签页" }, 
          ["bd"] = { "<cmd>bd<cr>", "关闭标签页" }, 
          ["tt"] = { "<cmd>NvimTreeToggle<cr>", "显示/隐藏目录树" },
          ["tf"] = { "<cmd>NvimTreeFocus<cr>", "聚焦到目录树" }
        }, 
        { prefix = "<leader>" }
      )
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      
    }
  }
}
