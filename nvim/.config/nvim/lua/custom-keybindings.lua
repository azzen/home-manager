--[[-------
--
-- Custom keybindings
--
-------]]--

-- helper function

function map(mode, lhs, rhs, opts) 
    local options = { noremap = true }
    if opts then
        options = vim.extend("force", options, opts)
    end

    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<C-b>", ":NvimTreeToggle<CR>")
map("n", "<C-v>", ":NvimTreeFocus<CR>")
map("n", "<a-Left>", ":bprev<CR>")
map("n", "<a-Right>", ":bnext<CR>")
