-- Biome did not provide code compleition for variables and functions

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "bashls",
    "cssls",
    "eslint",
    "html",
    "jsonls",
    "jdtls",
    "quick_lint_js",
    "marksman",
    "powershell_es",
    "pyright",
    "sqlls",
    "tailwindcss",
    "gopls",
    --"biome",
    "volar",
    "lemminx",
    "tsserver"
  }
})

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

lspconfig.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.bashls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.eslint.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.html.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.jsonls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.jdtls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.quick_lint_js.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.marksman.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.powershell_es.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.sqlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.tailwindcss.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
--lspconfig.biome.setup {
--  on_attach = on_attach,
--  capabilities = capabilities,
--}
lspconfig.volar.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.lemminx.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = { documentFormatting = true }
}
