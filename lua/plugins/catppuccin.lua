-- Catppuccin Mocha.
-- https://github.com/catppuccin/nvim
return
{
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  opts =
  {
    integrations = {
      cmp = true,
      treesitter = true,
      markdown = true,
      mason = true,
      telescope = {
        enabled = true,
      },
      which_key = true,
    },
  }
}
