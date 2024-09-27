-- Biome did not provide code compleition for variables and functions
-- Servers not in use commented out
local servers = {
    "lua_ls",
    --"bashls",
    "cssls",
    --"eslint",
    "html",
    "jsonls",
    --"jdtls",
    --"quick_lint_js",
    "marksman",
    --"powershell_es",
    "pyright",
    "sqlls",
    "tailwindcss",
    "gopls",
    --"volar",
    --"lemminx",
    "tsserver",
    "templ",
}

require("mason").setup({ PATH = "prepend" })
require("mason-lspconfig").setup({ ensure_installed = servers })

local lspconfig = require("lspconfig")
vim.diagnostic.config({ update_in_insert = true })

local on_attach = function(_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

for _, lsp in ipairs(servers) do

    local settings = {}

    if lsp == "tsserver" then
        settings = { documentFormatting = true }
    end

    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        settings = settings
    }
end
