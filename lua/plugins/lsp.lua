return {
	{
		"neovim/nvim-lspconfig",
	    config = function()
			-- Настройка LSP (опционально)
			local lspconfig = require("lspconfig")
            lspconfig.rust_analyzer.setup({})
            lspconfig.pyright.setup({})
            lspconfig.gopls.setup({})
            lspconfig.postgres_lsp.setup({})
            lspconfig.emmet_ls.setup({
                cmd = {"emmet-language-server", "--stdio"},
            })
            lspconfig.ts_ls.setup({})
		end,
	},
}
