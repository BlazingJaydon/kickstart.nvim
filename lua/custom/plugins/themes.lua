local function set_light_theme()
  vim.opt.background = 'light'
  vim.cmd 'colorscheme kanagawa-paper-canvas'
end

local function set_dark_theme()
  vim.opt.background = 'dark'
  vim.cmd 'colorscheme kanagawa-dragon'
end

-- Function to toggle between light and dark modes
local function toggle_theme()
  if vim.o.background == 'dark' then
    set_light_theme()
  else
    set_dark_theme()
  end
end

return {
  -- Or create a keybinding to toggle the theme
  vim.keymap.set('n', '<A-x>', toggle_theme, { desc = 'Toggle NVIM Color', noremap = true, silent = true }),
  --vim.keymap.set('n', '<A-l>', set_light_theme, { desc = 'Toggle NVIM light', noremap = true, silent = true }),
}
