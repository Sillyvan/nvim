return {
  'folke/tokyonight.nvim',
  config = function()
    require('tokyonight').setup({
      style = 'night' -- specifically set the night variant
    })
    vim.cmd [[colorscheme tokyonight]]
  end,
}
