return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      update_focused_file = {
        enable = true,
      },
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = false,
          },
        },
      },
      view = {
        side = 'right',
        width = 40,
      },
    }
    local api = require 'nvim-tree.api'

    vim.keymap.set('n', '<leader>t', api.tree.toggle)
  end,
}
