return {
    {
        'williamboman/mason.nvim',
        opts = {}
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = true,
        config = function ()
            local mason_lspconfig = require('mason-lspconfig')
            mason_lspconfig.setup({
                ensure_installed = require('utils.lsp_servers'),
                automatic_installation = true,
            }) 
        end,
        opts = {
            auto_install = true, -- Главная настройка для автоматизации
        },
    },
}
