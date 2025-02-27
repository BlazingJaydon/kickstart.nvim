return {
  'AlexvZyl/nordic.nvim',
  version = '*',
  lazy = true,

  config = function()
    require('nordic').setup {
      on_highlight = function(highlights)
        highlights.TelescopeBorder = {
          fg = '#BBC3D4',
        }
        highlights.TelescopeResultsBorder = {
          fg = '#BBC3D4',
        }
        highlights.TelescopePreviewBorder = {
          fg = '#BBC3D4',
        }
        highlights.TelescopePromptBorder = {
          fg = '#BBC3D4',
        }
        highlights.CursorLine = {
          bg = '#222630',
        }
        highlights.CursorColumn = {
          bg = '#222630',
        }
        highlights.Delimiter = {
          fg = '#60728A',
          italic = false,
        }
        highlights.MatchParen = {
          bold = true,
          underline = false,
          fg = '#EFD49F',
        }
      end,
      -- Enable italic comments.
      italic_comments = true,

      -- Adjusting cursorline
      cursorline = {
        -- Bold font in cursorline.
        bold = false,
        -- Bold cursorline number.
        bold_number = true,
        -- Available styles: 'dark', 'light'.
        theme = 'dark',
        -- Blending the cursorline bg with the buffer bg.
        blend = 0.85,
      },

      noice = {
        -- Available styles: `classic`, `flat`.
        style = 'classic',
      },
    }
  end,
}
