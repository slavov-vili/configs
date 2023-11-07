local hop = require('hop')
hop.setup{}



-- Common options
local current_line = { current_line_only = true }
local multi_windows = { multi_windows = true }



-- Hop anywhere
vim.keymap.set('', '<leader>hh', function() hop.hint_anywhere(current_line)  end, { remap=true })
vim.keymap.set('', '<leader>hH', function() hop.hint_anywhere()              end, { remap=true })
vim.keymap.set('', '<leader>HH', function() hop.hint_anywhere(multi_windows) end, { remap=true })



-- Hop to character
vim.keymap.set('', '<leader>hf', function() hop.hint_char1(current_line)  end, { remap=true })
vim.keymap.set('', '<leader>hF', function() hop.hint_char1()              end, { remap=true })
vim.keymap.set('', '<leader>HF', function() hop.hint_char1(multi_windows) end, { remap=true })
vim.keymap.set('', '<leader>ht', function() hop.hint_char2(current_line)  end, { remap=true })
vim.keymap.set('', '<leader>hT', function() hop.hint_char2()              end, { remap=true })
vim.keymap.set('', '<leader>HT', function() hop.hint_char2(multi_windows) end, { remap=true })



-- Hop to word
vim.keymap.set('', '<leader>hw', function() hop.hint_words(current_line)  end, { remap=true })
vim.keymap.set('', '<leader>hW', function() hop.hint_words()              end, { remap=true })
vim.keymap.set('', '<leader>HW', function() hop.hint_words(multi_windows) end, { remap=true })



-- Hop to pattern
vim.keymap.set('', '<leader>h/', function() hop.hint_patterns()              end, { remap=true })
vim.keymap.set('', '<leader>H/', function() hop.hint_patterns(multi_windows) end, { remap=true })



-- Hop to line
vim.keymap.set('', '<leader>hl', function() hop.hint_lines_skip_whitespace()              end, { remap=true })
vim.keymap.set('', '<leader>Hl', function() hop.hint_lines_skip_whitespace(multi_windows) end, { remap=true })
vim.keymap.set('', '<leader>hL', function() hop.hint_lines()                              end, { remap=true })
vim.keymap.set('', '<leader>HL', function() hop.hint_lines(multi_windows)                 end, { remap=true })
vim.keymap.set('', '<leader>h:', function() hop.hint_vertical()                           end, { remap=true })
vim.keymap.set('', '<leader>H:', function() hop.hint_vertical(multi_windows)              end, { remap=true })



-- Yank from char to char
vim.keymap.set('', '<leader>hy', function() hop.yank_char1(current_line)  end, { remap=true })
vim.keymap.set('', '<leader>hY', function() hop.yank_char1()              end, { remap=true })
-- Paste to char
vim.keymap.set('', '<leader>hp', function() hop.paste_char1(current_line) end, { remap=true })
vim.keymap.set('', '<leader>hP', function() hop.paste_char1()             end, { remap=true })



-- Hop to TreeSitter node
vim.keymap.set('', '<leader>hn', function() hop.hint_nodes() end, { remap=true })

