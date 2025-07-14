return {
  -- bufferline
  -- vim.keymap.set('n', '<leader>bl', require('bufferline').pick, { desc = '[B]uffer [L]ine Pick' }),

  -- Nvim-Tree
  --vim.keymap.set('n', [[<C-n>]], ':NvimTreeToggle<CR>', { desc = '[N]vimTreeToggle', noremap = true, silent = true }),

  -- Snacks Explorer
  vim.keymap.set('n', [[<C-e>]], function()
    require('snacks').explorer()
  end, { desc = 'File Explorer' }),

  -- Snacks Grep Open Buffers
  vim.keymap.set('n', '<leader>/', function()
    require('snacks').picker.grep()
  end, { desc = 'Grep Open Files' }),

  -- Snacks Grep
  -- vim.keymap.set('n', '<leader>/s', function()
  --   require('snacks').picker.grep()
  -- end, { desc = 'Grep' }),
}
