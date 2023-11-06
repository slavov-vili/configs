-- Diagnostics Mappings
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d',       vim.diagnostic.goto_prev,  opts)
vim.keymap.set('n', ']d',       vim.diagnostic.goto_next,  opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)



-- colors
local hl_colors = vim.api.nvim_get_hl(0, { name="CursorLine"})



local on_attach = function(client, bufnr)
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
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gd', function()
      vim.cmd('tab split +lua\\ =vim.lsp.buf.definition()')
    end, bufopts)
    vim.keymap.set('n', 'gD',        vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', '<space>D',  vim.lsp.buf.type_definition, bufopts)

    vim.keymap.set('n', '<C-h>',     vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<C-k>',     vim.lsp.buf.signature_help, bufopts)

    vim.keymap.set('n', 'gi',        vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', 'gs',        vim.lsp.buf.document_symbol, bufopts)
    vim.keymap.set('n', '<space>ws', vim.lsp.buf.workspace_symbol, bufopts)
    vim.keymap.set('n', '<space>ic', vim.lsp.buf.incoming_calls, bufopts)
    vim.keymap.set('n', '<space>oc', vim.lsp.buf.outgoing_calls, bufopts)
    vim.keymap.set('n', 'gr',        vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)

    -- Refactoring mappings
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>f',  function() vim.lsp.buf.format { async = true } end, bufopts)

    -- Workspace mappings
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', vim.lsp.buf.list_workspace_folders, bufopts)
end



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



require('lspconfig')['pylsp'].setup{
    on_attach = on_attach,
    settings = {
        pylsp = {
            plugins = {
                pylint = { enabled = true, executable = "pylint" },
            }
        }
    }
}
