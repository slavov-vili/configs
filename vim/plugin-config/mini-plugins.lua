-- Put mini.bracketed as high as possible, because others overwrite its mappings (e.g. mini.indentscope defines a mapping for "[i")
require('mini.bracketed').setup({
    buffer     = { suffix = 'b', options = { add_to_jumplist = true } },
    comment    = { suffix = 'c', options = { add_to_jumplist = true } },
    conflict   = { suffix = 'x', options = { add_to_jumplist = true } },
    diagnostic = { suffix = 'd', options = { add_to_jumplist = true } },
    file       = { suffix = 'f', options = { add_to_jumplist = true } },
    indent     = { suffix = 'i', options = { add_to_jumplist = true } },
    jump       = { suffix = 'j', options = { add_to_jumplist = true } },
    location   = { suffix = 'l', options = { add_to_jumplist = true } },
    oldfile    = { suffix = 'o', options = { add_to_jumplist = true } },
    quickfix   = { suffix = 'q', options = { add_to_jumplist = true } },
    treesitter = { suffix = 't', options = { add_to_jumplist = true } },
    undo       = { suffix = 'u', options = { add_to_jumplist = true } },
    window     = { suffix = 'w', options = { add_to_jumplist = true } },
    yank       = { suffix = 'y', options = { add_to_jumplist = true } },
})

require('mini.trailspace').setup()

require('mini.animate').setup()

require('mini.ai').setup({
    -- TODO: define custom treesitter objects
    search_method = 'cover_or_nearest'
})

require('mini.indentscope').setup()

