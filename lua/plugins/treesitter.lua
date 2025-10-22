return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = 'master', 
        lazy = false,
        build = ":TSUpdate",
        config = function()
            local con = require("nvim-treesitter.configs")
            con.setup({
                ensure_installed = { 
                    "typescript",
                    "lua",
                    "go",
                    "javascript",
                    "python",
                    "vue",
                    "css",
                    "scss"
                },
                sync_install = false,
                auto_install = true,
                highlight = {
                    enable = true
                },
            })
        end,
    },
}

