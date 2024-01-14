-- :fennel:1705205161
local package_config
local function _1_()
  return vim.cmd.colorscheme("catppuccin-mocha")
end
package_config = {"catppuccin/nvim", name = "catppuccin", priority = 1000, config = _1_}
return package_config