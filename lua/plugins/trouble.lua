return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local trouble = require("trouble")
    trouble.setup({})
    vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
  end

}
