require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    "sumneko_lua",
    "arduino_language_server",
    "clangd",
    "cmake",
    "jdtls",
    "quick_lint_js",
    "ltex",
    "marksman",
    "pylsp",
    "rust_analyzer",
    "lemminx",
  }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").sumneko_lua.setup {
  capabilities = capabilities,
}
require("lspconfig").arduino_language_server.setup {
  capabilities = capabilities,
}
require("lspconfig").clangd.setup {
  capabilities = capabilities,
}
require("lspconfig").cmake.setup {
  capabilities = capabilities,
}
require("lspconfig").jdtls.setup {
  capabilities = capabilities,
}
require("lspconfig").quick_lint_js.setup {
  capabilities = capabilities,
}
require("lspconfig").ltex.setup {
  capabilities = capabilities,
}
require("lspconfig").marksman.setup {
  capabilities = capabilities,
}
require("lspconfig").pylsp.setup {
  capabilities = capabilities,
}
require("lspconfig").r_language_server.setup {
  capabilities = capabilities,
}
require("lspconfig").rust_analyzer.setup {
  capabilities = capabilities,
}
require("lspconfig").lemminx.setup {
  capabilities = capabilities,
}
