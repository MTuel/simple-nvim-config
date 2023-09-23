return
-- ToggleTerm for Terminal Mode
-- https://github.com/akinsho/toggleterm.nvim
{
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup({
      hide_numbers = true,
      shade_terminals = true,
      start_in_insert = true,
      size = function(term)
        if term.direction == 'horizontal' then
          return 20
        elseif term.direction == 'vertical' then
          return vim.o.columns * 0.5
        end
      end
    })

    vim.keymap.set('n', '<leader>th', '<CMD>ToggleTerm direction=horizontal<CR>', { desc = '[T]oggleTerm [H]orizontal'})
    vim.keymap.set('n', '<leader>tv', '<CMD>ToggleTerm direction=vertical<CR>', { desc = '[T]oggleTerm [V]ertical'})
    vim.keymap.set('n', '<leader>tf', '<CMD>ToggleTerm direction=float<CR>', { desc = '[T]oggleTerm [F]loat'})
    vim.keymap.set('n', '<leader>tt', '<CMD>ToggleTerm direction=tab<CR>', { desc = '[T]oggleTerm [T]ab'})
  end
}


