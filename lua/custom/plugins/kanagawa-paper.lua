return {
  'thesimonho/kanagawa-paper.nvim',
  lazy = false,
  priority = 1000,
  opts = {},

  config = function()
    require('kanagawa-paper').setup {
      styles = {
        -- style for keywords
        keyword = { italic = true, bold = false },
      },
    }
  end,
}
