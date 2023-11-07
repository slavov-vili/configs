local hop = require('hop')
hop.setup{}



-- Common options
local current_line = { current_line_only = true }
local multi_windows = { multi_windows = true }



-- Hop anywhere
vim.keymap.set('', 'hh', function() hop.hint_anywhere(current_line)  end, { remap=true })
vim.keymap.set('', 'hH', function() hop.hint_anywhere()              end, { remap=true })
vim.keymap.set('', 'HH', function() hop.hint_anywhere(multi_windows) end, { remap=true })



-- Hop to character
vim.keymap.set('', 'hf', function() hop.hint_char1(current_line)  end, { remap=true })
vim.keymap.set('', 'hF', function() hop.hint_char1()              end, { remap=true })
vim.keymap.set('', 'HF', function() hop.hint_char1(multi_windows) end, { remap=true })
vim.keymap.set('', 'ht', function() hop.hint_char2(current_line)  end, { remap=true })
vim.keymap.set('', 'hT', function() hop.hint_char2()              end, { remap=true })
vim.keymap.set('', 'HT', function() hop.hint_char2(multi_windows) end, { remap=true })



-- Hop to word
vim.keymap.set('', 'hw', function() hop.hint_words(current_line)  end, { remap=true })
vim.keymap.set('', 'hW', function() hop.hint_words()              end, { remap=true })
vim.keymap.set('', 'HW', function() hop.hint_words(multi_windows) end, { remap=true })



-- Hop to pattern
vim.keymap.set('', 'h/', function() hop.hint_patterns()              end, { remap=true })
vim.keymap.set('', 'H/', function() hop.hint_patterns(multi_windows) end, { remap=true })



-- Hop to line
vim.keymap.set('', 'hl', function() hop.hint_lines_skip_whitespace()              end, { remap=true })
vim.keymap.set('', 'Hl', function() hop.hint_lines_skip_whitespace(multi_windows) end, { remap=true })
vim.keymap.set('', 'hL', function() hop.hint_lines()                              end, { remap=true })
vim.keymap.set('', 'HL', function() hop.hint_lines(multi_windows)                 end, { remap=true })
vim.keymap.set('', 'h:', function() hop.hint_vertical()                           end, { remap=true })
vim.keymap.set('', 'H:', function() hop.hint_vertical(multi_windows)              end, { remap=true })



-- Yank from char to char
vim.keymap.set('', 'hy', function() hop.yank_char1(current_line)  end, { remap=true })
vim.keymap.set('', 'hY', function() hop.yank_char1()              end, { remap=true })
-- Paste to char
vim.keymap.set('', 'hp', function() hop.paste_char1(current_line) end, { remap=true })
vim.keymap.set('', 'hP', function() hop.paste_char1()             end, { remap=true })



-- Hop to TreeSitter node
vim.keymap.set('', 'hn', function() hop.hint_nodes() end, { remap=true })

