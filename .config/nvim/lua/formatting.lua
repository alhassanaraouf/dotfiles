local vim = vim
local formatter = require("formatter")
local prettierConfig = function()
  return {
    exe = "prettier",
    args = {"--stdin-filepath", vim.fn.shellescape(vim.api.nvim_buf_get_name(0)), "--single-quote"},
    stdin = true
  }
end

local formatterConfig = {
  lua = {
    function()
       return {
         exe = "stylua",
         args = {  "-" },
         stdin = true,
       }
     end,
  },
  sh = {
    -- Shell
    function()
      return {
	exe = "shfmt",
	args = {'-s',},
        stdin = true
      }
    end
  },
  php = {
    -- PHP
    function()
      return {
	exe = "php-cs-fixer",
	args = {"fix"},
        stdin = false
      }
    end
  },
  ["*"] = {
    function()
      return {
        -- remove trailing whitespace
        exe = "sed",
        args = {"-i", "'s/[ \t]*$//'"},
        stdin = false
      }
    end
  }
}
local commonFT = {
  "css",
  "scss",
  "html",
  "java",
  "javascript",
  "javascriptreact",
  "typescript",
  "typescriptreact",
  "markdown",
  "markdown.mdx",
  "json",
  "yaml",
  "xml",
  "svg",
  "svelte"
}
for _, ft in ipairs(commonFT) do
  formatterConfig[ft] = {prettierConfig}
end
-- Setup functions
formatter.setup(
  {
    logging = true,
    filetype = formatterConfig,
    log_level = vim.log.levels.WARN,
  }
)


vim.api.nvim_set_keymap(
  "n",
  "<leader>f",
  ":Format<cr>",
  { silent = true }
 )

 vim.api.nvim_set_keymap(
  "n",
  "<leader>F",
  ":FormatWrite<cr>",
  { silent = true }
 )
