local NewHydra = require('hydra')



local gitsigns = require('gitsigns')
-- TODO: think of useful commands for gitsigns in general and add them (for example reset)
local hint = [[
 _J_: Next hunk   _s_: Stage hunk        _d_: show deleted   _b_: blame line
 _K_: Prev hunk   _u_: undo last stage   _p_: preview hunk   _B_: blame show full
 ^ ^              _S_: Stage buffer      ^ ^                 _/_: show base file
 ^
 ^ ^              _<Enter>_: Neogit              _q_: exit
]]
NewHydra({
   name = 'Git',
   hint = hint,
   config = {
      buffer = true,
      color = 'pink',
      invoke_on_body = true,
      hint = {
        float_opts = {
         border = 'rounded'
        }
      },
      on_enter = function()
         vim.cmd 'mkview'
         vim.cmd 'silent! %foldopen!'
         vim.bo.modifiable = false
         gitsigns.toggle_signs(true)
         gitsigns.toggle_linehl(true)
      end,
      on_exit = function()
         local cursor_pos = vim.api.nvim_win_get_cursor(0)
         vim.cmd 'loadview'
         vim.api.nvim_win_set_cursor(0, cursor_pos)
         vim.cmd 'normal zv'
         gitsigns.toggle_signs(false)
         gitsigns.toggle_linehl(false)
         gitsigns.toggle_deleted(false)
      end,
   },
   mode = {'n','x'},
   body = '<leader>hg',
   heads = {
      { 'J', function()
          return vim.wo.diff and vim.api.nvim_feedkeys(']c', 'n', true) or gitsigns.next_hunk()
       end,
       { desc = 'Next hunk' }
      },
      { 'K',
         function()
          return vim.wo.diff and vim.api.nvim_feedkeys('[c', 'n', true) or gitsigns.prev_hunk()
         end,
         { desc = 'Prev hunk' } },

      { 's', ':Gitsigns stage_hunk<CR>', { silent = true, desc = 'Stage hunk' } },
      { 'S', gitsigns.stage_buffer, { desc = 'Stage buffer' } },
      { 'u', gitsigns.undo_stage_hunk, { desc = 'undo last stage' } },
      { 'p', gitsigns.preview_hunk, { desc = 'preview hunk' } },
      { 'd', gitsigns.toggle_deleted, { nowait = true, desc = 'toggle deleted' } },
      { 'b', gitsigns.blame_line, { desc = 'blame' } },
      { 'B', function() gitsigns.blame_line{ full = true } end, { desc = 'blame show full' } },
      { '/', gitsigns.show, { exit = true, desc = 'show base file' } }, -- show the base of the file
      -- FIXME: make this commit stuff: run git commit and ask for message from new buffer or something?
      { '<Enter>', '<Cmd>Neogit<CR>', { exit = true, desc = 'Neogit' } },
      { 'q', nil, { exit = true, nowait = true, desc = 'exit' } },
   }
})
