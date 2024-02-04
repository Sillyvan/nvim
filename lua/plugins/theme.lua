return {
  "Mofiqul/dracula.nvim",
  config = function()
    local dracula = require("dracula")
    dracula.setup()

    vim.cmd [[colorscheme dracula]]
  end
}
