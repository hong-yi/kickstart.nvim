return {
  vim.keymap.set('n', '<leader>bd', function()
    require('mini.bufremove').delete(vim.fn.bufnr(), false)
  end),

  -- allow to move lines up and down
  vim.keymap.set('n', '<A-j>', ':m .+1<CR>=='),
  vim.keymap.set('n', '<A-k>', ':m .-2<CR>=='),
  vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv"),
  vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv"),
  -- trouble.nvim
  vim.keymap.set('n', '<leader>xx', function()
    require('trouble').toggle()
  end),
  vim.keymap.set('n', '<leader>xw', function()
    require('trouble').toggle 'workspace_diagnostics'
  end),
  vim.keymap.set('n', '<leader>xd', function()
    require('trouble').toggle 'document_diagnostics'
  end),
  vim.keymap.set('n', '<leader>xq', function()
    require('trouble').toggle 'quickfix'
  end),
  vim.keymap.set('n', '<leader>xl', function()
    require('trouble').toggle 'loclist'
  end),
  vim.keymap.set('n', 'gR', function()
    require('trouble').toggle 'lsp_references'
  end),
}
