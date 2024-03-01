-- :fennel:1705451836
local fzf_config
local function _1_()
  return (vim.fn.executable("make") == 1)
end
fzf_config = {"nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = _1_}
return fzf_config