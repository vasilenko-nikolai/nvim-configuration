return {
    {
        'akinsho/toggleterm.nvim', 
        version = "*", 
        config = function()
            local conf = require("toggleterm")
            conf.setup({
                open_mapping = [[<c-\>]],
            })
        end
    }
}
