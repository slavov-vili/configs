local gitsigns = require('gitsigns')

local my_signs = {
  add          = { text = '+' },
  change       = { text = '~' },
  delete       = { text = 'x' },
  topdelete    = { text = '‾' },
  changedelete = { text = 'x' },
  untracked    = { text = '_' },
}



local on_attach = function(bufnr)
  local PREFIX = '<leader>g'
  local map_desc_prefix = 'git: '
  local function map(mode, l, r, opts)
    opts = opts or {}
    opts.buffer = bufnr
    vim.keymap.set(mode, l, r, opts)
  end

  -- Navigation
  map('n', ']c', function()
    if vim.wo.diff then
      vim.cmd.normal({']c', bang = true})
    else
      gitsigns.nav_hunk('next')
    end
  end, { desc = map_desc_prefix .. "Go to next hunk"})

  map('n', '[c', function()
    if vim.wo.diff then
      vim.cmd.normal({'[c', bang = true})
    else
      gitsigns.nav_hunk('prev')
    end
  end, { desc = map_desc_prefix .. "Go to previous hunk"})

  -- Actions
  map('n', PREFIX..'s', gitsigns.stage_hunk, { desc = map_desc_prefix .. "Stage hunk"})
  map('v', PREFIX..'s', function()
    gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
  end, { desc = map_desc_prefix .. "Stage selection?"})
  map('n', PREFIX..'S', gitsigns.stage_buffer, { desc = map_desc_prefix .. "Stage buffer"})

  map('n', PREFIX..'r', gitsigns.reset_hunk, { desc = map_desc_prefix .. "Reset hunk"})
  map('v', PREFIX..'r', function()
    gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
  end, { desc = map_desc_prefix .. "Reset selection"})
  map('n', PREFIX..'R', gitsigns.reset_buffer, { desc = map_desc_prefix .. "Reset buffer"})

  map('n', PREFIX..'p', gitsigns.preview_hunk_inline, { desc = map_desc_prefix .. "Preview hunk inline"})
  map('n', PREFIX..'P', gitsigns.preview_hunk, { desc = map_desc_prefix .. "Preview hunk"})

  map('n', PREFIX..'b', gitsigns.toggle_current_line_blame, { desc = map_desc_prefix .. "Toggle current line blame"})
  map('n', PREFIX..'B', function()
    gitsigns.blame_line({ full = true })
  end, { desc = map_desc_prefix .. "Toggle blame line"})

  map('n', PREFIX..'d', gitsigns.toggle_word_diff, { desc = map_desc_prefix .. "Toggle word diff"})
  map('n', PREFIX..'D', function()
    gitsigns.diffthis('~')
  end, { desc = map_desc_prefix .. "Diff against something?"})

  map('n', PREFIX..'q', gitsigns.setqflist, { desc = map_desc_prefix .. "Put hunks in quickfix list"})
  map('n', PREFIX..'Q', function() gitsigns.setqflist('all') end, { desc = map_desc_prefix .. "Put all hunks in quickfix list (cwd + all loaded buffers)"})

  -- Text object
  map({'o', 'x'}, 'ih', gitsigns.select_hunk, { desc = map_desc_prefix .. "Select hunk"})
end



gitsigns.setup({
  on_attach = on_attach,
  signs = my_signs,
  signs_staged = my_signs,
  sign_priority = 50,
  numhl = true,
})
