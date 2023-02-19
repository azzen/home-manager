--[[--------
--
-- Packer config
--
--------]]--

-- Load plugins.lua
require('plugins')

-- Autorun packer compile when plugins.lua is updated
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
]])

--[[--------
--
-- Vim options
--
--------]]--

vim.opt.title           = true
vim.opt.hidden          = true
vim.opt.expandtab       = true
vim.opt.shiftwidth      = 4
vim.opt.tabstop         = 4
vim.opt.number          = true
vim.opt.relativenumber  = true
vim.cmd [[ colorscheme kanagawa ]]


--[[-------
--
-- Loading additional configurations
--
-------]]--

require('tree-sitter-cfg')
require('nvim-tree-cfg')
require('lualine-cfg')
