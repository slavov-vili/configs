vim.g.genghis_use_systemclipboard = true

local PREFIX = "<leader>F"

local function map(key, action, opts, mode)
    mode = mode or "n"
    vim.keymap.set(mode, PREFIX..key, action, opts)
end

local genghis = require("genghis")
-- copies
map("y", genghis.copyFilename, { desc = "Copy filename" })
map("p", genghis.copyFilepath, { desc = "Copy filepath" })
map("P", genghis.copyRelativePath, { desc = "Copy relative filepath" })
map("d", genghis.copyDirectoryPath, { desc = "Copy directory path" })
map("D", genghis.copyRelativeDirectoryPath, { desc = "Copy relative directory path" })

-- modification
map("x", genghis.chmodx, { desc = "Chmod" })
map("r", genghis.renameFile, { desc = "Rename file" })
map("m", genghis.moveAndRenameFile, { desc = "Move and rename file" })
map("R", genghis.trashFile, { desc = "Trash file" })

-- new files
-- FIXME: open in new tab, wtf
map("N", genghis.moveSelectionToNewFile, { desc = "Move selection to new file" }, "x")

