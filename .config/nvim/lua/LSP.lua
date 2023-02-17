require("mason-lspconfig").setup({
	ensure_installed = { "psalm", "terraformls", "lua_ls" },
	automatic_installation = true,
})
require("lspconfig")["lua_ls"].setup({
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
