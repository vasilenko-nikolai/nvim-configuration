return {
	{
		"neovim/nvim-lspconfig",
	    config = function()
			-- Настройка LSP (опционально)
			local lspconfig = require("lspconfig")
            lspconfig.rust_analyzer.setup({})
            lspconfig.pyright.setup({})
            lspconfig.ts_ls.setup({})
		end,
	},
}
