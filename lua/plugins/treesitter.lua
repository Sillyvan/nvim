return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      highlight = { enable = true },
      indent = { enable = true },
      auto_install = true,
      ensure_installed = {
        "javascript",
        "jsdoc",
        "bash",
        "typescript",
        "tsx",
        "json",
        "html",
        "css",
        "scss",
        "svelte",
        "lua",
        "python",
        "rust",
        "go",
        "yaml",
        "toml",

      }
    })
  end
}
