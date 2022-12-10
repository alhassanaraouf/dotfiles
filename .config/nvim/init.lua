local use = require('packer').use

-- vim.opt.spell = true

require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager

  -- deps
  use 'nvim-lua/plenary.nvim'

  -- LSP
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'mfussenegger/nvim-dap'
  use 'mfussenegger/nvim-lint'
  use 'mhartington/formatter.nvim'

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/playground'

  -- Coq Completion
  use 'ms-jpq/coq_nvim'
  use 'ms-jpq/coq.artifacts'
  use 'ms-jpq/coq.thirdparty'

  -- Markdown Preview
  use 'ellisonleao/glow.nvim'

  -- Vifm
  use 'vifm/vifm.vim'

  -- Git
  use 'TimUntersberger/neogit'
  use 'f-person/git-blame.nvim'

  -- Comments
  use 'numToStr/Comment.nvim'

  use 'mickael-menu/zk-nvim'
end)



require('Comment').setup()
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("zk").setup()


require "LSP"
require "DAP"
-- require "treesitter"
require "formatting"
require "linting"

