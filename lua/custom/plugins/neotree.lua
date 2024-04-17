return {
  'nvim-neo-tree/neo-tree.nvim',
  dependencies = {
    version = '3.x',
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  opts = {
    popup_border_style = 'single',
    filesystem = {
      follow_current_file = { enabled = true },
      filtered_items = {
        hide_hidden = false,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      window = {
        mappings = {
          ['<Tab>'] = 'open',
        },
      },
    },
  },
  config = function(_, opts)
    require('neo-tree').setup(opts)
  end,
}
