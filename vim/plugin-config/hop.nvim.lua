local hop = require('hop')
hop.setup{
    extensions = { 'hop-yank', 'hop-treesitter' }
}
local PREFIX = '<leader>h'



local function current_line(action) 
    return function()
        action({current_line_only = true})
    end
end

local function multi_windows(action)
    return function()
        action({ multi_windows = true })
    end
end

local function keymap(key, action)
    vim.keymap.set({'n', 'x'}, PREFIX..key, action, { remap=true })
end



-- Hop anywhere
keymap('a', current_line(hop.hint_anywhere))
keymap('A', hop.hint_anywhere)
-- map('A', multi_windows(hop.hint_anywhere))
-- Hop to character
keymap('f', current_line(hop.hint_char1))
keymap('F', hop.hint_char1)
keymap('f', multi_windows(hop.hint_char1))
keymap('t', current_line(hop.hint_char2))
keymap('T', hop.hint_char2)
keymap('t', multi_windows(hop.hint_char2))
-- Hop to word
keymap('w', current_line(hop.hint_words))
keymap('W', hop.hint_words)
keymap('M', multi_windows(hop.hint_words))
-- Hop to pattern
keymap('/', hop.hint_patterns)
keymap('?', multi_windows(hop.hint_patterns))
-- Hop to line
keymap('l', hop.hint_lines_skip_whitespace)
keymap('L', multi_windows(hop.hint_lines_skip_whitespace))
keymap('<space>', hop.hint_lines)
keymap('<space>', multi_windows(hop.hint_lines))
keymap('v', hop.hint_vertical)
keymap('V', multi_windows(hop.hint_vertical))



-- FIXME: this stuff requires extensions
-- Yank from char to char
-- keymap('y', current_line(hop.yank_char1))
-- keymap('Y', hop.yank_char1)
-- -- Paste to char
-- keymap('p', current_line(hop.paste_char1))
-- keymap('P', hop.paste_char1)



-- -- Hop to TreeSitter node
-- keymap('n', hop.hint_nodes)

