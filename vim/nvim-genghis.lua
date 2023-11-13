vim.g.genghis_use_systemclipboard = true

local keymap = vim.keymap.set
local genghis = require("genghis")

-- copies
keymap("n", "<leader>yn", genghis.copyFilename)
keymap("n", "<leader>yp", genghis.copyFilepath)
keymap("n", "<leader>yP", genghis.copyRelativePath)
keymap("n", "<leader>yd", genghis.copyDirectoryPath)
keymap("n", "<leader>yD", genghis.copyRelativeDirectoryPath)

-- modification
keymap("n", "<leader>cx", genghis.chmodx)
keymap("n", "<leader>rf", genghis.renameFile)
keymap("n", "<leader>mf", genghis.moveAndRenameFile)
keymap("n", "<leader>df", genghis.trashFile)

-- new files
keymap("n", "<leader>nf", genghis.createNewFile)
keymap("n", "<leader>yf", genghis.duplicateFile)
-- FIXME: open in new tab, wtf
keymap("x", "<leader>x", genghis.moveSelectionToNewFile)

