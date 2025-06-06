return {
  'vuki656/package-info.nvim',
  dependencies = {
    'MunifTanjim/nui.nvim',
  },
  config = function()
    local package_info = require 'package-info'
    vim.keymap.set('n', '<leader>nt', package_info.toggle, { silent = true, noremap = true })
    vim.keymap.set('n', '<leader>ntu', package_info.update, { silent = true, noremap = true })
    package_info.setup {
      hide_up_to_date = true,
      hide_unstable_versions = true,
    }
  end,
}
