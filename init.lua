-- Base options
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

-- Setup Lazy Vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
require("lazy").setup({
    "nvim-tree/nvim-web-devicons",
    "nvim-tree/nvim-tree.lua",
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    { -- Adds git related signs to the gutter, as well as utilities for managing changes
        'lewis6991/gitsigns.nvim',
        opts = {
            signs = {
                add = { text = '+' },
                change = { text = '~' },
                delete = { text = '_' },
                topdelete = { text = '‾' },
                changedelete = { text = '~' },
            },
        },
    },
    "folke/which-key.nvim",
    { "catppuccin/nvim", name = "catppuccin" },
    { "nvim-telescope/telescope.nvim", tag = '0.1.5', dependencies = { "nvim-lua/plenary.nvim" } },
    "nvim-lualine/lualine.nvim",
    "nvimdev/dashboard-nvim", 
    { "utilyre/barbecue.nvim", tag = "v1.0.1", dependencies = { "SmiteshP/nvim-navic" } }
})


require('which-key').setup()

require('catppuccin').setup({
    flavour = 'macchiato',
})

vim.cmd.colorscheme 'catppuccin'

-- Maps
require('remap')
