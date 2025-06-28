-- Diagnostics Mappings
local opts = { noremap=true, silent=true }



-- colors
-- FIXME: make matches more prominent
local hl_colors = vim.api.nvim_get_hl(0, { name="CursorLine"})



vim.keymap.set('n', '<leader>dd', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d',       vim.diagnostic.goto_prev,  opts)
vim.keymap.set('n', ']d',       vim.diagnostic.goto_next,  opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)



vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    local bufnr = args.buf
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- configure reference highlights
    if client.server_capabilities.documentHighlightProvider then
        vim.api.nvim_set_hl(0, "LspReferenceRead",  hl_colors)
        vim.api.nvim_set_hl(0, "LspReferenceText",  hl_colors)
        vim.api.nvim_set_hl(0, "LspReferenceWrite", hl_colors)

        vim.api.nvim_create_augroup('lsp_document_highlight', {
            clear = false
        })
        vim.api.nvim_clear_autocmds({
            group = 'lsp_document_highlight',
            buffer = bufnr,
        })
        vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
            group = 'lsp_document_highlight',
            buffer = bufnr,
            callback = vim.lsp.buf.document_highlight,
        })
        vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
            group = 'lsp_document_highlight',
            buffer = bufnr,
            callback = vim.lsp.buf.clear_references,
        })
    end

    -- Mappings
    local PREFIX = '<leader>l'
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    -- FIXME: only if in a different file
    vim.keymap.set('n', PREFIX..'C', vim.lsp.buf.incoming_calls, bufopts)
    vim.keymap.set('n', PREFIX..'d', function()
      vim.cmd('tab split +lua\\ =vim.lsp.buf.definition()')
    end, bufopts)
    vim.keymap.set('n', PREFIX..'D', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', PREFIX..'H', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', PREFIX..'S', vim.lsp.buf.workspace_symbol, bufopts)
    vim.keymap.set('n', PREFIX..'a', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', PREFIX..'c', vim.lsp.buf.outgoing_calls, bufopts)
    vim.keymap.set('n', PREFIX..'f', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', PREFIX..'h', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', PREFIX..'i', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', PREFIX..'s', vim.lsp.buf.document_symbol, bufopts)
    vim.keymap.set('n', PREFIX..'t', vim.lsp.buf.type_definition, bufopts)

    -- Refactoring mappings
    vim.keymap.set('n', PREFIX..'F', function() vim.lsp.buf.format { async = true } end, bufopts)
    vim.keymap.set('n', PREFIX..'r', vim.lsp.buf.rename, bufopts)

    -- Workspace mappings
    vim.keymap.set('n', PREFIX..'L', vim.lsp.buf.list_workspace_folders, bufopts)
    vim.keymap.set('n', PREFIX..'N', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', PREFIX..'R', vim.lsp.buf.remove_workspace_folder, bufopts)
  end
})



-- configure hover windows
local border =  {
    {"┌", "FloatBorder"},
    {"─", "FloatBorder"},
    {"┐", "FloatBorder"},
    {"│", "FloatBorder"},
    {"┘", "FloatBorder"},
    {"─", "FloatBorder"},
    {"└", "FloatBorder"},
    {"│", "FloatBorder"},
}

vim.api.nvim_set_hl(0, "NormalFloat", hl_colors )
vim.api.nvim_set_hl(0, "FloatBorder", hl_colors)
local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = opts.border or border
  return orig_util_open_floating_preview(contents, syntax, opts, ...)
end



local signs = {
    Error = "E",
    Warn = "W",
    Info = "I",
    Hint = "H",
}
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end



-- IMPORTANT: this has to be in this order and before lspconfig
require("mason").setup()
local lspconfig = require('lspconfig')
require("mason-lspconfig").setup({
    ensure_installed = {
        'pylsp',
        'lua_ls',
        'eslint',
        'html',
        'cssls',
        'ts_ls',
    },
    handlers = {
        ['pylsp'] = function()
          lspconfig.pylsp.setup({
            settings = {
                pylsp = {
                    plugins = {
                        pylint = { enabled = true, executable = "pylint" },
                    }
                }
            }
          })
        end
      }
})

