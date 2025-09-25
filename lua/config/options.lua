
-- Основные настройки
vim.opt.mouse = "a" -- включить мышь
vim.opt.encoding = "utf-8"
vim.opt.number = true -- номера строк
vim.opt.swapfile = false -- отключить swap файлы
vim.opt.scrolloff = 7

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.fileformat = "unix"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

-- Настройка для отступов python
vim.g.python_indent = {
  open_paren = "shiftwidth()",
  closed_paren_align_last_line = false,
}
vim.cmd("filetype indent on") -- загрузка файлов с настройками отступов по типу файла

-- Настройки netrw
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_altv = 1
vim.g.netrw_winsize = 30
vim.opt.splitright = true


vim.diagnostic.config({ virtual_text = true })
vim.o.background = dark
vim.cmd([[colorscheme gruvbox]])


function _G.set_terminal_keymaps()
    local opts = {buffer = 0}
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- vim.api.nvim_create_autocmd("User", {
--   pattern = "GoyoEnter",
--   callback = function()
--     vim.opt.number = true
--     vim.opt.relativenumber = true
--   end,
-- })
--
--
-- vim.api.nvim_create_autocmd("User", {
--   pattern = "GoyoLeave",
--   callback = function()
--     vim.opt.number = true
--     vim.opt.relativenumber = true
--   end,
-- })
vim.g.goyo_linenr = 1
