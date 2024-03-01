-- [nfnl] Compiled from toggleterm-config.fnl by https://github.com/Olical/nfnl, do not edit.
local toggleterm_config
local function _1_()
  do end (require("toggleterm")).setup()
  local function _2_(term)
    if (term.direction == "horizontal") then
      return 20
    elseif (term.direction == "vertical") then
      return (vim.o.columns * 0.5)
    else
      return nil
    end
  end
  do local _ = {hide_numbers = true, shade_terminals = true, start_in_insert = true, size = _2_} end
  vim.keymap.set("n", "<leader>tt", "<CMD>ToggleTerm direction=tab<CR>", {desc = "[T]oggleTerm [T]ab"})
  vim.keymap.set("n", "<leader>th", "<CMD>ToggleTerm direction=horizontal<CR>", {desc = "[T]oggleTerm [H]orizontal"})
  vim.keymap.set("n", "<leader>tv", "<CMD>ToggleTerm direction=vertical<CR>", {desc = "[T]oggleTerm [V]ertical"})
  return vim.keymap.set("n", "<leader>tf", "<CMD>ToggleTerm direction=float<CR>", {desc = "[T]oggleTerm [F]loat"})
end
toggleterm_config = {"akinsho/toggleterm.nvim", version = "*", config = _1_}
return toggleterm_config
