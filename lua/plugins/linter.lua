return {
  'mfussenegger/nvim-lint',
  config = function()
    vim.env.ESLINT_D_PPID = vim.fn.getpid()
    local lint = require 'lint'
    lint.linters_by_ft = {
      javascript = {
        'eslint_d',
      },
      typescript = {
        'eslint_d',
      },
      javascriptreact = {
        'eslint_d',
      },
      typescriptreact = {
        'eslint_d',
      },
      svelte = {
        'eslint_d',
      },
      astro = {
        'eslint_d',
      },
      markdown = {
        'markdownlint',
      },
    }
  end,
}
