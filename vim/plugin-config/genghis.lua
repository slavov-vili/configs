vim.g.genghis_use_systemclipboard = true

local PREFIX = "<leader>f"

local function keymap(key, action, mode)
    mode = mode or "n"
    vim.keymap.set(mode, PREFIX..key, action)
end

local genghis = require("genghis")
-- copies
keymap("y", genghis.copyFilename)
keymap("p", genghis.copyFilepath)
keymap("P", genghis.copyRelativePath)
keymap("d", genghis.copyDirectoryPath)
keymap("D", genghis.copyRelativeDirectoryPath)

-- modification
keymap("x", genghis.chmodx)
keymap("r", genghis.renameFile)
keymap("m", genghis.moveAndRenameFile)
keymap("R", genghis.trashFile)

-- new files
-- FIXME: open in new tab, wtf
keymap("N", genghis.moveSelectionToNewFile, "x")

