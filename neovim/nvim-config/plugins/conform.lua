require("conform").setup({
	formatters_by_ft = {
		nix = { "alejandra" },
		lua = { "stylua" },
		rust = { "rustfmt" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
	},

	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})
