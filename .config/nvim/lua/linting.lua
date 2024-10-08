require("lint").linters_by_ft = {
	php = { "phpcs"},
	lua = { "luacheck" },
	sh = { "shellcheck" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})
