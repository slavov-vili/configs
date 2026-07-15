-- Because nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- TODO: check plugin configs (pear-tree kinda slow, do I need sleuth?, configure fzf?)
-- [Plugin setup]
vim.pack.add({
    -- Movement
    { src = 'https://github.com/smoka7/hop.nvim' },
    { src = 'https://github.com/echasnovski/mini.bracketed' },
    -- Editing
    { src = 'https://github.com/tmsvg/pear-tree' },
    { src = 'https://github.com/tpope/vim-surround' },
    { src = 'https://github.com/echasnovski/mini.ai' },
    -- Completion
    { src = 'https://github.com/hrsh7th/cmp-buffer' },
    { src = 'https://github.com/hrsh7th/cmp-cmdline' },
    { src = 'https://github.com/hrsh7th/cmp-nvim-lsp' },
    { src = 'https://github.com/hrsh7th/cmp-path' },
    { src = 'https://github.com/hrsh7th/nvim-cmp' },
    -- Files
    { src = 'https://github.com/chrisgrieser/nvim-genghis' },
    { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
    -- Git
    { src = 'https://github.com/lewis6991/gitsigns.nvim' },
    { src = 'https://github.com/tpope/vim-fugitive' },
    -- LSP
    { src = 'https://github.com/williamboman/mason.nvim' },
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/williamboman/mason-lspconfig.nvim' },
    -- Visual
    { src = 'https://github.com/echasnovski/mini.animate' },
    { src = 'https://github.com/echasnovski/mini.trailspace' },
    { src = 'https://github.com/itchyny/lightline.vim' },
    { src = 'https://github.com/luochen1990/rainbow' },
    { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
    { src = 'https://github.com/slavov-vili/nvim-scopemaster' },
    -- Others
    { src = 'https://github.com/ibhagwan/fzf-lua', version = 'main' },
    { src = 'https://github.com/nvimtools/hydra.nvim' },
    { src = 'https://github.com/tpope/vim-sleuth' },
})
vim.cmd("syntax on") -- Enable syntax highlighting
vim.cmd("filetype plugin indent on") -- Use auto-indenting

-- [Set GUI-specific settings]
if vim.fn.has("gui_running") == 1 then
    vim.cmd.colorscheme("obsidian2") -- Set GUI color scheme
else
    vim.cmd.colorscheme("welpe")     -- Set color scheme
end



-- [Settings]
vim.opt.autoindent=true                    -- Follow indentation of last line
vim.opt.autoread=true                      -- Auto-detect file changes
vim.opt.autowrite=true                     -- Auto-save file before running
vim.opt.backupdir="~/.backup,.,/tmp"       -- Do not put backups in current dir
vim.opt.breakindent=true                   -- Indent the text when wrapping
vim.opt.cmdheight=2                        -- Height of the command bar
vim.opt.completeopt="longest,menuone"      -- Auto-completion option menu
vim.opt.confirm=true                       -- Confirm :q when unsaved changes
vim.opt.cursorline=true                    -- Highlight current line
vim.opt.diffopt="internal,filler,closeoff,algorithm:patience"
vim.opt.directory="~/.backup,.,/tmp"       -- Don't put swaps in current dir
vim.opt.equalalways=true                   -- Make all windows equal in size
vim.opt.encoding="utf-8"
vim.opt.expandtab=true                     -- Replace tabs with spaces (overwritten by vim-sleuth)
vim.opt.fileencoding="utf-8"
vim.opt.fileformat="unix"
vim.opt.foldenable=true                    -- Enable folding
vim.opt.foldcolumn="4"                     -- Width of column indicating folds
vim.opt.foldlevelstart=42                  -- No closed folds at start
vim.opt.foldmethod="indent"                -- Auto-folding of indented blocks
vim.opt.foldnestmax=5                      -- Maximum number of nested folds
vim.opt.helplang="en"                      -- Set help language to English
vim.opt.hlsearch=true                      -- Highlight search results
vim.opt.ignorecase=true                    -- Ignore case when searching
vim.opt.incsearch=true                     -- HL search matches while typing
vim.opt.laststatus=3                       -- Always show statusline
vim.opt.lazyredraw=true                    -- Redraw screen only when need to
vim.opt.linebreak=true                     -- Don't split words when wrapping
vim.opt.list=true
vim.opt.listchars="tab:> ,eol:¬"           -- Set Tab and EOL characters
vim.opt.mouse="a"                          -- Enable mouse in all modes
vim.opt.bomb=false                         -- No BOM
vim.opt.errorbells=false
vim.opt.visualbell=true
vim.opt.swapfile=false                     -- Disable swap files
vim.opt.number=true                        -- Turn on line numbers
vim.opt.omnifunc="syntaxcomplete#Complete" -- Native auto-complete
vim.opt.scroll=10
vim.opt.scrolloff=7
vim.opt.shell="/bin/bash"                  -- Set the default shell
vim.opt.shellcmdflag="-ic"                 -- Make vim read my .bashrc (I just love my aliases too much)
vim.opt.shiftwidth=4                       -- Indentation size (overwritten by vim-sleuth)
vim.opt.showcmd=true                       -- Show incomplete commands (fd, cw, etc.)
vim.opt.showmatch=true                     -- Highlight matching brackets
vim.opt.signcolumn="auto:2"                -- Show up to 2 signs
vim.opt.smartcase=true                     -- Respect capital letters in searches
vim.opt.smartindent=true                   -- Use smart indentation
vim.opt.smarttab=true                      -- Use smart tabs (overwritten by vim-sleuth)
vim.opt.splitbelow=true                    -- New splits always below
vim.opt.splitright=true                    -- New vSplits always to the right"
vim.opt.tabstop=4
vim.opt.updatetime=1000                    -- Write after this many miliseconds of being idle
vim.opt.wildmenu=true                      -- Better auto-completion for cmd
vim.g.mapleader=","                        -- Change leader key



-- [Highlighting]
-- WARNING: this assumes that the used font is dark (elflord)
vim.api.nvim_set_hl(0, "CursorLine", {
    cterm = { bold = true },
    bg = "#404040"
})
-- TODO: also set for gui
vim.api.nvim_set_hl(0, "DiffChange", {
    ctermbg = "NONE"
})
vim.api.nvim_set_hl(0, "DiffText", {
    ctermbg = 100
})
vim.api.nvim_set_hl(0, "DiffDelete", {
    ctermbg = 52
})



-- [Key mappings]
-- gg => END
vim.keymap.set({"n", "v", "o"}, "G", "gg")
vim.keymap.set({"n", "v", "o"}, "gg", "G")
-- Optical illusion?
vim.keymap.set({"n", "v", "o"}, "P", "p")
vim.keymap.set({"n", "v", "o"}, "p", "P")
-- Toggle whether to show relative line numbers
vim.keymap.set({"n", "v", "o"}, "<leader>`", ":set rnu!<cr>")
-- Toggle whether to highlight current column
vim.keymap.set({"n", "v", "o"}, "<leader><leader>", ":set cursorcolumn!<cr>")
-- I found it, now go away!
vim.keymap.set("n", "<leader><space>", ":nohlsearch<cr>")
-- Toggle spellchecker
vim.keymap.set("n", "<leader>en", ":setlocal spell! spelllang=en_us<cr>")
vim.keymap.set("n", "<leader>de", ":setlocal spell! spelllang=de_de<cr>")
vim.keymap.set("n", "<leader>bg", ":setlocal spell! spelllang=bg_bg<cr>")
-- Run the current file
vim.keymap.set({"n", "v", "o"}, "<leader>r", ":Run<cr>")
-- Open the current file
vim.keymap.set({"n", "v", "o"}, "<leader>o", ":Open<cr>")
-- Reload .vimrc
vim.keymap.set({"n", "v", "o"}, "<leader><F5>", ":so $MYVIMRC<cr>")

-- Visual mode mappings
-- Reopen visual mode after indentation
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- Insert mode mappings
-- Insert-Completion
-- Omni-completion
vim.keymap.set("i", "<C-space>", "<C-x><C-o>")
-- Choose popup menu item also with Enter instead of only Ctrl-Y
vim.keymap.set("i", "<CR>", 'pumvisible() ? "\\<C-y>" : "\\<CR>"', { expr = true })
-- Close the popup menu like any other mode
vim.keymap.set("i", "<Esc>", 'pumvisible() ? "\\<C-e>" : "\\<Esc>"', { expr = true })
-- Terminal mode mappings
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    vim.cmd("startinsert")
  end,
})
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("n", "<leader>;", ":vsplit term://bash<cr>")

-- Execute line under cursor as vim command
vim.keymap.set("n", "<leader>:", "yy:@\"<cr>")
-- Execute selection as vim command
vim.keymap.set("v", "<leader>:", "y:@\"<cr>")

-- Tab manipulation
vim.keymap.set("n", "<Tab>n", " :tabnew ")
vim.keymap.set("n", "<Tab>o", " :tabonly<cr>")
vim.keymap.set("n", "<Tab>j", " gT")
vim.keymap.set("n", "<Tab>k", " gt")
vim.keymap.set("n", "<Tab>J", " :tabfirst<cr>")
vim.keymap.set("n", "<Tab>K", " :tablast<cr>")
vim.keymap.set("n", "<Tab>mj", ":tabmove -1<cr>")
vim.keymap.set("n", "<Tab>mk", ":tabmove +1<cr>")
vim.keymap.set("n", "<Tab>c", " :tabclose<cr>")

-- Window manipulation
vim.keymap.set("n", "<leader>s", ":split ")
vim.keymap.set("n", "<leader>v", ":vsplit ")
vim.keymap.set("n", "<C-W><Tab>", "<C-W>T")

