return {
  vim.keymap.set('n', '<leader>bd', function()
    require('mini.bufremove').delete(vim.fn.bufnr(), false)
  end),
}
