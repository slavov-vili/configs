vim.g.pear_tree_smart_openers   = 1
vim.g.pear_tree_smart_closers   = 1
vim.g.pear_tree_smart_backspace = 1

vim.g.rainbow_active = 1

require('mini.trailspace').setup()

require('mini.animate').setup()

require('mini.ai').setup({
    -- TODO: define custom treesitter objects
    search_method = 'cover_or_nearest'
})

require('scopemaster').setup({scope_mode = "cursor"})
