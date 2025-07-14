--
-- lualine.lua
--
-- Custom status line
--

return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',

    -- pretty path plugin
    'bwpge/lualine-pretty-path',
  },
  event = 'VeryLazy',
  config = function()
    -- Custom Lualine component to show attached language server
    local clients_lsp = function()
      local bufnr = vim.api.nvim_get_current_buf()

      local clients = vim.lsp.get_clients()
      if next(clients) == nil then
        return ''
      end

      local c = {}
      for _, client in pairs(clients) do
        table.insert(c, client.name)
      end
      return ' ' .. table.concat(c, '|')
    end

    -- Custom colours
    -- custom_catppuccin.normal.b.fg = '#cad3f5'
    -- custom_catppuccin.insert.b.fg = '#cad3f5'
    -- custom_catppuccin.visual.b.fg = '#cad3f5'
    -- custom_catppuccin.replace.b.fg = '#cad3f5'
    -- custom_catppuccin.command.b.fg = '#cad3f5'
    -- custom_catppuccin.inactive.b.fg = '#cad3f5'
    --
    -- custom_catppuccin.normal.c.fg = '#6e738d'
    -- custom_catppuccin.normal.c.bg = '#1e2030'

    require('lualine').setup {
      options = {
        component_separators = '',
        section_separators = { left = '', right = '' },
        disabled_filetypes = { 'alpha', 'Outline' },
      },
      sections = {
        lualine_a = {
          { 'mode', separator = { left = '', right = '' }, icon = '' },
        },
        lualine_b = {
          {
            'branch',
            icon = '',
          },
          {
            'diff',
            symbols = { added = '+', modified = '~', removed = '-' },
            colored = false,
          },
        },
        lualine_c = {
          {
            'pretty_path',
            highlights = {
              modified = { fg = '#87a987', bold = true, italic = true },
            },
          },
        },
        lualine_x = {
          {
            'diagnostics',
            symbols = { error = '', warn = '', info = '󰙎 ', hint = ' ' },
            update_in_insert = true,
          },
        },
        lualine_y = { clients_lsp },
        lualine_z = {},
      },
      -- tabline = {
      --   lualine_a = {
      --     {
      --       'pretty_path',
      --       highlights = {
      --         modified = { fg = '#A3BE8C', bold = true, italic = true },
      --       },
      --     },
      --   },
      --   lualine_b = {},
      --   lualine_c = {},
      --   lualine_x = {},
      --   lualine_y = {},
      --   lualine_z = {},
      -- },
      -- inactive_sections = {
      --   lualine_a = { 'filename' },
      --   lualine_b = {},
      --   lualine_c = {},
      --   lualine_x = {},
      --   lualine_y = {},
      --   lualine_z = { 'location' },
      -- },
      extensions = { 'toggleterm', 'trouble' },
    }
  end,
}
