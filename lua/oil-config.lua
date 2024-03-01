-- [nfnl] Compiled from oil-config.fnl by https://github.com/Olical/nfnl, do not edit.
local oil_config
local function _1_()
  do end (require("oil")).setup()
  return vim.keymap.set("n", "<leader>ft", "<CMD>Oil<CR>")
end
oil_config = {"stevearc/oil.nvim", dependencies = {"nvim-tree/nvim-web-devicons"}, config = _1_}
return oil_config
