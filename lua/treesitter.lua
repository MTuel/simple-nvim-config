-- :fennel:1704920865
local config
local function _1_()
  local config0 = require("nvim-treesitter.configs")
  return config0.setup({ensure_installed = {"c_sharp", "css", "fennel", "html", "javascript", "json", "latex", "lua", "markdown", "markdown_inline", "python", "typescript", "vimdoc", "vim"}, highlight = {enable = true}, auto_install = false})
end
config = {"nvim-treesitter/nvim-treesitter", dependencies = {"nvim-treesitter/nvim-treesitter-textobjects"}, build = ":TSUpdate", config = _1_}
return config