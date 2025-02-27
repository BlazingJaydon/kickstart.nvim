return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = true,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      view = { adaptive_size = true },

      renderer = {
        indent_markers = {
          enable = true,
          --inline_arrows = true,
          icons = {
            corner = '└ ',
            edge = '│ ',
            item = '│ ',
            none = '  ',
          },
        },
      },
    }
  end,
}
