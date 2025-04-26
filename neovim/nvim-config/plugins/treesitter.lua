local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()
local parsers = require("nvim-treesitter.parsers")
local queries = require("nvim-treesitter.query")

require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
		disable = function(lang, buf)
			local max_filesize = 1024 * 1024 -- 1 MB
			local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			if ok and stats and stats.size > max_filesize then
				return true
			end
		end,
		additional_vim_regex_highlighting = { "latex", "markdown" },
	},

	indent = {
		enable = true,
	},

	autopairs = {
		enable = true,
	},

	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "]n",
			node_decremental = "[n",
		},
	},

	playground = {
		enable = true,
		disable = {},
		updatetime = 25,
		persist_queries = false,
		keybindings = {
			toggle_query_editor = "o",
			toggle_hl_groups = "i",
			toggle_injected_languages = "t",
			toggle_anonymous_nodes = "a",
			toggle_language_display = "I",
			focus_language = "f",
			unfocus_language = "F",
			update = "R",
			goto_node = "<cr>",
			show_help = "?",
		},
	},

	textobjects = {
		select = {
			enable = true,
			keymaps = {
				-- You can use the capture groups defined in textobjects.scm
				["ic"] = "@comment.inner",
				["ac"] = "@comment.outer",
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["am"] = "@class.outer",
				["im"] = "@class.inner",
				["ib"] = "@block.inner",
				["ab"] = "@block.outer",
			},
		},
		move = {
			enable = true,
			set_jumps = false,
			goto_next_start = {
				["]]"] = "@function.outer",
			},
			goto_next_end = {
				["]["] = "@function.outer",
			},
			goto_previous_start = {
				["[["] = "@function.outer",
			},
			goto_previous_end = {
				["[]"] = "@function.outer",
			},
		},
	},
})

vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("treesitter_fold_enable", { clear = true }),
	callback = function()
		if queries.has_folds(parsers.get_buf_lang()) then
			vim.opt_local.foldmethod = "expr"
			vim.opt_local.foldexpr = "v:lua.vim.treesitter.foldexpr()"
		end
	end,
})
