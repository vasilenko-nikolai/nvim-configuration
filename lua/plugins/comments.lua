return {
    {
        "terrortylor/nvim-comment",
        config = function()
            local conf = require("nvim_comment")
            conf.setup({
                line_mapping = "<leader>cl", 
                operator_mapping = "<leader>c"
            })
        end
    }
}
