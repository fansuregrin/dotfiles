return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "bashls",
                "clangd",
                "denols",
                "pyright",
                "rust_analyzer",
            },
        })

        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        local lspcfg = require("lspconfig")
        lspcfg.bashls.setup({
            capabilities = capabilities
        })
        lspcfg.clangd.setup({
            capabilities = capabilities
        })
        lspcfg.denols.setup({
            capabilities = capabilities
        })
        lspcfg.pyright.setup({
            capabilities = capabilities
        })
        lspcfg.lua_ls.setup({
            capabilities = capabilities
        })
        lspcfg.rust_analyzer.setup({
            capabilities = capabilities,
            settings = {
                ['rust_analyzer'] = {},
            }
        })
    end,
}
