local fzf = require("fzf-lua")

fzf.setup({
  winopts = {
    height     = 0.90,
    width      = 0.90,
    row        = 0.5,
    col        = 0.5,
    preview = {
      layout   = "flex", -- Swaps between horizontal/vertical depending on screen size
      horizontal = "right:55%",
      vertical = "down:50%",
    },
  },  keymap = {
    builtin = {
      -- Finder Window Mechanics
      ["<C-z>"] = "hide",
      ["<C-h>"] = "toggle-help",
      ["<C-f>"] = "toggle-fullscreen",

      -- Preview Window Toggles
      ["<C-p>"] = "toggle-preview",
      ["<C-l>"] = "toggle-preview-wrap",
      ["<C-o>"] = "toggle-preview-cw",
      ["<C-y>"] = "toggle-preview-behavior",
      ["<C-r>"] = "preview-reset",
      ["<C-j>"] = "down",
      ["<C-k>"] = "up",

      -- Preview Navigation
      ["<C-d>"] = "preview-page-down",
      ["<C-u>"] = "preview-page-up",
      -- ["<C-j>"] = "preview-down",
      -- ["<C-k>"] = "preview-up",

      -- Treesitter-Context
      -- ["<C-T>"] = "toggle-preview-ts-ctx",
      -- ["<C-[>"] = "preview-ts-ctx-dec",
      -- ["<C-]>"] = "preview-ts-ctx-inc",
    },

    fzf = {
      -- General Control
      ["ctrl-q"] = "abort",
      ["ctrl-x"] = "toggle+down",
      ["ctrl-space"] = "toggle-all",

      -- Edit Text Input
      ["ctrl-b"] = "beginning-of-line",
      ["ctrl-e"] = "end-of-line",
      ["ctrl-w"] = "unix-line-discard",
      -- Scroll list navigation
      -- ["ctrl-f"] = "half-page-down",
      -- ["ctrl-d"] = "half-page-up",
      -- Jumping
      ["ctrl-i"] = "first",
      ["ctrl-n"] = "last",
    },
  },

  actions = {
    -- Below are the default actions, setting any value in these tables will override
    -- the defaults, to inherit from the defaults change [1] from `false` to `true`
    files = {
      -- true,        -- uncomment to inherit all the below in your custom config
      -- Pickers inheriting these actions:
      --   files, git_files, git_status, grep, lsp, oldfiles, quickfix, loclist,
      --   tags, btags, args, buffers, tabs, lines, blines
      -- `file_edit_or_qf` opens a single selection or sends multiple selection to quickfix
      -- replace `enter` with `file_edit` to open all files/bufs whether single or multiple
      -- replace `enter` with `file_switch_or_edit` to attempt a switch in current tab first
      ["enter"]     = FzfLua.actions.file_edit_or_qf,
      ["ctrl-s"]    = FzfLua.actions.file_split,
      ["ctrl-v"]    = FzfLua.actions.file_vsplit,
      ["ctrl-t"]    = FzfLua.actions.file_tabedit,
      ["ctrl-q"]    = FzfLua.actions.file_sel_to_qf,
      ["alt-q"]     = FzfLua.actions.file_sel_to_ll,
      ["alt-i"]     = FzfLua.actions.toggle_ignore,
      ["alt-h"]     = FzfLua.actions.toggle_hidden,
      ["alt-f"]     = FzfLua.actions.toggle_follow,
    },
  },
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
keymap("n", ":", fzf.lines,          "Search All Buffer Lines")
keymap("n", ";", fzf.blines,         "Search Current Buffer Lines")
keymap("n", "L", fzf.loclist_stack,  "Location Stack")
keymap("n", "Q", fzf.quickfix_stack, "Quickfix Stack")
keymap("n", "T", fzf.treesitter,     "Treesitter Symbols")
keymap("n", "a", fzf.args,           "Arg List")
keymap("n", "b", fzf.buffers,        "Open Buffers")
keymap("n", "f", fzf.files,          "Find Files")
keymap("n", "l", fzf.loclist,        "Location List")
keymap("n", "o", fzf.oldfiles,       "Recent Files")
keymap("n", "q", fzf.quickfix,       "Quickfix List")
keymap("n", "t", fzf.tabs,           "Tabs")



-- Search
keymap("n", "/", fzf.grep_curbuf,    "Grep Current Buffer")
keymap("n", "G", fzf.grep,           "Grep")
keymap("n", "L", fzf.grep_last,      "Repeat Last Grep")
keymap("n", "Q", fzf.grep_quickfix,  "Grep Quickfix")
keymap("n", "W", fzf.grep_cWORD,     "Grep WORD Under Cursor")
keymap("n", "g", fzf.live_grep,      "Live Grep")
keymap("n", "l", fzf.lgrep_loclist,  "Live Grep Loclist")
keymap("n", "p", fzf.grep_project,   "Grep Project")
keymap("n", "q", fzf.lgrep_quickfix, "Live Grep Quickfix")
keymap("n", "w", fzf.grep_cword,     "Grep Word Under Cursor")
keymap("v", "g", fzf.grep_visual,    "Grep Visual Selection")
-- TODO find other stuff here



-- Git
keymap("n", "gS", fzf.git_stash,    "Git Stash")
keymap("n", "gb", fzf.git_branches, "Git Branches")
keymap("n", "gc", fzf.git_commits,  "Git Commits")
keymap("n", "gd", fzf.git_diff,     "Git Diff")
keymap("n", "gs", fzf.git_status,   "Git Status")
keymap("n", "gt", fzf.git_tags,     "Git Tags")



-- LSP
keymap("n", "lC", fzf.lsp_incoming_calls,         "LSP Incoming Calls")
keymap("n", "lD", fzf.lsp_declarations,           "LSP Declarations")
keymap("n", "lS", fzf.lsp_workspace_symbols,      "Workspace Symbols")
keymap("n", "lT", fzf.lsp_type_super,             "LSP Supertypes")
keymap("n", "lX", fzf.diagnostics_workspace,      "Workspace Diagnostics")
keymap("n", "la", fzf.lsp_code_actions,           "LSP Code Actions")
keymap("n", "lc", fzf.lsp_outgoing_calls,         "LSP Outgoing Calls")
keymap("n", "ld", fzf.lsp_definitions,            "LSP Definitions")
keymap("n", "lf", fzf.lsp_finder,                 "LSP Finder")
keymap("n", "li", fzf.lsp_implementations,        "LSP Implementations")
keymap("n", "ll", fzf.lsp_live_workspace_symbols, "Live Workspace Symbols")
keymap("n", "lr", fzf.lsp_references,             "LSP References")
keymap("n", "ls", fzf.lsp_document_symbols,       "Document Symbols")
keymap("n", "ls", fzf.lsp_type_sub,               "LSP Subtypes")
keymap("n", "lt", fzf.lsp_typedefs,               "LSP Type Definitions")
keymap("n", "lx", fzf.diagnostics_document,       "Document Diagnostics")



-- Miscellaneous
keymap("n", "R", fzf.resume,          "Resume Last Picker")
keymap("n", "B", fzf.builtin,         "Builtin Pickers")
keymap("n", "P", fzf.profiles,        "Profiles")
keymap("n", "`", fzf.marks,           "Marks")
keymap("n", "J", fzf.jumps,           "Jumps")
keymap("n", "c", fzf.commands,        "Commands")
keymap("n", "h", fzf.command_history, "Command History")
keymap("n", "~", fzf.changes,         "Changes")
keymap("n", "\"", fzf.registers,      "Registers")
keymap("n", "]", fzf.tagstack,        "Tag Stack")
keymap("n", "H", fzf.helptags,        "Help Tags")
keymap("n", "M", fzf.manpages,        "Man Pages")
keymap("n", "C", fzf.colorschemes,   "Color Schemes")
keymap("n", "?", fzf.search_history,  "Search History")
keymap("n", "K", fzf.keymaps,         "Keymaps")
keymap("n", "O", fzf.nvim_options,    "Neovim Options")
keymap("n", "F", fzf.filetypes,       "Filetypes")
keymap("n", "N", fzf.menus,           "Menus")
-- TODO: do I even need this?
keymap("n", "sp", fzf.spellcheck,     "Spellcheck Words")
keymap("n", "ss", fzf.spell_suggest,  "Spell Suggestions")
keymap("n", "Ep", fzf.packadd,        "Packadd Plugins")
keymap("n", "Eh", fzf.highlights,     "Highlights")
keymap("n", "Ea", fzf.autocmds,       "Auto-commands")
keymap("n", "Et", fzf.tmux_buffers,   "Tmux Buffers")
keymap("n", "Ez", fzf.zoxide,         "Zoxide Directories")



-- Completion
keymap("n", "cp", fzf.complete_path, "Complete Path")
keymap("n", "cf", fzf.complete_file, "Complete File")
keymap("n", "cl", fzf.complete_bline,"Complete Buffer Line")
keymap("n", "cL", fzf.complete_line, "Complete Line")

