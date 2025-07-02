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
  end)

  map('n', '[c', function()
    if vim.wo.diff then
      vim.cmd.normal({'[c', bang = true})
    else
      gitsigns.nav_hunk('prev')
    end
  end)

  -- Actions
  local PREFIX = '<leader>g'
  map('n', PREFIX..'s', gitsigns.stage_hunk)
  map('v', PREFIX..'s', function()
    gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
  end)
  map('n', PREFIX..'S', gitsigns.stage_buffer)

  map('n', PREFIX..'r', gitsigns.reset_hunk)
  map('v', PREFIX..'r', function()
    gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
  end)
  map('n', PREFIX..'R', gitsigns.reset_buffer)

  map('n', PREFIX..'p', gitsigns.preview_hunk_inline)
  map('n', PREFIX..'P', gitsigns.preview_hunk)

  map('n', PREFIX..'b', gitsigns.toggle_current_line_blame)
  map('n', PREFIX..'B', function()
    gitsigns.blame_line({ full = true })
  end)

  map('n', PREFIX..'d', gitsigns.toggle_word_diff)
  map('n', PREFIX..'D', function()
    gitsigns.diffthis('~')
  end)

  map('n', PREFIX..'q', gitsigns.setqflist)
  map('n', PREFIX..'Q', function() gitsigns.setqflist('all') end)

  -- Text object
  map({'o', 'x'}, 'ih', gitsigns.select_hunk)
end



gitsigns.setup({
  on_attach = on_attach,
  signs = my_signs,
  signs_staged = my_signs,
})
