local api = vim.api

-- Auto resize when terminal window is resized
api.nvim_create_autocmd("VimResized", {
	command = "wincmd = ",
	group = api.nvim_create_augroup("autoresize_window_on_terminal_resize", { clear = true }),
})

-- Trim whitespaces on save
api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		local saved_view = vim.fn.winsaveview()
		pcall(function()
			vim.cmd([[ "%s/\s\+%//e ]])
		end)
		vim.fn.winrestview(saved_view)
	end,
	group = api.nvim_create_augroup("trim_whitespace_on_save", { clear = true }),
})

local function update_color_column()
	local tw = vim.opt_local.textwidth:get()
	if not tw or tw == 0 then
		vim.opt_local.colorcolumn = { "80", "120" }
	else
		vim.opt_local.colorcolumn = tostring(tw)
	end
end

local color_column_group = api.nvim_create_augroup("colorcolumn", { clear = true })

api.nvim_create_autocmd("OptionSet", {
	pattern = "textwidth",
	callback = update_color_column,
	group = color_column_group,
})

api.nvim_create_autocmd("BufEnter", {
	callback = update_color_column,
	group = color_column_group,
})
