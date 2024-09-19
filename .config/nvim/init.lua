local use = require("packer").use

-- vim.opt.spell = true

require("packer").startup(function()
	use {
 	 "nvim-neotest/neotest",
	 requires = {
		 "nvim-neotest/nvim-nio",
		 "nvim-lua/plenary.nvim",
		 "antoinemadec/FixCursorHold.nvim",
		 "nvim-treesitter/nvim-treesitter"
	 }
 	}
	use("wbthomason/packer.nvim") -- Package manager

	-- deps
	use("nvim-lua/plenary.nvim")
	use("folke/neodev.nvim")

	-- LSP
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig") -- Configurations for Nvim LSP
	use("mfussenegger/nvim-dap")
	use("rcarriga/nvim-dap-ui")
	use("mfussenegger/nvim-lint")
	use("mhartington/formatter.nvim")

	-- Treesitter
	use("nvim-treesitter/nvim-treesitter")
	use("nvim-treesitter/playground")

	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("petertriho/cmp-git")
	use("andersevenrud/cmp-tmux")
	use("rcarriga/cmp-dap")
	use("hrsh7th/nvim-cmp")

	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	-- use("doxnit/cmp-luasnip-choice")

	use("rafamadriz/friendly-snippets")
	-- use("molleweide/LuaSnip-snippets.nvim")

	-- Coq Completion
	-- use 'ms-jpq/coq_nvim'
	-- use 'ms-jpq/coq.artifacts'
	-- use 'ms-jpq/coq.thirdparty'

	use("antoinemadec/FixCursorHold.nvim")
	use("nvim-neotest/neotest")
	use("olimorris/neotest-phpunit")

	-- Markdown Preview
	use("ellisonleao/glow.nvim")

	-- Vifm
	use("vifm/vifm.vim")

	-- Git
	use("TimUntersberger/neogit")
	use("f-person/git-blame.nvim")

	-- Comments
	use("numToStr/Comment.nvim")

	use("mickael-menu/zk-nvim")
end)

require("Comment").setup()

require("neodev").setup({
	-- add any options here, or leave empty to use the default settings
})

require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})
require("zk").setup()

require("neotest").setup({
	adapters = {
		require("neotest-phpunit"),
	},
})

require("CMD")
require("treesitter")
require("DAP")
require("formatting")
require("linting")
require("snippets")
require("LSP")
