return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
    },
  },
  config = function()
    require('telescope').setup {
      defaults = {
        -- Default configuration for telescope goes here:
        -- config_key = value,
        mappings = {
          -- insert
          i = {
            -- map actions.which_key to <C-h> (default: <C-/>)
            -- actions.which_key shows the mappings for your picker,
            -- e.g. git_{create, delete, ...}_branch for the git_branches picker
          }
        }
      },
      pickers = {
        -- Default configuration for builtin pickers goes here:
        -- picker_name = {
        --   picker_config_key = value,
        --   ...
        -- }
        -- Now the picker_config_key will be applied every time you call this
        -- builtin picker
      },
      extensions = {
        -- Your extension configuration goes here:
      }
    }

    local builtin = require("telescope.builtin")
    require('telescope').load_extension('fzf')


    vim.keymap.set('n', '<leader>sf', builtin.find_files)
    vim.keymap.set('n', '<leader>sg', builtin.live_grep)
  end,
}
