local api = require("nvim-tree.api")

local PREFIX = "<leader>t"
local function map(key, action, opts)
    vim.keymap.set("n", PREFIX..key, action, vim.tbl_extend('force', { noremap = true, silent = true }, opts))
end

local function on_attach(bufnr)
  -- default mappings
  api.map.on_attach.default(bufnr)

  -- custom mappings
  -- Don't want to use the prefix within the tree itself... only in normal buffers
  local prefix_bak = PREFIX
  PREFIX = ""

  map("?", api.tree.toggle_help, { desc = "File tree help", buffer = bufnr, nowait = true })

  PREFIX = prefix_bak
end

require("nvim-tree").setup({
  on_attach = on_attach,
  view = {
    side = "left",
    width = 30,
  },
  update_focused_file = {
    enable = true,
    update_root = false,
  },
  hijack_directories = {
    enable = true
  },
  modified = {
    enable = true
  },
  diagnostics = {
    enable = true
  },
  tab = {
    sync = {
      open = true,
      close = true
    }
  },
})


-- TODO: add custom mappings for tree (help)
-- TODO: add any other useful functions
-- Tree management
-- FIXME: Find current file?
map("t", api.tree.toggle, { desc = "Toggle file tree" })
-- FIXME: Find current file?
map("o", api.tree.open, { desc = "Open file tree" })
map("q", api.tree.close, { desc = "Close file tree" })
map("r", api.tree.reload, { desc = "Reload file tree" })
-- Navigation
map("F", api.tree.focus, { desc = "Focus file tree" })
-- FIXME: switch to tree?
map("f", api.tree.find_file, { desc = "Find file in file tree" })
map("l", api.tree.collapse_all, { desc = "Copy filename" })
map("L", api.tree.expand_all, { desc = "Expand all nodes in file tree" })
-- Filters
map(".", api.tree.toggle_hidden_filter, { desc = "Toggle file tree filter: hidden" })
map("g", api.tree.toggle_git_clean_filter, { desc = "Toggle file tree filter: git clean" })
map("G", api.tree.toggle_gitignore_filter, { desc = "Toggle file tree filter: gitignore" })
map("x", api.tree.toggle_no_buffer_filter, { desc = "Toggle file tree filter: no buffer" })

