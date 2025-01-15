return {

  -- bufferline
  vim.keymap.set('n', '<leader>bl', require('bufferline').pick, { desc = '[B]uffer [L]ine Pick' }),

  -- Nvim-Tree
  vim.keymap.set('n', [[<C-n>]], ':NvimTreeToggle<CR>', { desc = '[N]vimTreeToggle', noremap = true, silent = true }),
}
