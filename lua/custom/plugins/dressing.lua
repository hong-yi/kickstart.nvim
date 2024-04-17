-- return {
--   'stevearc/dressing.nvim',
--   opts = {
--     border = 'single',
--     enabled = false,
--   },
--   lazy = true,
--   -- From https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/ui.lua#L34
--   init = function()
--     ---@diagnostic disable-next-line: duplicate-set-field
--     vim.ui.select = function(...)
-- }
return {
  'stevearc/dressing.nvim',
  lazy = true,
  opts = {
    border = 'rounded',
    enabled = false,
  },
  -- From https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/ui.lua#L34
  init = function()
    ---@diagnostic disable-next-line: duplicate-set-field
    vim.ui.select = function(...)
      require('lazy').load { plugins = { 'dressing.nvim' } }
      return vim.ui.select(...)
    end
    ---@diagnostic disable-next-line: duplicate-set-field
    vim.ui.input = function(...)
      require('lazy').load { plugins = { 'dressing.nvim' } }
      return vim.ui.input(...)
    end
  end,
}
