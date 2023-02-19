return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        requires = {
            {'nvim-lua/plenary.nvim'}
        }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local tsUpdate = require('nvim-treesitter.install').update({ with_sync = true })
            tsUpdate()
        end,
    }
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', 
        }
    }
    use 'nvim-lualine/lualine.nvim'
    use 'rebelot/kanagawa.nvim'
    use {
        'akinsho/bufferline.nvim',
        tag = "v3.*",
        requires = 'nvim-tree/nvim-web-devicons'
    }

end)
