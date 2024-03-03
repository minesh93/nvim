vim.g.mapleader = " "

vim.wo.number = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local o = vim.o

o.expandtab = true
o.tabstop = 4
o.shiftwidth = 4

vim.opt.listchars = { space = '.', tab = '->' }
vim.opt.list = true


require('which-key').setup()

require('catppuccin').setup({
    flavour = 'macchiato',
})

vim.cmd.colorscheme 'catppuccin'
