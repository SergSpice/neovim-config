return {
  'sainnhe/gruvbox-material',
  priority = 1000,
  config = function()
    vim.cmd [[
        set background=dark

        let g:gruvbox_material_background = 'hard'
        let g:gruvbox_material_better_performance = 1
        let g:gruvbox_material_foreground = 'mix'
        let g:gruvbox_material_transparent_background = 1

        colorscheme gruvbox-material
      ]]
  end,
}
