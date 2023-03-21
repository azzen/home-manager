vim.g.vimtex_view_method = "skim"
vim.g.vimtex_compiler_latexmk = {
   options = {
       "--shell-escape",
       "--verbose",
       "--file-line-error",
       "--synctex=1",
       "--interaction=nonstopmode",
   },
}
vim.g.vimtex_compiler_engine = "lualatex"
