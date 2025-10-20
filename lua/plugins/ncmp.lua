return {
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        config = function()
            local luasnip = require('luasnip')
            require("luasnip.loaders.from_vscode").lazy_load({
                paths = { table.concat({vim.fn.stdpath("config"), "snippets"}, "/")}
            })
            
            vim.keymap.set({ "i", "s" }, "<C-j>", function()
                    if luasnip.expand_or_jumpable() then
                      luasnip.expand_or_jump()
                    end
            end, { silent = true })

            vim.keymap.set({ "i", "s" }, "<C-k>", function()
                if luasnip.jumpable(-1) then
                  luasnip.jump(-1)
                end
            end, { silent = true })
        end
    },
	{
		"hrsh7th/nvim-cmp",
		version = false, -- last release is way too old
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
            "saadparwaiz1/cmp_luasnip",
		},
		-- Not all LSP servers add brackets when completing a function.
		-- To better deal with this, LazyVim adds a custom option to cmp,
		-- that you can configure. For example:
		--
		-- ```lua
		-- opts = {
		--   auto_brackets = { "python" }
		-- }
		-- ```
		opts = function()
			vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })
			local cmp = require("cmp")
			local defaults = require("cmp.config.default")()
			local auto_select = true
			return {
                window = {
                  completion = cmp.config.window.bordered(),
                  documentation = cmp.config.window.bordered(),
                },
				auto_brackets = {}, -- configure any filetype to auto add brackets
				mapping = cmp.mapping.preset.insert({
                      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                      ['<C-f>'] = cmp.mapping.scroll_docs(4),
                      ['<C-Space>'] = cmp.mapping.complete(),
                      ['<C-e>'] = cmp.mapping.abort(),
                      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.{
                      ["<Tab>"] = cmp.mapping(function(fallback)
                          if cmp.visible() then
                              cmp.select_next_item()
                          else
                              fallback()
                          end
                      end, {"i", "s"}),
				}),
				sources = cmp.config.sources({
                  { name = 'nvim_lsp' },
                  { name = 'vsnip' }, -- For vsnip users.
                  { name = 'luasnip' }, -- For luasnip users.
                  -- { name = 'ultisnips' }, -- For ultisnips users.
                  -- { name = 'snippy' }, -- For snippy users.
                  { name = 'buffer' },
                  { name = 'vim-dadbod-completion' },
                }),
				sorting = defaults.sorting,
			}
		end,
	},
}

