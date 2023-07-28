local capabilities = require("cmp_nvim_lsp").default_capabilities()


require("mason-lspconfig").setup({
	ensure_installed = { "psalm", "terraformls", "lua_ls" },
	automatic_installation = true,
	capabilities = capabilities,
})
require("lspconfig")["lua_ls"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})
require("lspconfig")["psalm"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})
require("lspconfig")["terraformls"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})
require("lspconfig")["pyright"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})
