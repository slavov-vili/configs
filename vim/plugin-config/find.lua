local fzf = require("fzf-lua")

fzf.setup({
  winopts = {
    width = 0.9,
    height = 0.9,
  },
})

local PREFIX = '<leader>f'
local function keymap(mode, key, action, desc)
  vim.keymap.set(mode, PREFIX..key, action, { desc = desc, noremap = true, silent = true })
end



-- Files
keymap({"n", "v"}, "f", fzf.files,          "Find Files")
keymap({"n", "v"}, "b", fzf.buffers,        "Open Buffers")
keymap({"n", "v"}, "o", fzf.oldfiles,       "Recent Files")
keymap({"n", "v"}, "a", fzf.args,           "Arg List")
keymap({"n", "v"}, ":", fzf.blines,         "Search Current Buffer Lines")
keymap({"n", "v"}, "L", fzf.lines,          "Search All Buffer Lines")
keymap({"n", "v"}, "t", fzf.tabs,           "Tabs")
keymap({"n", "v"}, "T", fzf.treesitter,     "Treesitter Symbols")
keymap({"n", "v"}, "qf", fzf.quickfix,       "Quickfix List")
keymap({"n", "v"}, "qF", fzf.quickfix_stack, "Quickfix Stack")
keymap({"n", "v"}, "qw", fzf.loclist,       "Location List")
keymap({"n", "v"}, "qW", fzf.loclist_stack, "Location Stack")



-- Search
keymap("n", "g", fzf.live_grep,      "Live Grep")
keymap("v", "g", fzf.grep_visual,    "Grep Visual Selection")
keymap({"n", "v"}, "G", fzf.grep,           "Grep")
keymap({"n", "v"}, "p", fzf.grep_project,   "Grep Project")
keymap({"n", "v"}, "w", fzf.grep_cword,     "Grep Word Under Cursor")
keymap({"n", "v"}, "W", fzf.grep_cWORD,     "Grep WORD Under Cursor")
keymap({"n", "v"}, "/", fzf.grep_curbuf,    "Grep Current Buffer")
keymap({"n", "v"}, "qg", fzf.lgrep_quickfix, "Live Grep Quickfix")
keymap({"n", "v"}, "qG", fzf.grep_quickfix,  "Grep Quickfix")
keymap({"n", "v"}, "qv", fzf.lgrep_loclist,  "Live Grep Loclist")
keymap({"n", "v"}, "L", fzf.grep_last,      "Repeat Last Grep")



-- Git
keymap({"n", "v"}, "Gs", fzf.git_status,   "Git Status")
keymap({"n", "v"}, "Gc", fzf.git_commits,  "Git Commits")
keymap({"n", "v"}, "Gb", fzf.git_branches, "Git Branches")
keymap({"n", "v"}, "Gt", fzf.git_tags,     "Git Tags")
keymap({"n", "v"}, "GS", fzf.git_stash,    "Git Stash")
keymap({"n", "v"}, "Gd", fzf.git_diff,     "Git Diff")



-- LSP
keymap("n", "ld", fzf.lsp_definitions,       "LSP Definitions")
keymap("n", "lD", fzf.lsp_declarations,      "LSP Declarations")
keymap("n", "li", fzf.lsp_implementations,   "LSP Implementations")
keymap("n", "lt", fzf.lsp_typedefs,          "LSP Type Definitions")
keymap("n", "lr", fzf.lsp_references,        "LSP References")
keymap("n", "la", fzf.lsp_code_actions,"LSP Code Actions")
keymap("n", "ls", fzf.lsp_document_symbols,  "Document Symbols")
keymap("n", "lS", fzf.lsp_workspace_symbols, "Workspace Symbols")
keymap("n", "ll", fzf.lsp_live_workspace_symbols,"Live Workspace Symbols")
keymap("n", "lc", fzf.lsp_outgoing_calls,"LSP Outgoing Calls")
keymap("n", "lC", fzf.lsp_incoming_calls,"LSP Incoming Calls")
keymap("n", "lp", fzf.lsp_type_sub,  "LSP Subtypes")
keymap("n", "lP", fzf.lsp_type_super,"LSP Supertypes")
keymap("n", "lf", fzf.lsp_finder,    "LSP Finder")
keymap("n", "le", fzf.diagnostics_document,"Document Diagnostics")
keymap("n", "lE", fzf.diagnostics_workspace,"Workspace Diagnostics")



-- Miscellaneous
keymap({"n", "v"}, "R", fzf.resume,        "Resume Last Picker")
keymap({"n", "v"}, "B", fzf.builtin,       "Builtin Pickers")
keymap({"n", "v"}, "P", fzf.profiles,      "Profiles")
keymap({"n", "v"}, "`", fzf.marks,         "Marks")
keymap({"n", "v"}, "J", fzf.jumps,         "Jumps")
keymap({"n", "v"}, "C", fzf.commands,      "Commands")
keymap({"n", "v"}, "<up>", fzf.command_history,"Command History")
keymap({"n", "v"}, "~", fzf.changes,       "Changes")
keymap({"n", "v"}, "\"", fzf.registers,    "Registers")
keymap({"n", "v"}, "T", fzf.tagstack,     "Tag Stack")
keymap({"n", "v"}, "H", fzf.helptags,      "Help Tags")
keymap({"n", "v"}, "M", fzf.manpages,      "Man Pages")
keymap({"n", "v"}, "cs", fzf.colorschemes, "Color Schemes")
keymap({"n", "v"}, "?", fzf.search_history,"Search History")
keymap({"n", "v"}, "K", fzf.keymaps,      "Keymaps")
keymap({"n", "v"}, "O", fzf.nvim_options, "Neovim Options")
keymap({"n", "v"}, "F", fzf.filetypes,    "Filetypes")
keymap({"n", "v"}, "N", fzf.menus,        "Menus")
keymap({"n", "v"}, "sp", fzf.spellcheck,   "Spellcheck Words")
keymap({"n", "v"}, "ss", fzf.spell_suggest,"Spell Suggestions")
keymap({"n", "v"}, "Ep", fzf.packadd,      "Packadd Plugins")
keymap({"n", "v"}, "Eh", fzf.highlights,   "Highlights")
keymap({"n", "v"}, "Ea", fzf.autocmds,     "Auto-commands")
keymap({"n", "v"}, "Et", fzf.tmux_buffers, "Tmux Buffers")
keymap({"n", "v"}, "Ez", fzf.zoxide,       "Zoxide Directories")



-- Completion
keymap({"n", "v"}, "cp", fzf.complete_path, "Complete Path")
keymap({"n", "v"}, "cf", fzf.complete_file, "Complete File")
keymap({"n", "v"}, "cl", fzf.complete_bline,"Complete Buffer Line")
keymap({"n", "v"}, "cL", fzf.complete_line, "Complete Line")

