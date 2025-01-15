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
      },
      highlights = {
        fill = {
          fg = '#3c3836',
          bg = '#3c3836',
        },
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
