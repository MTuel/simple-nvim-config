-- :fennel:1705451836
local oil_config
local function _1_()
  require("oil").setup()
  return vim.keymap.set("n", "<leader>ft", "<CMD>Oil<CR>")
end
oil_config = {"stevearc/oil.nvim", dependencies = {"nvim-tree/nvim-web-devicons"}, config = _1_}
return oil_config