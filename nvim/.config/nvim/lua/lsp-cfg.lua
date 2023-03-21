local lspconfig = require('lspconfig')
local coq = require('coq')

lspconfig.texlab.setup(coq.lsp_ensure_capabilities {})
lspconfig.luals.setup(coq.lsp_ensure_capabilities {
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = {'vim'},
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file('', true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
})
lspconfig.pyright.setup(coq.lsp_ensure_capabilities {})
