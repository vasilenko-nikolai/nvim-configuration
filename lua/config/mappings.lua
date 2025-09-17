-- Лидер
vim.g.mapleader = " "

-- Горячая клавиша вставки (inoremap jk <esc>)
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })

-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree close<CR>')

vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<Tab>', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>ls', builtin.lsp_document_symbols, {})
vim.keymap.set('n', 'gr', builtin.lsp_references,
               {noremap = true, silent = true})
vim.keymap.set('n', 'gd', builtin.lsp_definitions,
               {noremap = true, silent = true})
vim.keymap.set('n', 'gi', builtin.lsp_implementations,
               {noremap = true, silent = true})

-- Buff
vim.keymap.set('n', '<leader>bn', ':bn<CR>')
vim.keymap.set('n', '<leader>bp', ':bp<CR>')
vim.keymap.set('n', '<leader>bc', ':bclose<CR>')
-- Tabs
vim.keymap.set('n', '<leader>te', ':tabe<CR>')
vim.keymap.set('n', '<leader>tn', ':tabn<CR>')
vim.keymap.set('n', '<leader>tp', ':tabp<CR>')
vim.keymap.set('n', '<leader>tc', ':tabclose<CR>')
vim.keymap.set('n', '<leader>to', ':tabonly<CR>')

-- Terminal
vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float<CR>')
vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>')
vim.keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical size=40<CR>')


vim.keymap.set('n', '<leader>sv', '<cmd>VenvSelect<CR>')


-- mapping Breakpoint for debbugger
dap = require('dap')
vim.keymap.set('n', '<leader>dc', function() dap.continue() end)
vim.keymap.set('n', '<leader>', function() dap.step_over() end)
vim.keymap.set('n', '<F11>', function() dap.step_into() end)
vim.keymap.set('n', '<F12>', function() dap.step_out() end)
vim.keymap.set('n', '<leader>b', function() dap.toggle_breakpoint() end)
vim.keymap.set('n', '<leader>B', function() dap.set_breakpoint() end)
vim.keymap.set('n', '<leader>lp', function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<leader>dr', function() dap.repl.open() end)
vim.keymap.set('n', '<leader>dl', function() dap.run_lasS() end)
vim.keymap.set({'n', 'v'}, '<leader>dh', function()
  require('dap.ui.widgets').hover()
end)
vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
  require('dap.ui.widgets').preview()
end)
vim.keymap.set('n', '<Leader>df', function()
  local widgets = require('dap.ui.widgets')
  widgets.centered_float(widgets.frames)
end)


--mapping show errors
vim.keymap.set('n', '<leader>se', vim.diagnostic.open_float)

-- mapping for translate
vim.keymap.set('v', 'mr', ':Translate RU<CR>')
vim.keymap.set('v', 'me', ':Translate EN<CR>')

vim.keymap.set('v', 'Mr', ':Translate RU -output=replace<CR>')
vim.keymap.set('v', 'Me', ':Translate EN -output=replace<CR>')
