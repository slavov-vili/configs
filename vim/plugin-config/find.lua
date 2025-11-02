local fzf = require("fzf-lua")

fzf.setup({
  -- winopts = {
  --   height = 0.85,
  --   width = 0.80,
  --   border = "rounded",
  --   preview = { layout = "vertical", vertical = "down:40%" },
  -- },
  files = {
    git_icons = true,
    file_icons = true,
    color_icons = true,
  },
  grep = {
    rg_opts = "--hidden --column --line-number --no-heading --color=always --smart-case",
  },
})

local PREFIX = '<leader>f'
local function keymap(mode, key, action, desc)
  vim.keymap.set(mode, PREFIX..key, action, { desc = desc, noremap = true, silent = true })
end



-- Files
keymap("n", "f", fzf.files,          "Find Files")
keymap("n", "b", fzf.buffers,        "Open Buffers")
keymap("n", "o", fzf.oldfiles,       "Recent Files")
keymap("n", "a", fzf.args,           "Arg List")
keymap("n", ":", fzf.blines,         "Search Current Buffer Lines")
keymap("n", "L", fzf.lines,          "Search All Buffer Lines")
keymap("n", "t", fzf.tabs,           "Tabs")
keymap("n", "T", fzf.treesitter,     "Treesitter Symbols")
keymap("n", "q", fzf.quickfix,       "Quickfix List")
keymap("n", "Q", fzf.quickfix_stack, "Quickfix Stack")
keymap("n", "lc", fzf.loclist,       "Location List")
keymap("n", "ls", fzf.loclist_stack, "Location Stack")



-- Search
keymap("n", "g", fzf.live_grep,      "Live Grep")
keymap("v", "g", fzf.grep_visual,    "Grep Visual Selection")
keymap("n", "G", fzf.grep,           "Grep")
keymap("n", "p", fzf.grep_project,   "Grep Project")
keymap("n", "w", fzf.grep_cword,     "Grep Word Under Cursor")
keymap("n", "W", fzf.grep_cWORD,     "Grep WORD Under Cursor")
keymap("n", "/", fzf.grep_curbuf,    "Grep Current Buffer")
-- TODO find other stuff here
keymap("n", "q", fzf.lgrep_quickfix, "Live Grep Quickfix")
keymap("n", "Q", fzf.grep_quickfix,  "Grep Quickfix")
keymap("n", "l", fzf.lgrep_loclist,  "Live Grep Loclist")
keymap("n", "L", fzf.grep_last,      "Repeat Last Grep")



-- Git
keymap("n", "s", fzf.git_status,   "Git Status")
keymap("n", "c", fzf.git_commits,  "Git Commits")
keymap("n", "b", fzf.git_branches, "Git Branches")
keymap("n", "t", fzf.git_tags,     "Git Tags")
keymap("n", "S", fzf.git_stash,    "Git Stash")
keymap("n", "d", fzf.git_diff,     "Git Diff")



-- LSP
keymap("n", "gd", fzf.lsp_definitions,       "LSP Definitions")
keymap("n", "gD", fzf.lsp_declarations,      "LSP Declarations")
keymap("n", "gi", fzf.lsp_implementations,   "LSP Implementations")
keymap("n", "gt", fzf.lsp_typedefs,          "LSP Type Definitions")
keymap("n", "gr", fzf.lsp_references,        "LSP References")
keymap("n", "<leader>la", fzf.lsp_code_actions,"LSP Code Actions")
keymap("n", "<leader>ld", fzf.lsp_document_symbols,  "Document Symbols")
keymap("n", "<leader>lD", fzf.lsp_workspace_symbols, "Workspace Symbols")
keymap("n", "<leader>ll", fzf.lsp_live_workspace_symbols,"Live Workspace Symbols")
keymap("n", "<leader>li", fzf.lsp_incoming_calls,"LSP Incoming Calls")
keymap("n", "<leader>lo", fzf.lsp_outgoing_calls,"LSP Outgoing Calls")
keymap("n", "<leader>ls", fzf.lsp_type_sub,  "LSP Subtypes")
keymap("n", "<leader>lS", fzf.lsp_type_super,"LSP Supertypes")
keymap("n", "<leader>lf", fzf.lsp_finder,    "LSP Finder")
keymap("n", "<leader>lx", fzf.diagnostics_document,"Document Diagnostics")
keymap("n", "<leader>lX", fzf.diagnostics_workspace,"Workspace Diagnostics")



-- Miscellaneous
keymap("n", "R", fzf.resume,        "Resume Last Picker")
keymap("n", "B", fzf.builtin,       "Builtin Pickers")
keymap("n", "P", fzf.profiles,      "Profiles")
keymap("n", "`", fzf.marks,         "Marks")
keymap("n", "J", fzf.jumps,         "Jumps")
keymap("n", "C", fzf.commands,      "Commands")
keymap("n", "<up>", fzf.command_history,"Command History")
keymap("n", "~", fzf.changes,       "Changes")
keymap("n", "\"", fzf.registers,    "Registers")
keymap("n", "T", fzf.tagstack,     "Tag Stack")
keymap("n", "H", fzf.helptags,      "Help Tags")
keymap("n", "M", fzf.manpages,      "Man Pages")
keymap("n", "cs", fzf.colorschemes, "Color Schemes")
keymap("n", "?", fzf.search_history,"Search History")
keymap("n", "K", fzf.keymaps,      "Keymaps")
keymap("n", "O", fzf.nvim_options, "Neovim Options")
keymap("n", "F", fzf.filetypes,    "Filetypes")
keymap("n", "N", fzf.menus,        "Menus")
-- TODO: do I even need this?
keymap("n", "sp", fzf.spellcheck,   "Spellcheck Words")
keymap("n", "ss", fzf.spell_suggest,"Spell Suggestions")
keymap("n", "Ep", fzf.packadd,      "Packadd Plugins")
keymap("n", "Eh", fzf.highlights,   "Highlights")
keymap("n", "Ea", fzf.autocmds,     "Auto-commands")
keymap("n", "Et", fzf.tmux_buffers, "Tmux Buffers")
keymap("n", "Ez", fzf.zoxide,       "Zoxide Directories")



-- Completion
keymap("n", "cp", fzf.complete_path, "Complete Path")
keymap("n", "cf", fzf.complete_file, "Complete File")
keymap("n", "cl", fzf.complete_bline,"Complete Buffer Line")
keymap("n", "cL", fzf.complete_line, "Complete Line")

