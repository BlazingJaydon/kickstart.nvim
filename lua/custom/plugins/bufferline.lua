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
          fg = '#1d2021',
          bg = '#1d2021',

          -- Nordic Bufferline customizations
          -- fg = '#242933',
          -- bg = '#242933',

          -- --Catppuccin
          -- fg = '#24273a',
          -- bg = '#24273a',
        },
        -- End of nordic customizations
        separator = {
          -- Catppuccin
          -- fg = '#8087a2',
          -- Gruvbox
          fg = '#504945',
        },
        offset_separator = {
          fg = '#ddc7a1',
          bg = '#282828',
        },
      },
    }
  end,
}
