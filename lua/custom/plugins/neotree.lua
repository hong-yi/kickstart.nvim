return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = {
    window = {
      filesystem = {
        filtered_items = {
          hide_hidden = false,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      mappings = {
        ['<Tab>'] = 'open',
      },
      width = 30,
    },
  },
}
