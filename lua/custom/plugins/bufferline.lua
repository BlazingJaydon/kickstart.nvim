return {
  'akinsho/bufferline.nvim',
  version = '*',
  lazy = true,
  dependencies = 'nvim-tree/nvim-web-devicons', -- Required

  config = function()
    require('bufferline').setup {
      options = {
        -- diagnostics = 'nvim_lsp',
        numbers = function(opts)
          return string.format('%s', opts.raise(opts.ordinal))
        end,
        -- mode = 'buffers',
        offsets = {
          {
            filetype = 'NvimTree',
            text = 'File Explorer',
            highlight = 'Directory',
            separator = true,
            padding = 0,
          },
        },

        indicator = {
          style = 'none',
        },

        max_name_length = 50,

        themable = true,
      },

      highlights = {
        fill = {
          -- Gruvbox Bufferline Background
          -- fg = '#3c3c3c',
          -- bg = '#3c3c3c',

          -- Nordic Bufferline customizations
          fg = '#242933',
          bg = '#242933',
        },
        -- End of nordic customizations
        separator = {
          fg = '#282828',
        },
        offset_separator = {
          fg = '#ddc7a1',
          bg = '#282828',
        },
      },
    }
  end,
}
