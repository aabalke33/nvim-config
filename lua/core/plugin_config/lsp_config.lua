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
    "biome",
    "volar",
    "lemminx"
  }
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n',  '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n',  'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n',  'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n',  'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n',  'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.diagnostic.config({ update_in_insert = true })

require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").bashls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").eslint.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").html.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").jsonls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").jdtls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").quick_lint_js.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").marksman.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").powershell_es.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").sqlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").tailwindcss.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").biome.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").volar.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").lemminx.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
