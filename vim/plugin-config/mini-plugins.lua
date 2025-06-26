require('mini.indentscope').setup()
require('mini.trailspace').setup()
require('mini.animate').setup()

require('mini.ai').setup({
    -- TODO: define custom treesitter objects
    search_method = 'cover_or_nearest'
})

require('mini.bracketed').setup()
