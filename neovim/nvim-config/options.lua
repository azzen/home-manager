local opt = vim.opt
local cmd = vim.cmd

opt.encoding = "utf-8"
opt.mouse = "a"
opt.title = true
opt.cursorline = true
opt.errorbells = false
opt.cmdheight = 2
opt.timeoutlen = 1000
opt.ttimeoutlen = 0
opt.laststatus = 2
opt.clipboard = "unnamedplus"
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.tabstop = 4
opt.softtabstop = 0
opt.shiftwidth = 0
opt.foldmethod = "syntax"
opt.foldlevelstart = 99
opt.updatetime = 1000
opt.colorcolumn = { "80", "120" }
opt.termguicolors = true
opt.expandtab = false
opt.smarttab = true
opt.completeopt = "menu,menuone,noselect"
opt.spelllang = "en_us"
opt.hlsearch = true
opt.incsearch = true
opt.showmatch = true
opt.smartcase = true

cmd("filetype plugin on")
