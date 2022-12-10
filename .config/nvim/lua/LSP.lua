require("mason-lspconfig").setup({
	ensure_installed = { "psalm", "terraformls", "sumneko_lua" },
	automatic_installation = true,
})
require("lspconfig")["sumneko_lua"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
})
require("lspconfig")["psalm"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
})
require("lspconfig")["terraformls"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
})
