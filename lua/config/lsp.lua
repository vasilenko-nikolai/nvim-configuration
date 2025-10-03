vim.lsp.config('rust_analyzer', {})
vim.lsp.config('pyright', {})
vim.lsp.config('gopls', {})
vim.lsp.config('postgres_lsp', {})
vim.lsp.config("emmet_language_server", {
    on_attach = function(client, bufnr)
        vim.keymap.set("i", "<c-s>,", function()
            client.request(
                "textDocument/completion",
                vim.lsp.util.make_position_params(0, client.offset_encoding),
                function(_, result)
                    local textEdit = result.items[1].textEdit
                    local snip_string = textEdit.newText
                    textEdit.newText = ""
                    vim.lsp.util.apply_text_edits({ textEdit }, bufnr, client.offset_encoding)
                    require("luasnip").lsp_expand(snip_string)
                end,
                bufnr
            )
        end, { noremap = true, buffer = bufnr, desc = "Expand emmet" })
    end,
})

vim.lsp.config("vtsls", {
    filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
    settings = {
        vtsls = { tsserver = { globalPlugins = {} } },
        typescript = {
            inlayHints = {
                parameterNames = { enabled = "literals" },
                parameterTypes = { enabled = true },
                variableTypes = { enabled = true },
                propertyDeclarationTypes = { enabled = true },
                functionLikeReturnTypes = { enabled = true },
                enumMemberValues = { enabled = true },
            },
        },
    },
    before_init = function(_, config)
        table.insert(config.settings.vtsls.tsserver.globalPlugins, {
            name = "@vue/typescript-plugin",
            location = vim.fn.expand(
                "$MASON/packages/vue-language-server/node_modules/@vue/language-server"
            ),
            languages = { "vue" },
            configNamespace = "typescript",
            enableForWorkspaceTypeScriptVersions = true,
        })
    end,
    on_attach = function(client)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
    end,
})



-- enable
vim.lsp.enable('pyright')
vim.lsp.enable('gopls')
vim.lsp.enable('vtsls')
vim.lsp.enable('emmet_language_server')
