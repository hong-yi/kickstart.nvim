return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        close_command = function(n)
          require('mini.bufremove').delete(n, false)
        end,
        offsets = {
          {
            filetype = 'neo-tree',
            text = '',
            highlight = 'Directory',
            text_align = 'left',
          },
        },
        color_icons = true,
        show_close_icon = false,
        always_show_bufferline = false,
        diagnostics = 'nvim_lsp',
        separator_style = 'thick',
      },
    }
  end,
  -- #region bufferline keymaps
  vim.keymap.set('n', '<tab>', ':BufferLineCycleNext<CR>'),
  vim.keymap.set('n', '<s-tab>', ':BufferLineCyclePrev<CR>'),
}
