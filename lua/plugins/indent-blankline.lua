return
{
  -- Add indentation guides even on blank lines
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  'lukas-reineke/indent-blankline.nvim',
  -- Enable `lukas-reineke/indent-blankline.nvim`
  -- See `:help indent_blankline.txt`
  event = 'InsertEnter',
  opts = {
    char = '┊',
    show_trailing_blankline_indent = false,
  },
}

