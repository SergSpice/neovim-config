return {
  'akinsho/toggleterm.nvim',
  keys = {
    { [[<C-\>]] },
    { '<leader>0', '<Cmd>2ToggleTerm<Cr>', desc = 'Terminal #2' },
  },
  cmd = { 'ToggleTerm', 'TermExec' },
  opts = {
    size = 30,
    hide_numbers = true,
    open_mapping = [[<C-\>]],
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 0.3,
    start_in_insert = true,
    persist_size = true,
    direction = 'float',
    winbar = {
      enabled = false,
      name_formatter = function(term)
        return term.name
      end,
    },
  },
  config = function(_, options)
    require('toggleterm').setup(options)

    vim.keymap.set('t', 'jk', [[<C-\><C-n>]])
  end,
}
