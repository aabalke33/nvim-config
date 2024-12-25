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
    "ts_ls",
    "templ",
    --"htmx"
    "zls",
}

require("mason").setup({
    PATH = "prepend",
})
require("mason-lspconfig").setup({ ensure_installed = servers })

vim.filetype.add({ extension = { templ = "templ" } })

local on_attach = function(_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.diagnostic.config({ update_in_insert = true })

local lspconfig = require("lspconfig")

local custom_setups = {
    ['ts_ls'] = {
        on_attach = on_attach,
        capabilities = capabilities,
        settings = { documentFormatting = true }
    },
    ['tailwindcss'] = {
        on_attach = on_attach,
        capabilities = capabilities,
        filetypes = { "templ", "astro", "javascript", "typescript", "react", "js", "jsx" },
        settings = {
            tailwindCSS = {
                includeLanguages = {
                    templ = "html",
                },
            },
        },
    },
    ['htmx'] = {
        on_attach = on_attach,
        capabilities = capabilities,
        filetypes = { "html", "templ" },
    },
    ['html'] = {
        on_attach = on_attach,
        capabilities = capabilities,
        filetypes = { "html", "templ" },
    }
}

for _, lsp in ipairs(servers) do
    if custom_setups[lsp] then
        lspconfig[lsp].setup(custom_setups[lsp])
    else
        lspconfig[lsp].setup {
            on_attach = on_attach,
            capabilities = capabilities,
        }
    end
end
