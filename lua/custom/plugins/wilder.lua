return {
  'gelguy/wilder.nvim',

  config = function()
    local wilder = require 'wilder'
    wilder.setup { modes = { ':' } }

    -- Disable Python remote plugin
    wilder.set_option('use_python_remote_plugin', 0)

    wilder.set_option(
      'renderer',
      wilder.popupmenu_renderer(wilder.popupmenu_border_theme {
        highlighter = wilder.basic_highlighter(),
        min_width = '35%', -- minimum height of the popupmenu, can also be a number
        min_height = '50%', -- to set a fixed height, set max_height to the same value
        reverse = 0, -- if 1, shows the candidates from bottom to top

        highlights = {
          border = 'Normal', -- highlight to use for the border
          accent = wilder.make_hl('WilderAccent', 'Title', { { a = 1 }, { a = 1 }, { foreground = '#B1C89D' } }),
        },
        -- 'single', 'double', 'rounded' or 'solid'
        -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
        border = 'rounded',
      })
    )
  end,
}
