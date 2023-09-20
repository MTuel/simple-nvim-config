return
{
  -- Highlight, edit, and navigate code
  -- https://github.com/nvim-treesitter/nvim-treesitter
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    -- https://github.com/nvim-treesitter/nvim-treesitter-text-objects
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  build = ':TSUpdate',
}
