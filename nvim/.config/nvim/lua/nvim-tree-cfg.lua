vim.g.loaded_netrw          = 1
vim.g.loaded_netrwPlugin    = 1
vim.opt.termguicolors       = true

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        mappings = {
            list = {
                { key = "<C-r>", action = "system_open"},
                { key = "F2", action = "full_rename" },
                { key = "<C-n>", action = "create" },
                { key = "<C-d>", action = "delete" },
                { key = "<C-w>", action = "collapse_all" },
                { key = "<C-s>", action = "expand_all" },
            }
        }
    }
})
