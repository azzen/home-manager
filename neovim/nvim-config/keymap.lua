vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

map("n", "<Esc>", ":nohl<CR>", { silent = true, desc = "Remove highlights" })
map("n", "<S-H>", ":bprev<CR>", { silent = true, desc = "Buffer left ([S]hift left ([H]))" })
map("n", "<S-L>", ":bnext<CR>", { silent = true, desc = "Buffer right ([S]hift right ([L]))" })
map("n", "<leader>bq", ":enew<bar>bd #<CR>", { silent = true, desc = "Close buffer ([leader] + [b] + [q])" })
map("n", "<leader>e", ":Neotree toggle<CR>", { silent = true, desc = "Toggle filetree ([leader] + [E])" })

local telescope_builtin = require("telescope.builtin")

map("n", "<leader>f", telescope_builtin.find_files, { silent = true, desc = "Find a file ([leader] + [f])" })
map("n", "<leader> ", telescope_builtin.live_grep, { silent = true, desc = "Grep in files ([leader] + [SPACE])" })

local trouble = require("trouble")

map("n", "<leader>xx", function()
	trouble.toggle("diagnostics")
end, { desc = "Trouble toggle workspace diagnostics" })
map("n", "<leader>xd", function()
	trouble.toggle({
		mode = "diagnostics",
		filter = { buf = 0 },
		pinned = true,
	})
end, { desc = "Trouble toggle document diagnostics" })
map("n", "<leader>xs", function()
	trouble.toggle("lsp_document_symbols")
end, { desc = "Trouble toggle document symbols" })
map("n", "<leader>xl", function()
	trouble.toggle("lsp")
end, { desc = "Trouble toggle [l]sp info" })
map("n", "<leader>xL", function()
	trouble.toggle("loclist")
end, { desc = "Trouble toggle [l]oclist" })
map("n", "<leader>xQ", function()
	trouble.toggle("quickfix")
end, { desc = "Trouble toggle [q]flist" })
