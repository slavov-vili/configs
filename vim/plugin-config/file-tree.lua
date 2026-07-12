local function on_attach(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.map.on_attach.default(bufnr)

  -- custom mappings
  vim.keymap.set("n", "?",     api.tree.toggle_help,                  opts("Help"))
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

local api = require("nvim-tree.api")

local PREFIX = "<leader>t"
local function keymap(key, action)
    vim.keymap.set("n", PREFIX..key, action, { noremap = true, silent = true })
end

-- TODO: add custom mappings for tree (help)
-- TODO: add any other useful functions
-- Tree management
-- FIXME: Find current file?
keymap("t", api.tree.toggle)
-- FIXME: Find current file?
keymap("o", api.tree.open)
keymap("q", api.tree.close)
keymap("r", api.tree.reload)
-- Navigation
keymap("F", api.tree.focus)
-- FIXME: switch to tree?
keymap("f", api.tree.find_file)
keymap("l", api.tree.collapse_all)
keymap("L", api.tree.expand_all)
-- Filters
keymap(".", api.tree.toggle_hidden_filter)
keymap("g", api.tree.toggle_git_clean_filter)
keymap("G", api.tree.toggle_gitignore_filter)
keymap("x", api.tree.toggle_no_buffer_filter)

