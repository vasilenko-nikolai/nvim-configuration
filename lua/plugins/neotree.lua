return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "MunifTanjim/nui.nvim",
          "nvim-tree/nvim-web-devicons", -- optional, but recommended
        },
        lazy = false, -- neo-tree will lazily load itself
        config = function () 
            local conf = require('neo-tree')
            conf.setup({
                window = {
                    max_width = 35,
                    width = .19,
                },
            })
        end
    },
}
