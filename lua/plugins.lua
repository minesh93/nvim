-- This file can be loaded by calling `lua require('plugins')` from your init.vim


-- Only required if you have packer configured as `opt`
-- vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-tree/nvim-tree.lua'

    use 'folke/which-key.nvim'

    -- Post-install/update hook with neovim command
    use { 'nvim-treesitter/nvim-treesitter' }

    use { "catppuccin/nvim", as = "catppuccin" }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'nvim-lualine/lualine.nvim'

    use { 
        'utilyre/barbecue.nvim', tag = 'v1.0.1',
        requires = { {'SmiteshP/nvim-navic' } }
    }

    use 'nvimdev/dashboard-nvim'

    -- Use dependency and run lua function after load
    -- use { 'lewis6991/gitsigns.nvim', tag = 'release',
        --reqiures = { 'nvim-tree/nvim-web-devicons' }
    -- }

end)
