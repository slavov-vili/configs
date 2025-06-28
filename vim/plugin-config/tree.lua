local api = require("nvim-tree.api")

local PREFIX = "<leader>t"
local function keymap(key, action)
    vim.keymap.set("n", PREFIX..key, action, { noremap = true, silent = true })
end

-- Tree management
-- FIXME: Find current file?
keymap("t", api.tree.toggle)
-- FIXME: Find current file?
keymap("o", api.tree.open)
keymap("q", api.tree.close)
keymap("r", api.tree.reload)
-- Navigation
keymap("f", api.tree.focus)
-- FIXME: switch to tree?
keymap("F", api.tree.find_file)
keymap("l", api.tree.collapse_all)
keymap("L", api.tree.expand_all)
-- Filters
keymap(".", api.tree.toggle_hidden_filter)
keymap("g", api.tree.toggle_git_clean_filter)
keymap("G", api.tree.toggle_gitignore_filter)
keymap("x", api.tree.toggle_no_buffer_filter)



require("nvim-tree").setup()
