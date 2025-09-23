vim.lsp.config('rust_analyzer', {})
vim.lsp.config('pyright', {})
vim.lsp.config('gopls', {})
vim.lsp.config('postgres_lsp', {})
vim.lsp.config('emmet_ls', {
    cmd = {"emmet-language-server", "--stdio"}
})
vim.lsp.config('ts_ls', {})

vim.lsp.enable('pyright')
vim.lsp.enable('gopls')
