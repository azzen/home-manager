require("toggleterm").setup({
	open_mapping = [[<C-Q>]],
	direction = "horizontal",
})

function _G.set_terminal_keymaps()
	local map = function(mode, keys, fn, desc)
		if desc then
			desc = "ToggleTerm " .. desc
		end
		vim.keymap.set(mode, keys, fn, { buffer = 0, desc = desc, silent = true })
	end

	map("t", "<esc>", [[<C-\><C-n>]], "Normal mode")
	map("t", "<C-w>", [[<C-\><C-n><C-w>]], "Navigate to")
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
